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
  module NsIFactoryImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIFactory < NsISupports
    include_class_members NsIFactoryImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 2 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IFACTORY_IID_STR) { "00000001-0000-0000-c000-000000000046" }
      const_attr_reader  :NS_IFACTORY_IID_STR
      
      const_set_lazy(:NS_IFACTORY_IID) { NsID.new(NS_IFACTORY_IID_STR) }
      const_attr_reader  :NS_IFACTORY_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, NsID, Array.typed(::Java::Long)] }
    # int
    # int
    def _create_instance(a_outer, iid, result)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_outer, iid, result)
    end
    
    typesig { [::Java::Int] }
    def _lock_factory(lock)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, lock)
    end
    
    private
    alias_method :initialize_ns_ifactory, :initialize
  end
  
end
