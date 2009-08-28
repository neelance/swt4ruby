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
  module GRADIENT_RECTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class GRADIENT_RECT 
    include_class_members GRADIENT_RECTImports
    
    attr_accessor :upper_left
    alias_method :attr_upper_left, :upper_left
    undef_method :upper_left
    alias_method :attr_upper_left=, :upper_left=
    undef_method :upper_left=
    
    attr_accessor :lower_right
    alias_method :attr_lower_right, :lower_right
    undef_method :lower_right
    alias_method :attr_lower_right=, :lower_right=
    undef_method :lower_right=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gradient_rect_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @upper_left = 0
      @lower_right = 0
    end
    
    private
    alias_method :initialize__gradient_rect, :initialize
  end
  
end
