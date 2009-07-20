require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IOleInPlaceActiveObjectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IOleInPlaceActiveObject < IOleInPlaceActiveObjectImports.const_get :IOleWindow
    include_class_members IOleInPlaceActiveObjectImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [MSG] }
    def _translate_accelerator(lpmsg)
      # lpmsg - Pointer to message that may need translating
      return COM._vtbl_call(5, self.attr_address, lpmsg)
    end
    
    typesig { [::Java::Boolean] }
    def _on_frame_window_activate(f_activate)
      COM._vtbl_call(6, get_address, f_activate)
    end
    
    typesig { [::Java::Boolean] }
    def _on_doc_window_activate(f_activate)
      COM._vtbl_call(7, get_address, f_activate)
    end
    
    typesig { [RECT, ::Java::Int, ::Java::Boolean] }
    # long
    def _resize_border(prc_border, p_uiwindow, f_frame_window)
      return COM._vtbl_call(8, self.attr_address, prc_border, p_uiwindow, f_frame_window)
    end
    
    private
    alias_method :initialize__iole_in_place_active_object, :initialize
  end
  
end
