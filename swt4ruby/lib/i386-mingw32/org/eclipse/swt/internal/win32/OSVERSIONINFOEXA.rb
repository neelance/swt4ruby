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
  module OSVERSIONINFOEXAImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OSVERSIONINFOEXA < OSVERSIONINFOEXAImports.const_get :OSVERSIONINFOEX
    include_class_members OSVERSIONINFOEXAImports
    
    attr_accessor :sz_csdversion
    alias_method :attr_sz_csdversion, :sz_csdversion
    undef_method :sz_csdversion
    alias_method :attr_sz_csdversion=, :sz_csdversion=
    undef_method :sz_csdversion=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._osversioninfoexa_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @sz_csdversion = nil
      super()
      @sz_csdversion = Array.typed(::Java::Byte).new(128) { 0 }
    end
    
    private
    alias_method :initialize__osversioninfoexa, :initialize
  end
  
end
