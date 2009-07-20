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
  module NsIEmbeddingSiteWindowImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIEmbeddingSiteWindow < NsISupports
    include_class_members NsIEmbeddingSiteWindowImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 8 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IEMBEDDINGSITEWINDOW_IID_STR) { "3e5432cd-9568-4bd1-8cbe-d50aba110743" }
      const_attr_reader  :NS_IEMBEDDINGSITEWINDOW_IID_STR
      
      const_set_lazy(:NS_IEMBEDDINGSITEWINDOW_IID) { NsID.new(NS_IEMBEDDINGSITEWINDOW_IID_STR) }
      const_attr_reader  :NS_IEMBEDDINGSITEWINDOW_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:DIM_FLAGS_POSITION) { 1 }
      const_attr_reader  :DIM_FLAGS_POSITION
      
      const_set_lazy(:DIM_FLAGS_SIZE_INNER) { 2 }
      const_attr_reader  :DIM_FLAGS_SIZE_INNER
      
      const_set_lazy(:DIM_FLAGS_SIZE_OUTER) { 4 }
      const_attr_reader  :DIM_FLAGS_SIZE_OUTER
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def _set_dimensions(flags, x, y, cx, cy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, flags, x, y, cx, cy)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def _get_dimensions(flags, x, y, cx, cy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, flags, x, y, cx, cy)
    end
    
    typesig { [] }
    def _set_focus
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_visibility(a_visibility)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_visibility)
    end
    
    typesig { [::Java::Int] }
    def _set_visibility(a_visibility)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_visibility)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_title(a_title)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_title)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def _set_title(a_title)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_title)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_site_window(a_site_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_site_window)
    end
    
    private
    alias_method :initialize_ns_iembedding_site_window, :initialize
  end
  
end
