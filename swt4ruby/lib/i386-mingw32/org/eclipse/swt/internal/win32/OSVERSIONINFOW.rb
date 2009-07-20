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
  module OSVERSIONINFOWImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OSVERSIONINFOW < OSVERSIONINFOWImports.const_get :OSVERSIONINFO
    include_class_members OSVERSIONINFOWImports
    
    attr_accessor :sz_csdversion
    alias_method :attr_sz_csdversion, :sz_csdversion
    undef_method :sz_csdversion
    alias_method :attr_sz_csdversion=, :sz_csdversion=
    undef_method :sz_csdversion=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._osversioninfow_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @sz_csdversion = nil
      super()
      @sz_csdversion = CharArray.new(128)
    end
    
    private
    alias_method :initialize__osversioninfow, :initialize
  end
  
end
