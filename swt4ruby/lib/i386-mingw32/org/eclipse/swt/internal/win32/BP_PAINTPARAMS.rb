require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module BP_PAINTPARAMSImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class BP_PAINTPARAMS 
    include_class_members BP_PAINTPARAMSImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    # long
    attr_accessor :prc_exclude
    alias_method :attr_prc_exclude, :prc_exclude
    undef_method :prc_exclude
    alias_method :attr_prc_exclude=, :prc_exclude=
    undef_method :prc_exclude=
    
    # long
    attr_accessor :p_blend_function
    alias_method :attr_p_blend_function, :p_blend_function
    undef_method :p_blend_function
    alias_method :attr_p_blend_function=, :p_blend_function=
    undef_method :p_blend_function=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._bp_paintparams_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_flags = 0
      @prc_exclude = 0
      @p_blend_function = 0
    end
    
    private
    alias_method :initialize__bp_paintparams, :initialize
  end
  
end
