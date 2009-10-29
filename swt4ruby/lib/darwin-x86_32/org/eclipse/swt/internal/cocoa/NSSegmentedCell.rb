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
  module NSSegmentedCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSSegmentedCell < NSSegmentedCellImports.const_get :NSActionCell
    include_class_members NSSegmentedCellImports
    
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
    
    typesig { [::Java::Boolean, ::Java::Int] }
    # long
    def set_enabled(enabled, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_enabled_for_segment_, enabled, segment)
    end
    
    typesig { [NSImage, ::Java::Int] }
    # long
    def set_image(image, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_for_segment_, !(image).nil? ? image.attr_id : 0, segment)
    end
    
    typesig { [NSString, ::Java::Int] }
    # long
    def set_label(label, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_label_for_segment_, !(label).nil? ? label.attr_id : 0, segment)
    end
    
    typesig { [NSMenu, ::Java::Int] }
    # long
    def set_menu(menu, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_menu_for_segment_, !(menu).nil? ? menu.attr_id : 0, segment)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_segment_count(count)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_segment_count_, count)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_segment_style(segment_style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_segment_style_, segment_style)
    end
    
    typesig { [::Java::Boolean, ::Java::Int] }
    # long
    def set_selected(selected, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_selected_for_segment_, selected, segment)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_selected_segment(selected_segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_selected_segment_, selected_segment)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def set_tag(tag, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tag_for_segment_, tag, segment)
    end
    
    typesig { [NSString, ::Java::Int] }
    # long
    def set_tool_tip(tool_tip, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tool_tip_for_segment_, !(tool_tip).nil? ? tool_tip.attr_id : 0, segment)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_tracking_mode(tracking_mode)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_tracking_mode_, tracking_mode)
    end
    
    typesig { [::Java::Float, ::Java::Int] }
    # double
    # long
    def set_width(width, segment)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_width_for_segment_, width, segment)
    end
    
    private
    alias_method :initialize__nssegmented_cell, :initialize
  end
  
end
