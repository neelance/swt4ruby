require "rjava"

module Org::Eclipse::Swt::Internal::Mozilla
  module NsISecurityCheckedComponentImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsISecurityCheckedComponent < NsISupports
    include_class_members NsISecurityCheckedComponentImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 4 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ISECURITYCHECKEDCOMPONENT_IID_STR) { "0dad9e8c-a12d-4dcb-9a6f-7d09839356e1" }
      const_attr_reader  :NS_ISECURITYCHECKEDCOMPONENT_IID_STR
      
      const_set_lazy(:NS_ISECURITYCHECKEDCOMPONENT_IID) { NsID.new(NS_ISECURITYCHECKEDCOMPONENT_IID_STR) }
      const_attr_reader  :NS_ISECURITYCHECKEDCOMPONENT_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    def _can_create_wrapper(iid, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, iid, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Long)] }
    # int
    # int
    def _can_call_method(iid, method_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, iid, method_name, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Long)] }
    # int
    # int
    def _can_get_property(iid, property_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, iid, property_name, _retval)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Char), Array.typed(::Java::Long)] }
    # int
    # int
    def _can_set_property(iid, property_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, iid, property_name, _retval)
    end
    
    private
    alias_method :initialize_ns_isecurity_checked_component, :initialize
  end
  
end
