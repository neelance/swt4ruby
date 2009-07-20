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
  module NMTVITEMCHANGEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTVITEMCHANGE < NMTVITEMCHANGEImports.const_get :NMHDR
    include_class_members NMTVITEMCHANGEImports
    
    attr_accessor :u_changed
    alias_method :attr_u_changed, :u_changed
    undef_method :u_changed
    alias_method :attr_u_changed=, :u_changed=
    undef_method :u_changed=
    
    # long
    attr_accessor :h_item
    alias_method :attr_h_item, :h_item
    undef_method :h_item
    alias_method :attr_h_item=, :h_item=
    undef_method :h_item=
    
    attr_accessor :u_state_new
    alias_method :attr_u_state_new, :u_state_new
    undef_method :u_state_new
    alias_method :attr_u_state_new=, :u_state_new=
    undef_method :u_state_new=
    
    attr_accessor :u_state_old
    alias_method :attr_u_state_old, :u_state_old
    undef_method :u_state_old
    alias_method :attr_u_state_old=, :u_state_old=
    undef_method :u_state_old=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._nmtvitemchange_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @u_changed = 0
      @h_item = 0
      @u_state_new = 0
      @u_state_old = 0
      @l_param = 0
      super()
    end
    
    private
    alias_method :initialize__nmtvitemchange, :initialize
  end
  
end
