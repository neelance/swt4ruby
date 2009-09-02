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
  module NSTableHeaderCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTableHeaderCell < NSTableHeaderCellImports.const_get :NSTextFieldCell
    include_class_members NSTableHeaderCellImports
    
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
    
    typesig { [NSRect, NSView, ::Java::Boolean, ::Java::Int] }
    # long
    def draw_sort_indicator_with_frame(cell_frame, control_view, ascending, priority)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_sort_indicator_with_frame_in_view_ascending_priority_, cell_frame, !(control_view).nil? ? control_view.attr_id : 0, ascending, priority)
    end
    
    typesig { [NSRect] }
    def sort_indicator_rect_for_bounds(the_rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_sort_indicator_rect_for_bounds_, the_rect)
      return result
    end
    
    private
    alias_method :initialize__nstable_header_cell, :initialize
  end
  
end
