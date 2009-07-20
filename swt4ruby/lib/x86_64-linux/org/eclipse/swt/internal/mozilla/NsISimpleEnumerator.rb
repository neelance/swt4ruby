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
  module NsISimpleEnumeratorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsISimpleEnumerator < NsISupports
    include_class_members NsISimpleEnumeratorImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 2 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ISIMPLEENUMERATOR_IID_STR) { "d1899240-f9d2-11d2-bdd6-000064657374" }
      const_attr_reader  :NS_ISIMPLEENUMERATOR_IID_STR
      
      const_set_lazy(:NS_ISIMPLEENUMERATOR_IID) { NsID.new(NS_ISIMPLEENUMERATOR_IID_STR) }
      const_attr_reader  :NS_ISIMPLEENUMERATOR_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _has_more_elements(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_next(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, _retval)
    end
    
    private
    alias_method :initialize_ns_isimple_enumerator, :initialize
  end
  
end
