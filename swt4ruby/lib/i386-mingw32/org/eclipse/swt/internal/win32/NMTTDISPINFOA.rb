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
  module NMTTDISPINFOAImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTTDISPINFOA < NMTTDISPINFOAImports.const_get :NMTTDISPINFO
    include_class_members NMTTDISPINFOAImports
    
    attr_accessor :sz_text
    alias_method :attr_sz_text, :sz_text
    undef_method :sz_text
    alias_method :attr_sz_text=, :sz_text=
    undef_method :sz_text=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmttdispinfoa_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @sz_text = nil
      super()
      @sz_text = Array.typed(::Java::Byte).new(80) { 0 }
    end
    
    private
    alias_method :initialize__nmttdispinfoa, :initialize
  end
  
end
