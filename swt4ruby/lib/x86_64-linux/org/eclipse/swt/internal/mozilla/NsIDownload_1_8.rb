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
  module NsIDownload_1_8Imports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDownload_1_8 < NsITransfer
    include_class_members NsIDownload_1_8Imports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsITransfer::LAST_METHOD_ID + 10 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOWNLOAD_IID_STR) { "9e1fd9f2-9727-4926-85cd-f16c375bba6d" }
      const_attr_reader  :NS_IDOWNLOAD_IID_STR
      
      const_set_lazy(:NS_IDOWNLOAD_IID) { NsID.new(NS_IDOWNLOAD_IID_STR) }
      const_attr_reader  :NS_IDOWNLOAD_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_target_file(a_target_file)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 1, get_address, a_target_file)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_percent_complete(a_percent_complete)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 2, get_address, a_percent_complete)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_amount_transferred(a_amount_transferred)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 3, get_address, a_amount_transferred)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_size(a_size)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 4, get_address, a_size)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_source(a_source)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 5, get_address, a_source)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_target(a_target)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 6, get_address, a_target)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_cancelable(a_cancelable)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 7, get_address, a_cancelable)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_display_name(a_display_name)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 8, get_address, a_display_name)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_start_time(a_start_time)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 9, get_address, a_start_time)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_mimeinfo(a_mimeinfo)
      return XPCOM._vtbl_call(NsITransfer::LAST_METHOD_ID + 10, get_address, a_mimeinfo)
    end
    
    private
    alias_method :initialize_ns_idownload_1_8, :initialize
  end
  
end
