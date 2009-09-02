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
  module NSDateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSDate < NSDateImports.const_get :NSObject
    include_class_members NSDateImports
    
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
    
    typesig { [NSString, NSTimeZone] }
    def date_with_calendar_format(format, a_time_zone)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_date_with_calendar_format_time_zone_, !(format).nil? ? format.attr_id : 0, !(a_time_zone).nil? ? a_time_zone.attr_id : 0)
      return !(result).equal?(0) ? NSCalendarDate.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [::Java::Double] }
      def date_with_time_interval_since_now(secs)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsdate, OS.attr_sel_date_with_time_interval_since_now_, secs)
        return !(result).equal?(0) ? NSDate.new(result) : nil
      end
      
      typesig { [] }
      def distant_future
        # long
        result = OS.objc_msg_send(OS.attr_class_nsdate, OS.attr_sel_distant_future)
        return !(result).equal?(0) ? NSDate.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsdate, :initialize
  end
  
end
