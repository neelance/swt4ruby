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
  module NSComboBoxCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSComboBoxCell < NSComboBoxCellImports.const_get :NSTextFieldCell
    include_class_members NSComboBoxCellImports
    
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
    def object_values
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_object_values)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    private
    alias_method :initialize__nscombo_box_cell, :initialize
  end
  
end
