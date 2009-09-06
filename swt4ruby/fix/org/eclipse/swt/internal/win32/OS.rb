class Org::Eclipse::Swt::Internal::Win32::OS
  class_module.module_eval {
    typesig { [NMTTDISPINFO, ::Java::Int, ::Java::Int] }
    def _move_memory(destination, source, length_)
      if (IsUnicode)
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTDISPINFOW.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      else
        JNI.__send__("Java_org_eclipse_swt_internal_win32_OS_MoveMemory__L#{NMTTDISPINFOA.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source.to_int, length_.to_int)
      end
    end
  }
end
