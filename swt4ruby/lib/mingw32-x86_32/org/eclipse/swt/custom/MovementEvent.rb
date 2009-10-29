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
  module MovementEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent when a new offset is required based on the current
  # offset and a movement type.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class MovementEvent < MovementEventImports.const_get :TypedEvent
    include_class_members MovementEventImports
    
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
    
    # the current offset (input)
    attr_accessor :offset
    alias_method :attr_offset, :offset
    undef_method :offset
    alias_method :attr_offset=, :offset=
    undef_method :offset=
    
    # the new offset  (input, output)
    attr_accessor :new_offset
    alias_method :attr_new_offset, :new_offset
    undef_method :new_offset
    alias_method :attr_new_offset=, :new_offset=
    undef_method :new_offset=
    
    # the movement type (input)
    # 
    # @see org.eclipse.swt.SWT#MOVEMENT_WORD
    # @see org.eclipse.swt.SWT#MOVEMENT_WORD_END
    # @see org.eclipse.swt.SWT#MOVEMENT_WORD_START
    # @see org.eclipse.swt.SWT#MOVEMENT_CHAR
    # @see org.eclipse.swt.SWT#MOVEMENT_CLUSTER
    attr_accessor :movement
    alias_method :attr_movement, :movement
    undef_method :movement
    alias_method :attr_movement=, :movement=
    undef_method :movement=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3978765487853324342 }
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
      @offset = 0
      @new_offset = 0
      @movement = 0
      super(e)
      @line_offset = e.attr_detail
      @line_text = RJava.cast_to_string(e.attr_text)
      @movement = e.attr_count
      @offset = e.attr_start
      @new_offset = e.attr_end
    end
    
    private
    alias_method :initialize__movement_event, :initialize
  end
  
end
