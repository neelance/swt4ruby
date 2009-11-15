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
# -  Copyright (C) 2003 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIDOMWindowCollectionImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMWindowCollection < NsIDOMWindowCollectionImports.const_get :NsISupports
    include_class_members NsIDOMWindowCollectionImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 3 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMWINDOWCOLLECTION_IID_STR) { "a6cf906f-15b3-11d2-932e-00805f8add32" }
      const_attr_reader  :NS_IDOMWINDOWCOLLECTION_IID_STR
      
      const_set_lazy(:NS_IDOMWINDOWCOLLECTION_IID) { NsID.new(NS_IDOMWINDOWCOLLECTION_IID_STR) }
      const_attr_reader  :NS_IDOMWINDOWCOLLECTION_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_length(a_length)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_length)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _item(index, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, index, _retval)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    def _named_item(name, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, name, _retval)
    end
    
    private
    alias_method :initialize_ns_idomwindow_collection, :initialize
  end
  
end
