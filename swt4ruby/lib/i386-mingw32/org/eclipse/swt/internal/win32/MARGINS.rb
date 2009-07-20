require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module MARGINSImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MARGINS 
    include_class_members MARGINSImports
    
    attr_accessor :cx_left_width
    alias_method :attr_cx_left_width, :cx_left_width
    undef_method :cx_left_width
    alias_method :attr_cx_left_width=, :cx_left_width=
    undef_method :cx_left_width=
    
    attr_accessor :cx_right_width
    alias_method :attr_cx_right_width, :cx_right_width
    undef_method :cx_right_width
    alias_method :attr_cx_right_width=, :cx_right_width=
    undef_method :cx_right_width=
    
    attr_accessor :cy_top_height
    alias_method :attr_cy_top_height, :cy_top_height
    undef_method :cy_top_height
    alias_method :attr_cy_top_height=, :cy_top_height=
    undef_method :cy_top_height=
    
    attr_accessor :cy_bottom_height
    alias_method :attr_cy_bottom_height, :cy_bottom_height
    undef_method :cy_bottom_height
    alias_method :attr_cy_bottom_height=, :cy_bottom_height=
    undef_method :cy_bottom_height=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._margins_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cx_left_width = 0
      @cx_right_width = 0
      @cy_top_height = 0
      @cy_bottom_height = 0
    end
    
    private
    alias_method :initialize__margins, :initialize
  end
  
end
