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
  module BidiSegmentEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent to BidiSegmentListeners when a line is to
  # be measured or rendered in a bidi locale.  The segments field is
  # used to specify text ranges in the line that should be treated as
  # separate segments for bidi reordering.  Each segment will be reordered
  # and rendered separately.
  # <p>
  # The elements in the segments field specify the start offset of
  # a segment relative to the start of the line. They must follow
  # the following rules:
  # <ul>
  # <li>first element must be 0
  # <li>elements must be in ascending order and must not have duplicates
  # <li>elements must not exceed the line length
  # </ul>
  # In addition, the last element may be set to the end of the line
  # but this is not required.
  # 
  # The segments field may be left null if the entire line should
  # be reordered as is.
  # </p>
  # A BidiSegmentListener may be used when adjacent segments of
  # right-to-left text should not be reordered relative to each other.
  # For example, within a Java editor, you may wish multiple
  # right-to-left string literals to be reordered differently than the
  # bidi algorithm specifies.
  # 
  # Example:
  # <pre>
  # stored line = "R1R2R3" + "R4R5R6"
  # R1 to R6 are right-to-left characters. The quotation marks
  # are part of the line text. The line is 13 characters long.
  # 
  # segments = null:
  # entire line will be reordered and thus the two R2L segments
  # swapped (as per the bidi algorithm).
  # visual line (rendered on screen) = "R6R5R4" + "R3R2R1"
  # 
  # segments = [0, 5, 8]
  # "R1R2R3" will be reordered, followed by [blank]+[blank] and
  # "R4R5R6".
  # visual line = "R3R2R1" + "R6R5R4"
  # </pre>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class BidiSegmentEvent < BidiSegmentEventImports.const_get :TypedEvent
    include_class_members BidiSegmentEventImports
    
    # line start offset
    attr_accessor :line_offset
    alias_method :attr_line_offset, :line_offset
    undef_method :line_offset
    alias_method :attr_line_offset=, :line_offset=
    undef_method :line_offset=
    
    # line text
    attr_accessor :line_text
    alias_method :attr_line_text, :line_text
    undef_method :line_text
    alias_method :attr_line_text=, :line_text=
    undef_method :line_text=
    
    # bidi segments, see above
    attr_accessor :segments
    alias_method :attr_segments, :segments
    undef_method :segments
    alias_method :attr_segments=, :segments=
    undef_method :segments=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257846571587547957 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextEvent] }
    def initialize(e)
      @line_offset = 0
      @line_text = nil
      @segments = nil
      super(e)
      @line_offset = e.attr_detail
      @line_text = RJava.cast_to_string(e.attr_text)
    end
    
    private
    alias_method :initialize__bidi_segment_event, :initialize
  end
  
end
