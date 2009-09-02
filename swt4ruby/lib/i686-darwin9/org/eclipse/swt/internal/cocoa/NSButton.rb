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
  module NSButtonImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSButton < NSButtonImports.const_get :NSControl
    include_class_members NSButtonImports
    
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
    def attributed_title
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_attributed_title)
      return !(result).equal?(0) ? NSAttributedString.new(result) : nil
    end
    
    typesig { [::Java::Boolean] }
    def set_allows_mixed_state(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_allows_mixed_state_, flag)
    end
    
    typesig { [NSAttributedString] }
    def set_attributed_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_attributed_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_bezel_style(bezel_style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_bezel_style_, bezel_style)
    end
    
    typesig { [::Java::Boolean] }
    def set_bordered(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_bordered_, flag)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_button_type(a_type)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_button_type_, a_type)
    end
    
    typesig { [NSImage] }
    def set_image(image)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_, !(image).nil? ? image.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_image_position(a_position)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_image_position_, a_position)
    end
    
    typesig { [NSString] }
    def set_key_equivalent(char_code)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_key_equivalent_, !(char_code).nil? ? char_code.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_state(value)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_state_, value)
    end
    
    typesig { [NSString] }
    def set_title(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_title_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [] }
    # long
    def state
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_state)
    end
    
    class_module.module_eval {
      typesig { [] }
      # long
      def cell_class
        return OS.objc_msg_send(OS.attr_class_nsbutton, OS.attr_sel_cell_class)
      end
      
      typesig { [::Java::Int] }
      # long
      def set_cell_class(factory_id)
        OS.objc_msg_send(OS.attr_class_nsbutton, OS.attr_sel_set_cell_class_, factory_id)
      end
    }
    
    private
    alias_method :initialize__nsbutton, :initialize
  end
  
end
