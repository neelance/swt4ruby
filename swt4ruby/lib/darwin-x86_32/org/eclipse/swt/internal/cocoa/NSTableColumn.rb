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
  module NSTableColumnImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTableColumn < NSTableColumnImports.const_get :NSObject
    include_class_members NSTableColumnImports
    
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
    def data_cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_data_cell)
      return !(result).equal?(0) ? NSCell.new(result) : nil
    end
    
    typesig { [] }
    def header_cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_header_cell)
      return !(result).equal?(0) ? NSTableHeaderCell.new(result) : nil
    end
    
    typesig { [Id] }
    def init_with_identifier(identifier)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_identifier_, !(identifier).nil? ? identifier.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSTableColumn.new(result) : nil)
    end
    
    typesig { [] }
    # long
    def resizing_mask
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_resizing_mask)
    end
    
    typesig { [NSCell] }
    def set_data_cell(cell)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_data_cell_, !(cell).nil? ? cell.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_editable(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_editable_, flag)
    end
    
    typesig { [NSCell] }
    def set_header_cell(cell)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_header_cell_, !(cell).nil? ? cell.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_identifier(identifier)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_identifier_, !(identifier).nil? ? identifier.attr_id : 0)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_min_width(min_width)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_min_width_, min_width)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_resizing_mask(resizing_mask)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_resizing_mask_, resizing_mask)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_width(width)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_width_, width)
    end
    
    typesig { [] }
    # double
    def width
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_width)).to_f
    end
    
    private
    alias_method :initialize__nstable_column, :initialize
  end
  
end
