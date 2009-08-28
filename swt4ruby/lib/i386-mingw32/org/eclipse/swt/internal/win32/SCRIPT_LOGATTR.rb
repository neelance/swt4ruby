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
  module SCRIPT_LOGATTRImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_LOGATTR 
    include_class_members SCRIPT_LOGATTRImports
    
    attr_accessor :f_soft_break
    alias_method :attr_f_soft_break, :f_soft_break
    undef_method :f_soft_break
    alias_method :attr_f_soft_break=, :f_soft_break=
    undef_method :f_soft_break=
    
    attr_accessor :f_white_space
    alias_method :attr_f_white_space, :f_white_space
    undef_method :f_white_space
    alias_method :attr_f_white_space=, :f_white_space=
    undef_method :f_white_space=
    
    attr_accessor :f_char_stop
    alias_method :attr_f_char_stop, :f_char_stop
    undef_method :f_char_stop
    alias_method :attr_f_char_stop=, :f_char_stop=
    undef_method :f_char_stop=
    
    attr_accessor :f_word_stop
    alias_method :attr_f_word_stop, :f_word_stop
    undef_method :f_word_stop
    alias_method :attr_f_word_stop=, :f_word_stop=
    undef_method :f_word_stop=
    
    attr_accessor :f_invalid
    alias_method :attr_f_invalid, :f_invalid
    undef_method :f_invalid
    alias_method :attr_f_invalid=, :f_invalid=
    undef_method :f_invalid=
    
    attr_accessor :f_reserved
    alias_method :attr_f_reserved, :f_reserved
    undef_method :f_reserved
    alias_method :attr_f_reserved=, :f_reserved=
    undef_method :f_reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_logattr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @f_soft_break = false
      @f_white_space = false
      @f_char_stop = false
      @f_word_stop = false
      @f_invalid = false
      @f_reserved = 0
    end
    
    private
    alias_method :initialize__script_logattr, :initialize
  end
  
end
