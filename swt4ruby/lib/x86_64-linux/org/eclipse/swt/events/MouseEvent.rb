require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module MouseEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
    }
  end
  
  # Instances of this class are sent whenever mouse
  # related actions occur. This includes mouse buttons
  # being pressed and released, the mouse pointer being
  # moved and the mouse pointer crossing widget boundaries.
  # <p>
  # Note: The <code>button</code> field is an integer that
  # represents the mouse button number.  This is not the same
  # as the <code>SWT</code> mask constants <code>BUTTONx</code>.
  # </p>
  # 
  # @see MouseListener
  # @see MouseMoveListener
  # @see MouseTrackListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class MouseEvent < MouseEventImports.const_get :TypedEvent
    include_class_members MouseEventImports
    
    # the button that was pressed or released; 1 for the
    # first button, 2 for the second button, and 3 for the
    # third button, etc.
    attr_accessor :button
    alias_method :attr_button, :button
    undef_method :button
    alias_method :attr_button=, :button=
    undef_method :button=
    
    # the state of the keyboard modifier keys at the time
    # the event was generated
    attr_accessor :state_mask
    alias_method :attr_state_mask, :state_mask
    undef_method :state_mask
    alias_method :attr_state_mask=, :state_mask=
    undef_method :state_mask=
    
    # the widget-relative, x coordinate of the pointer
    # at the time the mouse button was pressed or released
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # the widget-relative, y coordinate of the pointer
    # at the time the mouse button was pressed or released
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # the number times the mouse has been clicked, as defined
    # by the operating system; 1 for the first click, 2 for the
    # second click and so on.
    # 
    # @since 3.3
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257288037011566898 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @button = 0
      @state_mask = 0
      @x = 0
      @y = 0
      @count = 0
      super(e)
      @x = e.attr_x
      @y = e.attr_y
      @button = e.attr_button
      @state_mask = e.attr_state_mask
      @count = e.attr_count
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return (string.substring(0, string.length - 1)).to_s + " button=" + (@button).to_s + " stateMask=" + (@state_mask).to_s + " x=" + (@x).to_s + " y=" + (@y).to_s + " count=" + (@count).to_s + "}"
    end
    
    private
    alias_method :initialize__mouse_event, :initialize
  end
  
end
