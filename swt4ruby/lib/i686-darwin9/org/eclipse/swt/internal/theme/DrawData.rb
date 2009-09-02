require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module DrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class DrawData 
    include_class_members DrawDataImports
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :client_area
    alias_method :attr_client_area, :client_area
    undef_method :client_area
    alias_method :attr_client_area=, :client_area=
    undef_method :client_area=
    
    class_module.module_eval {
      # Part states
      const_set_lazy(:SELECTED) { 1 << 1 }
      const_attr_reader  :SELECTED
      
      const_set_lazy(:FOCUSED) { 1 << 2 }
      const_attr_reader  :FOCUSED
      
      const_set_lazy(:PRESSED) { 1 << 3 }
      const_attr_reader  :PRESSED
      
      const_set_lazy(:ACTIVE) { 1 << 4 }
      const_attr_reader  :ACTIVE
      
      const_set_lazy(:DISABLED) { 1 << 5 }
      const_attr_reader  :DISABLED
      
      const_set_lazy(:HOT) { 1 << 6 }
      const_attr_reader  :HOT
      
      const_set_lazy(:DEFAULTED) { 1 << 7 }
      const_attr_reader  :DEFAULTED
      
      const_set_lazy(:GRAYED) { 1 << 8 }
      const_attr_reader  :GRAYED
      
      # Text and Image drawing flags
      const_set_lazy(:DRAW_LEFT) { 1 << 4 }
      const_attr_reader  :DRAW_LEFT
      
      const_set_lazy(:DRAW_TOP) { 1 << 5 }
      const_attr_reader  :DRAW_TOP
      
      const_set_lazy(:DRAW_RIGHT) { 1 << 6 }
      const_attr_reader  :DRAW_RIGHT
      
      const_set_lazy(:DRAW_BOTTOM) { 1 << 7 }
      const_attr_reader  :DRAW_BOTTOM
      
      const_set_lazy(:DRAW_HCENTER) { 1 << 8 }
      const_attr_reader  :DRAW_HCENTER
      
      const_set_lazy(:DRAW_VCENTER) { 1 << 9 }
      const_attr_reader  :DRAW_VCENTER
      
      # Widget parts
      const_set_lazy(:WIDGET_NOWHERE) { -1 }
      const_attr_reader  :WIDGET_NOWHERE
      
      const_set_lazy(:WIDGET_WHOLE) { 0 }
      const_attr_reader  :WIDGET_WHOLE
      
      # Scrollbar parts
      const_set_lazy(:SCROLLBAR_UP_ARROW) { 1 }
      const_attr_reader  :SCROLLBAR_UP_ARROW
      
      const_set_lazy(:SCROLLBAR_DOWN_ARROW) { 2 }
      const_attr_reader  :SCROLLBAR_DOWN_ARROW
      
      const_set_lazy(:SCROLLBAR_LEFT_ARROW) { SCROLLBAR_UP_ARROW }
      const_attr_reader  :SCROLLBAR_LEFT_ARROW
      
      const_set_lazy(:SCROLLBAR_RIGHT_ARROW) { SCROLLBAR_DOWN_ARROW }
      const_attr_reader  :SCROLLBAR_RIGHT_ARROW
      
      const_set_lazy(:SCROLLBAR_UP_TRACK) { 3 }
      const_attr_reader  :SCROLLBAR_UP_TRACK
      
      const_set_lazy(:SCROLLBAR_DOWN_TRACK) { 4 }
      const_attr_reader  :SCROLLBAR_DOWN_TRACK
      
      const_set_lazy(:SCROLLBAR_LEFT_TRACK) { SCROLLBAR_UP_TRACK }
      const_attr_reader  :SCROLLBAR_LEFT_TRACK
      
      const_set_lazy(:SCROLLBAR_RIGHT_TRACK) { SCROLLBAR_DOWN_TRACK }
      const_attr_reader  :SCROLLBAR_RIGHT_TRACK
      
      const_set_lazy(:SCROLLBAR_THUMB) { 5 }
      const_attr_reader  :SCROLLBAR_THUMB
      
      # Scale parts
      const_set_lazy(:SCALE_UP_TRACK) { 1 }
      const_attr_reader  :SCALE_UP_TRACK
      
      const_set_lazy(:SCALE_LEFT_TRACK) { SCALE_UP_TRACK }
      const_attr_reader  :SCALE_LEFT_TRACK
      
      const_set_lazy(:SCALE_DOWN_TRACK) { 2 }
      const_attr_reader  :SCALE_DOWN_TRACK
      
      const_set_lazy(:SCALE_RIGHT_TRACK) { SCALE_DOWN_TRACK }
      const_attr_reader  :SCALE_RIGHT_TRACK
      
      const_set_lazy(:SCALE_THUMB) { 3 }
      const_attr_reader  :SCALE_THUMB
      
      # ToolItem parts
      const_set_lazy(:TOOLITEM_ARROW) { 1 }
      const_attr_reader  :TOOLITEM_ARROW
      
      # Combo parts
      const_set_lazy(:COMBO_ARROW) { 1 }
      const_attr_reader  :COMBO_ARROW
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @state = nil
      @client_area = nil
      @state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      return Rectangle.new(@client_area.attr_x, @client_area.attr_y, @client_area.attr_width, @client_area.attr_height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
    end
    
    typesig { [Theme, Image, SwtGC, Rectangle] }
    def draw_image(theme, image, gc, bounds)
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def draw_text(theme, text, flags, gc, bounds)
    end
    
    typesig { [::Java::Int, Rectangle] }
    def get_bounds(part, bounds)
      return Rectangle.new(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def measure_text(theme, text, flags, gc, bounds)
      return Rectangle.new(0, 0, 0, 0)
    end
    
    private
    alias_method :initialize__draw_data, :initialize
  end
  
end
