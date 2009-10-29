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
  module SIZEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SIZE 
    include_class_members SIZEImports
    
    attr_accessor :cx
    alias_method :attr_cx, :cx
    undef_method :cx
    alias_method :attr_cx=, :cx=
    undef_method :cx=
    
    attr_accessor :cy
    alias_method :attr_cy, :cy
    undef_method :cy
    alias_method :attr_cy=, :cy=
    undef_method :cy=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._size_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cx = 0
      @cy = 0
    end
    
    private
    alias_method :initialize__size, :initialize
  end
  
end
