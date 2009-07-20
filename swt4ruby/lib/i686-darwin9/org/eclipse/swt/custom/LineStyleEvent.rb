require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module LineStyleEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent when a line is about to be drawn.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class LineStyleEvent < LineStyleEventImports.const_get :TypedEvent
    include_class_members LineStyleEventImports
    
    # line start offset (input)
    attr_accessor :line_offset
    alias_method :attr_line_offset, :line_offset
    undef_method :line_offset
    alias_method :attr_line_offset=, :line_offset=
    undef_method :line_offset=
    
    # line text (input)
    attr_accessor :line_text
    alias_method :attr_line_text, :line_text
    undef_method :line_text
    alias_method :attr_line_text=, :line_text=
    undef_method :line_text=
    
    # line ranges (output)
    # 
    # @since 3.2
    attr_accessor :ranges
    alias_method :attr_ranges, :ranges
    undef_method :ranges
    alias_method :attr_ranges=, :ranges=
    undef_method :ranges=
    
    # line styles (output)
    # 
    # Note: Because a StyleRange includes the start and length, the
    # same instance cannot occur multiple times in the array of styles.
    # If the same style attributes, such as font and color, occur in
    # multiple StyleRanges, <code>ranges</code> can be used to share
    # styles and reduce memory usage.
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    # line alignment (input, output)
    # 
    # @since 3.2
    attr_accessor :alignment
    alias_method :attr_alignment, :alignment
    undef_method :alignment
    alias_method :attr_alignment=, :alignment=
    undef_method :alignment=
    
    # line indent (input, output)
    # 
    # @since 3.2
    attr_accessor :indent
    alias_method :attr_indent, :indent
    undef_method :indent
    alias_method :attr_indent=, :indent=
    undef_method :indent=
    
    # line justification (input, output)
    # 
    # @since 3.2
    attr_accessor :justify
    alias_method :attr_justify, :justify
    undef_method :justify
    alias_method :attr_justify=, :justify=
    undef_method :justify=
    
    # line bullet (output)
    # @since 3.2
    attr_accessor :bullet
    alias_method :attr_bullet, :bullet
    undef_method :bullet
    alias_method :attr_bullet=, :bullet=
    undef_method :bullet=
    
    # line bullet index (output)
    # @since 3.2
    attr_accessor :bullet_index
    alias_method :attr_bullet_index, :bullet_index
    undef_method :bullet_index
    alias_method :attr_bullet_index=, :bullet_index=
    undef_method :bullet_index=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3906081274027192884 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextEvent] }
    # Constructs a new instance of this class based on the
    # information in the given event.
    # 
    # @param e the event containing the information
    def initialize(e)
      @line_offset = 0
      @line_text = nil
      @ranges = nil
      @styles = nil
      @alignment = 0
      @indent = 0
      @justify = false
      @bullet = nil
      @bullet_index = 0
      super(e)
      @styles = e.attr_styles
      @ranges = e.attr_ranges
      @line_offset = e.attr_detail
      @line_text = (e.attr_text).to_s
      @alignment = e.attr_alignment
      @justify = e.attr_justify
      @indent = e.attr_indent
      @bullet = e.attr_bullet
      @bullet_index = e.attr_bullet_index
    end
    
    private
    alias_method :initialize__line_style_event, :initialize
  end
  
end
