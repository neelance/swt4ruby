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
  module BLENDFUNCTIONImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class BLENDFUNCTION 
    include_class_members BLENDFUNCTIONImports
    
    attr_accessor :blend_op
    alias_method :attr_blend_op, :blend_op
    undef_method :blend_op
    alias_method :attr_blend_op=, :blend_op=
    undef_method :blend_op=
    
    attr_accessor :blend_flags
    alias_method :attr_blend_flags, :blend_flags
    undef_method :blend_flags
    alias_method :attr_blend_flags=, :blend_flags=
    undef_method :blend_flags=
    
    attr_accessor :source_constant_alpha
    alias_method :attr_source_constant_alpha, :source_constant_alpha
    undef_method :source_constant_alpha
    alias_method :attr_source_constant_alpha=, :source_constant_alpha=
    undef_method :source_constant_alpha=
    
    attr_accessor :alpha_format
    alias_method :attr_alpha_format, :alpha_format
    undef_method :alpha_format
    alias_method :attr_alpha_format=, :alpha_format=
    undef_method :alpha_format=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._blendfunction_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @blend_op = 0
      @blend_flags = 0
      @source_constant_alpha = 0
      @alpha_format = 0
    end
    
    private
    alias_method :initialize__blendfunction, :initialize
  end
  
end
