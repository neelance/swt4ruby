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
  module NsITransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsITransfer < NsIWebProgressListener2
    include_class_members NsITransferImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIWebProgressListener2::LAST_METHOD_ID + 1 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ITRANSFER_IID_STR) { "23c51569-e9a1-4a92-adeb-3723db82ef7c" }
      const_attr_reader  :NS_ITRANSFER_IID_STR
      
      const_set_lazy(:NS_ITRANSFER_IID) { NsID.new(NS_ITRANSFER_IID_STR) }
      const_attr_reader  :NS_ITRANSFER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    def _init(a_source, a_target, a_display_name, a_mimeinfo, start_time, a_temp_file, a_cancelable)
      return XPCOM._vtbl_call(NsIWebProgressListener2::LAST_METHOD_ID + 1, get_address, a_source, a_target, a_display_name, a_mimeinfo, start_time, a_temp_file, a_cancelable)
    end
    
    private
    alias_method :initialize_ns_itransfer, :initialize
  end
  
end
