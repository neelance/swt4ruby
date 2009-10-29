require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSTypesetterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTypesetter < NSTypesetterImports.const_get :NSObject
    include_class_members NSTypesetterImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    typesig { [NSLayoutManager, ::Java::Int] }
    # double
    # long
    def baseline_offset_in_layout_manager(layout_mgr, glyph_index)
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_baseline_offset_in_layout_manager_glyph_index_, !(layout_mgr).nil? ? layout_mgr.attr_id : 0, glyph_index)).to_f
    end
    
    private
    alias_method :initialize__nstypesetter, :initialize
  end
  
end
