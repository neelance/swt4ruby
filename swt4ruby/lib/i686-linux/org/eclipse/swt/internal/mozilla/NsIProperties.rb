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
  module NsIPropertiesImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIProperties < NsISupports
    include_class_members NsIPropertiesImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 5 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPROPERTIES_IID_STR) { "78650582-4e93-4b60-8e85-26ebd3eb14ca" }
      const_attr_reader  :NS_IPROPERTIES_IID_STR
      
      const_set_lazy(:NS_IPROPERTIES_IID) { NsID.new(NS_IPROPERTIES_IID_STR) }
      const_attr_reader  :NS_IPROPERTIES_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Byte), NsID, Array.typed(::Java::Int)] }
    # long
    def _get(prop, iid, result)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, prop, iid, result)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    # long
    def _set(prop, value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, prop, value)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _has(prop, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, prop, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    def _undefine(prop)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, prop)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # long
    def _get_keys(count, keys)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, count, keys)
    end
    
    private
    alias_method :initialize_ns_iproperties, :initialize
  end
  
end
