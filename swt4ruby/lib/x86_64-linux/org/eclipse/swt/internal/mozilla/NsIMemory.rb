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
  module NsIMemoryImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIMemory < NsISupports
    include_class_members NsIMemoryImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 5 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IMEMORY_IID_STR) { "59e7e77a-38e4-11d4-8cf5-0060b0fc14a3" }
      const_attr_reader  :NS_IMEMORY_IID_STR
      
      const_set_lazy(:NS_IMEMORY_IID) { NsID.new(NS_IMEMORY_IID_STR) }
      const_attr_reader  :NS_IMEMORY_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    def _alloc(size)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, size)
    end
    
    typesig { [::Java::Long, ::Java::Int] }
    # int
    def _realloc(ptr, new_size)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, ptr, new_size)
    end
    
    typesig { [::Java::Long] }
    # int
    def _free(ptr)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, ptr)
    end
    
    typesig { [::Java::Int] }
    def _heap_minimize(immediate)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, immediate)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _is_low_memory(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, _retval)
    end
    
    private
    alias_method :initialize_ns_imemory, :initialize
  end
  
end
