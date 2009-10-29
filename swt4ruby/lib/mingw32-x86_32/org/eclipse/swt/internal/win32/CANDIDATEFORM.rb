require "rjava"

# Copyright (c) 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module CANDIDATEFORMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class CANDIDATEFORM 
    include_class_members CANDIDATEFORMImports
    
    attr_accessor :dw_index
    alias_method :attr_dw_index, :dw_index
    undef_method :dw_index
    alias_method :attr_dw_index=, :dw_index=
    undef_method :dw_index=
    
    attr_accessor :dw_style
    alias_method :attr_dw_style, :dw_style
    undef_method :dw_style
    alias_method :attr_dw_style=, :dw_style=
    undef_method :dw_style=
    
    attr_accessor :pt_current_pos
    alias_method :attr_pt_current_pos, :pt_current_pos
    undef_method :pt_current_pos
    alias_method :attr_pt_current_pos=, :pt_current_pos=
    undef_method :pt_current_pos=
    
    attr_accessor :rc_area
    alias_method :attr_rc_area, :rc_area
    undef_method :rc_area
    alias_method :attr_rc_area=, :rc_area=
    undef_method :rc_area=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._candidateform_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_index = 0
      @dw_style = 0
      @pt_current_pos = POINT.new
      @rc_area = RECT.new
    end
    
    private
    alias_method :initialize__candidateform, :initialize
  end
  
end
