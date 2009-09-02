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
  module NSPanelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPanel < NSPanelImports.const_get :NSWindow
    include_class_members NSPanelImports
    
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
    
    typesig { [::Java::Boolean] }
    def set_works_when_modal(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_works_when_modal_, flag)
    end
    
    typesig { [] }
    def works_when_modal
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_works_when_modal)
    end
    
    class_module.module_eval {
      typesig { [NSString, ::Java::Int] }
      # double
      # long
      def min_frame_width_with_title(a_title, a_style)
        return (OS.objc_msg_send_fpret(OS.attr_class_nspanel, OS.attr_sel_min_frame_width_with_title_style_mask_, !(a_title).nil? ? a_title.attr_id : 0, a_style)).to_f
      end
    }
    
    private
    alias_method :initialize__nspanel, :initialize
  end
  
end
