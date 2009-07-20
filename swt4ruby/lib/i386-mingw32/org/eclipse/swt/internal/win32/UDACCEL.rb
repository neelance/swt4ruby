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
  module UDACCELImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class UDACCEL 
    include_class_members UDACCELImports
    
    attr_accessor :n_sec
    alias_method :attr_n_sec, :n_sec
    undef_method :n_sec
    alias_method :attr_n_sec=, :n_sec=
    undef_method :n_sec=
    
    attr_accessor :n_inc
    alias_method :attr_n_inc, :n_inc
    undef_method :n_inc
    alias_method :attr_n_inc=, :n_inc=
    undef_method :n_inc=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._udaccel_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @n_sec = 0
      @n_inc = 0
    end
    
    private
    alias_method :initialize__udaccel, :initialize
  end
  
end
