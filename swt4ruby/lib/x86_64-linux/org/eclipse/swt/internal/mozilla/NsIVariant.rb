require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# The Original Code is Mozilla Communicator client code, released March 31, 1998.
# 
# The Initial Developer of the Original Code is
# Netscape Communications Corporation.
# Portions created by Netscape are Copyright (C) 1998-1999
# Netscape Communications Corporation.  All Rights Reserved.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Mozilla and SWT
# -  Copyright (C) 2003, 2008 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIVariantImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIVariant < NsISupports
    include_class_members NsIVariantImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 26 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IVARIANT_IID_STR) { "6c9eb060-8c6a-11d5-90f3-0010a4e73d9a" }
      const_attr_reader  :NS_IVARIANT_IID_STR
      
      const_set_lazy(:NS_IVARIANT_IID) { NsID.new(NS_IVARIANT_IID_STR) }
      const_attr_reader  :NS_IVARIANT_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Short)] }
    def _get_data_type(a_data_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_data_type)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_int8(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_int16(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_as_int32(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_as_int64(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_uint8(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Short)] }
    def _get_as_uint16(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_as_uint32(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_uint64(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def _get_as_float(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_double(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_as_bool(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _get_as_char(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def _get_as_wchar(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_id(retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_astring(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_domstring(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_acstring(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 18, get_address, _retval)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_as_autf8string(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 19, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_as_string(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 20, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_as_wstring(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 21, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_as_isupports(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 22, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long), Array.typed(::Java::Long)] }
    # int
    # int
    def _get_as_interface(iid, iface)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 23, get_address, iid, iface)
    end
    
    typesig { [Array.typed(::Java::Short), ::Java::Long, Array.typed(::Java::Int), Array.typed(::Java::Long)] }
    # int
    # int
    def _get_as_array(type, iid, count, ptr)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 24, get_address, type, iid, count, ptr)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Long)] }
    # int
    def _get_as_string_with_size(size, str)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 25, get_address, size, str)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Long)] }
    # int
    def _get_as_wstring_with_size(size, str)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 26, get_address, size, str)
    end
    
    private
    alias_method :initialize_ns_ivariant, :initialize
  end
  
end
