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
  module NSPasteboardImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPasteboard < NSPasteboardImports.const_get :NSObject
    include_class_members NSPasteboardImports
    
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
    
    typesig { [NSArray, Id] }
    # long
    def add_types(new_types, new_owner)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_add_types_owner_, !(new_types).nil? ? new_types.attr_id : 0, !(new_owner).nil? ? new_owner.attr_id : 0)
    end
    
    typesig { [NSArray] }
    def available_type_from_array(types)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_available_type_from_array_, !(types).nil? ? types.attr_id : 0)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [NSString] }
    def data_for_type(data_type)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_data_for_type_, !(data_type).nil? ? data_type.attr_id : 0)
      return !(result).equal?(0) ? NSData.new(result) : nil
    end
    
    typesig { [NSArray, Id] }
    # long
    def declare_types(new_types, new_owner)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_declare_types_owner_, !(new_types).nil? ? new_types.attr_id : 0, !(new_owner).nil? ? new_owner.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def general_pasteboard
        # long
        result = OS.objc_msg_send(OS.attr_class_nspasteboard, OS.attr_sel_general_pasteboard)
        return !(result).equal?(0) ? NSPasteboard.new(result) : nil
      end
      
      typesig { [NSString] }
      def pasteboard_with_name(name)
        # long
        result = OS.objc_msg_send(OS.attr_class_nspasteboard, OS.attr_sel_pasteboard_with_name_, !(name).nil? ? name.attr_id : 0)
        return !(result).equal?(0) ? NSPasteboard.new(result) : nil
      end
    }
    
    typesig { [NSString] }
    def property_list_for_type(data_type)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_property_list_for_type_, !(data_type).nil? ? data_type.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [NSData, NSString] }
    def set_data(data, data_type)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_set_data_for_type_, !(data).nil? ? data.attr_id : 0, !(data_type).nil? ? data_type.attr_id : 0)
    end
    
    typesig { [Id, NSString] }
    def set_property_list(plist, data_type)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_set_property_list_for_type_, !(plist).nil? ? plist.attr_id : 0, !(data_type).nil? ? data_type.attr_id : 0)
    end
    
    typesig { [NSString, NSString] }
    def set_string(string, data_type)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_set_string_for_type_, !(string).nil? ? string.attr_id : 0, !(data_type).nil? ? data_type.attr_id : 0)
    end
    
    typesig { [NSString] }
    def string_for_type(data_type)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_for_type_, !(data_type).nil? ? data_type.attr_id : 0)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def types
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_types)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    private
    alias_method :initialize__nspasteboard, :initialize
  end
  
end
