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
  module CGRectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class CGRect 
    include_class_members CGRectImports
    
    attr_accessor :origin
    alias_method :attr_origin, :origin
    undef_method :origin
    alias_method :attr_origin=, :origin=
    undef_method :origin=
    
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._cgrect_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @origin = CGPoint.new
      @size = CGSize.new
    end
    
    private
    alias_method :initialize__cgrect, :initialize
  end
  
end
