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
  module PaintEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
      include_const ::Org::Eclipse::Swt::Graphics, :GC
    }
  end
  
  # Instances of this class are sent as a result of
  # visible areas of controls requiring re-painting.
  # 
  # @see PaintListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class PaintEvent < PaintEventImports.const_get :TypedEvent
    include_class_members PaintEventImports
    
    # the graphics context to use when painting
    # that is configured to use the colors, font and
    # damaged region of the control.  It is valid
    # only during the paint and must not be disposed
    attr_accessor :gc
    alias_method :attr_gc, :gc
    undef_method :gc
    alias_method :attr_gc=, :gc=
    undef_method :gc=
    
    # the x offset of the bounding rectangle of the
    # region that requires painting
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # the y offset of the bounding rectangle of the
    # region that requires painting
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # the width of the bounding rectangle of the
    # region that requires painting
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # the height of the bounding rectangle of the
    # region that requires painting
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # the number of following paint events which
    # are pending which may always be zero on
    # some platforms
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3256446919205992497 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @gc = nil
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @count = 0
      super(e)
      @gc = e.attr_gc
      @x = e.attr_x
      @y = e.attr_y
      @width = e.attr_width
      @height = e.attr_height
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
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " gc=" + RJava.cast_to_string(@gc) + " x=" + RJava.cast_to_string(@x) + " y=" + RJava.cast_to_string(@y) + " width=" + RJava.cast_to_string(@width) + " height=" + RJava.cast_to_string(@height) + " count=" + RJava.cast_to_string(@count) + "}"
    end
    
    private
    alias_method :initialize__paint_event, :initialize
  end
  
end
