require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module CONTROLINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class CONTROLINFO 
    include_class_members CONTROLINFOImports
    
    attr_accessor :cb
    alias_method :attr_cb, :cb
    undef_method :cb
    alias_method :attr_cb=, :cb=
    undef_method :cb=
    
    # long
    attr_accessor :h_accel
    alias_method :attr_h_accel, :h_accel
    undef_method :h_accel
    alias_method :attr_h_accel=, :h_accel=
    undef_method :h_accel=
    
    attr_accessor :c_accel
    alias_method :attr_c_accel, :c_accel
    undef_method :c_accel
    alias_method :attr_c_accel=, :c_accel=
    undef_method :c_accel=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._controlinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb = 0
      @h_accel = 0
      @c_accel = 0
      @dw_flags = 0
    end
    
    private
    alias_method :initialize__controlinfo, :initialize
  end
  
end
