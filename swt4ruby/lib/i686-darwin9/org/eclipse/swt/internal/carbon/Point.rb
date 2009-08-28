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
  module PointImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class Point 
    include_class_members PointImports
    
    attr_accessor :v
    alias_method :attr_v, :v
    undef_method :v
    alias_method :attr_v=, :v=
    undef_method :v=
    
    attr_accessor :h
    alias_method :attr_h, :h
    undef_method :h
    alias_method :attr_h=, :h=
    undef_method :h=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 4 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @v = 0
      @h = 0
    end
    
    private
    alias_method :initialize__point, :initialize
  end
  
end
