require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IOleDocumentViewImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include_const ::Org::Eclipse::Swt::Internal::Win32, :RECT
    }
  end
  
  class IOleDocumentView < IOleDocumentViewImports.const_get :IUnknown
    include_class_members IOleDocumentViewImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_in_place_site(p_ipsite)
      return COM._vtbl_call(3, self.attr_address, p_ipsite)
    end
    
    typesig { [RECT] }
    def _set_rect(prc_view)
      return COM._vtbl_call(6, self.attr_address, prc_view)
    end
    
    typesig { [::Java::Int] }
    def _show(f_show)
      return COM._vtbl_call(9, self.attr_address, f_show)
    end
    
    typesig { [::Java::Int] }
    def _uiactivate(f_uiactivate)
      return COM._vtbl_call(10, self.attr_address, f_uiactivate)
    end
    
    private
    alias_method :initialize__iole_document_view, :initialize
  end
  
end
