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
  module SCRIPT_FONTPROPERTIESImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_FONTPROPERTIES 
    include_class_members SCRIPT_FONTPROPERTIESImports
    
    attr_accessor :c_bytes
    alias_method :attr_c_bytes, :c_bytes
    undef_method :c_bytes
    alias_method :attr_c_bytes=, :c_bytes=
    undef_method :c_bytes=
    
    attr_accessor :wg_blank
    alias_method :attr_wg_blank, :wg_blank
    undef_method :wg_blank
    alias_method :attr_wg_blank=, :wg_blank=
    undef_method :wg_blank=
    
    attr_accessor :wg_default
    alias_method :attr_wg_default, :wg_default
    undef_method :wg_default
    alias_method :attr_wg_default=, :wg_default=
    undef_method :wg_default=
    
    attr_accessor :wg_invalid
    alias_method :attr_wg_invalid, :wg_invalid
    undef_method :wg_invalid
    alias_method :attr_wg_invalid=, :wg_invalid=
    undef_method :wg_invalid=
    
    attr_accessor :wg_kashida
    alias_method :attr_wg_kashida, :wg_kashida
    undef_method :wg_kashida
    alias_method :attr_wg_kashida=, :wg_kashida=
    undef_method :wg_kashida=
    
    attr_accessor :i_kashida_width
    alias_method :attr_i_kashida_width, :i_kashida_width
    undef_method :i_kashida_width
    alias_method :attr_i_kashida_width=, :i_kashida_width=
    undef_method :i_kashida_width=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_fontproperties_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @c_bytes = 0
      @wg_blank = 0
      @wg_default = 0
      @wg_invalid = 0
      @wg_kashida = 0
      @i_kashida_width = 0
    end
    
    private
    alias_method :initialize__script_fontproperties, :initialize
  end
  
end
