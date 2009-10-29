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
  module NSMutableDictionaryImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableDictionary < NSMutableDictionaryImports.const_get :NSDictionary
    include_class_members NSMutableDictionaryImports
    
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
      typesig { [::Java::Int] }
      # long
      def dictionary_with_capacity(num_items)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_dictionary, OS.attr_sel_dictionary_with_capacity_, num_items)
        return !(result).equal?(0) ? NSMutableDictionary.new(result) : nil
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def init_with_capacity(num_items)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_capacity_, num_items)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSMutableDictionary.new(result) : nil)
    end
    
    typesig { [Id] }
    def remove_object_for_key(a_key)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_object_for_key_, !(a_key).nil? ? a_key.attr_id : 0)
    end
    
    typesig { [NSDictionary] }
    def set_dictionary(other_dictionary)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_dictionary_, !(other_dictionary).nil? ? other_dictionary.attr_id : 0)
    end
    
    typesig { [Id, Id] }
    def set_object(an_object, a_key)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_object_for_key_, !(an_object).nil? ? an_object.attr_id : 0, !(a_key).nil? ? a_key.attr_id : 0)
    end
    
    typesig { [Id, NSString] }
    def set_value(value, key)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_value_for_key_, !(value).nil? ? value.attr_id : 0, !(key).nil? ? key.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [Id, Id] }
      def dictionary_with_object(object, key)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_dictionary, OS.attr_sel_dictionary_with_object_for_key_, !(object).nil? ? object.attr_id : 0, !(key).nil? ? key.attr_id : 0)
        return !(result).equal?(0) ? NSMutableDictionary.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsmutable_dictionary, :initialize
  end
  
end
