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
  module TVITEMEXImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TVITEMEX < TVITEMEXImports.const_get :TVITEM
    include_class_members TVITEMEXImports
    
    attr_accessor :i_integral
    alias_method :attr_i_integral, :i_integral
    undef_method :i_integral
    alias_method :attr_i_integral=, :i_integral=
    undef_method :i_integral=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tvitemex_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_integral = 0
      super()
    end
    
    private
    alias_method :initialize__tvitemex, :initialize
  end
  
end
