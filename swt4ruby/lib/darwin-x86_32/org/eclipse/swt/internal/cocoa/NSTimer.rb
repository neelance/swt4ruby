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
  module NSTimerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSTimer < NSTimerImports.const_get :NSObject
    include_class_members NSTimerImports
    
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
    def invalidate
      OS.objc_msg_send(self.attr_id, OS.attr_sel_invalidate)
    end
    
    class_module.module_eval {
      typesig { [::Java::Double, Id, ::Java::Int, Id, ::Java::Boolean] }
      # long
      def scheduled_timer_with_time_interval(ti, a_target, a_selector, user_info, yes_or_no)
        # long
        result = OS.objc_msg_send(OS.attr_class_nstimer, OS.attr_sel_scheduled_timer_with_time_interval_target_selector_user_info_repeats_, ti, !(a_target).nil? ? a_target.attr_id : 0, a_selector, !(user_info).nil? ? user_info.attr_id : 0, yes_or_no)
        return !(result).equal?(0) ? NSTimer.new(result) : nil
      end
    }
    
    typesig { [NSDate] }
    def set_fire_date(date)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_fire_date_, !(date).nil? ? date.attr_id : 0)
    end
    
    typesig { [] }
    def user_info
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_user_info)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nstimer, :initialize
  end
  
end
