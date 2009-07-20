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
  module NsIWebProgressImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebProgress < NsISupports
    include_class_members NsIWebProgressImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 4 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBPROGRESS_IID_STR) { "570f39d0-efd0-11d3-b093-00a024ffc08c" }
      const_attr_reader  :NS_IWEBPROGRESS_IID_STR
      
      const_set_lazy(:NS_IWEBPROGRESS_IID) { NsID.new(NS_IWEBPROGRESS_IID_STR) }
      const_attr_reader  :NS_IWEBPROGRESS_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:NOTIFY_STATE_REQUEST) { 1 }
      const_attr_reader  :NOTIFY_STATE_REQUEST
      
      const_set_lazy(:NOTIFY_STATE_DOCUMENT) { 2 }
      const_attr_reader  :NOTIFY_STATE_DOCUMENT
      
      const_set_lazy(:NOTIFY_STATE_NETWORK) { 4 }
      const_attr_reader  :NOTIFY_STATE_NETWORK
      
      const_set_lazy(:NOTIFY_STATE_WINDOW) { 8 }
      const_attr_reader  :NOTIFY_STATE_WINDOW
      
      const_set_lazy(:NOTIFY_STATE_ALL) { 15 }
      const_attr_reader  :NOTIFY_STATE_ALL
      
      const_set_lazy(:NOTIFY_PROGRESS) { 16 }
      const_attr_reader  :NOTIFY_PROGRESS
      
      const_set_lazy(:NOTIFY_STATUS) { 32 }
      const_attr_reader  :NOTIFY_STATUS
      
      const_set_lazy(:NOTIFY_SECURITY) { 64 }
      const_attr_reader  :NOTIFY_SECURITY
      
      const_set_lazy(:NOTIFY_LOCATION) { 128 }
      const_attr_reader  :NOTIFY_LOCATION
      
      const_set_lazy(:NOTIFY_ALL) { 255 }
      const_attr_reader  :NOTIFY_ALL
    }
    
    typesig { [::Java::Long, ::Java::Int] }
    # int
    def _add_progress_listener(listener, a_notify_mask)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, listener, a_notify_mask)
    end
    
    typesig { [::Java::Long] }
    # int
    def _remove_progress_listener(listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, listener)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_domwindow(a_domwindow)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_domwindow)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_is_loading_document(a_is_loading_document)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_is_loading_document)
    end
    
    private
    alias_method :initialize_ns_iweb_progress, :initialize
  end
  
end
