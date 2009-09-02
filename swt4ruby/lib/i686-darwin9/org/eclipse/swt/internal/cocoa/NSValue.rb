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
  module NSValueImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSValue < NSValueImports.const_get :NSObject
    include_class_members NSValueImports
    
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
    def obj_ctype
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_obj_ctype)
    end
    
    typesig { [] }
    def point_value
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_point_value)
      return result
    end
    
    typesig { [] }
    def range_value
      result = NSRange.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_range_value)
      return result
    end
    
    typesig { [] }
    def rect_value
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_rect_value)
      return result
    end
    
    typesig { [] }
    def size_value
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_size_value)
      return result
    end
    
    class_module.module_eval {
      typesig { [NSPoint] }
      def value_with_point(point)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsvalue, OS.attr_sel_value_with_point_, point)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
      
      typesig { [NSRange] }
      def value_with_range(range)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsvalue, OS.attr_sel_value_with_range_, range)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
      
      typesig { [NSRect] }
      def value_with_rect(rect)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsvalue, OS.attr_sel_value_with_rect_, rect)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
      
      typesig { [NSSize] }
      def value_with_size(size)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsvalue, OS.attr_sel_value_with_size_, size)
        return !(result).equal?(0) ? NSValue.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsvalue, :initialize
  end
  
end
