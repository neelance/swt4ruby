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
  module NsIWebProgressListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebProgressListener < NsIWebProgressListenerImports.const_get :NsISupports
    include_class_members NsIWebProgressListenerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 5 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBPROGRESSLISTENER_IID_STR) { "570f39d1-efd0-11d3-b093-00a024ffc08c" }
      const_attr_reader  :NS_IWEBPROGRESSLISTENER_IID_STR
      
      const_set_lazy(:NS_IWEBPROGRESSLISTENER_IID) { NsID.new(NS_IWEBPROGRESSLISTENER_IID_STR) }
      const_attr_reader  :NS_IWEBPROGRESSLISTENER_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:STATE_START) { 1 }
      const_attr_reader  :STATE_START
      
      const_set_lazy(:STATE_REDIRECTING) { 2 }
      const_attr_reader  :STATE_REDIRECTING
      
      const_set_lazy(:STATE_TRANSFERRING) { 4 }
      const_attr_reader  :STATE_TRANSFERRING
      
      const_set_lazy(:STATE_NEGOTIATING) { 8 }
      const_attr_reader  :STATE_NEGOTIATING
      
      const_set_lazy(:STATE_STOP) { 16 }
      const_attr_reader  :STATE_STOP
      
      const_set_lazy(:STATE_IS_REQUEST) { 65536 }
      const_attr_reader  :STATE_IS_REQUEST
      
      const_set_lazy(:STATE_IS_DOCUMENT) { 131072 }
      const_attr_reader  :STATE_IS_DOCUMENT
      
      const_set_lazy(:STATE_IS_NETWORK) { 262144 }
      const_attr_reader  :STATE_IS_NETWORK
      
      const_set_lazy(:STATE_IS_WINDOW) { 524288 }
      const_attr_reader  :STATE_IS_WINDOW
      
      const_set_lazy(:STATE_IS_INSECURE) { 4 }
      const_attr_reader  :STATE_IS_INSECURE
      
      const_set_lazy(:STATE_IS_BROKEN) { 1 }
      const_attr_reader  :STATE_IS_BROKEN
      
      const_set_lazy(:STATE_IS_SECURE) { 2 }
      const_attr_reader  :STATE_IS_SECURE
      
      const_set_lazy(:STATE_SECURE_HIGH) { 262144 }
      const_attr_reader  :STATE_SECURE_HIGH
      
      const_set_lazy(:STATE_SECURE_MED) { 65536 }
      const_attr_reader  :STATE_SECURE_MED
      
      const_set_lazy(:STATE_SECURE_LOW) { 131072 }
      const_attr_reader  :STATE_SECURE_LOW
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_state_change(a_web_progress, a_request, a_state_flags, a_status)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_web_progress, a_request, a_state_flags, a_status)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_progress_change(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _on_location_change(a_web_progress, a_request, location)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_web_progress, a_request, location)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Char)] }
    # long
    # long
    def _on_status_change(a_web_progress, a_request, a_status, a_message)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_web_progress, a_request, a_status, a_message)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _on_security_change(a_web_progress, a_request, state)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_web_progress, a_request, state)
    end
    
    private
    alias_method :initialize_ns_iweb_progress_listener, :initialize
  end
  
end
