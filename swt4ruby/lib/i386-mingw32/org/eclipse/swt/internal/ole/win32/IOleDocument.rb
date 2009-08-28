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
  module IOleDocumentImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IOleDocument < IOleDocumentImports.const_get :IUnknown
    include_class_members IOleDocumentImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    # long
    def _create_view(p_ipsite, pstm, dw_reserved, pp_view)
      return COM._vtbl_call(3, self.attr_address, p_ipsite, pstm, dw_reserved, pp_view)
    end
    
    private
    alias_method :initialize__iole_document, :initialize
  end
  
end
