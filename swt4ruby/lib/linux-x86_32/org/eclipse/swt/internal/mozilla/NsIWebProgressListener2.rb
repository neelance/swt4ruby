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
  module NsIWebProgressListener2Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIWebProgressListener2 < NsIWebProgressListener2Imports.const_get :NsIWebProgressListener
    include_class_members NsIWebProgressListener2Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIWebProgressListener::LAST_METHOD_ID + 1 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IWEBPROGRESSLISTENER2_IID_STR) { "3f24610d-1e1f-4151-9d2e-239884742324" }
      const_attr_reader  :NS_IWEBPROGRESSLISTENER2_IID_STR
      
      const_set_lazy(:NS_IWEBPROGRESSLISTENER2_IID) { NsID.new(NS_IWEBPROGRESSLISTENER2_IID_STR) }
      const_attr_reader  :NS_IWEBPROGRESSLISTENER2_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # long
    # long
    def _on_progress_change64(a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
      return XPCOM._vtbl_call(NsIWebProgressListener::LAST_METHOD_ID + 1, get_address, a_web_progress, a_request, a_cur_self_progress, a_max_self_progress, a_cur_total_progress, a_max_total_progress)
    end
    
    private
    alias_method :initialize_ns_iweb_progress_listener2, :initialize
  end
  
end
