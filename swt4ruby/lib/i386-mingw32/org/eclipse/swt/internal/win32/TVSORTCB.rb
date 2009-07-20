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
  module TVSORTCBImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TVSORTCB 
    include_class_members TVSORTCBImports
    
    # long
    attr_accessor :h_parent
    alias_method :attr_h_parent, :h_parent
    undef_method :h_parent
    alias_method :attr_h_parent=, :h_parent=
    undef_method :h_parent=
    
    # long
    attr_accessor :lpfn_compare
    alias_method :attr_lpfn_compare, :lpfn_compare
    undef_method :lpfn_compare
    alias_method :attr_lpfn_compare=, :lpfn_compare=
    undef_method :lpfn_compare=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._tvsortcb_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @h_parent = 0
      @lpfn_compare = 0
      @l_param = 0
    end
    
    private
    alias_method :initialize__tvsortcb, :initialize
  end
  
end
