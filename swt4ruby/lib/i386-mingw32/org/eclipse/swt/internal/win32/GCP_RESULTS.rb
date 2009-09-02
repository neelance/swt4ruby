require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module GCP_RESULTSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class GCP_RESULTS 
    include_class_members GCP_RESULTSImports
    
    attr_accessor :l_struct_size
    alias_method :attr_l_struct_size, :l_struct_size
    undef_method :l_struct_size
    alias_method :attr_l_struct_size=, :l_struct_size=
    undef_method :l_struct_size=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :lp_out_string
    alias_method :attr_lp_out_string, :lp_out_string
    undef_method :lp_out_string
    alias_method :attr_lp_out_string=, :lp_out_string=
    undef_method :lp_out_string=
    
    # @field cast=(UINT  *)
    # long
    attr_accessor :lp_order
    alias_method :attr_lp_order, :lp_order
    undef_method :lp_order
    alias_method :attr_lp_order=, :lp_order=
    undef_method :lp_order=
    
    # @field cast=(int  *)
    # long
    attr_accessor :lp_dx
    alias_method :attr_lp_dx, :lp_dx
    undef_method :lp_dx
    alias_method :attr_lp_dx=, :lp_dx=
    undef_method :lp_dx=
    
    # @field cast=(int  *)
    # long
    attr_accessor :lp_caret_pos
    alias_method :attr_lp_caret_pos, :lp_caret_pos
    undef_method :lp_caret_pos
    alias_method :attr_lp_caret_pos=, :lp_caret_pos=
    undef_method :lp_caret_pos=
    
    # @field cast=(LPSTR)
    # long
    attr_accessor :lp_class
    alias_method :attr_lp_class, :lp_class
    undef_method :lp_class
    alias_method :attr_lp_class=, :lp_class=
    undef_method :lp_class=
    
    # @field cast=(LPWSTR)
    # long
    attr_accessor :lp_glyphs
    alias_method :attr_lp_glyphs, :lp_glyphs
    undef_method :lp_glyphs
    alias_method :attr_lp_glyphs=, :lp_glyphs=
    undef_method :lp_glyphs=
    
    attr_accessor :n_glyphs
    alias_method :attr_n_glyphs, :n_glyphs
    undef_method :n_glyphs
    alias_method :attr_n_glyphs=, :n_glyphs=
    undef_method :n_glyphs=
    
    attr_accessor :n_max_fit
    alias_method :attr_n_max_fit, :n_max_fit
    undef_method :n_max_fit
    alias_method :attr_n_max_fit=, :n_max_fit=
    undef_method :n_max_fit=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gcp_results_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @l_struct_size = 0
      @lp_out_string = 0
      @lp_order = 0
      @lp_dx = 0
      @lp_caret_pos = 0
      @lp_class = 0
      @lp_glyphs = 0
      @n_glyphs = 0
      @n_max_fit = 0
    end
    
    private
    alias_method :initialize__gcp_results, :initialize
  end
  
end
