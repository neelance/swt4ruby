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
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # @param ptr cast=(void *)
      # long
      def free(ptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_free, JNI.env, self.jni_id, ptr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_getenv, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # @param env cast=(const char *)
      # long
      def getenv(env)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_getenv, JNI.env, self.jni_id, env.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_malloc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def malloc(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_malloc, JNI.env, self.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3BI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3BI, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3CI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3CI, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3XdoubleXI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Double), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3XdoubleXI, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3XfloatXI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3XfloatXI, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3II, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3II, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3JI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3JI, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__I_3SI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Short), ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__I_3SI, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3B_3CI, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Char), ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *),flags=no_out critical
      # @param size cast=(size_t)
      # 
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3B_3CI, JNI.env, self.jni_id, dest.jni_id, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3BII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3BII, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove__III, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove__III, JNI.env, self.jni_id, dest.to_int, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3CII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Char), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3CII, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3XdoubleXII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Double), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3XdoubleXII, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3XfloatXII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Float), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3XfloatXII, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3I_3BI, [:pointer, :long, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3I_3BI, JNI.env, self.jni_id, dest.jni_id, src.jni_id, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3SII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Short), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3SII, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3III, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3III, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memmove___3JII, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [Array.typed(::Java::Long), ::Java::Int, ::Java::Int] }
      # @param dest cast=(void *),flags=no_in critical
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memmove___3JII, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_memset, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param buffer cast=(void *),flags=critical
      # @param num cast=(size_t)
      # 
      # long
      # long
      # long
      def memset(buffer, c, num)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_memset, JNI.env, self.jni_id, buffer.to_int, c.to_int, num.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_PTR_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _ptr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_C_PTR_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_C_strlen, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param s cast=(char *)
      # long
      def strlen(s)
        JNI.__send__(:Java_org_eclipse_swt_internal_C_strlen, JNI.env, self.jni_id, s.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__c, :initialize
  end
  
end
