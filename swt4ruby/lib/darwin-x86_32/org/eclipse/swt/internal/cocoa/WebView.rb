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
  module WebViewImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebView < WebViewImports.const_get :NSView
    include_class_members WebViewImports
    
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
    def can_go_back
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_can_go_back)
    end
    
    typesig { [] }
    def can_go_forward
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_can_go_forward)
    end
    
    class_module.module_eval {
      typesig { [NSString] }
      def can_show_mimetype(mimetype)
        return OS.objc_msg_send_bool(OS.attr_class_web_view, OS.attr_sel_can_show_mimetype_, !(mimetype).nil? ? mimetype.attr_id : 0)
      end
    }
    
    typesig { [Id] }
    def copy(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_copy_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def cut(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_cut_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def go_back
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_go_back)
    end
    
    typesig { [] }
    def go_forward
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_go_forward)
    end
    
    typesig { [NSRect, NSString, NSString] }
    def init_with_frame(frame, frame_name, group_name)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_frame_frame_name_group_name_, frame, !(frame_name).nil? ? frame_name.attr_id : 0, !(group_name).nil? ? group_name.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? WebView.new(result) : nil)
    end
    
    typesig { [] }
    def main_frame
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_main_frame)
      return !(result).equal?(0) ? WebFrame.new(result) : nil
    end
    
    typesig { [Id] }
    def paste(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_paste_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def reload(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_reload_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_application_name_for_user_agent(application_name)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_application_name_for_user_agent_, !(application_name).nil? ? application_name.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_download_delegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_download_delegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_frame_load_delegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_frame_load_delegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_policy_delegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_policy_delegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [WebPreferences] }
    def set_preferences(prefs)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_preferences_, !(prefs).nil? ? prefs.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_resource_load_delegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_resource_load_delegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_uidelegate(delegate)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_uidelegate_, !(delegate).nil? ? delegate.attr_id : 0)
    end
    
    typesig { [Id] }
    def stop_loading(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_stop_loading_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [NSString] }
    def string_by_evaluating_java_script_from_string(script)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_evaluating_java_script_from_string_, !(script).nil? ? script.attr_id : 0)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__web_view, :initialize
  end
  
end
