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
  module NSGradientImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSGradient < NSGradientImports.const_get :NSObject
    include_class_members NSGradientImports
    
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
    
    typesig { [NSPoint, NSPoint, ::Java::Int] }
    # long
    def draw_from_point(starting_point, ending_point, options)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_from_point_to_point_options_, starting_point, ending_point, options)
    end
    
    typesig { [NSRect, ::Java::Float] }
    # double
    def draw_in_rect(rect, angle)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_draw_in_rect_angle_, rect, angle)
    end
    
    typesig { [NSColor, NSColor] }
    def init_with_starting_color(starting_color, ending_color)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_starting_color_ending_color_, !(starting_color).nil? ? starting_color.attr_id : 0, !(ending_color).nil? ? ending_color.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSGradient.new(result) : nil)
    end
    
    private
    alias_method :initialize__nsgradient, :initialize
  end
  
end
