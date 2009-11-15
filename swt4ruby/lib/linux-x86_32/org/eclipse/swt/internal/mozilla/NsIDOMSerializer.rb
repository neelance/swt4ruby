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
  module NsIDOMSerializerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMSerializer < NsIDOMSerializerImports.const_get :NsISupports
    include_class_members NsIDOMSerializerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 2 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMSERIALIZER_IID_STR) { "a6cf9123-15b3-11d2-932e-00805f8add32" }
      const_attr_reader  :NS_IDOMSERIALIZER_IID_STR
      
      const_set_lazy(:NS_IDOMSERIALIZER_IID) { NsID.new(NS_IDOMSERIALIZER_IID_STR) }
      const_attr_reader  :NS_IDOMSERIALIZER_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    def _serialize_to_string(root, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, root, _retval)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
    # long
    # long
    def _serialize_to_stream(root, stream, charset)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, root, stream, charset)
    end
    
    private
    alias_method :initialize_ns_idomserializer, :initialize
  end
  
end
