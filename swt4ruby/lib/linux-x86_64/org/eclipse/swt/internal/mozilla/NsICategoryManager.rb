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
  module NsICategoryManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsICategoryManager < NsICategoryManagerImports.const_get :NsISupports
    include_class_members NsICategoryManagerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 6 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICATEGORYMANAGER_IID_STR) { "3275b2cd-af6d-429a-80d7-f0c5120342ac" }
      const_attr_reader  :NS_ICATEGORYMANAGER_IID_STR
      
      const_set_lazy(:NS_ICATEGORYMANAGER_IID) { NsID.new(NS_ICATEGORYMANAGER_IID_STR) }
      const_attr_reader  :NS_ICATEGORYMANAGER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
    # int
    def _get_category_entry(a_category, a_entry, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_category, a_entry, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, Array.typed(::Java::Long)] }
    # int
    def _add_category_entry(a_category, a_entry, a_value, a_persist, a_replace, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_category, a_entry, a_value, a_persist, a_replace, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
    def _delete_category_entry(a_category, a_entry, a_persist)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_category, a_entry, a_persist)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _delete_category(a_category)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_category)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Long)] }
    # int
    def _enumerate_category(a_category, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_category, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _enumerate_categories(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, _retval)
    end
    
    private
    alias_method :initialize_ns_icategory_manager, :initialize
  end
  
end
