require "rjava"

module Org::Eclipse::Swt::Internal::Mozilla
  module NsIWritableVariantImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWritableVariant < NsIWritableVariantImports.const_get :NsIVariant
    include_class_members NsIWritableVariantImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIVariant::LAST_METHOD_ID + 31 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWRITABLEVARIANT_IID_STR) { "5586a590-8c82-11d5-90f3-0010a4e73d9a" }
      const_attr_reader  :NS_IWRITABLEVARIANT_IID_STR
      
      const_set_lazy(:NS_IWRITABLEVARIANT_IID) { NsID.new(NS_IWRITABLEVARIANT_IID_STR) }
      const_attr_reader  :NS_IWRITABLEVARIANT_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_writable(a_writable)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 1, get_address, a_writable)
    end
    
    typesig { [::Java::Int] }
    def _set_writable(a_writable)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 2, get_address, a_writable)
    end
    
    typesig { [::Java::Int] }
    # public int SetAsInt8(!ERROR UNKNOWN C TYPE <PRUint8 >! aValue) {
    # return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 3, getAddress(), aValue);
    # }
    # 
    # public int SetAsInt16(!ERROR UNKNOWN C TYPE <PRInt16 >! aValue) {
    # return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 4, getAddress(), aValue);
    # }
    def _set_as_int32(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 5, get_address, a_value)
    end
    
    typesig { [::Java::Long] }
    def _set_as_int64(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 6, get_address, a_value)
    end
    
    typesig { [::Java::Short] }
    # public int SetAsUint8(!ERROR UNKNOWN C TYPE <PRUint8 >! aValue) {
    # return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 7, getAddress(), aValue);
    # }
    def _set_as_uint16(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 8, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    def _set_as_uint32(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 9, get_address, a_value)
    end
    
    typesig { [::Java::Float] }
    # public int SetAsUint64(!ERROR UNKNOWN C TYPE <PRUint64 >! aValue) {
    # return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 10, getAddress(), aValue);
    # }
    def _set_as_float(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 11, get_address, a_value)
    end
    
    typesig { [::Java::Double] }
    def _set_as_double(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 12, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    def _set_as_bool(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 13, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    # public int SetAsChar(!ERROR UNKNOWN C TYPE <char >! aValue) {
    # return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 14, getAddress(), aValue);
    # }
    # 
    # public int SetAsWChar(!ERROR UNKNOWN C TYPE <PRUnichar >! aValue) {
    # return XPCOM.VtblCall(nsIVariant.LAST_METHOD_ID + 15, getAddress(), aValue);
    # }
    # long
    def _set_as_id(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 16, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_as_astring(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 17, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_as_domstring(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 18, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_as_acstring(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 19, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_as_autf8string(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 20, get_address, a_value)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _set_as_string(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 21, get_address, a_value)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def _set_as_wstring(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 22, get_address, a_value)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_as_isupports(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 23, get_address, a_value)
    end
    
    typesig { [NsID, ::Java::Int] }
    # long
    def _set_as_interface(iid, iface)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 24, get_address, iid, iface)
    end
    
    typesig { [::Java::Short, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _set_as_array(type, iid, count, ptr)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 25, get_address, type, iid, count, ptr)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Byte)] }
    def _set_as_string_with_size(size, str)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 26, get_address, size, str)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Char)] }
    def _set_as_wstring_with_size(size, str)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 27, get_address, size, str)
    end
    
    typesig { [] }
    def _set_as_void
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 28, get_address)
    end
    
    typesig { [] }
    def _set_as_empty
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 29, get_address)
    end
    
    typesig { [] }
    def _set_as_empty_array
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 30, get_address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_from_variant(a_value)
      return XPCOM._vtbl_call(NsIVariant::LAST_METHOD_ID + 31, get_address, a_value)
    end
    
    private
    alias_method :initialize_ns_iwritable_variant, :initialize
  end
  
end
