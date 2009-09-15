require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module CImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class C < CImports.const_get :Platform
    include_class_members CImports
    
    class_module.module_eval {
      when_class_loaded do
        if (("Linux" == System.get_property("os.name")) && ("motif" == Platform::SWT_PLATFORM))
          # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
          begin
            Library.load_library("libXm.so.2", false) # $NON-NLS-1$
          rescue JavaThrowable => ex
          end
        end
        Library.load_library("swt") # $NON-NLS-1$
      end
      
      const_set_lazy(:PTR_SIZEOF) { _ptr_sizeof }
      const_attr_reader  :PTR_SIZEOF
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_free, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param ptr cast=(void *)
      # int
      def free(ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_free, JNI.env, self.jni_id, ptr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_getenv, [:pointer, :long, :long], :int64
      typesig { [Array.typed(::Java::Byte)] }
      # @param env cast=(const char *)
      # int
      def getenv(env)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_getenv, JNI.env, self.jni_id, env.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_malloc, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # int
      # int
      def malloc(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_malloc, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3BJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Byte), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3BJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3CJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Char), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3CJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3XdoubleXJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3XdoubleXJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3XfloatXJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Float), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3XfloatXJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3IJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Int), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3IJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3JJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Long), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3JJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__J_3SJ, [:pointer, :long, :int64, :long, :int64], :void
      typesig { [::Java::Long, Array.typed(::Java::Short), ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__J_3SJ, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3B_3CJ, [:pointer, :long, :long, :long, :int64], :void
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Char), ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3B_3CJ, JNI.env, self.jni_id, dest.jni_id, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3BJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Byte), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3BJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__JJJ, [:pointer, :long, :int64, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__JJJ, JNI.env, self.jni_id, dest.to_int, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3CJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Char), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3CJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3XdoubleXJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Double), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3XdoubleXJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3XfloatXJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Float), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3XfloatXJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3I_3BJ, [:pointer, :long, :long, :long, :int64], :void
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3I_3BJ, JNI.env, self.jni_id, dest.jni_id, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3SJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Short), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3SJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3IJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Int), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3IJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3JJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Long), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3JJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memset, [:pointer, :long, :int64, :int32, :int64], :int64
      typesig { [::Java::Long, ::Java::Int, ::Java::Long] }
      # @param buffer cast=(void *),flags=critical
      # @param num cast=(size_t)
      # 
      # int
      # int
      # int
      def memset(buffer, c, num)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memset, JNI.env, self.jni_id, buffer.to_int, c.to_int, num.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_PTR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _ptr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_C_PTR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_strlen, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param s cast=(char *)
      # int
      def strlen(s)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_strlen, JNI.env, self.jni_id, s.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__c___org_eclipse_swt_internal_c_0, :initialize
  end
  
end
