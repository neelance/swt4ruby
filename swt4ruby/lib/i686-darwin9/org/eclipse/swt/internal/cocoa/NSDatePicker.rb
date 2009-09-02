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
  module NSDatePickerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSDatePicker < NSDatePickerImports.const_get :NSControl
    include_class_members NSDatePickerImports
    
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
    def date_value
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_date_value)
      return !(result).equal?(0) ? NSDate.new(result) : nil
    end
    
    typesig { [NSColor] }
    def set_background_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_date_picker_elements(element_flags)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_date_picker_elements_, element_flags)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_date_picker_style(new_style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_date_picker_style_, new_style)
    end
    
    typesig { [NSDate] }
    def set_date_value(new_start_date)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_date_value_, !(new_start_date).nil? ? new_start_date.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_draws_background(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_draws_background_, flag)
    end
    
    typesig { [NSColor] }
    def set_text_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_text_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nsdate_picker, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nsdate_picker, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nsdate_picker, :initialize
  end
  
end
