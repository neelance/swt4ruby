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
# -  Copyright (C) 2004, 2005 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIDownloadImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDownload < NsIDownloadImports.const_get :NsISupports
    include_class_members NsIDownloadImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 13 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOWNLOAD_IID_STR) { "06cb92f2-1dd2-11b2-95f2-96dfdfb804a1" }
      const_attr_reader  :NS_IDOWNLOAD_IID_STR
      
      const_set_lazy(:NS_IDOWNLOAD_IID) { NsID.new(NS_IDOWNLOAD_IID_STR) }
      const_attr_reader  :NS_IDOWNLOAD_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Long, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _init(a_source, a_target, a_display_name, a_mimeinfo, start_time, a_persist)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_source, a_target, a_display_name, a_mimeinfo, start_time, a_persist)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_source(a_source)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_source)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_target(a_target)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_target)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_persist(a_persist)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_persist)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_percent_complete(a_percent_complete)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_percent_complete)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_display_name(a_display_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_display_name)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def _set_display_name(a_display_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_display_name)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_start_time(a_start_time)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_start_time)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_mimeinfo(a_mimeinfo)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_mimeinfo)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_listener(a_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_listener)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_listener(a_listener)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_listener)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_observer(a_observer)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_observer)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_observer(a_observer)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_observer)
    end
    
    private
    alias_method :initialize_ns_idownload, :initialize
  end
  
end
