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
  module NSFileManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSFileManager < NSFileManagerImports.const_get :NSObject
    include_class_members NSFileManagerImports
    
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
    
    typesig { [NSString, NSData, NSDictionary] }
    def create_file_at_path(path, data, attr)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_create_file_at_path_contents_attributes_, !(path).nil? ? path.attr_id : 0, !(data).nil? ? data.attr_id : 0, !(attr).nil? ? attr.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def default_manager
        # long
        result = OS.objc_msg_send(OS.attr_class_nsfile_manager, OS.attr_sel_default_manager)
        return !(result).equal?(0) ? NSFileManager.new(result) : nil
      end
    }
    
    typesig { [NSString] }
    def enumerator_at_path(path)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_enumerator_at_path_, !(path).nil? ? path.attr_id : 0)
      return !(result).equal?(0) ? NSDirectoryEnumerator.new(result) : nil
    end
    
    typesig { [NSString, ::Java::Int] }
    # long
    def file_exists_at_path(path, is_directory)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_file_exists_at_path_is_directory_, !(path).nil? ? path.attr_id : 0, is_directory)
    end
    
    typesig { [NSString, ::Java::Int] }
    # long
    def remove_item_at_path(path, error)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_remove_item_at_path_error_, !(path).nil? ? path.attr_id : 0, error)
    end
    
    private
    alias_method :initialize__nsfile_manager, :initialize
  end
  
end
