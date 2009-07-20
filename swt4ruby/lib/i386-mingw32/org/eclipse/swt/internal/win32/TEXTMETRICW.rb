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
  module TEXTMETRICWImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TEXTMETRICW < TEXTMETRICWImports.const_get :TEXTMETRIC
    include_class_members TEXTMETRICWImports
    
    attr_accessor :tm_first_char
    alias_method :attr_tm_first_char, :tm_first_char
    undef_method :tm_first_char
    alias_method :attr_tm_first_char=, :tm_first_char=
    undef_method :tm_first_char=
    
    attr_accessor :tm_last_char
    alias_method :attr_tm_last_char, :tm_last_char
    undef_method :tm_last_char
    alias_method :attr_tm_last_char=, :tm_last_char=
    undef_method :tm_last_char=
    
    attr_accessor :tm_default_char
    alias_method :attr_tm_default_char, :tm_default_char
    undef_method :tm_default_char
    alias_method :attr_tm_default_char=, :tm_default_char=
    undef_method :tm_default_char=
    
    attr_accessor :tm_break_char
    alias_method :attr_tm_break_char, :tm_break_char
    undef_method :tm_break_char
    alias_method :attr_tm_break_char=, :tm_break_char=
    undef_method :tm_break_char=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._textmetricw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @tm_first_char = 0
      @tm_last_char = 0
      @tm_default_char = 0
      @tm_break_char = 0
      super()
    end
    
    private
    alias_method :initialize__textmetricw, :initialize
  end
  
end
