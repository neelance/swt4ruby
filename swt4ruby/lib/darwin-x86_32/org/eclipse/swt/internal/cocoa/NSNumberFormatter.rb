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
  module NSNumberFormatterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSNumberFormatter < NSNumberFormatterImports.const_get :NSFormatter
    include_class_members NSNumberFormatterImports
    
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
    def allows_floats
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_allows_floats)
    end
    
    typesig { [] }
    def always_shows_decimal_separator
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_always_shows_decimal_separator)
    end
    
    typesig { [] }
    def decimal_separator
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_decimal_separator)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def maximum
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_maximum)
      return !(result).equal?(0) ? NSNumber.new(result) : nil
    end
    
    typesig { [] }
    # long
    def maximum_fraction_digits
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_maximum_fraction_digits)
    end
    
    typesig { [] }
    # long
    def maximum_integer_digits
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_maximum_integer_digits)
    end
    
    typesig { [] }
    def minimum
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_minimum)
      return !(result).equal?(0) ? NSNumber.new(result) : nil
    end
    
    typesig { [::Java::Boolean] }
    def set_allows_floats(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_floats_, flag)
    end
    
    typesig { [NSNumber] }
    def set_maximum(number)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_maximum_, !(number).nil? ? number.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_maximum_fraction_digits(number)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_maximum_fraction_digits_, number)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_maximum_integer_digits(number)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_maximum_integer_digits_, number)
    end
    
    typesig { [NSNumber] }
    def set_minimum(number)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_minimum_, !(number).nil? ? number.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_minimum_fraction_digits(number)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_minimum_fraction_digits_, number)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_minimum_integer_digits(number)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_minimum_integer_digits_, number)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_number_style(style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_number_style_, style)
    end
    
    typesig { [::Java::Boolean] }
    def set_partial_string_validation_enabled(b)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_partial_string_validation_enabled_, b)
    end
    
    private
    alias_method :initialize__nsnumber_formatter, :initialize
  end
  
end
