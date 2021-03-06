require "rjava"

# Copyright (c) 2007, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSSizeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSSize 
    include_class_members NSSizeImports
    
    # double
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # double
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nssize_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def to_s
      return "NSSize{" + RJava.cast_to_string(@width) + "," + RJava.cast_to_string(@height) + "}"
    end
    
    typesig { [] }
    def initialize
      @width = 0.0
      @height = 0.0
    end
    
    private
    alias_method :initialize__nssize, :initialize
  end
  
end
