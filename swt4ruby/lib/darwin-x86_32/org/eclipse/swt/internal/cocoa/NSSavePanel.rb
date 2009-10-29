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
  module NSSavePanelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSSavePanel < NSSavePanelImports.const_get :NSPanel
    include_class_members NSSavePanelImports
    
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
    def filename
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_filename)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    # long
    def run_modal
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_run_modal)
    end
    
    typesig { [NSString, NSString] }
    # long
    def run_modal_for_directory(path, name)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_run_modal_for_directory_file_, !(path).nil? ? path.attr_id : 0, !(name).nil? ? name.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def save_panel
        # long
        result = OS.objc_msg_send(OS.attr_class_nssave_panel, OS.attr_sel_save_panel)
        return !(result).equal?(0) ? NSSavePanel.new(result) : nil
      end
    }
    
    typesig { [NSView] }
    def set_accessory_view(view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_accessory_view_, !(view).nil? ? view.attr_id : 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_can_create_directories(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_can_create_directories_, flag)
    end
    
    typesig { [NSString] }
    def set_directory(path)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_directory_, !(path).nil? ? path.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_message(message)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_message_, !(message).nil? ? message.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_title(title)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(title).nil? ? title.attr_id : 0)
    end
    
    typesig { [] }
    def validate_visible_columns
      OS.objc_msg_send(self.attr_id, OS.attr_sel_validate_visible_columns)
    end
    
    class_module.module_eval {
      typesig { [NSString, ::Java::Int] }
      # double
      # long
      def min_frame_width_with_title(a_title, a_style)
        return (OS.objc_msg_send_fpret(OS.attr_class_nssave_panel, OS.attr_sel_min_frame_width_with_title_style_mask_, !(a_title).nil? ? a_title.attr_id : 0, a_style)).to_f
      end
    }
    
    private
    alias_method :initialize__nssave_panel, :initialize
  end
  
end
