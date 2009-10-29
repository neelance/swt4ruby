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
  module INITCOMMONCONTROLSEXImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class INITCOMMONCONTROLSEX 
    include_class_members INITCOMMONCONTROLSEXImports
    
    attr_accessor :dw_size
    alias_method :attr_dw_size, :dw_size
    undef_method :dw_size
    alias_method :attr_dw_size=, :dw_size=
    undef_method :dw_size=
    
    attr_accessor :dw_icc
    alias_method :attr_dw_icc, :dw_icc
    undef_method :dw_icc
    alias_method :attr_dw_icc=, :dw_icc=
    undef_method :dw_icc=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._initcommoncontrolsex_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_size = 0
      @dw_icc = 0
    end
    
    private
    alias_method :initialize__initcommoncontrolsex, :initialize
  end
  
end
