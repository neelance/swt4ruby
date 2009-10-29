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
  module NSOpenPanelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSOpenPanel < NSOpenPanelImports.const_get :NSSavePanel
    include_class_members NSOpenPanelImports
    
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
    def filenames
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_filenames)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    class_module.module_eval {
      typesig { [] }
      def open_panel
        # long
        result = OS.objc_msg_send(OS.attr_class_nsopen_panel, OS.attr_sel_open_panel)
        return !(result).equal?(0) ? NSOpenPanel.new(result) : nil
      end
    }
    
    typesig { [::Java::Boolean] }
    def set_allows_multiple_selection(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_multiple_selection_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_can_choose_directories(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_can_choose_directories_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_can_choose_files(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_can_choose_files_, flag)
    end
    
    class_module.module_eval {
      typesig { [] }
      def save_panel
        # long
        result = OS.objc_msg_send(OS.attr_class_nsopen_panel, OS.attr_sel_save_panel)
        return !(result).equal?(0) ? NSSavePanel.new(result) : nil
      end
      
      typesig { [NSString, ::Java::Int] }
      # double
      # long
      def min_frame_width_with_title(a_title, a_style)
        return (OS.objc_msg_send_fpret(OS.attr_class_nsopen_panel, OS.attr_sel_min_frame_width_with_title_style_mask_, !(a_title).nil? ? a_title.attr_id : 0, a_style)).to_f
      end
    }
    
    private
    alias_method :initialize__nsopen_panel, :initialize
  end
  
end
