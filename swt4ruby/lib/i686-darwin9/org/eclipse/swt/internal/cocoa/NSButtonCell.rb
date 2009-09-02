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
  module NSButtonCellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSButtonCell < NSButtonCellImports.const_get :NSActionCell
    include_class_members NSButtonCellImports
    
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
    
    typesig { [NSImage, NSRect, NSView] }
    def draw_image(image, frame, control_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_image_with_frame_in_view_, !(image).nil? ? image.attr_id : 0, frame, !(control_view).nil? ? control_view.attr_id : 0)
    end
    
    typesig { [NSColor] }
    def set_background_color(color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_background_color_, !(color).nil? ? color.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_button_type(a_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_button_type_, a_type)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_image_position(a_position)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_position_, a_position)
    end
    
    typesig { [] }
    def title
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_title)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    private
    alias_method :initialize__nsbutton_cell, :initialize
  end
  
end
