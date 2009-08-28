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
  module PaintObjectEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # This event is sent when an object needs to be drawn.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class PaintObjectEvent < PaintObjectEventImports.const_get :TypedEvent
    include_class_members PaintObjectEventImports
    
    # the GC
    attr_accessor :gc
    alias_method :attr_gc, :gc
    undef_method :gc
    alias_method :attr_gc=, :gc=
    undef_method :gc=
    
    # the x location
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # the y location
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # the line ascent
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    # the line descent
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    # the StyleRange
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    # the Bullet
    attr_accessor :bullet
    alias_method :attr_bullet, :bullet
    undef_method :bullet
    alias_method :attr_bullet=, :bullet=
    undef_method :bullet=
    
    # the bullet index
    attr_accessor :bullet_index
    alias_method :attr_bullet_index, :bullet_index
    undef_method :bullet_index
    alias_method :attr_bullet_index=, :bullet_index=
    undef_method :bullet_index=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3906081274027192855 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextEvent] }
    # Constructs a new instance of this class based on the
    # information in the given event.
    # 
    # @param e the event containing the information
    def initialize(e)
      @gc = nil
      @x = 0
      @y = 0
      @ascent = 0
      @descent = 0
      @style = nil
      @bullet = nil
      @bullet_index = 0
      super(e)
      @gc = e.attr_gc
      @x = e.attr_x
      @y = e.attr_y
      @ascent = e.attr_ascent
      @descent = e.attr_descent
      @style = e.attr_style
      @bullet = e.attr_bullet
      @bullet_index = e.attr_bullet_index
    end
    
    private
    alias_method :initialize__paint_object_event, :initialize
  end
  
end
