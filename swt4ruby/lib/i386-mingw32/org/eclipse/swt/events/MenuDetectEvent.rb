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
  module MenuDetectEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
    }
  end
  
  # Instances of this class are sent whenever the platform-
  # specific trigger for showing a context menu is detected.
  # 
  # @see MenuDetectListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class MenuDetectEvent < MenuDetectEventImports.const_get :TypedEvent
    include_class_members MenuDetectEventImports
    
    # the display-relative x coordinate of the pointer
    # at the time the context menu trigger occurred
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # the display-relative y coordinate of the pointer
    # at the time the context menu trigger occurred
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # A flag indicating whether the operation should be allowed.
    # Setting this field to <code>false</code> will cancel the operation.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { -3061660596590828941 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @x = 0
      @y = 0
      @doit = false
      super(e)
      @x = e.attr_x
      @y = e.attr_y
      @doit = e.attr_doit
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return (string.substring(0, string.length - 1)).to_s + " x=" + (@x).to_s + " y=" + (@y).to_s + " doit=" + (@doit).to_s + "}"
    end
    
    private
    alias_method :initialize__menu_detect_event, :initialize
  end
  
end
