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
  module NsIBaseWindowImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIBaseWindow < NsIBaseWindowImports.const_get :NsISupports
    include_class_members NsIBaseWindowImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 24 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IBASEWINDOW_IID_STR) { "046bc8a0-8015-11d3-af70-00a024ffc08c" }
      const_attr_reader  :NS_IBASEWINDOW_IID_STR
      
      const_set_lazy(:NS_IBASEWINDOW_IID) { NsID.new(NS_IBASEWINDOW_IID_STR) }
      const_attr_reader  :NS_IBASEWINDOW_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # int
    # int
    def _init_window(parent_native_window, parent_widget, x, y, cx, cy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, parent_native_window, parent_widget, x, y, cx, cy)
    end
    
    typesig { [] }
    def _create
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address)
    end
    
    typesig { [] }
    def _destroy
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _set_position(x, y)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, x, y)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def _get_position(x, y)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, x, y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def _set_size(cx, cy, f_repaint)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, cx, cy, f_repaint)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def _get_size(cx, cy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, cx, cy)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def _set_position_and_size(x, y, cx, cy, f_repaint)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, x, y, cx, cy, f_repaint)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    def _get_position_and_size(x, y, cx, cy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, x, y, cx, cy)
    end
    
    typesig { [::Java::Int] }
    def _repaint(force)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, force)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_parent_widget(a_parent_widget)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_parent_widget)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_parent_widget(a_parent_widget)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_parent_widget)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_parent_native_window(a_parent_native_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 13, get_address, a_parent_native_window)
    end
    
    typesig { [::Java::Long] }
    # int
    def _set_parent_native_window(a_parent_native_window)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 14, get_address, a_parent_native_window)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_visibility(a_visibility)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 15, get_address, a_visibility)
    end
    
    typesig { [::Java::Int] }
    def _set_visibility(a_visibility)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 16, get_address, a_visibility)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_enabled(a_enabled)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 17, get_address, a_enabled)
    end
    
    typesig { [::Java::Int] }
    def _set_enabled(a_enabled)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 18, get_address, a_enabled)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_blur_suppression(a_blur_suppression)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 19, get_address, a_blur_suppression)
    end
    
    typesig { [::Java::Int] }
    def _set_blur_suppression(a_blur_suppression)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 20, get_address, a_blur_suppression)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_main_widget(a_main_widget)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 21, get_address, a_main_widget)
    end
    
    typesig { [] }
    def _set_focus
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 22, get_address)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_title(a_title)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 23, get_address, a_title)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def _set_title(a_title)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 24, get_address, a_title)
    end
    
    private
    alias_method :initialize_ns_ibase_window, :initialize
  end
  
end
