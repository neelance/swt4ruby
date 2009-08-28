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
  module SCRIPT_ITEMImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_ITEM 
    include_class_members SCRIPT_ITEMImports
    
    attr_accessor :i_char_pos
    alias_method :attr_i_char_pos, :i_char_pos
    undef_method :i_char_pos
    alias_method :attr_i_char_pos=, :i_char_pos=
    undef_method :i_char_pos=
    
    attr_accessor :a
    alias_method :attr_a, :a
    undef_method :a
    alias_method :attr_a=, :a=
    undef_method :a=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_item_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_char_pos = 0
      @a = SCRIPT_ANALYSIS.new
    end
    
    private
    alias_method :initialize__script_item, :initialize
  end
  
end
