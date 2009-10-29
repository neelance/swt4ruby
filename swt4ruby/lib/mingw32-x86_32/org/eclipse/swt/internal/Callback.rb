require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module CallbackImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # Instances of this class represent entry points into Java
  # which can be invoked from operating system level callback
  # routines.
  # <p>
  # IMPORTANT: A callback is only valid when invoked on the
  # thread which created it. The results are undefined (and
  # typically bad) when a callback is passed out to the
  # operating system (or other code) in such a way that the
  # callback is called from a different thread.
  class Callback 
    include_class_members CallbackImports
    
    attr_accessor :object
    alias_method :attr_object, :object
    undef_method :object
    alias_method :attr_object=, :object=
    undef_method :object=
    
    attr_accessor :method
    alias_method :attr_method, :method
    undef_method :method
    alias_method :attr_method=, :method=
    undef_method :method=
    
    attr_accessor :signature
    alias_method :attr_signature, :signature
    undef_method :signature
    alias_method :attr_signature=, :signature=
    undef_method :signature=
    
    attr_accessor :arg_count
    alias_method :attr_arg_count, :arg_count
    undef_method :arg_count
    alias_method :attr_arg_count=, :arg_count=
    undef_method :arg_count=
    
    # long
    attr_accessor :address
    alias_method :attr_address, :address
    undef_method :address
    alias_method :attr_address=, :address=
    undef_method :address=
    
    attr_accessor :error_result
    alias_method :attr_error_result, :error_result
    undef_method :error_result
    alias_method :attr_error_result=, :error_result=
    undef_method :error_result=
    
    attr_accessor :is_static
    alias_method :attr_is_static, :is_static
    undef_method :is_static
    alias_method :attr_is_static=, :is_static=
    undef_method :is_static=
    
    attr_accessor :is_array_based
    alias_method :attr_is_array_based, :is_array_based
    undef_method :is_array_based
    alias_method :attr_is_array_based=, :is_array_based=
    undef_method :is_array_based=
    
    class_module.module_eval {
      const_set_lazy(:PTR_SIGNATURE) { (C::PTR_SIZEOF).equal?(4) ? "I" : "J" }
      const_attr_reader  :PTR_SIGNATURE
      
      # $NON-NLS-1$  //$NON-NLS-2$
      const_set_lazy(:SIGNATURE_0) { get_signature(0) }
      const_attr_reader  :SIGNATURE_0
      
      const_set_lazy(:SIGNATURE_1) { get_signature(1) }
      const_attr_reader  :SIGNATURE_1
      
      const_set_lazy(:SIGNATURE_2) { get_signature(2) }
      const_attr_reader  :SIGNATURE_2
      
      const_set_lazy(:SIGNATURE_3) { get_signature(3) }
      const_attr_reader  :SIGNATURE_3
      
      const_set_lazy(:SIGNATURE_4) { get_signature(4) }
      const_attr_reader  :SIGNATURE_4
      
      const_set_lazy(:SIGNATURE_N) { "([" + PTR_SIGNATURE + ")" + PTR_SIGNATURE }
      const_attr_reader  :SIGNATURE_N
    }
    
    typesig { [Object, String, ::Java::Int] }
    # $NON-NLS-1$  //$NON-NLS-2$
    # 
    # Constructs a new instance of this class given an object
    # to send the message to, a string naming the method to
    # invoke and an argument count. Note that, if the object
    # is an instance of <code>Class</code> it is assumed that
    # the method is a static method on that class.
    # 
    # @param object the object to send the message to
    # @param method the name of the method to invoke
    # @param argCount the number of arguments that the method takes
    def initialize(object, method, arg_count)
      initialize__callback(object, method, arg_count, false)
    end
    
    typesig { [Object, String, ::Java::Int, ::Java::Boolean] }
    # Constructs a new instance of this class given an object
    # to send the message to, a string naming the method to
    # invoke, an argument count and a flag indicating whether
    # or not the arguments will be passed in an array. Note
    # that, if the object is an instance of <code>Class</code>
    # it is assumed that the method is a static method on that
    # class.
    # 
    # @param object the object to send the message to
    # @param method the name of the method to invoke
    # @param argCount the number of arguments that the method takes
    # @param isArrayBased <code>true</code> if the arguments should be passed in an array and false otherwise
    def initialize(object, method, arg_count, is_array_based)
      initialize__callback(object, method, arg_count, is_array_based, 0)
    end
    
    typesig { [Object, String, ::Java::Int, ::Java::Boolean, ::Java::Int] }
    # Constructs a new instance of this class given an object
    # to send the message to, a string naming the method to
    # invoke, an argument count, a flag indicating whether
    # or not the arguments will be passed in an array and a value
    # to return when an exception happens. Note that, if
    # the object is an instance of <code>Class</code>
    # it is assumed that the method is a static method on that
    # class.
    # 
    # @param object the object to send the message to
    # @param method the name of the method to invoke
    # @param argCount the number of arguments that the method takes
    # @param isArrayBased <code>true</code> if the arguments should be passed in an array and false otherwise
    # @param errorResult the return value if the java code throws an exception
    # 
    # long
    def initialize(object, method, arg_count, is_array_based, error_result)
      @object = nil
      @method = nil
      @signature = nil
      @arg_count = 0
      @address = 0
      @error_result = 0
      @is_static = false
      @is_array_based = false
      # Set the callback fields
      @object = object
      @method = method
      @arg_count = arg_count
      @is_static = object.is_a?(Class)
      @is_array_based = is_array_based
      @error_result = error_result
      # Inline the common cases
      if (is_array_based)
        @signature = SIGNATURE_N
      else
        case (arg_count)
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        when 0
          @signature = SIGNATURE_0
        when 1
          @signature = SIGNATURE_1
        when 2
          @signature = SIGNATURE_2
        when 3
          @signature = SIGNATURE_3
        when 4
          @signature = SIGNATURE_4
        else
          @signature = RJava.cast_to_string(get_signature(arg_count))
        end
      end
      # Bind the address
      @address = bind(self, object, method, @signature, arg_count, @is_static, is_array_based, error_result)
    end
    
    class_module.module_eval {
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_bind, [:pointer, :long, :long, :long, :long, :long, :int32, :int8, :int8, :int32], :int32
      typesig { [Callback, Object, String, String, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      # Allocates the native level resources associated with the
      # callback. This method is only invoked from within the
      # constructor for the argument.
      # 
      # @param callback the callback to bind
      # @param object the callback's object
      # @param method the callback's method
      # @param signature the callback's method signature
      # @param argCount the callback's method argument count
      # @param isStatic whether the callback's method is static
      # @param isArrayBased whether the callback's method is array based
      # @param errorResult the callback's error result
      # 
      # long
      # long
      def bind(callback, object, method, signature, arg_count, is_static, is_array_based, error_result)
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_bind, JNI.env, self.jni_id, callback.jni_id, object.jni_id, method.jni_id, signature.jni_id, arg_count.to_int, is_static ? 1 : 0, is_array_based ? 1 : 0, error_result.to_int)
      end
    }
    
    typesig { [] }
    # Releases the native level resources associated with the callback,
    # and removes all references between the callback and
    # other objects. This helps to prevent (bad) application code
    # from accidentally holding onto extraneous garbage.
    def dispose
      if ((@object).nil?)
        return
      end
      unbind(self)
      @object = @method = RJava.cast_to_string(@signature = RJava.cast_to_string(nil))
      @address = 0
    end
    
    typesig { [] }
    # Returns the address of a block of machine code which will
    # invoke the callback represented by the receiver.
    # 
    # @return the callback address
    # 
    # long
    def get_address
      return @address
    end
    
    class_module.module_eval {
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_getPlatform, [:pointer, :long], :long
      typesig { [] }
      # Returns the SWT platform name.
      # 
      # @return the platform name of the currently running SWT
      def get_platform
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_getPlatform, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_getEntryCount, [:pointer, :long], :int32
      typesig { [] }
      # Returns the number of times the system has been recursively entered
      # through a callback.
      # <p>
      # Note: This should not be called by application code.
      # </p>
      # 
      # @return the entry count
      # 
      # @since 2.1
      def get_entry_count
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_getEntryCount, JNI.env, self.jni_id)
      end
      
      typesig { [::Java::Int] }
      def get_signature(arg_count)
        signature = "(" # $NON-NLS-1$
        i = 0
        while i < arg_count
          signature += PTR_SIGNATURE
          i += 1
        end
        signature += ")" + PTR_SIGNATURE # $NON-NLS-1$
        return signature
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_setEnabled, [:pointer, :long, :int8], :void
      typesig { [::Java::Boolean] }
      # Indicates whether or not callbacks which are triggered at the
      # native level should cause the messages described by the matching
      # <code>Callback</code> objects to be invoked. This method is used
      # to safely shut down SWT when it is run within environments
      # which can generate spurious events.
      # <p>
      # Note: This should not be called by application code.
      # </p>
      # 
      # @param enable true if callbacks should be invoked
      def set_enabled(enable)
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_setEnabled, JNI.env, self.jni_id, enable ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_getEnabled, [:pointer, :long], :int8
      typesig { [] }
      # Returns whether or not callbacks which are triggered at the
      # native level should cause the messages described by the matching
      # <code>Callback</code> objects to be invoked. This method is used
      # to safely shut down SWT when it is run within environments
      # which can generate spurious events.
      # <p>
      # Note: This should not be called by application code.
      # </p>
      # 
      # @return true if callbacks should not be invoked
      def get_enabled
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_getEnabled, JNI.env, self.jni_id) != 0
      end
      
      typesig { [::Java::Boolean] }
      # This might be called directly from native code in environments
      # which can generate spurious events. Check before removing it.
      # 
      # @deprecated
      # 
      # @param ignore true if callbacks should not be invoked
      def ignore_callbacks(ignore)
        set_enabled(!ignore)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_reset, [:pointer, :long], :void
      typesig { [] }
      # Immediately wipes out all native level state associated
      # with <em>all</em> callbacks.
      # <p>
      # <b>WARNING:</b> This operation is <em>extremely</em> dangerous,
      # and should never be performed by application code.
      # </p>
      def reset
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_reset, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_Callback_unbind, [:pointer, :long, :long], :void
      typesig { [Callback] }
      # Releases the native level resources associated with the callback.
      # 
      # @see #dispose
      def unbind(callback)
        JNI.__send__(:Java_org_eclipse_swt_internal_Callback_unbind, JNI.env, self.jni_id, callback.jni_id)
      end
    }
    
    private
    alias_method :initialize__callback, :initialize
  end
  
end
