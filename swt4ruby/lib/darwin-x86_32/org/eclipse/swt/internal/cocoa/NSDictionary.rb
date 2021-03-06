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
  module NSDictionaryImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSDictionary < NSDictionaryImports.const_get :NSObject
    include_class_members NSDictionaryImports
    
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
    def all_keys
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_all_keys)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [] }
    # long
    def count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_count)
    end
    
    class_module.module_eval {
      typesig { [Id, Id] }
      def dictionary_with_object(object, key)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsdictionary, OS.attr_sel_dictionary_with_object_for_key_, !(object).nil? ? object.attr_id : 0, !(key).nil? ? key.attr_id : 0)
        return !(result).equal?(0) ? NSDictionary.new(result) : nil
      end
    }
    
    typesig { [] }
    def object_enumerator
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_object_enumerator)
      return !(result).equal?(0) ? NSEnumerator.new(result) : nil
    end
    
    typesig { [Id] }
    def object_for_key(a_key)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_object_for_key_, !(a_key).nil? ? a_key.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [NSString] }
    def value_for_key(key)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_value_for_key_, !(key).nil? ? key.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    private
    alias_method :initialize__nsdictionary, :initialize
  end
  
end
