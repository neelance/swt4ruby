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
  module NSArrayImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSArray < NSArrayImports.const_get :NSObject
    include_class_members NSArrayImports
    
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
      def array
        # long
        result = OS.objc_msg_send(OS.attr_class_nsarray, OS.attr_sel_array)
        return !(result).equal?(0) ? NSArray.new(result) : nil
      end
      
      typesig { [Id] }
      def array_with_object(an_object)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsarray, OS.attr_sel_array_with_object_, !(an_object).nil? ? an_object.attr_id : 0)
        return !(result).equal?(0) ? NSArray.new(result) : nil
      end
    }
    
    typesig { [Id] }
    def contains_object(an_object)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_contains_object_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [] }
    # long
    def count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_count)
    end
    
    typesig { [Id] }
    # long
    def index_of_object_identical_to(an_object)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_index_of_object_identical_to_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def object_at_index(index)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_object_at_index_, index)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nsarray, :initialize
  end
  
end
