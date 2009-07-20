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
  module IOleInPlaceObjectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IOleInPlaceObject < IOleInPlaceObjectImports.const_get :IOleWindow
    include_class_members IOleInPlaceObjectImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [] }
    def _in_place_deactivate
      return COM._vtbl_call(5, self.attr_address)
    end
    
    typesig { [] }
    def _uideactivate
      return COM._vtbl_call(6, self.attr_address)
    end
    
    typesig { [RECT, RECT] }
    def _set_object_rects(lprc_pos_rect, lprc_clip_rect)
      return COM._vtbl_call(7, self.attr_address, lprc_pos_rect, lprc_clip_rect)
    end
    
    typesig { [] }
    def _reactivate_and_undo
      return COM._vtbl_call(8, self.attr_address)
    end
    
    private
    alias_method :initialize__iole_in_place_object, :initialize
  end
  
end
