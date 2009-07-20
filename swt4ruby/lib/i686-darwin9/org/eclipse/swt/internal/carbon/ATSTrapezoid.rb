require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module ATSTrapezoidImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ATSTrapezoid 
    include_class_members ATSTrapezoidImports
    
    # FixedPoint upperLeft;
    attr_accessor :upper_left_x
    alias_method :attr_upper_left_x, :upper_left_x
    undef_method :upper_left_x
    alias_method :attr_upper_left_x=, :upper_left_x=
    undef_method :upper_left_x=
    
    attr_accessor :upper_left_y
    alias_method :attr_upper_left_y, :upper_left_y
    undef_method :upper_left_y
    alias_method :attr_upper_left_y=, :upper_left_y=
    undef_method :upper_left_y=
    
    # FixedPoint upperRight;
    attr_accessor :upper_right_x
    alias_method :attr_upper_right_x, :upper_right_x
    undef_method :upper_right_x
    alias_method :attr_upper_right_x=, :upper_right_x=
    undef_method :upper_right_x=
    
    attr_accessor :upper_right_y
    alias_method :attr_upper_right_y, :upper_right_y
    undef_method :upper_right_y
    alias_method :attr_upper_right_y=, :upper_right_y=
    undef_method :upper_right_y=
    
    # FixedPoint lowerRight;
    attr_accessor :lower_right_x
    alias_method :attr_lower_right_x, :lower_right_x
    undef_method :lower_right_x
    alias_method :attr_lower_right_x=, :lower_right_x=
    undef_method :lower_right_x=
    
    attr_accessor :lower_right_y
    alias_method :attr_lower_right_y, :lower_right_y
    undef_method :lower_right_y
    alias_method :attr_lower_right_y=, :lower_right_y=
    undef_method :lower_right_y=
    
    # FixedPoint lowerLeft;
    attr_accessor :lower_left_x
    alias_method :attr_lower_left_x, :lower_left_x
    undef_method :lower_left_x
    alias_method :attr_lower_left_x=, :lower_left_x=
    undef_method :lower_left_x=
    
    attr_accessor :lower_left_y
    alias_method :attr_lower_left_y, :lower_left_y
    undef_method :lower_left_y
    alias_method :attr_lower_left_y=, :lower_left_y=
    undef_method :lower_left_y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 32 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @upper_left_x = 0
      @upper_left_y = 0
      @upper_right_x = 0
      @upper_right_y = 0
      @lower_right_x = 0
      @lower_right_y = 0
      @lower_left_x = 0
      @lower_left_y = 0
    end
    
    private
    alias_method :initialize__atstrapezoid, :initialize
  end
  
end
