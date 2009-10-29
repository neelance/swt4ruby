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
  module NsIClassInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIClassInfo < NsISupports
    include_class_members NsIClassInfoImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 8 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICLASSINFO_IID_STR) { "986c11d0-f340-11d4-9075-0010a4e73d9a" }
      const_attr_reader  :NS_ICLASSINFO_IID_STR
      
      const_set_lazy(:NS_ICLASSINFO_IID) { NsID.new(NS_ICLASSINFO_IID_STR) }
      const_attr_reader  :NS_ICLASSINFO_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # long
    def _get_interfaces(count, array)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, count, array)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_helper_for_language(language, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, language, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_contract_id(a_contract_id)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_contract_id)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_class_description(a_class_description)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_class_description)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_class_id(a_class_id)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_class_id)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_implementation_language(a_implementation_language)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_implementation_language)
    end
    
    class_module.module_eval {
      const_set_lazy(:SINGLETON) { 1 }
      const_attr_reader  :SINGLETON
      
      const_set_lazy(:THREADSAFE) { 2 }
      const_attr_reader  :THREADSAFE
      
      const_set_lazy(:MAIN_THREAD_ONLY) { 4 }
      const_attr_reader  :MAIN_THREAD_ONLY
      
      const_set_lazy(:DOM_OBJECT) { 8 }
      const_attr_reader  :DOM_OBJECT
      
      const_set_lazy(:PLUGIN_OBJECT) { 16 }
      const_attr_reader  :PLUGIN_OBJECT
      
      const_set_lazy(:EAGER_CLASSINFO) { 32 }
      const_attr_reader  :EAGER_CLASSINFO
      
      const_set_lazy(:CONTENT_NODE) { 64 }
      const_attr_reader  :CONTENT_NODE
    }
    
    typesig { [Array.typed(::Java::Int)] }
    # public static final int RESERVED = 2147483648;
    def _get_flags(a_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_flags)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_class_idno_alloc(a_class_idno_alloc)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_class_idno_alloc)
    end
    
    private
    alias_method :initialize_ns_iclass_info, :initialize
  end
  
end
