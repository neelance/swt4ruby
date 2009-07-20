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
  module ScrollBarDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class ScrollBarDrawData < ScrollBarDrawDataImports.const_get :RangeDrawData
    include_class_members ScrollBarDrawDataImports
    
    attr_accessor :thumb
    alias_method :attr_thumb, :thumb
    undef_method :thumb
    alias_method :attr_thumb=, :thumb=
    undef_method :thumb=
    
    attr_accessor :increment
    alias_method :attr_increment, :increment
    undef_method :increment
    alias_method :attr_increment=, :increment=
    undef_method :increment=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    typesig { [] }
    def initialize
      @thumb = 0
      @increment = 0
      @page_increment = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(6) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__scroll_bar_draw_data, :initialize
  end
  
end
