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
  module NsIDOMWindowImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMWindow < NsISupports
    include_class_members NsIDOMWindowImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 17 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMWINDOW_IID_STR) { "a6cf906b-15b3-11d2-932e-00805f8add32" }
      const_attr_reader  :NS_IDOMWINDOW_IID_STR
      
      const_set_lazy(:NS_IDOMWINDOW_IID) { NsID.new(NS_IDOMWINDOW_IID_STR) }
      const_attr_reader  :NS_IDOMWINDOW_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_document(a_document)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_document)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_parent(a_parent)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_parent)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_top(a_top)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_top)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_scrollbars(a_scrollbars)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_scrollbars)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_frames(a_frames)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_frames)
    end
    
    typesig { [::Java::Long] }
    # int
    def _get_name(a_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_name)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_name(a_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_name)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def _get_text_zoom(a_text_zoom)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_text_zoom)
    end
    
    typesig { [::Java::Float] }
    def _set_text_zoom(a_text_zoom)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_text_zoom)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_scroll_x(a_scroll_x)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, a_scroll_x)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_scroll_y(a_scroll_y)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_scroll_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _scroll_to(x_scroll, y_scroll)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, x_scroll, y_scroll)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _scroll_by(x_scroll_dif, y_scroll_dif)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, x_scroll_dif, y_scroll_dif)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_selection(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, _retval)
    end
    
    typesig { [::Java::Int] }
    def _scroll_by_lines(num_lines)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, num_lines)
    end
    
    typesig { [::Java::Int] }
    def _scroll_by_pages(num_pages)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, num_pages)
    end
    
    typesig { [] }
    def _size_to_content
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address)
    end
    
    private
    alias_method :initialize_ns_idomwindow, :initialize
  end
  
end
