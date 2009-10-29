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
  module NSRunLoopImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSRunLoop < NSRunLoopImports.const_get :NSObject
    include_class_members NSRunLoopImports
    
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
    
    typesig { [NSTimer, NSString] }
    def add_timer(timer, mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_timer_for_mode_, !(timer).nil? ? timer.attr_id : 0, !(mode).nil? ? mode.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def current_run_loop
        # long
        result = OS.objc_msg_send(OS.attr_class_nsrun_loop, OS.attr_sel_current_run_loop)
        return !(result).equal?(0) ? NSRunLoop.new(result) : nil
      end
      
      typesig { [] }
      def main_run_loop
        # long
        result = OS.objc_msg_send(OS.attr_class_nsrun_loop, OS.attr_sel_main_run_loop)
        return !(result).equal?(0) ? NSRunLoop.new(result) : nil
      end
    }
    
    typesig { [NSString, NSDate] }
    def run_mode(mode, limit_date)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_run_mode_before_date_, !(mode).nil? ? mode.attr_id : 0, !(limit_date).nil? ? limit_date.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsrun_loop, :initialize
  end
  
end
