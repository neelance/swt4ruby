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
  module NSWorkspaceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSWorkspace < NSWorkspaceImports.const_get :NSObject
    include_class_members NSWorkspaceImports
    
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
    
    typesig { [NSString] }
    def full_path_for_application(app_name)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_full_path_for_application_, !(app_name).nil? ? app_name.attr_id : 0)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [NSString, ::Java::Int, ::Java::Int] }
    # long
    # long
    def get_info_for_file(full_path, app_name, type)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_get_info_for_file_application_type_, !(full_path).nil? ? full_path.attr_id : 0, app_name, type)
    end
    
    typesig { [NSString] }
    def icon_for_file(full_path)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_icon_for_file_, !(full_path).nil? ? full_path.attr_id : 0)
      return !(result).equal?(0) ? NSImage.new(result) : nil
    end
    
    typesig { [NSString] }
    def icon_for_file_type(file_type)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_icon_for_file_type_, !(file_type).nil? ? file_type.attr_id : 0)
      return !(result).equal?(0) ? NSImage.new(result) : nil
    end
    
    typesig { [NSString] }
    def is_file_package_at_path(full_path)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_file_package_at_path_, !(full_path).nil? ? full_path.attr_id : 0)
    end
    
    typesig { [NSString, NSString] }
    def open_file(full_path, app_name)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_open_file_with_application_, !(full_path).nil? ? full_path.attr_id : 0, !(app_name).nil? ? app_name.attr_id : 0)
    end
    
    typesig { [NSURL] }
    def open_url(url)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_open_url_, !(url).nil? ? url.attr_id : 0)
    end
    
    typesig { [NSArray, NSString, ::Java::Int, NSAppleEventDescriptor, ::Java::Int] }
    # long
    # long
    def open_urls(urls, bundle_identifier, options, descriptor, identifiers)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_open_urls_with_app_bundle_identifier_options_additional_event_param_descriptor_launch_identifiers_, !(urls).nil? ? urls.attr_id : 0, !(bundle_identifier).nil? ? bundle_identifier.attr_id : 0, options, !(descriptor).nil? ? descriptor.attr_id : 0, identifiers)
    end
    
    class_module.module_eval {
      typesig { [] }
      def shared_workspace
        # long
        result = OS.objc_msg_send(OS.attr_class_nsworkspace, OS.attr_sel_shared_workspace)
        return !(result).equal?(0) ? NSWorkspace.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsworkspace, :initialize
  end
  
end
