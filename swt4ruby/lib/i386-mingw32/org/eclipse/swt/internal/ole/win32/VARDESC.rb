require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module VARDESCImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class VARDESC 
    include_class_members VARDESCImports
    
    attr_accessor :memid
    alias_method :attr_memid, :memid
    undef_method :memid
    alias_method :attr_memid=, :memid=
    undef_method :memid=
    
    # @field cast=(OLECHAR FAR *)
    # long
    attr_accessor :lpstr_schema
    alias_method :attr_lpstr_schema, :lpstr_schema
    undef_method :lpstr_schema
    alias_method :attr_lpstr_schema=, :lpstr_schema=
    undef_method :lpstr_schema=
    
    attr_accessor :o_inst
    alias_method :attr_o_inst, :o_inst
    undef_method :o_inst
    alias_method :attr_o_inst=, :o_inst=
    undef_method :o_inst=
    
    # ELEMDESC elemdescVar
    # TYPEDESC elemdescVar.tdesc
    # @field accessor=elemdescVar.tdesc.lptdesc,cast=(struct FARSTRUCT tagTYPEDESC FAR *)
    # long
    attr_accessor :elemdesc_var_tdesc_union
    alias_method :attr_elemdesc_var_tdesc_union, :elemdesc_var_tdesc_union
    undef_method :elemdesc_var_tdesc_union
    alias_method :attr_elemdesc_var_tdesc_union=, :elemdesc_var_tdesc_union=
    undef_method :elemdesc_var_tdesc_union=
    
    # @field accessor=elemdescVar.tdesc.vt
    attr_accessor :elemdesc_var_tdesc_vt
    alias_method :attr_elemdesc_var_tdesc_vt, :elemdesc_var_tdesc_vt
    undef_method :elemdesc_var_tdesc_vt
    alias_method :attr_elemdesc_var_tdesc_vt=, :elemdesc_var_tdesc_vt=
    undef_method :elemdesc_var_tdesc_vt=
    
    # PARAMDESC elemdescFunc.paramdesc
    # @field accessor=elemdescVar.paramdesc.pparamdescex,cast=(LPPARAMDESCEX)
    # long
    attr_accessor :elemdesc_var_paramdesc_pparamdescex
    alias_method :attr_elemdesc_var_paramdesc_pparamdescex, :elemdesc_var_paramdesc_pparamdescex
    undef_method :elemdesc_var_paramdesc_pparamdescex
    alias_method :attr_elemdesc_var_paramdesc_pparamdescex=, :elemdesc_var_paramdesc_pparamdescex=
    undef_method :elemdesc_var_paramdesc_pparamdescex=
    
    # @field accessor=elemdescVar.paramdesc.wParamFlags
    attr_accessor :elemdesc_var_paramdesc_w_param_flags
    alias_method :attr_elemdesc_var_paramdesc_w_param_flags, :elemdesc_var_paramdesc_w_param_flags
    undef_method :elemdesc_var_paramdesc_w_param_flags
    alias_method :attr_elemdesc_var_paramdesc_w_param_flags=, :elemdesc_var_paramdesc_w_param_flags=
    undef_method :elemdesc_var_paramdesc_w_param_flags=
    
    attr_accessor :w_var_flags
    alias_method :attr_w_var_flags, :w_var_flags
    undef_method :w_var_flags
    alias_method :attr_w_var_flags=, :w_var_flags=
    undef_method :w_var_flags=
    
    attr_accessor :varkind
    alias_method :attr_varkind, :varkind
    undef_method :varkind
    alias_method :attr_varkind=, :varkind=
    undef_method :varkind=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._vardesc_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @memid = 0
      @lpstr_schema = 0
      @o_inst = 0
      @elemdesc_var_tdesc_union = 0
      @elemdesc_var_tdesc_vt = 0
      @elemdesc_var_paramdesc_pparamdescex = 0
      @elemdesc_var_paramdesc_w_param_flags = 0
      @w_var_flags = 0
      @varkind = 0
    end
    
    private
    alias_method :initialize__vardesc, :initialize
  end
  
end
