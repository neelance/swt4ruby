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
  module NSAffineTransformStructImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSAffineTransformStruct 
    include_class_members NSAffineTransformStructImports
    
    # double
    attr_accessor :m11
    alias_method :attr_m11, :m11
    undef_method :m11
    alias_method :attr_m11=, :m11=
    undef_method :m11=
    
    attr_accessor :m12
    alias_method :attr_m12, :m12
    undef_method :m12
    alias_method :attr_m12=, :m12=
    undef_method :m12=
    
    attr_accessor :m21
    alias_method :attr_m21, :m21
    undef_method :m21
    alias_method :attr_m21=, :m21=
    undef_method :m21=
    
    attr_accessor :m22
    alias_method :attr_m22, :m22
    undef_method :m22
    alias_method :attr_m22=, :m22=
    undef_method :m22=
    
    # double
    attr_accessor :t_x
    alias_method :attr_t_x, :t_x
    undef_method :t_x
    alias_method :attr_t_x=, :t_x=
    undef_method :t_x=
    
    attr_accessor :t_y
    alias_method :attr_t_y, :t_y
    undef_method :t_y
    alias_method :attr_t_y=, :t_y=
    undef_method :t_y=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nsaffine_transform_struct_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @m11 = 0.0
      @m12 = 0.0
      @m21 = 0.0
      @m22 = 0.0
      @t_x = 0.0
      @t_y = 0.0
    end
    
    private
    alias_method :initialize__nsaffine_transform_struct, :initialize
  end
  
end
