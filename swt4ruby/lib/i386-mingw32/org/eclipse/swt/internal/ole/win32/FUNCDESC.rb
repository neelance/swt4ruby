require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module FUNCDESCImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class FUNCDESC 
    include_class_members FUNCDESCImports
    
    attr_accessor :memid
    alias_method :attr_memid, :memid
    undef_method :memid
    alias_method :attr_memid=, :memid=
    undef_method :memid=
    
    # long
    attr_accessor :lprgscode
    alias_method :attr_lprgscode, :lprgscode
    undef_method :lprgscode
    alias_method :attr_lprgscode=, :lprgscode=
    undef_method :lprgscode=
    
    # long
    attr_accessor :lprgelemdesc_param
    alias_method :attr_lprgelemdesc_param, :lprgelemdesc_param
    undef_method :lprgelemdesc_param
    alias_method :attr_lprgelemdesc_param=, :lprgelemdesc_param=
    undef_method :lprgelemdesc_param=
    
    attr_accessor :funckind
    alias_method :attr_funckind, :funckind
    undef_method :funckind
    alias_method :attr_funckind=, :funckind=
    undef_method :funckind=
    
    attr_accessor :invkind
    alias_method :attr_invkind, :invkind
    undef_method :invkind
    alias_method :attr_invkind=, :invkind=
    undef_method :invkind=
    
    attr_accessor :callconv
    alias_method :attr_callconv, :callconv
    undef_method :callconv
    alias_method :attr_callconv=, :callconv=
    undef_method :callconv=
    
    attr_accessor :c_params
    alias_method :attr_c_params, :c_params
    undef_method :c_params
    alias_method :attr_c_params=, :c_params=
    undef_method :c_params=
    
    attr_accessor :c_params_opt
    alias_method :attr_c_params_opt, :c_params_opt
    undef_method :c_params_opt
    alias_method :attr_c_params_opt=, :c_params_opt=
    undef_method :c_params_opt=
    
    attr_accessor :o_vft
    alias_method :attr_o_vft, :o_vft
    undef_method :o_vft
    alias_method :attr_o_vft=, :o_vft=
    undef_method :o_vft=
    
    attr_accessor :c_scodes
    alias_method :attr_c_scodes, :c_scodes
    undef_method :c_scodes
    alias_method :attr_c_scodes=, :c_scodes=
    undef_method :c_scodes=
    
    # ELEMDESC elemdescFunc;
    # TYPEDESC elemdescFunc.tdesc
    # long
    attr_accessor :elemdesc_func_tdesc_union
    alias_method :attr_elemdesc_func_tdesc_union, :elemdesc_func_tdesc_union
    undef_method :elemdesc_func_tdesc_union
    alias_method :attr_elemdesc_func_tdesc_union=, :elemdesc_func_tdesc_union=
    undef_method :elemdesc_func_tdesc_union=
    
    attr_accessor :elemdesc_func_tdesc_vt
    alias_method :attr_elemdesc_func_tdesc_vt, :elemdesc_func_tdesc_vt
    undef_method :elemdesc_func_tdesc_vt
    alias_method :attr_elemdesc_func_tdesc_vt=, :elemdesc_func_tdesc_vt=
    undef_method :elemdesc_func_tdesc_vt=
    
    # PARAMDESC elemdescFunc.paramdesc
    # long
    attr_accessor :elemdesc_func_paramdesc_pparamdescex
    alias_method :attr_elemdesc_func_paramdesc_pparamdescex, :elemdesc_func_paramdesc_pparamdescex
    undef_method :elemdesc_func_paramdesc_pparamdescex
    alias_method :attr_elemdesc_func_paramdesc_pparamdescex=, :elemdesc_func_paramdesc_pparamdescex=
    undef_method :elemdesc_func_paramdesc_pparamdescex=
    
    attr_accessor :elemdesc_func_paramdesc_w_param_flags
    alias_method :attr_elemdesc_func_paramdesc_w_param_flags, :elemdesc_func_paramdesc_w_param_flags
    undef_method :elemdesc_func_paramdesc_w_param_flags
    alias_method :attr_elemdesc_func_paramdesc_w_param_flags=, :elemdesc_func_paramdesc_w_param_flags=
    undef_method :elemdesc_func_paramdesc_w_param_flags=
    
    attr_accessor :w_func_flags
    alias_method :attr_w_func_flags, :w_func_flags
    undef_method :w_func_flags
    alias_method :attr_w_func_flags=, :w_func_flags=
    undef_method :w_func_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._funcdesc_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @memid = 0
      @lprgscode = 0
      @lprgelemdesc_param = 0
      @funckind = 0
      @invkind = 0
      @callconv = 0
      @c_params = 0
      @c_params_opt = 0
      @o_vft = 0
      @c_scodes = 0
      @elemdesc_func_tdesc_union = 0
      @elemdesc_func_tdesc_vt = 0
      @elemdesc_func_paramdesc_pparamdescex = 0
      @elemdesc_func_paramdesc_w_param_flags = 0
      @w_func_flags = 0
    end
    
    private
    alias_method :initialize__funcdesc, :initialize
  end
  
end
