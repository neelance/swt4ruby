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
  module NSPointImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSPoint 
    include_class_members NSPointImports
    
    # double
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # double
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nspoint_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def to_s
      return "NSPoint{" + RJava.cast_to_string(@x) + "," + RJava.cast_to_string(@y) + "}"
    end
    
    typesig { [] }
    def initialize
      @x = 0.0
      @y = 0.0
    end
    
    private
    alias_method :initialize__nspoint, :initialize
  end
  
end
