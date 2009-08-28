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
  module NMLVODSTATECHANGEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMLVODSTATECHANGE < NMLVODSTATECHANGEImports.const_get :NMHDR
    include_class_members NMLVODSTATECHANGEImports
    
    # NMHDR hdr;
    attr_accessor :i_from
    alias_method :attr_i_from, :i_from
    undef_method :i_from
    alias_method :attr_i_from=, :i_from=
    undef_method :i_from=
    
    attr_accessor :i_to
    alias_method :attr_i_to, :i_to
    undef_method :i_to
    alias_method :attr_i_to=, :i_to=
    undef_method :i_to=
    
    attr_accessor :u_new_state
    alias_method :attr_u_new_state, :u_new_state
    undef_method :u_new_state
    alias_method :attr_u_new_state=, :u_new_state=
    undef_method :u_new_state=
    
    attr_accessor :u_old_state
    alias_method :attr_u_old_state, :u_old_state
    undef_method :u_old_state
    alias_method :attr_u_old_state=, :u_old_state=
    undef_method :u_old_state=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmlvodstatechange_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_from = 0
      @i_to = 0
      @u_new_state = 0
      @u_old_state = 0
      super()
    end
    
    private
    alias_method :initialize__nmlvodstatechange, :initialize
  end
  
end
