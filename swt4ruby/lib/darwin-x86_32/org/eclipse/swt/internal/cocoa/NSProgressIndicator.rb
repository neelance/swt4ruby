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
  module NSProgressIndicatorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSProgressIndicator < NSProgressIndicatorImports.const_get :NSView
    include_class_members NSProgressIndicatorImports
    
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
    def double_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_double_value)
    end
    
    typesig { [] }
    def max_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_max_value)
    end
    
    typesig { [] }
    def min_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_min_value)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_control_size(size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_control_size_, size)
    end
    
    typesig { [::Java::Double] }
    def set_double_value(double_value)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_double_value_, double_value)
    end
    
    typesig { [::Java::Boolean] }
    def set_indeterminate(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_indeterminate_, flag)
    end
    
    typesig { [::Java::Double] }
    def set_max_value(new_maximum)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_max_value_, new_maximum)
    end
    
    typesig { [::Java::Double] }
    def set_min_value(new_minimum)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_min_value_, new_minimum)
    end
    
    typesig { [::Java::Boolean] }
    def set_uses_threaded_animation(threaded_animation)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_uses_threaded_animation_, threaded_animation)
    end
    
    typesig { [] }
    def size_to_fit
      OS.objc_msg_send(self.attr_id, OS.attr_sel_size_to_fit)
    end
    
    typesig { [Id] }
    def start_animation(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_start_animation_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def stop_animation(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_stop_animation_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsprogress_indicator, :initialize
  end
  
end
