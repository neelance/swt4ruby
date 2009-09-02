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
  module NSColorPanelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSColorPanel < NSColorPanelImports.const_get :NSPanel
    include_class_members NSColorPanelImports
    
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
    def color
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_color)
      return !(result).equal?(0) ? NSColor.new(result) : nil
    end
    
    typesig { [NSColor] }
    def set_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def shared_color_panel
        # long
        result = OS.objc_msg_send(OS.attr_class_nscolor_panel, OS.attr_sel_shared_color_panel)
        return !(result).equal?(0) ? NSColorPanel.new(result) : nil
      end
      
      typesig { [NSString, ::Java::Int] }
      # double
      # long
      def min_frame_width_with_title(a_title, a_style)
        return (OS.objc_msg_send_fpret(OS.attr_class_nscolor_panel, OS.attr_sel_min_frame_width_with_title_style_mask_, !(a_title).nil? ? a_title.attr_id : 0, a_style)).to_f
      end
    }
    
    private
    alias_method :initialize__nscolor_panel, :initialize
  end
  
end
