require "rjava"

# Copyright (c) 2008, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSRectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSRect 
    include_class_members NSRectImports
    
    # @field accessor=origin.x
    # double
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # @field accessor=origin.y
    # double
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # @field accessor=size.width
    # double
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # @field accessor=size.height
    # double
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nsrect_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def to_s
      return "NSRect{" + RJava.cast_to_string(@x) + "," + RJava.cast_to_string(@y) + "," + RJava.cast_to_string(@width) + "," + RJava.cast_to_string(@height) + "}"
    end
    
    typesig { [] }
    def initialize
      @x = 0.0
      @y = 0.0
      @width = 0.0
      @height = 0.0
    end
    
    private
    alias_method :initialize__nsrect, :initialize
  end
  
end
