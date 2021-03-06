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
  module NSStepperImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSStepper < NSStepperImports.const_get :NSControl
    include_class_members NSStepperImports
    
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
    def increment
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_increment)
    end
    
    typesig { [] }
    def max_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_max_value)
    end
    
    typesig { [] }
    def min_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_min_value)
    end
    
    typesig { [::Java::Double] }
    def set_increment(increment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_increment_, increment)
    end
    
    typesig { [::Java::Double] }
    def set_max_value(max_value)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_max_value_, max_value)
    end
    
    typesig { [::Java::Double] }
    def set_min_value(min_value)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_min_value_, min_value)
    end
    
    typesig { [::Java::Boolean] }
    def set_value_wraps(value_wraps)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_value_wraps_, value_wraps)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nsstepper, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nsstepper, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nsstepper, :initialize
  end
  
end
