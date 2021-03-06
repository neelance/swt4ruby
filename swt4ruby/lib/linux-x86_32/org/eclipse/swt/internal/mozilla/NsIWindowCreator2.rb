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
  module NsIWindowCreator2Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWindowCreator2 < NsIWindowCreator2Imports.const_get :NsIWindowCreator
    include_class_members NsIWindowCreator2Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIWindowCreator::LAST_METHOD_ID + 1 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWINDOWCREATOR2_IID_STR) { "f673ec81-a4b0-11d6-964b-eb5a2bf216fc" }
      const_attr_reader  :NS_IWINDOWCREATOR2_IID_STR
      
      const_set_lazy(:NS_IWINDOWCREATOR2_IID) { NsID.new(NS_IWINDOWCREATOR2_IID_STR) }
      const_attr_reader  :NS_IWINDOWCREATOR2_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:PARENT_IS_LOADING_OR_RUNNING_TIMEOUT) { 1 }
      const_attr_reader  :PARENT_IS_LOADING_OR_RUNNING_TIMEOUT
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # long
    # long
    # long
    def _create_chrome_window2(parent, chrome_flags, context_flags, uri, cancel, _retval)
      return XPCOM._vtbl_call(NsIWindowCreator::LAST_METHOD_ID + 1, get_address, parent, chrome_flags, context_flags, uri, cancel, _retval)
    end
    
    private
    alias_method :initialize_ns_iwindow_creator2, :initialize
  end
  
end
