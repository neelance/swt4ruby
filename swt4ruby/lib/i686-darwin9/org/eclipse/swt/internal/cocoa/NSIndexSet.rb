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
  module NSIndexSetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSIndexSet < NSIndexSetImports.const_get :NSObject
    include_class_members NSIndexSetImports
    
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
    
    typesig { [::Java::Int] }
    # long
    def contains_index(value)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_contains_index_, value)
    end
    
    typesig { [] }
    # long
    def count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_count)
    end
    
    typesig { [] }
    # long
    def first_index
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_first_index)
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
    # long
    # long[]
    # long
    # long
    def get_indexes(index_buffer, buffer_size, range)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_get_indexes_max_count_in_index_range_, index_buffer, buffer_size, range)
    end
    
    typesig { [::Java::Int] }
    # long
    def init_with_index(value)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_index_, value)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSIndexSet.new(result) : nil)
    end
    
    typesig { [NSRange] }
    def init_with_indexes_in_range(range)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_indexes_in_range_, range)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSIndexSet.new(result) : nil)
    end
    
    private
    alias_method :initialize__nsindex_set, :initialize
  end
  
end
