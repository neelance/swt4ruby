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
  module NSSearchFieldCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSSearchFieldCell < NSSearchFieldCellImports.const_get :NSTextFieldCell
    include_class_members NSSearchFieldCellImports
    
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
    
    typesig { [] }
    def cancel_button_cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_cancel_button_cell)
      return !(result).equal?(0) ? NSButtonCell.new(result) : nil
    end
    
    typesig { [] }
    def search_button_cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_search_button_cell)
      return !(result).equal?(0) ? NSButtonCell.new(result) : nil
    end
    
    typesig { [NSRect] }
    def search_text_rect_for_bounds(rect)
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_search_text_rect_for_bounds_, rect)
      return result
    end
    
    typesig { [NSButtonCell] }
    def set_cancel_button_cell(cell)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_cancel_button_cell_, !(cell).nil? ? cell.attr_id : 0)
    end
    
    typesig { [NSButtonCell] }
    def set_search_button_cell(cell)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_search_button_cell_, !(cell).nil? ? cell.attr_id : 0)
    end
    
    private
    alias_method :initialize__nssearch_field_cell, :initialize
  end
  
end
