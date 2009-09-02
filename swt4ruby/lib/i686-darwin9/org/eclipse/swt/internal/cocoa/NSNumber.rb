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
  module NSNumberImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSNumber < NSNumberImports.const_get :NSValue
    include_class_members NSNumberImports
    
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
    def bool_value
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_bool_value)
    end
    
    typesig { [] }
    def double_value
      return OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_double_value)
    end
    
    typesig { [] }
    def float_value
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_float_value)).to_f
    end
    
    typesig { [] }
    def int_value
      # 64
      return RJava.cast_to_int(OS.objc_msg_send(self.attr_id, OS.attr_sel_int_value))
    end
    
    typesig { [] }
    # long
    def integer_value
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_integer_value)
    end
    
    class_module.module_eval {
      typesig { [::Java::Boolean] }
      def number_with_bool(value)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_number_with_bool_, value)
        return !(result).equal?(0) ? NSNumber.new(result) : nil
      end
      
      typesig { [::Java::Double] }
      def number_with_double(value)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_number_with_double_, value)
        return !(result).equal?(0) ? NSNumber.new(result) : nil
      end
      
      typesig { [::Java::Int] }
      def number_with_int(value)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_number_with_int_, value)
        return !(result).equal?(0) ? NSNumber.new(result) : nil
      end
      
      typesig { [::Java::Int] }
      # long
      def number_with_integer(value)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_number_with_integer_, value)
        return !(result).equal?(0) ? NSNumber.new(result) : nil
      end
      
      typesig { [NSPoint] }
      def value_with_point(point)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_value_with_point_, point)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
      
      typesig { [NSRange] }
      def value_with_range(range)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_value_with_range_, range)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
      
      typesig { [NSRect] }
      def value_with_rect(rect)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_value_with_rect_, rect)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
      
      typesig { [NSSize] }
      def value_with_size(size)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnumber, OS.attr_sel_value_with_size_, size)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsnumber, :initialize
  end
  
end
