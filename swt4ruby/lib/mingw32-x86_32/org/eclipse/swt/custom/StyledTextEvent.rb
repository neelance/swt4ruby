require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module StyledTextEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class StyledTextEvent < StyledTextEventImports.const_get :Event
    include_class_members StyledTextEventImports
    
    # used by LineStyleEvent
    attr_accessor :ranges
    alias_method :attr_ranges, :ranges
    undef_method :ranges
    alias_method :attr_ranges=, :ranges=
    undef_method :ranges=
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    attr_accessor :alignment
    alias_method :attr_alignment, :alignment
    undef_method :alignment
    alias_method :attr_alignment=, :alignment=
    undef_method :alignment=
    
    attr_accessor :indent
    alias_method :attr_indent, :indent
    undef_method :indent
    alias_method :attr_indent=, :indent=
    undef_method :indent=
    
    attr_accessor :justify
    alias_method :attr_justify, :justify
    undef_method :justify
    alias_method :attr_justify=, :justify=
    undef_method :justify=
    
    attr_accessor :bullet
    alias_method :attr_bullet, :bullet
    undef_method :bullet
    alias_method :attr_bullet=, :bullet=
    undef_method :bullet=
    
    attr_accessor :bullet_index
    alias_method :attr_bullet_index, :bullet_index
    undef_method :bullet_index
    alias_method :attr_bullet_index=, :bullet_index=
    undef_method :bullet_index=
    
    # used by LineBackgroundEvent
    attr_accessor :line_background
    alias_method :attr_line_background, :line_background
    undef_method :line_background
    alias_method :attr_line_background=, :line_background=
    undef_method :line_background=
    
    # used by BidiSegmentEvent
    attr_accessor :segments
    alias_method :attr_segments, :segments
    undef_method :segments
    alias_method :attr_segments=, :segments=
    undef_method :segments=
    
    # used by TextChangedEvent
    attr_accessor :replace_char_count
    alias_method :attr_replace_char_count, :replace_char_count
    undef_method :replace_char_count
    alias_method :attr_replace_char_count=, :replace_char_count=
    undef_method :replace_char_count=
    
    attr_accessor :new_char_count
    alias_method :attr_new_char_count, :new_char_count
    undef_method :new_char_count
    alias_method :attr_new_char_count=, :new_char_count=
    undef_method :new_char_count=
    
    attr_accessor :replace_line_count
    alias_method :attr_replace_line_count, :replace_line_count
    undef_method :replace_line_count
    alias_method :attr_replace_line_count=, :replace_line_count=
    undef_method :replace_line_count=
    
    attr_accessor :new_line_count
    alias_method :attr_new_line_count, :new_line_count
    undef_method :new_line_count
    alias_method :attr_new_line_count=, :new_line_count=
    undef_method :new_line_count=
    
    # used by PaintObjectEvent
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    typesig { [StyledTextContent] }
    def initialize(content)
      @ranges = nil
      @styles = nil
      @alignment = 0
      @indent = 0
      @justify = false
      @bullet = nil
      @bullet_index = 0
      @line_background = nil
      @segments = nil
      @replace_char_count = 0
      @new_char_count = 0
      @replace_line_count = 0
      @new_line_count = 0
      @x = 0
      @y = 0
      @ascent = 0
      @descent = 0
      @style = nil
      super()
      self.attr_data = content
    end
    
    private
    alias_method :initialize__styled_text_event, :initialize
  end
  
end
