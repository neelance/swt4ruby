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
  module NsIPrefBranchImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIPrefBranch < NsISupports
    include_class_members NsIPrefBranchImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 18 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPREFBRANCH_IID_STR) { "56c35506-f14b-11d3-99d3-ddbfac2ccf65" }
      const_attr_reader  :NS_IPREFBRANCH_IID_STR
      
      const_set_lazy(:NS_IPREFBRANCH_IID) { NsID.new(NS_IPREFBRANCH_IID_STR) }
      const_attr_reader  :NS_IPREFBRANCH_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:PREF_INVALID) { 0 }
      const_attr_reader  :PREF_INVALID
      
      const_set_lazy(:PREF_STRING) { 32 }
      const_attr_reader  :PREF_STRING
      
      const_set_lazy(:PREF_INT) { 64 }
      const_attr_reader  :PREF_INT
      
      const_set_lazy(:PREF_BOOL) { 128 }
      const_attr_reader  :PREF_BOOL
    }
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_root(a_root)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_root)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _get_pref_type(a_pref_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_pref_name, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _get_bool_pref(a_pref_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_pref_name, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    def _set_bool_pref(a_pref_name, a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_pref_name, a_value)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
    # int
    def _get_char_pref(a_pref_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_pref_name, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
    def _set_char_pref(a_pref_name, a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_pref_name, a_value)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _get_int_pref(a_pref_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_pref_name, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    def _set_int_pref(a_pref_name, a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_pref_name, a_value)
    end
    
    typesig { [Array.typed(::Java::Byte), NsID, Array.typed(::Java::Long)] }
    # int
    def _get_complex_value(a_pref_name, a_type, a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_pref_name, a_type, a_value)
    end
    
    typesig { [Array.typed(::Java::Byte), NsID, ::Java::Long] }
    # int
    def _set_complex_value(a_pref_name, a_type, a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_pref_name, a_type, a_value)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _clear_user_pref(a_pref_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_pref_name)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _lock_pref(a_pref_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_pref_name)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _pref_has_user_value(a_pref_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_pref_name, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _pref_is_locked(a_pref_name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, a_pref_name, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _unlock_pref(a_pref_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, a_pref_name)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _delete_branch(a_starting_at)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, a_starting_at)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Long)] }
    # int
    def _get_child_list(a_starting_at, a_count, a_child_array)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address, a_starting_at, a_count, a_child_array)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _reset_branch(a_starting_at)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 18, get_address, a_starting_at)
    end
    
    private
    alias_method :initialize_ns_ipref_branch, :initialize
  end
  
end
