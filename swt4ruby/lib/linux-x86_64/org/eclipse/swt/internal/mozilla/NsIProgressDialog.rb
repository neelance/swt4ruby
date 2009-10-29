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
  module NsIProgressDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIProgressDialog < NsIDownload
    include_class_members NsIProgressDialogImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIDownload::LAST_METHOD_ID + 5 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPROGRESSDIALOG_IID_STR) { "88a478b3-af65-440a-94dc-ed9b154d2990" }
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
      return XPCOM._vtbl_call(NsIDownload::LAST_METHOD_ID + 1, get_address, a_parent)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_cancel_download_on_close(a_cancel_download_on_close)
      return XPCOM._vtbl_call(NsIDownload::LAST_METHOD_ID + 2, get_address, a_cancel_download_on_close)
    end
    
    typesig { [::Java::Int] }
    def _set_cancel_download_on_close(a_cancel_download_on_close)
      return XPCOM._vtbl_call(NsIDownload::LAST_METHOD_ID + 3, get_address, a_cancel_download_on_close)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_dialog(a_dialog)
      return XPCOM._vtbl_call(NsIDownload::LAST_METHOD_ID + 4, get_address, a_dialog)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_dialog(a_dialog)
      return XPCOM._vtbl_call(NsIDownload::LAST_METHOD_ID + 5, get_address, a_dialog)
    end
    
    private
    alias_method :initialize_ns_iprogress_dialog, :initialize
  end
  
end
