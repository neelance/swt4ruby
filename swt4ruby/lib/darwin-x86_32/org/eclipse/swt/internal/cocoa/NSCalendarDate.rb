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
  module NSCalendarDateImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSCalendarDate < NSCalendarDateImports.const_get :NSDate
    include_class_members NSCalendarDateImports
    
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
    
    class_module.module_eval {
      typesig { [] }
      def calendar_date
        # long
        result = OS.objc_msg_send(OS.attr_class_nscalendar_date, OS.attr_sel_calendar_date)
        return !(result).equal?(0) ? NSCalendarDate.new(result) : nil
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, NSTimeZone] }
      # long
      # long
      # long
      # long
      # long
      # long
      def date_with_year(year, month, day, hour, minute, second, a_time_zone)
        # long
        result = OS.objc_msg_send(OS.attr_class_nscalendar_date, OS.attr_sel_date_with_year_month_day_hour_minute_second_time_zone_, year, month, day, hour, minute, second, !(a_time_zone).nil? ? a_time_zone.attr_id : 0)
        return !(result).equal?(0) ? NSCalendarDate.new(result) : nil
      end
    }
    
    typesig { [] }
    # long
    def day_of_month
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_day_of_month)
    end
    
    typesig { [] }
    # long
    def hour_of_day
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_hour_of_day)
    end
    
    typesig { [] }
    # long
    def minute_of_hour
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_minute_of_hour)
    end
    
    typesig { [] }
    # long
    def month_of_year
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_month_of_year)
    end
    
    typesig { [] }
    # long
    def second_of_minute
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_second_of_minute)
    end
    
    typesig { [] }
    def time_zone
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_time_zone)
      return !(result).equal?(0) ? NSTimeZone.new(result) : nil
    end
    
    typesig { [] }
    # long
    def year_of_common_era
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_year_of_common_era)
    end
    
    class_module.module_eval {
      typesig { [::Java::Double] }
      def date_with_time_interval_since_now(secs)
        # long
        result = OS.objc_msg_send(OS.attr_class_nscalendar_date, OS.attr_sel_date_with_time_interval_since_now_, secs)
        return !(result).equal?(0) ? NSCalendarDate.new(result) : nil
      end
      
      typesig { [] }
      def distant_future
        # long
        result = OS.objc_msg_send(OS.attr_class_nscalendar_date, OS.attr_sel_distant_future)
        return !(result).equal?(0) ? NSCalendarDate.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nscalendar_date, :initialize
  end
  
end
