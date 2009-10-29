require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Widgets
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
      
      def base_attributes
        defined?(@@base_attributes) ? @@base_attributes : @@base_attributes= Array.typed(NSString).new([OS::NSAccessibilityRoleAttribute, OS::NSAccessibilityRoleDescriptionAttribute, OS::NSAccessibilityHelpAttribute, OS::NSAccessibilityFocusedAttribute, OS::NSAccessibilityParentAttribute, OS::NSAccessibilityChildrenAttribute, OS::NSAccessibilityPositionAttribute, OS::NSAccessibilitySizeAttribute, OS::NSAccessibilityWindowAttribute, OS::NSAccessibilityTopLevelUIElementAttribute])
      end
      alias_method :attr_base_attributes, :base_attributes
      
      def base_attributes=(value)
        @@base_attributes = value
      end
      alias_method :attr_base_attributes=, :base_attributes=
      
      
      def base_text_attributes
        defined?(@@base_text_attributes) ? @@base_text_attributes : @@base_text_attributes= Array.typed(NSString).new([OS::NSAccessibilityNumberOfCharactersAttribute, OS::NSAccessibilitySelectedTextAttribute, OS::NSAccessibilitySelectedTextRangeAttribute, OS::NSAccessibilityInsertionPointLineNumberAttribute, OS::NSAccessibilitySelectedTextRangesAttribute, OS::NSAccessibilityVisibleCharacterRangeAttribute, OS::NSAccessibilityValueAttribute, ])
      end
      alias_method :attr_base_text_attributes, :base_text_attributes
      
      def base_text_attributes=(value)
        @@base_text_attributes = value
      end
      alias_method :attr_base_text_attributes=, :base_text_attributes=
      
      
      def base_parameterized_attributes
        defined?(@@base_parameterized_attributes) ? @@base_parameterized_attributes : @@base_parameterized_attributes= Array.typed(NSString).new([OS::NSAccessibilityStringForRangeParameterizedAttribute, OS::NSAccessibilityRangeForLineParameterizedAttribute, ])
      end
      alias_method :attr_base_parameterized_attributes, :base_parameterized_attributes
      
      def base_parameterized_attributes=(value)
        @@base_parameterized_attributes = value
      end
      alias_method :attr_base_parameterized_attributes=, :base_parameterized_attributes=
    }
    
    attr_accessor :attribute_names
    alias_method :attr_attribute_names, :attribute_names
    undef_method :attribute_names
    alias_method :attr_attribute_names=, :attribute_names=
    undef_method :attribute_names=
    
    attr_accessor :parameterized_attribute_names
    alias_method :attr_parameterized_attribute_names, :parameterized_attribute_names
    undef_method :parameterized_attribute_names
    alias_method :attr_parameterized_attribute_names=, :parameterized_attribute_names=
    undef_method :parameterized_attribute_names=
    
    attr_accessor :action_names
    alias_method :attr_action_names, :action_names
    undef_method :action_names
    alias_method :attr_action_names=, :action_names=
    undef_method :action_names=
    
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
    
    # <Integer, SWTAccessibleDelegate>
    attr_accessor :children
    alias_method :attr_children, :children
    undef_method :children
    alias_method :attr_children=, :children=
    undef_method :children=
    
    typesig { [] }
    # @since 3.5
    def initialize
      @attribute_names = nil
      @parameterized_attribute_names = nil
      @action_names = nil
      @accessible_listeners = Vector.new
      @accessible_control_listeners = Vector.new
      @accessible_text_listeners = Vector.new
      @control = nil
      @children = HashMap.new
    end
    
    typesig { [Control] }
    def initialize(control)
      @attribute_names = nil
      @parameterized_attribute_names = nil
      @action_names = nil
      @accessible_listeners = Vector.new
      @accessible_control_listeners = Vector.new
      @accessible_text_listeners = Vector.new
      @control = nil
      @children = HashMap.new
      @control = control
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
    
    typesig { [NSString, ::Java::Int] }
    def internal_accessibility_action_description(action, child_id)
      # TODO No action support for now.
      return NSString.string_with("")
    end
    
    typesig { [::Java::Int] }
    def internal_accessibility_action_names(child_id)
      # The supported action list depends on the role played by the control.
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        i += 1
      end
      # No accessible listener is overriding the role of the control, so let Cocoa return the default set for the control.
      if ((event.attr_detail).equal?(-1))
        return nil
      end
      if (((child_id).equal?(ACC::CHILDID_SELF)) && (!(@action_names).nil?))
        return retained_autoreleased(@action_names)
      end
      return_value = NSMutableArray.array_with_capacity(5)
      case (event.attr_detail)
      when ACC::ROLE_PUSHBUTTON, ACC::ROLE_RADIOBUTTON, ACC::ROLE_CHECKBUTTON, ACC::ROLE_TABITEM
        return_value.add_object(OS::NSAccessibilityPressAction)
      end
      case (event.attr_detail)
      when ACC::ROLE_COMBOBOX
        return_value.add_object(OS::NSAccessibilityConfirmAction)
      end
      if ((child_id).equal?(ACC::CHILDID_SELF))
        @action_names = return_value
        @action_names.retain
        return retained_autoreleased(@action_names)
      else
        # Caller must retain if they want to hold on to it.
        return return_value
      end
    end
    
    typesig { [::Java::Int] }
    def internal_accessibility_attribute_names(child_id)
      # The supported attribute set depends on the role played by the control.
      # We may need to add or remove from the base set as needed.
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        i += 1
      end
      # No accessible listener is overriding the role of the control, so let Cocoa
      # return the default set for the control.
      if ((event.attr_detail).equal?(-1))
        return nil
      end
      if (((child_id).equal?(ACC::CHILDID_SELF)) && (!(@attribute_names).nil?))
        return retained_autoreleased(@attribute_names)
      end
      return_value = NSMutableArray.array_with_capacity(self.attr_base_attributes.attr_length)
      # Add our list of supported attributes to the array.
      # Make sure each attribute name is not already in the array before appending.
      i_ = 0
      while i_ < self.attr_base_attributes.attr_length
        if (!return_value.contains_object(self.attr_base_attributes[i_]))
          return_value.add_object(self.attr_base_attributes[i_])
        end
        i_ += 1
      end
      if (@accessible_text_listeners.size > 0)
        i__ = 0
        while i__ < self.attr_base_text_attributes.attr_length
          if (!return_value.contains_object(self.attr_base_text_attributes[i__]))
            return_value.add_object(self.attr_base_text_attributes[i__])
          end
          i__ += 1
        end
      end
      # The following are expected to have a value (AXValue)
      case (event.attr_detail)
      when ACC::ROLE_CHECKBUTTON, ACC::ROLE_RADIOBUTTON, ACC::ROLE_LABEL, ACC::ROLE_TABITEM, ACC::ROLE_TABFOLDER
        return_value.add_object(OS::NSAccessibilityValueAttribute)
      end
      # The following are expected to report their enabled status (AXEnabled)
      case (event.attr_detail)
      when ACC::ROLE_CHECKBUTTON, ACC::ROLE_RADIOBUTTON, ACC::ROLE_LABEL, ACC::ROLE_TABITEM, ACC::ROLE_PUSHBUTTON, ACC::ROLE_COMBOBOX
        return_value.add_object(OS::NSAccessibilityEnabledAttribute)
      end
      # The following are expected to report a title (AXTitle)
      case (event.attr_detail)
      when ACC::ROLE_CHECKBUTTON, ACC::ROLE_RADIOBUTTON, ACC::ROLE_PUSHBUTTON, ACC::ROLE_TABITEM
        return_value.add_object(OS::NSAccessibilityTitleAttribute)
      end
      # Accessibility verifier says these attributes must be reported for combo boxes.
      if ((event.attr_detail).equal?(ACC::ROLE_COMBOBOX))
        return_value.add_object(OS::NSAccessibilityExpandedAttribute)
      end
      # Accessibility verifier says these attributes must be reported for tab folders.
      if ((event.attr_detail).equal?(ACC::ROLE_TABFOLDER))
        return_value.add_object(OS::NSAccessibilityContentsAttribute)
        return_value.add_object(OS::NSAccessibilityTabsAttribute)
      end
      # Only report back sub-roles when the SWT role maps to a sub-role.
      if (!(event.attr_detail).equal?(-1))
        os_role = role_to_os(event.attr_detail)
        if ((os_role.index_of(Character.new(?:.ord))).equal?(-1))
          return_value.remove_object(OS::NSAccessibilitySubroleAttribute)
        end
      end
      # Children never return their own children, so remove that attribute.
      if (!(child_id).equal?(ACC::CHILDID_SELF))
        return_value.remove_object(OS::NSAccessibilityChildrenAttribute)
      end
      if ((child_id).equal?(ACC::CHILDID_SELF))
        @attribute_names = return_value
        @attribute_names.retain
        return retained_autoreleased(@attribute_names)
      else
        # Caller must retain if necessary.
        return return_value
      end
    end
    
    typesig { [NSString, ::Java::Int] }
    def internal_accessibility_attribute_value(attribute, child_id)
      if (attribute.is_equal_to_string(OS::NSAccessibilityRoleAttribute))
        return get_role_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilitySubroleAttribute))
        return get_subrole_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityRoleDescriptionAttribute))
        return get_role_description_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityExpandedAttribute))
        return get_expanded_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityHelpAttribute))
        return get_help_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityTitleAttribute))
        return get_title_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityValueAttribute))
        return get_value_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityEnabledAttribute))
        return get_enabled_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityFocusedAttribute))
        return get_focused_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityParentAttribute))
        return get_parent_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityChildrenAttribute))
        return get_children_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityContentsAttribute))
        return get_children_attribute(child_id)
      end
      # FIXME:  There's no specific API just for tabs, which won't include the buttons (if any.)
      if (attribute.is_equal_to_string(OS::NSAccessibilityTabsAttribute))
        return get_tabs_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityWindowAttribute))
        return get_window_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityTopLevelUIElementAttribute))
        return get_top_level_uielement_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityPositionAttribute))
        return get_position_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilitySizeAttribute))
        return get_size_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityDescriptionAttribute))
        return get_description_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityNumberOfCharactersAttribute))
        return get_number_of_characters_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilitySelectedTextAttribute))
        return get_selected_text_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilitySelectedTextRangeAttribute))
        return get_selected_text_range_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityInsertionPointLineNumberAttribute))
        return get_insertion_point_line_number_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilitySelectedTextRangesAttribute))
        return get_selected_text_ranges_attribute(child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityVisibleCharacterRangeAttribute))
        return get_visible_character_range_attribute(child_id)
      end
      # If this object don't know how to get the value it's up to the control itself to return an attribute value.
      return nil
    end
    
    typesig { [NSString, Id, ::Java::Int] }
    def internal_accessibility_attribute_value_for_parameter(attribute, parameter, child_id)
      if (attribute.is_equal_to_string(OS::NSAccessibilityStringForRangeParameterizedAttribute))
        return get_string_for_range_attribute(parameter, child_id)
      end
      if (attribute.is_equal_to_string(OS::NSAccessibilityRangeForLineParameterizedAttribute))
        return get_range_for_line_parameterized_attribute(parameter, child_id)
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns the UI Element that has the focus. You can assume that the search for the focus has already been narrowed down to the receiver.
    # Override this method to do a deeper search with a UIElement - e.g. a NSMatrix would determine if one of its cells has the focus.
    def internal_accessibility_focused_uielement(child_id)
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = ACC::CHILDID_MULTIPLE # set to invalid value, to test if the application sets it in getFocus()
      event.attr_accessible = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_focus(event)
        i += 1
      end
      # The listener did not respond, so let Cocoa figure it out.
      if ((event.attr_child_id).equal?(ACC::CHILDID_MULTIPLE))
        return nil
      end
      # The application can optionally answer an accessible.
      if (!(event.attr_accessible).nil?)
        return Id.new(OS._nsaccessibility_unignored_ancestor(event.attr_accessible.attr_control.attr_view.attr_id))
      end
      # Or the application can answer a valid child ID, including CHILDID_SELF and CHILDID_NONE.
      if ((event.attr_child_id).equal?(ACC::CHILDID_SELF) || (event.attr_child_id).equal?(ACC::CHILDID_NONE))
        return Id.new(OS._nsaccessibility_unignored_ancestor(@control.attr_view.attr_id))
      end
      return Id.new(OS._nsaccessibility_unignored_ancestor(child_idto_os(event.attr_child_id).attr_id))
    end
    
    typesig { [NSPoint, ::Java::Int] }
    # Returns the deepest descendant of the UIElement hierarchy that contains the point.
    # You can assume the point has already been determined to lie within the receiver.
    # Override this method to do deeper hit testing within a UIElement - e.g. a NSMatrix would test its cells. The point is bottom-left relative screen coordinates.
    def internal_accessibility_hit_test(point, child_id)
      event = AccessibleControlEvent.new(self)
      event.attr_x = RJava.cast_to_int(point.attr_x)
      primary_monitor = Display.get_current.get_primary_monitor
      event.attr_y = RJava.cast_to_int((primary_monitor.get_bounds.attr_height - point.attr_y))
      # Set an impossible value to determine if anything responded to the event.
      event.attr_child_id = ACC::CHILDID_MULTIPLE
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_child_at_point(event)
        i += 1
      end
      # The listener did not respond, so let Cocoa figure it out.
      if ((event.attr_child_id).equal?(ACC::CHILDID_MULTIPLE))
        return nil
      end
      if (!(event.attr_accessible).nil?)
        return Id.new(OS._nsaccessibility_unignored_ancestor(event.attr_accessible.attr_control.attr_view.attr_id))
      end
      if ((event.attr_child_id).equal?(ACC::CHILDID_SELF) || (event.attr_child_id).equal?(ACC::CHILDID_NONE))
        return Id.new(OS._nsaccessibility_unignored_ancestor(@control.attr_view.attr_id))
      end
      return Id.new(OS._nsaccessibility_unignored_ancestor(child_idto_os(event.attr_child_id).attr_id))
    end
    
    typesig { [::Java::Int] }
    # Return YES if the UIElement doesn't show up to the outside world - i.e. its parent should return the UIElement's children as its own - cutting the UIElement out. E.g. NSControls are ignored when they are single-celled.
    def internal_accessibility_is_ignored(child_id)
      return false
    end
    
    typesig { [::Java::Int] }
    # parameterized attribute methods
    def internal_accessibility_parameterized_attribute_names(child_id)
      if (((child_id).equal?(ACC::CHILDID_SELF)) && (!(@parameterized_attribute_names).nil?))
        return retained_autoreleased(@parameterized_attribute_names)
      end
      return_value = NSMutableArray.array_with_capacity(4)
      if (@accessible_text_listeners.size > 0)
        i = 0
        while i < self.attr_base_parameterized_attributes.attr_length
          if (!return_value.contains_object(self.attr_base_parameterized_attributes[i]))
            return_value.add_object(self.attr_base_parameterized_attributes[i])
          end
          i += 1
        end
      end
      if ((child_id).equal?(ACC::CHILDID_SELF))
        @parameterized_attribute_names = return_value
        @parameterized_attribute_names.retain
        return retained_autoreleased(@parameterized_attribute_names)
      else
        # Caller must retain if they want to keep it.
        return return_value
      end
    end
    
    typesig { [NSString, ::Java::Int] }
    def internal_accessibility_perform_action(action, child_id)
      # TODO Auto-generated method stub
      # No action support for now.
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
      if (!(@action_names).nil?)
        @action_names.release
      end
      @action_names = nil
      if (!(@attribute_names).nil?)
        @attribute_names.release
      end
      @attribute_names = nil
      if (!(@parameterized_attribute_names).nil?)
        @parameterized_attribute_names.release
      end
      @parameterized_attribute_names = nil
      delegates = @children.values
      iter = delegates.iterator
      while (iter.has_next)
        child_delegate = iter.next_
        child_delegate.internal_dispose__swtaccessible_delegate
      end
      @children.clear
    end
    
    typesig { [::Java::Int] }
    def get_expanded_attribute(child_id)
      # TODO: May need to expand the API so the combo box state can be reported.
      return NSNumber.number_with_bool(false)
    end
    
    typesig { [::Java::Int] }
    def get_help_attribute(child_id)
      return_value = nil
      event = AccessibleEvent.new(self)
      event.attr_child_id = child_id
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_help(event)
        i += 1
      end
      if (!(event.attr_result).nil?)
        return_value = NSString.string_with(event.attr_result)
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_role_attribute(child_id)
      return_value = nil
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
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
        return_value = NSString.string_with(app_role)
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_subrole_attribute(child_id)
      return_value = nil
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
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
          return_value = NSString.string_with(app_role)
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_role_description_attribute(child_id)
      return_value = nil
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
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
        ns_app_role = NSString.string_with(app_role)
        ns_app_subrole = nil
        if (!(app_subrole).nil?)
          ns_app_subrole = NSString.string_with(app_subrole)
        end
        return_value = NSString.new(OS._nsaccessibility_role_description(((!(ns_app_role).nil?) ? ns_app_role.attr_id : 0), (!(ns_app_subrole).nil?) ? ns_app_subrole.attr_id : 0))
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_title_attribute(child_id)
      return_value = nil # NSString.stringWith("");
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
        event = AccessibleEvent.new(self)
        event.attr_child_id = child_id
        event.attr_result = nil
        i_ = 0
        while i_ < @accessible_listeners.size
          listener = @accessible_listeners.element_at(i_)
          listener.get_name(event)
          i_ += 1
        end
        if (!(event.attr_result).nil?)
          return_value = NSString.string_with(event.attr_result)
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_value_attribute(child_id)
      return_value = nil
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
      case (role)
      # 1 = on, 0 = off
      # 1 = checked, 0 = unchecked, 2 = mixed
      # numeric value representing the position of the scroller
      # the value associated with the position of the slider thumb
      # the accessibility object representing the currently selected tab item
      # text of the currently selected item
      when ACC::ROLE_RADIOBUTTON, ACC::ROLE_CHECKBUTTON, ACC::ROLE_SCROLLBAR, ACC::ROLE_SLIDER, ACC::ROLE_PROGRESSBAR
        # the value associated with the fill level of the progress bar
        if (!(value).nil?)
          begin
            number = JavaInteger.parse_int(value)
            return_value = NSNumber.number_with_int(number)
          rescue NumberFormatException => ex
            if (value.equals_ignore_case("true"))
              return_value = NSNumber.number_with_bool(true)
            else
              if (value.equals_ignore_case("false"))
                return_value = NSNumber.number_with_bool(false)
              end
            end
          end
        else
          return_value = NSNumber.number_with_bool(false)
        end
      when ACC::ROLE_TABFOLDER, ACC::ROLE_TABITEM
        # 1 = selected, 0 = not selected
        ace = AccessibleControlEvent.new(self)
        ace.attr_child_id = -4
        i_ = 0
        while i_ < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i_)
          listener.get_selection(ace)
          i_ += 1
        end
        if (ace.attr_child_id >= ACC::CHILDID_SELF)
          if ((role).equal?(ACC::ROLE_TABITEM))
            return_value = NSNumber.number_with_bool((ace.attr_child_id).equal?(child_id))
          else
            return_value = Id.new(OS._nsaccessibility_unignored_ancestor(child_idto_os(ace.attr_child_id).attr_id))
          end
        else
          return_value = NSNumber.number_with_bool(false)
        end
      when ACC::ROLE_COMBOBOX, ACC::ROLE_TEXT
        # text in the text field
        if (!(value).nil?)
          return_value = NSString.string_with(value)
        end
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
          return_value = NSString.string_with(e.attr_result)
        else
          if (!(value).nil?)
            return_value = NSString.string_with(value)
          end
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_enabled_attribute(child_id)
      event = AccessibleControlEvent.new(self)
      event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_state(event)
        i += 1
      end
      return NSNumber.number_with_bool(@control.is_enabled)
    end
    
    typesig { [::Java::Int] }
    def get_focused_attribute(child_id)
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
      # FIXME:
      # if (event.accessible != null) {
      # boolean hasFocus = (event.accessible.childID == childID) && (event.accessible.control == this.control);
      # return NSNumber.numberWithBool(hasFocus);
      # }
      # Or the application can answer a valid child ID, including CHILDID_SELF and CHILDID_NONE.
      if ((event.attr_child_id).equal?(ACC::CHILDID_SELF))
        has_focus = ((event.attr_child_id).equal?(child_id))
        return NSNumber.number_with_bool(has_focus)
      end
      if ((event.attr_child_id).equal?(ACC::CHILDID_NONE))
        return NSNumber.number_with_bool(false)
      end
      if (!(event.attr_child_id).equal?(ACC::CHILDID_MULTIPLE))
        # Other valid childID.
        return NSNumber.number_with_bool((event.attr_child_id).equal?(child_id))
      end
      # Invalid childID at this point means the application did not implement getFocus, so
      # let the default handler return the native focus.
      has_focus = ((@control.attr_view.window.first_responder).equal?(@control.attr_view))
      return NSNumber.number_with_bool(has_focus)
    end
    
    typesig { [::Java::Int] }
    def get_parent_attribute(child_id)
      # Returning null here means 'let Cocoa figure it out.'
      if ((child_id).equal?(ACC::CHILDID_SELF))
        return nil
      else
        return Id.new(OS._nsaccessibility_unignored_ancestor(@control.attr_view.attr_id))
      end
    end
    
    typesig { [::Java::Int] }
    def get_children_attribute(child_id)
      return_value = nil
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
        if (event.attr_detail > 0)
          i_ = 0
          while i_ < @accessible_control_listeners.size
            listener = @accessible_control_listeners.element_at(i_)
            listener.get_children(event)
            i_ += 1
          end
          app_children = event.attr_children
          if (!(app_children).nil? && app_children.attr_length > 0)
            # return an NSArray of NSAccessible objects.
            child_array = NSMutableArray.array_with_capacity(app_children.attr_length)
            i__ = 0
            while i__ < app_children.attr_length
              child = app_children[i__]
              if (child.is_a?(JavaInteger))
                acc_child = child_idto_os((child).int_value)
                child_array.add_object(acc_child)
              else
                child_array.add_object((child).attr_control.attr_view)
              end
              i__ += 1
            end
            return_value = Id.new(OS._nsaccessibility_unignored_children(child_array.attr_id))
          end
        end
      else
        # Lightweight children have no children of their own.
        # Don't return null if there are no children -- always return an empty array.
        return_value = NSArray.array
      end
      # Returning null here means we want the control itself to determine its children. If the accessible listener
      # implemented getChildCount/getChildren, references to those objects would have been returned above.
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_tabs_attribute(child_id)
      return_value = nil
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
        if (event.attr_detail > 0)
          i_ = 0
          while i_ < @accessible_control_listeners.size
            listener = @accessible_control_listeners.element_at(i_)
            listener.get_children(event)
            i_ += 1
          end
          app_children = event.attr_children
          if (!(app_children).nil? && app_children.attr_length > 0)
            # return an NSArray of NSAccessible objects.
            child_array = NSMutableArray.array_with_capacity(app_children.attr_length)
            i__ = 0
            while i__ < app_children.attr_length
              child = app_children[i__]
              if (child.is_a?(JavaInteger))
                sub_child_id = (child).int_value
                event.attr_child_id = sub_child_id
                event.attr_detail = -1
                j = 0
                while j < @accessible_control_listeners.size
                  listener = @accessible_control_listeners.element_at(j)
                  listener.get_role(event)
                  j += 1
                end
                if ((event.attr_detail).equal?(ACC::ROLE_TABITEM))
                  acc_child = child_idto_os((child).int_value)
                  child_array.add_object(acc_child)
                end
              else
                child_array.add_object((child).attr_control.attr_view)
              end
              i__ += 1
            end
            return_value = Id.new(OS._nsaccessibility_unignored_children(child_array.attr_id))
          end
        end
      else
        # Lightweight children have no children of their own.
        # Don't return null if there are no children -- always return an empty array.
        return_value = NSArray.array
      end
      # Returning null here means we want the control itself to determine its children. If the accessible listener
      # implemented getChildCount/getChildren, references to those objects would have been returned above.
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_window_attribute(child_id)
      return @control.attr_view.window
    end
    
    typesig { [::Java::Int] }
    def get_top_level_uielement_attribute(child_id)
      return @control.attr_view.window
    end
    
    typesig { [::Java::Int] }
    def get_position_attribute(child_id)
      return_value = nil
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_width = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_location(event)
        i += 1
      end
      primary_monitor = Display.get_current.get_primary_monitor
      os_position_attribute = NSPoint.new
      if (!(event.attr_width).equal?(-1))
        # The point returned is the lower-left coordinate of the widget in lower-left relative screen coordinates.
        os_position_attribute.attr_x = event.attr_x
        os_position_attribute.attr_y = primary_monitor.get_bounds.attr_height - event.attr_y - event.attr_height
        return_value = NSValue.value_with_point(os_position_attribute)
      else
        if (!(child_id).equal?(ACC::CHILDID_SELF))
          pt = nil
          location = @control.get_bounds
          if (!(@control.get_parent).nil?)
            pt = @control.get_parent.to_display(location.attr_x, location.attr_y)
          else
            pt = (@control).to_display(location.attr_x, location.attr_y)
          end
          os_position_attribute.attr_x = pt.attr_x
          os_position_attribute.attr_y = pt.attr_y
          return_value = NSValue.value_with_point(os_position_attribute)
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_size_attribute(child_id)
      return_value = nil
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_width = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_location(event)
        i += 1
      end
      control_size = NSSize.new
      if (!(event.attr_width).equal?(-1))
        control_size.attr_width = event.attr_width
        control_size.attr_height = event.attr_height
        return_value = NSValue.value_with_size(control_size)
      else
        if (!(child_id).equal?(ACC::CHILDID_SELF))
          control_size.attr_width = control_size.attr_height = 0
          return_value = NSValue.value_with_size(control_size)
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_description_attribute(child_id)
      event = AccessibleEvent.new(self)
      event.attr_child_id = child_id
      event.attr_result = nil
      return_value = nil
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_description(event)
        i += 1
      end
      return_value = (!(event.attr_result).nil? ? NSString.string_with(event.attr_result) : nil)
      # If no description was provided, and this is a composite or canvas, return a blank string
      # -- otherwise, let the Cocoa control handle it.
      if ((return_value).nil?)
        if (@control.is_a?(Composite))
          return_value = NSString.string_with("")
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_insertion_point_line_number_attribute(child_id)
      return_value = nil
      control_event = AccessibleControlEvent.new(self)
      control_event.attr_child_id = child_id
      control_event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(control_event)
        i += 1
      end
      text_event = AccessibleTextEvent.new(self)
      text_event.attr_child_id = child_id
      text_event.attr_offset = -1
      i_ = 0
      while i_ < @accessible_text_listeners.size
        listener = @accessible_text_listeners.element_at(i_)
        listener.get_caret_offset(text_event)
        i_ += 1
      end
      if (!(control_event.attr_result).nil? && !(text_event.attr_offset).equal?(-1))
        line_number = line_number_for_offset(control_event.attr_result, text_event.attr_offset)
        return_value = NSNumber.number_with_int(line_number)
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_number_of_characters_attribute(child_id)
      return_value = nil
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(event)
        i += 1
      end
      app_value = event.attr_result
      if (!(app_value).nil?)
        return_value = NSNumber.number_with_int(app_value.length)
      end
      return return_value
    end
    
    typesig { [Id, ::Java::Int] }
    def get_range_for_line_parameterized_attribute(parameter, child_id)
      return_value = nil
      # The parameter is an NSNumber with the line number.
      line_number_obj = NSNumber.new(parameter.attr_id)
      line_number = line_number_obj.int_value
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(event)
        i += 1
      end
      if (!(event.attr_result).nil?)
        range = range_for_line_number(line_number, event.attr_result)
        if (!(range.attr_location).equal?(-1))
          return_value = NSValue.value_with_range(range)
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_selected_text_attribute(child_id)
      return_value = NSString.string_with("")
      event = AccessibleTextEvent.new(self)
      event.attr_child_id = child_id
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
          return_value = NSString.string_with(app_value.substring(offset, offset + length_))
        end
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_selected_text_range_attribute(child_id)
      return_value = nil
      event = AccessibleTextEvent.new(self)
      event.attr_child_id = child_id
      event.attr_offset = -1
      event.attr_length = 0
      i = 0
      while i < @accessible_text_listeners.size
        listener = @accessible_text_listeners.element_at(i)
        listener.get_selection_range(event)
        i += 1
      end
      if (!(event.attr_offset).equal?(-1))
        range = NSRange.new
        range.attr_location = event.attr_offset
        range.attr_length = event.attr_length
        return_value = NSValue.value_with_range(range)
      end
      return return_value
    end
    
    typesig { [Id, ::Java::Int] }
    def get_string_for_range_attribute(parameter, child_id)
      return_value = nil
      # Parameter is an NSRange wrapped in an NSValue.
      parameter_object = NSValue.new(parameter.attr_id)
      range = parameter_object.range_value
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(event)
        i += 1
      end
      app_value = event.attr_result
      if (!(app_value).nil?)
        # 64
        # 64
        return_value = NSString.string_with(app_value.substring(RJava.cast_to_int(range.attr_location), RJava.cast_to_int((range.attr_location + range.attr_length))))
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_selected_text_ranges_attribute(child_id)
      return_value = nil
      event = AccessibleTextEvent.new(self)
      event.attr_child_id = child_id
      event.attr_offset = -1
      event.attr_length = 0
      i = 0
      while i < @accessible_text_listeners.size
        listener = @accessible_text_listeners.element_at(i)
        listener.get_selection_range(event)
        i += 1
      end
      if (!(event.attr_offset).equal?(-1))
        return_value = NSMutableArray.array_with_capacity(1)
        range = NSRange.new
        range.attr_location = event.attr_offset
        range.attr_length = event.attr_length
        return_value.add_object(NSValue.value_with_range(range))
      end
      return return_value
    end
    
    typesig { [::Java::Int] }
    def get_visible_character_range_attribute(child_id)
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(event)
        i += 1
      end
      range = NSRange.new
      if (!(event.attr_result).nil?)
        range.attr_location = 0
        range.attr_length = event.attr_result.length
      else
        return nil
        # range.location = range.length = 0;
      end
      return NSValue.value_with_range(range)
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
      range = NSRange.new
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
    
    class_module.module_eval {
      typesig { [NSArray] }
      def retained_autoreleased(in_object)
        temp = in_object.retain
        temp2 = NSObject.new(temp.attr_id).autorelease
        return NSArray.new(temp2.attr_id)
      end
    }
    
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
      OS._nsaccessibility_post_notification(@control.attr_view.attr_id, OS::NSAccessibilitySelectedChildrenChangedNotification.attr_id)
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
      OS._nsaccessibility_post_notification(@control.attr_view.attr_id, OS::NSAccessibilityFocusedUIElementChangedNotification.attr_id)
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
      OS._nsaccessibility_post_notification(@control.attr_view.attr_id, OS::NSAccessibilitySelectedTextChangedNotification.attr_id)
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
      OS._nsaccessibility_post_notification(@control.attr_view.attr_id, OS::NSAccessibilityValueChangedNotification.attr_id)
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
      OS._nsaccessibility_post_notification(@control.attr_view.attr_id, OS::NSAccessibilitySelectedTextChangedNotification.attr_id)
    end
    
    typesig { [::Java::Int] }
    def child_idto_os(child_id)
      if ((child_id).equal?(ACC::CHILDID_SELF))
        return @control.attr_view
      end
      # Check cache for childID, if found, return corresponding osChildID.
      child_ref = @children.get(child_id)
      if ((child_ref).nil?)
        child_ref = SWTAccessibleDelegate.new(self, child_id)
        @children.put(child_id, child_ref)
      end
      return child_ref
    end
    
    typesig { [NSString, NSString] }
    def concat_strings_as_role(str1, str2)
      return_value = str1
      return_value = return_value.string_by_appending_string(NSString.string_with(":"))
      return_value = return_value.string_by_appending_string(str2)
      return return_value
    end
    
    typesig { [::Java::Int] }
    def role_to_os(role)
      ns_return_value = nil # OS.NSAccessibilityUnknownRole;
      case (role)
      when ACC::ROLE_CLIENT_AREA
        ns_return_value = OS::NSAccessibilityGroupRole
      when ACC::ROLE_WINDOW
        ns_return_value = OS::NSAccessibilityWindowRole
      when ACC::ROLE_MENUBAR
        ns_return_value = OS::NSAccessibilityMenuBarRole
      when ACC::ROLE_MENU
        ns_return_value = OS::NSAccessibilityMenuRole
      when ACC::ROLE_MENUITEM
        ns_return_value = OS::NSAccessibilityMenuItemRole
      when ACC::ROLE_SEPARATOR
        ns_return_value = OS::NSAccessibilitySplitterRole
      when ACC::ROLE_TOOLTIP
        ns_return_value = OS::NSAccessibilityHelpTagRole
      when ACC::ROLE_SCROLLBAR
        ns_return_value = OS::NSAccessibilityScrollBarRole
      when ACC::ROLE_DIALOG
        ns_return_value = concat_strings_as_role(OS::NSAccessibilityWindowRole, OS::NSAccessibilityDialogSubrole)
      when ACC::ROLE_LABEL
        ns_return_value = OS::NSAccessibilityStaticTextRole
      when ACC::ROLE_PUSHBUTTON
        ns_return_value = OS::NSAccessibilityButtonRole
      when ACC::ROLE_CHECKBUTTON
        ns_return_value = OS::NSAccessibilityCheckBoxRole
      when ACC::ROLE_RADIOBUTTON
        ns_return_value = OS::NSAccessibilityRadioButtonRole
      when ACC::ROLE_SPLITBUTTON
        ns_return_value = OS::NSAccessibilityMenuButtonRole
      when ACC::ROLE_COMBOBOX
        ns_return_value = OS::NSAccessibilityComboBoxRole
      when ACC::ROLE_TEXT
        style = @control.get_style
        if (!((style & SWT::MULTI)).equal?(0))
          ns_return_value = OS::NSAccessibilityTextAreaRole
        else
          ns_return_value = OS::NSAccessibilityTextFieldRole
        end
      when ACC::ROLE_TOOLBAR
        ns_return_value = OS::NSAccessibilityToolbarRole
      when ACC::ROLE_LIST
        ns_return_value = OS::NSAccessibilityOutlineRole
      when ACC::ROLE_LISTITEM
        ns_return_value = OS::NSAccessibilityStaticTextRole
      when ACC::ROLE_TABLE
        ns_return_value = OS::NSAccessibilityTableRole
      when ACC::ROLE_TABLECELL
        ns_return_value = concat_strings_as_role(OS::NSAccessibilityRowRole, OS::NSAccessibilityTableRowSubrole)
      when ACC::ROLE_TABLECOLUMNHEADER
        ns_return_value = OS::NSAccessibilitySortButtonRole
      when ACC::ROLE_TABLEROWHEADER
        ns_return_value = concat_strings_as_role(OS::NSAccessibilityRowRole, OS::NSAccessibilityTableRowSubrole)
      when ACC::ROLE_TREE
        ns_return_value = OS::NSAccessibilityOutlineRole
      when ACC::ROLE_TREEITEM
        ns_return_value = concat_strings_as_role(OS::NSAccessibilityOutlineRole, OS::NSAccessibilityOutlineRowSubrole)
      when ACC::ROLE_TABFOLDER
        ns_return_value = OS::NSAccessibilityTabGroupRole
      when ACC::ROLE_TABITEM
        ns_return_value = OS::NSAccessibilityRadioButtonRole
      when ACC::ROLE_PROGRESSBAR
        ns_return_value = OS::NSAccessibilityProgressIndicatorRole
      when ACC::ROLE_SLIDER
        ns_return_value = OS::NSAccessibilitySliderRole
      when ACC::ROLE_LINK
        ns_return_value = OS::NSAccessibilityLinkRole
      end
      return ns_return_value.get_string
    end
    
    typesig { [NSString] }
    def os_to_role(os_role)
      if ((os_role).nil?)
        return 0
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityWindowRole))
        return ACC::ROLE_WINDOW
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityMenuBarRole))
        return ACC::ROLE_MENUBAR
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityMenuRole))
        return ACC::ROLE_MENU
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityMenuItemRole))
        return ACC::ROLE_MENUITEM
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilitySplitterRole))
        return ACC::ROLE_SEPARATOR
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityHelpTagRole))
        return ACC::ROLE_TOOLTIP
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityScrollBarRole))
        return ACC::ROLE_SCROLLBAR
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityScrollAreaRole))
        return ACC::ROLE_LIST
      end
      if (os_role.is_equal_to_string(concat_strings_as_role(OS::NSAccessibilityWindowRole, OS::NSAccessibilityDialogSubrole)))
        return ACC::ROLE_DIALOG
      end
      if (os_role.is_equal_to_string(concat_strings_as_role(OS::NSAccessibilityWindowRole, OS::NSAccessibilitySystemDialogSubrole)))
        return ACC::ROLE_DIALOG
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityStaticTextRole))
        return ACC::ROLE_LABEL
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityButtonRole))
        return ACC::ROLE_PUSHBUTTON
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityCheckBoxRole))
        return ACC::ROLE_CHECKBUTTON
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityRadioButtonRole))
        return ACC::ROLE_RADIOBUTTON
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityMenuButtonRole))
        return ACC::ROLE_SPLITBUTTON
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityComboBoxRole))
        return ACC::ROLE_COMBOBOX
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityTextFieldRole))
        return ACC::ROLE_TEXT
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityTextAreaRole))
        return ACC::ROLE_TEXT
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityToolbarRole))
        return ACC::ROLE_TOOLBAR
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityListRole))
        return ACC::ROLE_LIST
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityTableRole))
        return ACC::ROLE_TABLE
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityColumnRole))
        return ACC::ROLE_TABLECOLUMNHEADER
      end
      if (os_role.is_equal_to_string(concat_strings_as_role(OS::NSAccessibilityButtonRole, OS::NSAccessibilitySortButtonRole)))
        return ACC::ROLE_TABLECOLUMNHEADER
      end
      if (os_role.is_equal_to_string(concat_strings_as_role(OS::NSAccessibilityRowRole, OS::NSAccessibilityTableRowSubrole)))
        return ACC::ROLE_TABLEROWHEADER
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityOutlineRole))
        return ACC::ROLE_TREE
      end
      if (os_role.is_equal_to_string(concat_strings_as_role(OS::NSAccessibilityOutlineRole, OS::NSAccessibilityOutlineRowSubrole)))
        return ACC::ROLE_TREEITEM
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityTabGroupRole))
        return ACC::ROLE_TABFOLDER
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityProgressIndicatorRole))
        return ACC::ROLE_PROGRESSBAR
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilitySliderRole))
        return ACC::ROLE_SLIDER
      end
      if (os_role.is_equal_to_string(OS::NSAccessibilityLinkRole))
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
