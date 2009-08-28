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
  module LineBackgroundEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # This event is sent when a line is about to be drawn.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class LineBackgroundEvent < LineBackgroundEventImports.const_get :TypedEvent
    include_class_members LineBackgroundEventImports
    
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
    
    # line background color
    attr_accessor :line_background
    alias_method :attr_line_background, :line_background
    undef_method :line_background
    alias_method :attr_line_background=, :line_background=
    undef_method :line_background=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3978711687853324342 }
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
      @line_background = nil
      super(e)
      @line_offset = e.attr_detail
      @line_text = RJava.cast_to_string(e.attr_text)
      @line_background = e.attr_line_background
    end
    
    private
    alias_method :initialize__line_background_event, :initialize
  end
  
end
