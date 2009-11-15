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
  module NsIProgressDialog_1_8Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIProgressDialog_1_8 < NsIProgressDialog_1_8Imports.const_get :NsIDownload_1_8
    include_class_members NsIProgressDialog_1_8Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIDownload_1_8::LAST_METHOD_ID + 7 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPROGRESSDIALOG_IID_STR) { "20e790a2-76c6-462d-851a-22ab6cbbe48b" }
      const_attr_reader  :NS_IPROGRESSDIALOG_IID_STR
      
      const_set_lazy(:NS_IPROGRESSDIALOG_IID) { NsID.new(NS_IPROGRESSDIALOG_IID_STR) }
      const_attr_reader  :NS_IPROGRESSDIALOG_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long] }
    # int
    def _open(a_parent)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 1, get_address, a_parent)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_cancel_download_on_close(a_cancel_download_on_close)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 2, get_address, a_cancel_download_on_close)
    end
    
    typesig { [::Java::Int] }
    def _set_cancel_download_on_close(a_cancel_download_on_close)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 3, get_address, a_cancel_download_on_close)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_observer(a_observer)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 4, get_address, a_observer)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_observer(a_observer)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 5, get_address, a_observer)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_dialog(a_dialog)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 6, get_address, a_dialog)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_dialog(a_dialog)
      return XPCOM._vtbl_call(NsIDownload_1_8::LAST_METHOD_ID + 7, get_address, a_dialog)
    end
    
    private
    alias_method :initialize_ns_iprogress_dialog_1_8, :initialize
  end
  
end
