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
  module SCRIPT_DIGITSUBSTITUTEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_DIGITSUBSTITUTE 
    include_class_members SCRIPT_DIGITSUBSTITUTEImports
    
    attr_accessor :national_digit_language
    alias_method :attr_national_digit_language, :national_digit_language
    undef_method :national_digit_language
    alias_method :attr_national_digit_language=, :national_digit_language=
    undef_method :national_digit_language=
    
    attr_accessor :traditional_digit_language
    alias_method :attr_traditional_digit_language, :traditional_digit_language
    undef_method :traditional_digit_language
    alias_method :attr_traditional_digit_language=, :traditional_digit_language=
    undef_method :traditional_digit_language=
    
    attr_accessor :digit_substitute
    alias_method :attr_digit_substitute, :digit_substitute
    undef_method :digit_substitute
    alias_method :attr_digit_substitute=, :digit_substitute=
    undef_method :digit_substitute=
    
    attr_accessor :dw_reserved
    alias_method :attr_dw_reserved, :dw_reserved
    undef_method :dw_reserved
    alias_method :attr_dw_reserved=, :dw_reserved=
    undef_method :dw_reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_digitsubstitute_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @national_digit_language = 0
      @traditional_digit_language = 0
      @digit_substitute = 0
      @dw_reserved = 0
    end
    
    private
    alias_method :initialize__script_digitsubstitute, :initialize
  end
  
end
