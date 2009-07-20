require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module VARIANTImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class VARIANT 
    include_class_members VARIANTImports
    
    attr_accessor :vt
    alias_method :attr_vt, :vt
    undef_method :vt
    alias_method :attr_vt=, :vt=
    undef_method :vt=
    
    attr_accessor :w_reserved1
    alias_method :attr_w_reserved1, :w_reserved1
    undef_method :w_reserved1
    alias_method :attr_w_reserved1=, :w_reserved1=
    undef_method :w_reserved1=
    
    attr_accessor :w_reserved2
    alias_method :attr_w_reserved2, :w_reserved2
    undef_method :w_reserved2
    alias_method :attr_w_reserved2=, :w_reserved2=
    undef_method :w_reserved2=
    
    attr_accessor :w_reserved3
    alias_method :attr_w_reserved3, :w_reserved3
    undef_method :w_reserved3
    alias_method :attr_w_reserved3=, :w_reserved3=
    undef_method :w_reserved3=
    
    attr_accessor :l_val
    alias_method :attr_l_val, :l_val
    undef_method :l_val
    alias_method :attr_l_val=, :l_val=
    undef_method :l_val=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._variant_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @vt = 0
      @w_reserved1 = 0
      @w_reserved2 = 0
      @w_reserved3 = 0
      @l_val = 0
    end
    
    private
    alias_method :initialize__variant, :initialize
  end
  
end
