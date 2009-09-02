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
  module NSTextFieldCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTextFieldCell < NSTextFieldCellImports.const_get :NSActionCell
    include_class_members NSTextFieldCellImports
    
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
    
    typesig { [NSString] }
    def set_placeholder_string(string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_placeholder_string_, !(string).nil? ? string.attr_id : 0)
    end
    
    typesig { [NSColor] }
    def set_text_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_text_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [] }
    def text_color
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_text_color)
      return !(result).equal?(0) ? NSColor.new(result) : nil
    end
    
    private
    alias_method :initialize__nstext_field_cell, :initialize
  end
  
end
