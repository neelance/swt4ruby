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
  module SWTAccessibleDelegateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class SWTAccessibleDelegate < SWTAccessibleDelegateImports.const_get :NSObject
    include_class_members SWTAccessibleDelegateImports
    
    class_module.module_eval {
      # Accessible Key: The string constant for looking up the accessible
      # for a control using <code>getData(String)</code>. When an accessible
      # is created for a control, it is stored as a property in the control
      # using <code>setData(String, Object)</code>.
      const_set_lazy(:ACCESSIBLE_KEY) { "Accessible" }
      const_attr_reader  :ACCESSIBLE_KEY
      
      # $NON-NLS-1$
      const_set_lazy(:SWT_OBJECT) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?O.ord), Character.new(?B.ord), Character.new(?J.ord), Character.new(?E.ord), Character.new(?C.ord), Character.new(?T.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_OBJECT
      
      
      def accessible2args
        defined?(@@accessible2args) ? @@accessible2args : @@accessible2args= nil
      end
      alias_method :attr_accessible2args, :accessible2args
      
      def accessible2args=(value)
        @@accessible2args = value
      end
      alias_method :attr_accessible2args=, :accessible2args=
      
      
      def accessible3args
        defined?(@@accessible3args) ? @@accessible3args : @@accessible3args= nil
      end
      alias_method :attr_accessible3args, :accessible3args
      
      def accessible3args=(value)
        @@accessible3args = value
      end
      alias_method :attr_accessible3args=, :accessible3args=
      
      
      def accessible4args
        defined?(@@accessible4args) ? @@accessible4args : @@accessible4args= nil
      end
      alias_method :attr_accessible4args, :accessible4args
      
      def accessible4args=(value)
        @@accessible4args = value
      end
      alias_method :attr_accessible4args=, :accessible4args=
      
      # long
      
      def proc2args
        defined?(@@proc2args) ? @@proc2args : @@proc2args= 0
      end
      alias_method :attr_proc2args, :proc2args
      
      def proc2args=(value)
        @@proc2args = value
      end
      alias_method :attr_proc2args=, :proc2args=
      
      
      def proc3args
        defined?(@@proc3args) ? @@proc3args : @@proc3args= 0
      end
      alias_method :attr_proc3args, :proc3args
      
      def proc3args=(value)
        @@proc3args = value
      end
      alias_method :attr_proc3args=, :proc3args=
      
      
      def proc4args
        defined?(@@proc4args) ? @@proc4args : @@proc4args= 0
      end
      alias_method :attr_proc4args, :proc4args
      
      def proc4args=(value)
        @@proc4args = value
      end
      alias_method :attr_proc4args=, :proc4args=
    }
    
    attr_accessor :accessible_parent
    alias_method :attr_accessible_parent, :accessible_parent
    undef_method :accessible_parent
    alias_method :attr_accessible_parent=, :accessible_parent=
    undef_method :accessible_parent=
    
    # long
    attr_accessor :delegate_jni_ref
    alias_method :attr_delegate_jni_ref, :delegate_jni_ref
    undef_method :delegate_jni_ref
    alias_method :attr_delegate_jni_ref=, :delegate_jni_ref=
    undef_method :delegate_jni_ref=
    
    attr_accessor :child_id
    alias_method :attr_child_id, :child_id
    undef_method :child_id
    alias_method :attr_child_id=, :child_id=
    undef_method :child_id=
    
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
    
    class_module.module_eval {
      when_class_loaded do
        clazz = SWTAccessibleDelegate
        self.attr_accessible2args = Callback.new(clazz, "accessibleProc", 2)
        self.attr_proc2args = self.attr_accessible2args.get_address
        if ((self.attr_proc2args).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_accessible3args = Callback.new(clazz, "accessibleProc", 3)
        self.attr_proc3args = self.attr_accessible3args.get_address
        if ((self.attr_proc3args).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_accessible4args = Callback.new(clazz, "accessibleProc", 4)
        self.attr_proc4args = self.attr_accessible3args.get_address
        if ((self.attr_proc4args).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        # Accessible custom controls need to implement the NSAccessibility protocol. To do that,
        # we dynamically add the methods to the control's class that are required
        # by NSAccessibility. Then, when external assistive technology services are used,
        # those methods get called to provide the needed information.
        class_name = "SWTAccessibleDelegate"
        # TODO: These should either move out of Display or be accessible to this class.
        types = Array.typed(::Java::Byte).new([Character.new(?*.ord), Character.new(?\0.ord)])
        size = C::PTR_SIZEOF
        align = (C::PTR_SIZEOF).equal?(4) ? 2 : 3
        # long
        cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
        OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
        # Add the NSAccessibility overrides
        OS.class_add_method(cls, OS.attr_sel_accessibility_action_names, self.attr_proc2args, "@:")
        OS.class_add_method(cls, OS.attr_sel_accessibility_attribute_names, self.attr_proc2args, "@:")
        OS.class_add_method(cls, OS.attr_sel_accessibility_parameterized_attribute_names, self.attr_proc2args, "@:")
        OS.class_add_method(cls, OS.attr_sel_accessibility_is_ignored, self.attr_proc2args, "@:")
        OS.class_add_method(cls, OS.attr_sel_accessibility_focused_uielement, self.attr_proc2args, "@:")
        OS.class_add_method(cls, OS.attr_sel_accessibility_attribute_value_, self.attr_proc3args, "@:@")
        OS.class_add_method(cls, OS.attr_sel_accessibility_hit_test_, self.attr_proc3args, "@:{NSPoint}")
        OS.class_add_method(cls, OS.attr_sel_accessibility_is_attribute_settable_, self.attr_proc3args, "@:@")
        OS.class_add_method(cls, OS.attr_sel_accessibility_action_description_, self.attr_proc3args, "@:@")
        OS.class_add_method(cls, OS.attr_sel_accessibility_perform_action_, self.attr_proc3args, "@:@")
        OS.class_add_method(cls, OS.attr_sel_accessibility_attribute_value_for_parameter_, self.attr_proc4args, "@:@@")
        OS.class_add_method(cls, OS.attr_sel_accessibility_set_value_for_attribute_, self.attr_proc4args, "@:@@")
        OS.objc_register_class_pair(cls)
      end
    }
    
    typesig { [Accessible, ::Java::Int] }
    def initialize(accessible, child_id)
      @accessible_parent = nil
      @delegate_jni_ref = 0
      @child_id = 0
      @attribute_names = nil
      @parameterized_attribute_names = nil
      @action_names = nil
      super(0)
      @attribute_names = nil
      @parameterized_attribute_names = nil
      @action_names = nil
      @accessible_parent = accessible
      @child_id = child_id
      alloc.init
      @delegate_jni_ref = OS._new_global_ref(self)
      if ((@delegate_jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.object_set_instance_variable(self.attr_id, SWT_OBJECT, @delegate_jni_ref)
    end
    
    typesig { [] }
    def accessibility_action_names
      if (!(@action_names).nil?)
        return retained_autoreleased(@action_names)
      end
      @action_names = @accessible_parent.internal_accessibility_action_names(@child_id)
      @action_names.retain
      return retained_autoreleased(@action_names)
    end
    
    typesig { [] }
    def accessibility_attribute_names
      if (!(@attribute_names).nil?)
        return retained_autoreleased(@attribute_names)
      end
      @attribute_names = @accessible_parent.internal_accessibility_attribute_names(@child_id)
      @attribute_names.retain
      return retained_autoreleased(@attribute_names)
    end
    
    typesig { [NSString] }
    def accessibility_attribute_value(attribute)
      return @accessible_parent.internal_accessibility_attribute_value(attribute, @child_id)
    end
    
    typesig { [] }
    # parameterized attribute methods
    def accessibility_parameterized_attribute_names
      if (!(@parameterized_attribute_names).nil?)
        return retained_autoreleased(@parameterized_attribute_names)
      end
      @parameterized_attribute_names = @accessible_parent.internal_accessibility_parameterized_attribute_names(@child_id)
      @parameterized_attribute_names.retain
      return retained_autoreleased(@parameterized_attribute_names)
    end
    
    typesig { [NSString, Id] }
    def accessibility_attribute_value_for_parameter(attribute, parameter)
      return @accessible_parent.internal_accessibility_attribute_value_for_parameter(attribute, parameter, @child_id)
    end
    
    typesig { [] }
    # Return YES if the UIElement doesn't show up to the outside world - i.e. its parent should return the UIElement's children as its own - cutting the UIElement out. E.g. NSControls are ignored when they are single-celled.
    def accessibility_is_ignored
      return @accessible_parent.internal_accessibility_is_ignored(@child_id)
    end
    
    typesig { [NSString] }
    def accessibility_is_attribute_settable(attribute)
      return false
    end
    
    typesig { [NSPoint] }
    # Returns the deepest descendant of the UIElement hierarchy that contains the point. You can assume the point has already been determined to lie within the receiver. Override this method to do deeper hit testing within a UIElement - e.g. a NSMatrix would test its cells. The point is bottom-left relative screen coordinates.
    def accessibility_hit_test(point)
      return @accessible_parent.internal_accessibility_hit_test(point, @child_id)
    end
    
    typesig { [] }
    # Returns the UI Element that has the focus. You can assume that the search for the focus has already been narrowed down to the reciever. Override this method to do a deeper search with a UIElement - e.g. a NSMatrix would determine if one of its cells has the focus.
    def accessibility_focused_uielement
      return @accessible_parent.internal_accessibility_focused_uielement(@child_id)
    end
    
    typesig { [NSString] }
    def accessibility_perform_action(action)
      @accessible_parent.internal_accessibility_perform_action(action, @child_id)
    end
    
    typesig { [NSString] }
    def accessibility_action_description(action)
      return @accessible_parent.internal_accessibility_action_description(action, @child_id)
    end
    
    typesig { [Id, NSString] }
    def accessibility_set_value_for_attribute(value, attribute)
    end
    
    class_module.module_eval {
      typesig { [NSArray] }
      def retained_autoreleased(in_object)
        temp = in_object.retain
        temp2 = NSObject.new(temp.attr_id).autorelease
        return NSArray.new(temp2.attr_id)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def accessible_proc(id, sel)
        swt_acc = get_accessible_delegate(id)
        if ((swt_acc).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_accessibility_attribute_names))
          ret_object = swt_acc.accessibility_attribute_names
          return ((ret_object).nil? ? 0 : ret_object.attr_id)
        else
          if ((sel).equal?(OS.attr_sel_accessibility_action_names))
            ret_object = swt_acc.accessibility_action_names
            return ((ret_object).nil? ? 0 : ret_object.attr_id)
          else
            if ((sel).equal?(OS.attr_sel_accessibility_parameterized_attribute_names))
              ret_object = swt_acc.accessibility_parameterized_attribute_names
              return ((ret_object).nil? ? 0 : ret_object.attr_id)
            else
              if ((sel).equal?(OS.attr_sel_accessibility_is_ignored))
                ret_val = swt_acc.accessibility_is_ignored
                return (ret_val ? 1 : 0)
              else
                if ((sel).equal?(OS.attr_sel_accessibility_focused_uielement))
                  ret_object = swt_acc.accessibility_focused_uielement
                  return ((ret_object).nil? ? 0 : ret_object.attr_id)
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def accessible_proc(id, sel, arg0)
        swt_acc = get_accessible_delegate(id)
        if ((swt_acc).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_accessibility_attribute_value_))
          attribute = NSString.new(arg0)
          ret_object = swt_acc.accessibility_attribute_value(attribute)
          return ((ret_object).nil? ? 0 : ret_object.attr_id)
        else
          if ((sel).equal?(OS.attr_sel_accessibility_hit_test_))
            point = NSPoint.new
            OS.memmove(point, arg0, NSPoint.attr_sizeof)
            ret_object = swt_acc.accessibility_hit_test(point)
            return ((ret_object).nil? ? 0 : ret_object.attr_id)
          else
            if ((sel).equal?(OS.attr_sel_accessibility_is_attribute_settable_))
              attribute = NSString.new(arg0)
              return (swt_acc.accessibility_is_attribute_settable(attribute) ? 1 : 0)
            else
              if ((sel).equal?(OS.attr_sel_accessibility_action_description_))
                action = NSString.new(arg0)
                ret_object = swt_acc.accessibility_action_description(action)
                return ((ret_object).nil? ? 0 : ret_object.attr_id)
              else
                if ((sel).equal?(OS.attr_sel_accessibility_perform_action_))
                  action = NSString.new(arg0)
                  swt_acc.accessibility_perform_action(action)
                end
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def accessible_proc(id, sel, arg0, arg1)
        swt_acc = get_accessible_delegate(id)
        if ((swt_acc).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_accessibility_attribute_value_for_parameter_))
          attribute = NSString.new(arg0)
          parameter = Id.new(arg1)
          ret_object = swt_acc.accessibility_attribute_value_for_parameter(attribute, parameter)
          return ((ret_object).nil? ? 0 : ret_object.attr_id)
        else
          if ((sel).equal?(OS.attr_sel_accessibility_set_value_for_attribute_))
            value = Id.new(arg0)
            attribute = NSString.new(arg1)
            swt_acc.accessibility_set_value_for_attribute(value, attribute)
          end
        end
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      def get_accessible_delegate(id)
        if ((id).equal?(0))
          return nil
        end
        # long
        # long
        jni_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, SWT_OBJECT, jni_ref)
        if ((jni_ref[0]).equal?(0))
          return nil
        end
        return OS._jniget_object(jni_ref[0])
      end
    }
    
    typesig { [] }
    def internal_dispose__swtaccessible_delegate
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
      if (!(@delegate_jni_ref).equal?(0))
        OS._delete_global_ref(@delegate_jni_ref)
      end
      @delegate_jni_ref = 0
      OS.object_set_instance_variable(self.attr_id, SWT_OBJECT, 0)
    end
    
    private
    alias_method :initialize__swtaccessible_delegate, :initialize
  end
  
end
