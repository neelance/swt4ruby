require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module EMRImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class EMR 
    include_class_members EMRImports
    
    attr_accessor :i_type
    alias_method :attr_i_type, :i_type
    undef_method :i_type
    alias_method :attr_i_type=, :i_type=
    undef_method :i_type=
    
    attr_accessor :n_size
    alias_method :attr_n_size, :n_size
    undef_method :n_size
    alias_method :attr_n_size=, :n_size=
    undef_method :n_size=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._emr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_type = 0
      @n_size = 0
    end
    
    private
    alias_method :initialize__emr, :initialize
  end
  
end
