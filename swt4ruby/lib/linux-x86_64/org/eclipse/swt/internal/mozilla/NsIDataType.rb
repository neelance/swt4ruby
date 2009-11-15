require "rjava"

module Org::Eclipse::Swt::Internal::Mozilla
  module NsIDataTypeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDataType < NsIDataTypeImports.const_get :NsISupports
    include_class_members NsIDataTypeImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 0 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDATATYPE_IID_STR) { "4d12e540-83d7-11d5-90ed-0010a4e73d9a" }
      const_attr_reader  :NS_IDATATYPE_IID_STR
      
      const_set_lazy(:NS_IDATATYPE_IID) { NsID.new(NS_IDATATYPE_IID_STR) }
      const_attr_reader  :NS_IDATATYPE_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:VTYPE_INT8) { 0 }
      const_attr_reader  :VTYPE_INT8
      
      const_set_lazy(:VTYPE_INT16) { 1 }
      const_attr_reader  :VTYPE_INT16
      
      const_set_lazy(:VTYPE_INT32) { 2 }
      const_attr_reader  :VTYPE_INT32
      
      const_set_lazy(:VTYPE_INT64) { 3 }
      const_attr_reader  :VTYPE_INT64
      
      const_set_lazy(:VTYPE_UINT8) { 4 }
      const_attr_reader  :VTYPE_UINT8
      
      const_set_lazy(:VTYPE_UINT16) { 5 }
      const_attr_reader  :VTYPE_UINT16
      
      const_set_lazy(:VTYPE_UINT32) { 6 }
      const_attr_reader  :VTYPE_UINT32
      
      const_set_lazy(:VTYPE_UINT64) { 7 }
      const_attr_reader  :VTYPE_UINT64
      
      const_set_lazy(:VTYPE_FLOAT) { 8 }
      const_attr_reader  :VTYPE_FLOAT
      
      const_set_lazy(:VTYPE_DOUBLE) { 9 }
      const_attr_reader  :VTYPE_DOUBLE
      
      const_set_lazy(:VTYPE_BOOL) { 10 }
      const_attr_reader  :VTYPE_BOOL
      
      const_set_lazy(:VTYPE_CHAR) { 11 }
      const_attr_reader  :VTYPE_CHAR
      
      const_set_lazy(:VTYPE_WCHAR) { 12 }
      const_attr_reader  :VTYPE_WCHAR
      
      const_set_lazy(:VTYPE_VOID) { 13 }
      const_attr_reader  :VTYPE_VOID
      
      const_set_lazy(:VTYPE_ID) { 14 }
      const_attr_reader  :VTYPE_ID
      
      const_set_lazy(:VTYPE_DOMSTRING) { 15 }
      const_attr_reader  :VTYPE_DOMSTRING
      
      const_set_lazy(:VTYPE_CHAR_STR) { 16 }
      const_attr_reader  :VTYPE_CHAR_STR
      
      const_set_lazy(:VTYPE_WCHAR_STR) { 17 }
      const_attr_reader  :VTYPE_WCHAR_STR
      
      const_set_lazy(:VTYPE_INTERFACE) { 18 }
      const_attr_reader  :VTYPE_INTERFACE
      
      const_set_lazy(:VTYPE_INTERFACE_IS) { 19 }
      const_attr_reader  :VTYPE_INTERFACE_IS
      
      const_set_lazy(:VTYPE_ARRAY) { 20 }
      const_attr_reader  :VTYPE_ARRAY
      
      const_set_lazy(:VTYPE_STRING_SIZE_IS) { 21 }
      const_attr_reader  :VTYPE_STRING_SIZE_IS
      
      const_set_lazy(:VTYPE_WSTRING_SIZE_IS) { 22 }
      const_attr_reader  :VTYPE_WSTRING_SIZE_IS
      
      const_set_lazy(:VTYPE_UTF8STRING) { 23 }
      const_attr_reader  :VTYPE_UTF8STRING
      
      const_set_lazy(:VTYPE_CSTRING) { 24 }
      const_attr_reader  :VTYPE_CSTRING
      
      const_set_lazy(:VTYPE_ASTRING) { 25 }
      const_attr_reader  :VTYPE_ASTRING
      
      const_set_lazy(:VTYPE_EMPTY_ARRAY) { 254 }
      const_attr_reader  :VTYPE_EMPTY_ARRAY
      
      const_set_lazy(:VTYPE_EMPTY) { 255 }
      const_attr_reader  :VTYPE_EMPTY
    }
    
    private
    alias_method :initialize_ns_idata_type, :initialize
  end
  
end
