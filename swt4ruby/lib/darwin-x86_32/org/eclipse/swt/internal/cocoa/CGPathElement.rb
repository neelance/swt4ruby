require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module CGPathElementImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class CGPathElement 
    include_class_members CGPathElementImports
    
    # @field cast=(CGPathElementType)
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # @field cast=(CGPoint *)
    # long
    attr_accessor :points
    alias_method :attr_points, :points
    undef_method :points
    alias_method :attr_points=, :points=
    undef_method :points=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._cgpath_element_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @type = 0
      @points = 0
    end
    
    private
    alias_method :initialize__cgpath_element, :initialize
  end
  
end
