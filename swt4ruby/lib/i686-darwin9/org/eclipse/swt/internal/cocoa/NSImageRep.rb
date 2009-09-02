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
  module NSImageRepImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSImageRep < NSImageRepImports.const_get :NSObject
    include_class_members NSImageRepImports
    
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
    # long
    def bits_per_sample
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bits_per_sample)
    end
    
    typesig { [] }
    def color_space_name
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_color_space_name)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [NSRect] }
    def draw_in_rect(rect)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_draw_in_rect_, rect)
    end
    
    typesig { [] }
    def has_alpha
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_has_alpha)
    end
    
    typesig { [] }
    # long
    def pixels_high
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_pixels_high)
    end
    
    typesig { [] }
    # long
    def pixels_wide
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_pixels_wide)
    end
    
    typesig { [::Java::Boolean] }
    def set_alpha(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_alpha_, flag)
    end
    
    private
    alias_method :initialize__nsimage_rep, :initialize
  end
  
end
