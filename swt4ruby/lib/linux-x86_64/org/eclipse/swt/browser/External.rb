require "rjava"

# Copyright (c) 2008, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module ExternalImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class External 
    include_class_members ExternalImports
    
    class_module.module_eval {
      const_set_lazy(:EXTERNAL_IID_STR) { "ded01d20-ba6f-11dd-ad8b-0800200c9a66" }
      const_attr_reader  :EXTERNAL_IID_STR
      
      # $NON-NLS-1$
      const_set_lazy(:EXTERNAL_IID) { NsID.new(EXTERNAL_IID_STR) }
      const_attr_reader  :EXTERNAL_IID
    }
    
    attr_accessor :supports
    alias_method :attr_supports, :supports
    undef_method :supports
    alias_method :attr_supports=, :supports=
    undef_method :supports=
    
    attr_accessor :external
    alias_method :attr_external, :external
    undef_method :external
    alias_method :attr_external=, :external=
    undef_method :external=
    
    attr_accessor :class_info
    alias_method :attr_class_info, :class_info
    undef_method :class_info
    alias_method :attr_class_info=, :class_info=
    undef_method :class_info=
    
    attr_accessor :security_checked_component
    alias_method :attr_security_checked_component, :security_checked_component
    undef_method :security_checked_component
    alias_method :attr_security_checked_component=, :security_checked_component=
    undef_method :security_checked_component=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    typesig { [] }
    def initialize
      @supports = nil
      @external = nil
      @class_info = nil
      @security_checked_component = nil
      @ref_count = 0
      create_cominterfaces
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in External
        include_class_members External
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @class_info = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in External
        include_class_members External
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          return get_interfaces(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          # 64
          return get_helper_for_language(RJava.cast_to_int(args[0]), args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method5 do |args|
          return get_contract_id(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method6 do |args|
          return get_class_description(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method7 do |args|
          return get_class_id(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method8 do |args|
          return get_implementation_language(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method9 do |args|
          return get_flags(args[0])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method10 do |args|
          return get_class_idno_alloc(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 2, 1, 1, 1, 1, 1, 1]))
      @security_checked_component = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in External
        include_class_members External
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          return can_create_wrapper(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method4 do |args|
          return can_call_method(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method5 do |args|
          return can_get_property(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method6 do |args|
          return can_set_property(args[0], args[1], args[2])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 3, 3, 3]))
      @external = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in External
        include_class_members External
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Long)] }
        # int
        # int
        define_method :method3 do |args|
          # 64
          return call_java(RJava.cast_to_int(args[0]), args[1], args[2])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@supports).nil?)
        @supports.dispose
        @supports = nil
      end
      if (!(@external).nil?)
        @external.dispose
        @external = nil
      end
    end
    
    typesig { [] }
    # int
    def get_address
      return @external.get_address
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return XPCOM::NS_ERROR_NO_INTERFACE
      end
      guid = NsID.new
      XPCOM.memmove___org_eclipse_swt_browser_external_1(guid, riid, self.attr_ns_id.attr_sizeof)
      if (guid._equals(NsISupports::NS_ISUPPORTS_IID))
        # int
        XPCOM.memmove___org_eclipse_swt_browser_external_3(ppv_object, Array.typed(::Java::Long).new([@supports.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsIClassInfo::NS_ICLASSINFO_IID))
        # int
        XPCOM.memmove___org_eclipse_swt_browser_external_5(ppv_object, Array.typed(::Java::Long).new([@class_info.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(NsISecurityCheckedComponent::NS_ISECURITYCHECKEDCOMPONENT_IID))
        # int
        XPCOM.memmove___org_eclipse_swt_browser_external_7(ppv_object, Array.typed(::Java::Long).new([@security_checked_component.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      if (guid._equals(EXTERNAL_IID))
        # int
        XPCOM.memmove___org_eclipse_swt_browser_external_9(ppv_object, Array.typed(::Java::Long).new([@external.get_address]), C::PTR_SIZEOF)
        _add_ref
        return XPCOM::NS_OK
      end
      # int
      XPCOM.memmove___org_eclipse_swt_browser_external_11(ppv_object, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_ERROR_NO_INTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
      end
      return @ref_count
    end
    
    typesig { [::Java::Long] }
    # nsIClassInfo
    # int
    def get_class_description(_ret_value)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      memory = NsIMemory.new(result[0])
      result[0] = 0
      bytes = MozillaDelegate.wcs_to_mbcs(nil, "external", true) # $NON-NLS-1$
      # int
      ptr = memory._alloc(bytes.attr_length)
      C.memmove___org_eclipse_swt_browser_external_13(ptr, bytes, bytes.attr_length)
      # int
      C.memmove___org_eclipse_swt_browser_external_15(_ret_value, Array.typed(::Java::Long).new([ptr]), C::PTR_SIZEOF)
      memory._release
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def get_class_id(_ret_value)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def get_class_idno_alloc(_ret_value)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def get_contract_id(_ret_value)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def get_flags(flags)
      C.memmove___org_eclipse_swt_browser_external_17(flags, Array.typed(::Java::Int).new([NsIClassInfo::MAIN_THREAD_ONLY]), 4)
      # PRUint32
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Int, ::Java::Long] }
    # int
    def get_helper_for_language(language, _ret_value)
      # int
      C.memmove___org_eclipse_swt_browser_external_19(_ret_value, Array.typed(::Java::Long).new([0]), C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long] }
    # int
    def get_implementation_language(_ret_value)
      C.memmove___org_eclipse_swt_browser_external_21(_ret_value, Array.typed(::Java::Int).new([5]), 4)
      # nsIProgrammingLanguage.JAVA
      # PRUint
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    def get_interfaces(count, array)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      memory = NsIMemory.new(result[0])
      result[0] = 0
      # int
      security_checked_component_iid = memory._alloc(self.attr_ns_id.attr_sizeof)
      XPCOM.memmove___org_eclipse_swt_browser_external_23(security_checked_component_iid, NsISecurityCheckedComponent::NS_ISECURITYCHECKEDCOMPONENT_IID, self.attr_ns_id.attr_sizeof)
      # int
      external_iid = memory._alloc(self.attr_ns_id.attr_sizeof)
      XPCOM.memmove___org_eclipse_swt_browser_external_25(external_iid, EXTERNAL_IID, self.attr_ns_id.attr_sizeof)
      # int
      ptr_array = memory._alloc(2 * C::PTR_SIZEOF)
      # int
      C.memmove___org_eclipse_swt_browser_external_27(ptr_array, Array.typed(::Java::Long).new([security_checked_component_iid]), C::PTR_SIZEOF)
      # int
      C.memmove___org_eclipse_swt_browser_external_29(ptr_array + C::PTR_SIZEOF, Array.typed(::Java::Long).new([external_iid]), C::PTR_SIZEOF)
      # int
      C.memmove___org_eclipse_swt_browser_external_31(array, Array.typed(::Java::Long).new([ptr_array]), C::PTR_SIZEOF)
      memory._release
      C.memmove___org_eclipse_swt_browser_external_33(count, Array.typed(::Java::Int).new([2]), 4)
      # PRUint
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # nsISecurityCheckedComponent
    # int
    # int
    def can_create_wrapper(iid, _ret_val)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      memory = NsIMemory.new(result[0])
      result[0] = 0
      bytes = MozillaDelegate.wcs_to_mbcs(nil, "allAccess", true) # $NON-NLS-1$
      # int
      ptr = memory._alloc(bytes.attr_length)
      C.memmove___org_eclipse_swt_browser_external_35(ptr, bytes, bytes.attr_length)
      # int
      C.memmove___org_eclipse_swt_browser_external_37(_ret_val, Array.typed(::Java::Long).new([ptr]), C::PTR_SIZEOF)
      memory._release
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def can_call_method(iid, method_name, _ret_val)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      memory = NsIMemory.new(result[0])
      result[0] = 0
      length = XPCOM.strlen__prunichar(method_name)
      dest = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_external_39(dest, method_name, length * 2)
      string = String.new(dest)
      bytes = nil
      if ((string == "callJava"))
        # $NON-NLS-1$
        bytes = MozillaDelegate.wcs_to_mbcs(nil, "allAccess", true) # $NON-NLS-1$
      else
        bytes = MozillaDelegate.wcs_to_mbcs(nil, "noAccess", true) # $NON-NLS-1$
      end
      # int
      ptr = memory._alloc(bytes.attr_length)
      C.memmove___org_eclipse_swt_browser_external_41(ptr, bytes, bytes.attr_length)
      # int
      C.memmove___org_eclipse_swt_browser_external_43(_ret_val, Array.typed(::Java::Long).new([ptr]), C::PTR_SIZEOF)
      memory._release
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def can_get_property(iid, property_name, _ret_val)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      memory = NsIMemory.new(result[0])
      result[0] = 0
      bytes = MozillaDelegate.wcs_to_mbcs(nil, "noAccess", true) # $NON-NLS-1$
      # int
      ptr = memory._alloc(bytes.attr_length)
      C.memmove___org_eclipse_swt_browser_external_45(ptr, bytes, bytes.attr_length)
      # int
      C.memmove___org_eclipse_swt_browser_external_47(_ret_val, Array.typed(::Java::Long).new([ptr]), C::PTR_SIZEOF)
      memory._release
      return XPCOM::NS_OK
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def can_set_property(iid, property_name, _ret_val)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_service_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager = NsIServiceManager.new(result[0])
      result[0] = 0
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
      rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      service_manager._release
      memory = NsIMemory.new(result[0])
      result[0] = 0
      bytes = MozillaDelegate.wcs_to_mbcs(nil, "noAccess", true) # $NON-NLS-1$
      # int
      ptr = memory._alloc(bytes.attr_length)
      C.memmove___org_eclipse_swt_browser_external_49(ptr, bytes, bytes.attr_length)
      # int
      C.memmove___org_eclipse_swt_browser_external_51(_ret_val, Array.typed(::Java::Long).new([ptr]), C::PTR_SIZEOF)
      memory._release
      return XPCOM::NS_OK
    end
    
    typesig { [NsIVariant, ::Java::Short] }
    # external
    def convert_to_java(variant, type)
      case (type)
      when NsIDataType::VTYPE_EMPTY, NsIDataType::VTYPE_VOID
        return nil
      when NsIDataType::VTYPE_EMPTY_ARRAY
        return Array.typed(Object).new(0) { nil }
      when NsIDataType::VTYPE_BOOL
        bool_result = Array.typed(::Java::Int).new(1) { 0 }
        # PRInt32
        rc = variant._get_as_bool(bool_result)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        return Boolean.new(!(bool_result[0]).equal?(0))
      when NsIDataType::VTYPE_INT32
        int_result = Array.typed(::Java::Int).new(1) { 0 }
        # PRInt32
        self.attr_rc = variant._get_as_int32(int_result)
        if (!(self.attr_rc).equal?(XPCOM::NS_OK))
          Mozilla.error(self.attr_rc)
        end
        return Double.new(int_result[0])
      when NsIDataType::VTYPE_DOUBLE
        # int
        double_return = C.malloc(8)
        self.attr_rc = variant._get_as_double(double_return)
        if (!(self.attr_rc).equal?(XPCOM::NS_OK))
          Mozilla.error(self.attr_rc)
        end
        double_result = Array.typed(::Java::Double).new(1) { 0.0 }
        C.memmove___org_eclipse_swt_browser_external_53(double_result, double_return, 8)
        C.free(double_return)
        return Double.new(double_result[0])
      when NsIDataType::VTYPE_WSTRING_SIZE_IS
        size = Array.typed(::Java::Int).new(1) { 0 }
        # PRInt32
        # int
        # int
        w_string = Array.typed(::Java::Long).new(1) { 0 }
        self.attr_rc = variant._get_as_wstring_with_size(size, w_string)
        if (!(self.attr_rc).equal?(XPCOM::NS_OK))
          Mozilla.error(self.attr_rc)
        end
        chars = CharArray.new(size[0])
        C.memmove___org_eclipse_swt_browser_external_55(chars, w_string[0], size[0] * 2)
        return String.new(chars)
      when NsIDataType::VTYPE_ARRAY
        array_return = Array.typed(Object).new(0) { nil }
        # int
        iid = C.malloc(self.attr_ns_id.attr_sizeof)
        C.memset(iid, 0, self.attr_ns_id.attr_sizeof)
        count = Array.typed(::Java::Int).new(1) { 0 }
        # PRUint32
        current_type = Array.typed(::Java::Short).new(1) { 0 }
        # int
        # int
        ptr = Array.typed(::Java::Long).new(1) { 0 }
        self.attr_rc = variant._get_as_array(current_type, iid, count, ptr)
        if (!(self.attr_rc).equal?(XPCOM::NS_OK))
          Mozilla.error(self.attr_rc)
        end
        if ((ptr[0]).equal?(0))
          Mozilla.error(XPCOM::NS_ERROR_NULL_POINTER)
        end
        id = NsID.new
        XPCOM.memmove___org_eclipse_swt_browser_external_57(id, iid, self.attr_ns_id.attr_sizeof)
        C.free(iid)
        # int
        # int
        result = Array.typed(::Java::Long).new(1) { 0 }
        self.attr_rc = XPCOM._ns_get_service_manager(result)
        if (!(self.attr_rc).equal?(XPCOM::NS_OK))
          Mozilla.error(self.attr_rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        service_manager = NsIServiceManager.new(result[0])
        result[0] = 0
        a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_MEMORY_CONTRACTID, true)
        self.attr_rc = service_manager._get_service_by_contract_id(a_contract_id, NsIMemory::NS_IMEMORY_IID, result)
        if (!(self.attr_rc).equal?(XPCOM::NS_OK))
          Mozilla.error(self.attr_rc)
        end
        if ((result[0]).equal?(0))
          Mozilla.error(XPCOM::NS_NOINTERFACE)
        end
        service_manager._release
        memory = NsIMemory.new(result[0])
        result[0] = 0
        if (id._equals(NsIVariant::NS_IVARIANT_IID))
          array_return = Array.typed(Object).new(count[0]) { nil }
          i = 0
          while i < count[0]
            # int
            # int
            array_ptr = Array.typed(::Java::Long).new(1) { 0 }
            C.memmove___org_eclipse_swt_browser_external_59(array_ptr, ptr[0] + i * C::PTR_SIZEOF, C::PTR_SIZEOF)
            supports = NsISupports.new(array_ptr[0])
            self.attr_rc = supports._query_interface(NsIVariant::NS_IVARIANT_IID, result)
            if (!(self.attr_rc).equal?(XPCOM::NS_OK))
              Mozilla.error(self.attr_rc)
            end
            if ((result[0]).equal?(0))
              Mozilla.error(XPCOM::NS_NOINTERFACE)
            end
            current_variant = NsIVariant.new(result[0])
            result[0] = 0
            current_type[0] = 0
            self.attr_rc = current_variant._get_data_type(current_type)
            if (!(self.attr_rc).equal?(XPCOM::NS_OK))
              Mozilla.error(self.attr_rc)
            end
            begin
              array_return[i] = convert_to_java(current_variant, current_type[0])
              current_variant._release
            rescue IllegalArgumentException => e
              # invalid argument value type
              current_variant._release
              memory._free(ptr[0])
              memory._release
              raise e
            end
            i += 1
          end
        else
          case (current_type[0])
          when NsIDataType::VTYPE_DOUBLE
            array_return = Array.typed(Object).new(count[0]) { nil }
            i = 0
            while i < count[0]
              double_value = Array.typed(::Java::Double).new(1) { 0.0 }
              C.memmove___org_eclipse_swt_browser_external_61(double_value, ptr[0] + i * 8, 8)
              array_return[i] = Double.new(double_value[0])
              i += 1
            end
          when NsIDataType::VTYPE_BOOL
            array_return = Array.typed(Object).new(count[0]) { nil }
            i = 0
            while i < count[0]
              bool_value = Array.typed(::Java::Int).new(1) { 0 }
              # PRUInt32
              C.memmove___org_eclipse_swt_browser_external_63(bool_value, ptr[0] + i * 4, 4)
              array_return[i] = Boolean.new(!(bool_value[0]).equal?(0))
              i += 1
            end
          when NsIDataType::VTYPE_INT32
            array_return = Array.typed(Object).new(count[0]) { nil }
            i = 0
            while i < count[0]
              int_value = Array.typed(::Java::Int).new(1) { 0 }
              # PRInt32
              C.memmove___org_eclipse_swt_browser_external_65(int_value, ptr[0] + i * 4, 4)
              array_return[i] = Double.new(int_value[0])
              i += 1
            end
          when NsIDataType::VTYPE_WCHAR_STR
            array_return = Array.typed(Object).new(count[0]) { nil }
            i = 0
            while i < count[0]
              # int
              current_ptr = ptr[0] + i * C::PTR_SIZEOF
              # int
              # int
              string_ptr = Array.typed(::Java::Long).new(1) { 0 }
              C.memmove___org_eclipse_swt_browser_external_67(string_ptr, current_ptr, C::PTR_SIZEOF)
              length = XPCOM.strlen__prunichar(string_ptr[0])
              dest = CharArray.new(length)
              XPCOM.memmove___org_eclipse_swt_browser_external_69(dest, string_ptr[0], length * 2)
              array_return[i] = String.new(dest)
              i += 1
            end
          else
            memory._free(ptr[0])
            memory._release
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
        end
        memory._free(ptr[0])
        memory._release
        return array_return
      end
      SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      return nil
    end
    
    typesig { [Object, NsIComponentManager] }
    def convert_to_js(value, component_manager)
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      a_contract_id = MozillaDelegate.wcs_to_mbcs(nil, XPCOM::NS_VARIANT_CONTRACTID, true)
      rc = component_manager._create_instance_by_contract_id(a_contract_id, 0, NsIWritableVariant::NS_IWRITABLEVARIANT_IID, result)
      variant = NsIWritableVariant.new(result[0])
      result[0] = 0
      if ((value).nil?)
        rc = variant._set_as_void
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        return variant
      end
      if (value.is_a?(String))
        string_value = value
        length_ = string_value.length
        chars = CharArray.new(length_)
        string_value.get_chars(0, length_, chars, 0)
        rc = variant._set_as_wstring_with_size(length_, chars)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        return variant
      end
      if (value.is_a?(Boolean))
        boolean_value = value
        rc = variant._set_as_bool(boolean_value.boolean_value ? 1 : 0)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        return variant
      end
      if (value.is_a?(Numeric))
        number_value = value
        rc = variant._set_as_double(number_value.double_value)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        return variant
      end
      if (value.is_a?(Array.typed(Object)))
        array_value = value
        length_ = array_value.attr_length
        if (length_ > 0)
          # int
          array_ptr = C.malloc(C::PTR_SIZEOF * length_)
          i = 0
          while i < length_
            current_object = array_value[i]
            begin
              current_variant = convert_to_js(current_object, component_manager)
              # int
              C.memmove___org_eclipse_swt_browser_external_71(array_ptr + C::PTR_SIZEOF * i, Array.typed(::Java::Long).new([current_variant.get_address]), C::PTR_SIZEOF)
            rescue SWTException => e
              # invalid return value type
              C.free(array_ptr)
              variant._release
              # release the variants that had previously been added to the array
              j = 0
              while j < i
                # int
                # int
                ptr = Array.typed(::Java::Long).new(1) { 0 }
                C.memmove___org_eclipse_swt_browser_external_73(ptr, array_ptr + C::PTR_SIZEOF * j, C::PTR_SIZEOF)
                NsISupports.new(ptr[0])._release
                j += 1
              end
              raise e
            end
            i += 1
          end
          # int
          id_ptr = C.malloc(self.attr_ns_id.attr_sizeof)
          XPCOM.memmove___org_eclipse_swt_browser_external_75(id_ptr, NsIVariant::NS_IVARIANT_IID, self.attr_ns_id.attr_sizeof)
          rc = variant._set_as_array(NsIDataType::VTYPE_INTERFACE_IS, id_ptr, length_, array_ptr)
          C.free(id_ptr)
          C.free(array_ptr)
          if (!(rc).equal?(XPCOM::NS_OK))
            Mozilla.error(rc)
          end
          return variant
        end
      end
      variant._release
      SWT.error(SWT::ERROR_INVALID_RETURN_VALUE)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Long, ::Java::Long] }
    # int
    # int
    def call_java(function_id, args, return_ptr)
      key = function_id
      function = Mozilla::AllFunctions.get(key)
      return_value = nil
      if (!(function).nil?)
        type = Array.typed(::Java::Short).new(1) { 0 }
        # PRUint16
        variant = NsIVariant.new(args)
        rc = variant._get_data_type(type)
        if (!(rc).equal?(XPCOM::NS_OK))
          Mozilla.error(rc)
        end
        begin
          temp = convert_to_java(variant, type[0])
          if (temp.is_a?(Array.typed(Object)))
            arguments = temp
            begin
              return_value = function.function(arguments)
            rescue JavaException => e
              # exception during function invocation
              return_value = WebBrowser._create_error_string(e.get_localized_message)
            end
          end
        rescue IllegalArgumentException => e
          # invalid argument value type
          if (function.attr_is_evaluate)
            # notify the evaluate function so that a java exception can be thrown
            function.function(Array.typed(String).new([WebBrowser._create_error_string(SWTException.new(SWT::ERROR_INVALID_RETURN_VALUE).get_localized_message)]))
          end
          return_value = WebBrowser._create_error_string(e.get_localized_message)
        end
      end
      # int
      # int
      result = Array.typed(::Java::Long).new(1) { 0 }
      rc = XPCOM._ns_get_component_manager(result)
      if (!(rc).equal?(XPCOM::NS_OK))
        Mozilla.error(rc)
      end
      if ((result[0]).equal?(0))
        Mozilla.error(XPCOM::NS_NOINTERFACE)
      end
      component_manager = NsIComponentManager.new(result[0])
      result[0] = 0
      variant = nil
      begin
        variant = convert_to_js(return_value, component_manager)
      rescue SWTException => e
        # invalid return value type
        variant = convert_to_js(WebBrowser._create_error_string(e.get_localized_message), component_manager)
      end
      component_manager._release
      # int
      C.memmove___org_eclipse_swt_browser_external_77(return_ptr, Array.typed(::Java::Long).new([variant.get_address]), C::PTR_SIZEOF)
      return XPCOM::NS_OK
    end
    
    private
    alias_method :initialize__external, :initialize
  end
  
end
