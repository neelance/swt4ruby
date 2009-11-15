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
# -  Copyright (C) 2003, 2005 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIWebNavigationInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebNavigationInfo < NsIWebNavigationInfoImports.const_get :NsISupports
    include_class_members NsIWebNavigationInfoImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 1 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBNAVIGATIONINFO_IID_STR) { "62a93afb-93a1-465c-84c8-0432264229de" }
      const_attr_reader  :NS_IWEBNAVIGATIONINFO_IID_STR
      
      const_set_lazy(:NS_IWEBNAVIGATIONINFO_IID) { NsID.new(NS_IWEBNAVIGATIONINFO_IID_STR) }
      const_attr_reader  :NS_IWEBNAVIGATIONINFO_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:UNSUPPORTED) { 0 }
      const_attr_reader  :UNSUPPORTED
      
      const_set_lazy(:IMAGE) { 1 }
      const_attr_reader  :IMAGE
      
      const_set_lazy(:PLUGIN) { 2 }
      const_attr_reader  :PLUGIN
      
      const_set_lazy(:OTHER) { 32768 }
      const_attr_reader  :OTHER
    }
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    def _is_type_supported(a_type, a_web_nav, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_type, a_web_nav, _retval)
    end
    
    private
    alias_method :initialize_ns_iweb_navigation_info, :initialize
  end
  
end
