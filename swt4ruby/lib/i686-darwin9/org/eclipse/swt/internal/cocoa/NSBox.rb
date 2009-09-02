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
  module NSBoxImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSBox < NSBoxImports.const_get :NSView
    include_class_members NSBoxImports
    
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
    # double
    def border_width
      return (OS.objc_msg_send_fpret(self.attr_id, OS.attr_sel_border_width)).to_f
    end
    
    typesig { [] }
    def content_view
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_content_view)
      return !(result).equal?(0) ? NSView.new(result) : nil
    end
    
    typesig { [] }
    def content_view_margins
      result = NSSize.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_content_view_margins)
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def set_border_type(a_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_border_type_, a_type)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_border_width(border_width)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_border_width_, border_width)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_box_type(box_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_box_type_, box_type)
    end
    
    typesig { [NSView] }
    def set_content_view(a_view)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_content_view_, !(a_view).nil? ? a_view.attr_id : 0)
    end
    
    typesig { [NSSize] }
    def set_content_view_margins(offset_size)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_content_view_margins_, offset_size)
    end
    
    typesig { [NSColor] }
    def set_fill_color(fill_color)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_fill_color_, !(fill_color).nil? ? fill_color.attr_id : 0)
    end
    
    typesig { [NSString] }
    def set_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [NSFont] }
    def set_title_font(font_obj)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_font_, !(font_obj).nil? ? font_obj.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_title_position(a_position)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_position_, a_position)
    end
    
    typesig { [] }
    def size_to_fit
      OS.objc_msg_send(self.attr_id, OS.attr_sel_size_to_fit)
    end
    
    typesig { [] }
    def title_cell
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_title_cell)
      return !(result).equal?(0) ? NSCell.new(result) : nil
    end
    
    typesig { [] }
    def title_font
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_title_font)
      return !(result).equal?(0) ? NSFont.new(result) : nil
    end
    
    private
    alias_method :initialize__nsbox, :initialize
  end
  
end
