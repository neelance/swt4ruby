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
  module NSScrollerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSScroller < NSScrollerImports.const_get :NSControl
    include_class_members NSScrollerImports
    
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
    # long
    def control_size
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_control_size)
    end
    
    typesig { [] }
    # long
    def hit_part
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_hit_part)
    end
    
    class_module.module_eval {
      typesig { [] }
      # double
      def scroller_width
        return (OS.objc_msg_send_fpret(OS.attr_class_nsscroller, OS.attr_sel_scroller_width)).to_f
      end
      
      typesig { [::Java::Int] }
      # double
      # long
      def scroller_width_for_control_size(control_size)
        return (OS.objc_msg_send_fpret(OS.attr_class_nsscroller, OS.attr_sel_scroller_width_for_control_size_, control_size)).to_f
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def set_control_size(control_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_control_size_, control_size)
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    def set_float_value(a_float, proportion)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_float_value_knob_proportion_, a_float, proportion)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nsscroller, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nsscroller, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nsscroller, :initialize
  end
  
end
