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
  module NSMutableArrayImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableArray < NSMutableArrayImports.const_get :NSArray
    include_class_members NSMutableArrayImports
    
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
    
    typesig { [Id] }
    def add_object(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_object_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [NSArray] }
    def add_objects_from_array(other_array)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_objects_from_array_, !(other_array).nil? ? other_array.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def array_with_capacity(num_items)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_array, OS.attr_sel_array_with_capacity_, num_items)
        return !(result).equal?(0) ? NSMutableArray.new(result) : nil
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def init_with_capacity(num_items)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_capacity_, num_items)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSMutableArray.new(result) : nil)
    end
    
    typesig { [] }
    def remove_last_object
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_last_object)
    end
    
    typesig { [Id] }
    def remove_object(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_object_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def remove_object_at_index(index)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_object_at_index_, index)
    end
    
    typesig { [Id] }
    def remove_object_identical_to(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_object_identical_to_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def array
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_array, OS.attr_sel_array)
        return !(result).equal?(0) ? NSArray.new(result) : nil
      end
      
      typesig { [Id] }
      def array_with_object(an_object)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_array, OS.attr_sel_array_with_object_, !(an_object).nil? ? an_object.attr_id : 0)
        return !(result).equal?(0) ? NSMutableArray.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsmutable_array, :initialize
  end
  
end
