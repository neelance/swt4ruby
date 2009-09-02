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
  module NsIWebBrowserSetupImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebBrowserSetup < NsISupports
    include_class_members NsIWebBrowserSetupImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 1 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBBROWSERSETUP_IID_STR) { "f15398a0-8018-11d3-af70-00a024ffc08c" }
      const_attr_reader  :NS_IWEBBROWSERSETUP_IID_STR
      
      const_set_lazy(:NS_IWEBBROWSERSETUP_IID) { NsID.new(NS_IWEBBROWSERSETUP_IID_STR) }
      const_attr_reader  :NS_IWEBBROWSERSETUP_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:SETUP_ALLOW_PLUGINS) { 1 }
      const_attr_reader  :SETUP_ALLOW_PLUGINS
      
      const_set_lazy(:SETUP_ALLOW_JAVASCRIPT) { 2 }
      const_attr_reader  :SETUP_ALLOW_JAVASCRIPT
      
      const_set_lazy(:SETUP_ALLOW_META_REDIRECTS) { 3 }
      const_attr_reader  :SETUP_ALLOW_META_REDIRECTS
      
      const_set_lazy(:SETUP_ALLOW_SUBFRAMES) { 4 }
      const_attr_reader  :SETUP_ALLOW_SUBFRAMES
      
      const_set_lazy(:SETUP_ALLOW_IMAGES) { 5 }
      const_attr_reader  :SETUP_ALLOW_IMAGES
      
      const_set_lazy(:SETUP_FOCUS_DOC_BEFORE_CONTENT) { 6 }
      const_attr_reader  :SETUP_FOCUS_DOC_BEFORE_CONTENT
      
      const_set_lazy(:SETUP_USE_GLOBAL_HISTORY) { 256 }
      const_attr_reader  :SETUP_USE_GLOBAL_HISTORY
      
      const_set_lazy(:SETUP_IS_CHROME_WRAPPER) { 7 }
      const_attr_reader  :SETUP_IS_CHROME_WRAPPER
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    def _set_property(a_id, a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_id, a_value)
    end
    
    private
    alias_method :initialize_ns_iweb_browser_setup, :initialize
  end
  
end
