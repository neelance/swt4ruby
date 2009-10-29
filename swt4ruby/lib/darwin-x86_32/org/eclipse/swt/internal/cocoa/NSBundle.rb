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
  module NSBundleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSBundle < NSBundleImports.const_get :NSObject
    include_class_members NSBundleImports
    
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
      typesig { [NSString, NSDictionary, ::Java::Int] }
      # long
      def load_nib_file(file_name, context, zone)
        return OS.objc_msg_send_bool(OS.attr_class_nsbundle, OS.attr_sel_load_nib_file_external_name_table_with_zone_, !(file_name).nil? ? file_name.attr_id : 0, !(context).nil? ? context.attr_id : 0, zone)
      end
    }
    
    typesig { [] }
    def bundle_identifier
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_bundle_identifier)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def bundle_path
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_bundle_path)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [NSString] }
      def bundle_with_identifier(identifier)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsbundle, OS.attr_sel_bundle_with_identifier_, !(identifier).nil? ? identifier.attr_id : 0)
        return !(result).equal?(0) ? NSBundle.new(result) : nil
      end
      
      typesig { [NSString] }
      def bundle_with_path(path)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsbundle, OS.attr_sel_bundle_with_path_, !(path).nil? ? path.attr_id : 0)
        return !(result).equal?(0) ? NSBundle.new(result) : nil
      end
    }
    
    typesig { [] }
    def info_dictionary
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_info_dictionary)
      return !(result).equal?(0) ? NSDictionary.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      def main_bundle
        # long
        result = OS.objc_msg_send(OS.attr_class_nsbundle, OS.attr_sel_main_bundle)
        return !(result).equal?(0) ? NSBundle.new(result) : nil
      end
    }
    
    typesig { [NSString] }
    def object_for_info_dictionary_key(key)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_object_for_info_dictionary_key_, !(key).nil? ? key.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [NSString, NSString] }
    def path_for_resource(name, ext)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_path_for_resource_of_type_, !(name).nil? ? name.attr_id : 0, !(ext).nil? ? ext.attr_id : 0)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def resource_path
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_resource_path)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nsbundle, :initialize
  end
  
end
