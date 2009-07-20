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
# -  Copyright (C) 2006 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIPrefServiceImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIPrefService < NsISupports
    include_class_members NsIPrefServiceImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 6 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPREFSERVICE_IID_STR) { "decb9cc7-c08f-4ea5-be91-a8fc637ce2d2" }
      const_attr_reader  :NS_IPREFSERVICE_IID_STR
      
      const_set_lazy(:NS_IPREFSERVICE_IID) { NsID.new(NS_IPREFSERVICE_IID_STR) }
      const_attr_reader  :NS_IPREFSERVICE_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _read_user_prefs(a_file)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_file)
    end
    
    typesig { [] }
    def _reset_prefs
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address)
    end
    
    typesig { [] }
    def _reset_user_prefs
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _save_pref_file(a_file)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_file)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    # long
    def _get_branch(a_pref_root, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_pref_root, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    # long
    def _get_default_branch(a_pref_root, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_pref_root, _retval)
    end
    
    private
    alias_method :initialize_ns_ipref_service, :initialize
  end
  
end
