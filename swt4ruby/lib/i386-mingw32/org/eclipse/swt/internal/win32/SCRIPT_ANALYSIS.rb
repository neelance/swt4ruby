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
  module SCRIPT_ANALYSISImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_ANALYSIS 
    include_class_members SCRIPT_ANALYSISImports
    
    attr_accessor :e_script
    alias_method :attr_e_script, :e_script
    undef_method :e_script
    alias_method :attr_e_script=, :e_script=
    undef_method :e_script=
    
    attr_accessor :f_rtl
    alias_method :attr_f_rtl, :f_rtl
    undef_method :f_rtl
    alias_method :attr_f_rtl=, :f_rtl=
    undef_method :f_rtl=
    
    attr_accessor :f_layout_rtl
    alias_method :attr_f_layout_rtl, :f_layout_rtl
    undef_method :f_layout_rtl
    alias_method :attr_f_layout_rtl=, :f_layout_rtl=
    undef_method :f_layout_rtl=
    
    attr_accessor :f_link_before
    alias_method :attr_f_link_before, :f_link_before
    undef_method :f_link_before
    alias_method :attr_f_link_before=, :f_link_before=
    undef_method :f_link_before=
    
    attr_accessor :f_link_after
    alias_method :attr_f_link_after, :f_link_after
    undef_method :f_link_after
    alias_method :attr_f_link_after=, :f_link_after=
    undef_method :f_link_after=
    
    attr_accessor :f_logical_order
    alias_method :attr_f_logical_order, :f_logical_order
    undef_method :f_logical_order
    alias_method :attr_f_logical_order=, :f_logical_order=
    undef_method :f_logical_order=
    
    attr_accessor :f_no_glyph_index
    alias_method :attr_f_no_glyph_index, :f_no_glyph_index
    undef_method :f_no_glyph_index
    alias_method :attr_f_no_glyph_index=, :f_no_glyph_index=
    undef_method :f_no_glyph_index=
    
    attr_accessor :s
    alias_method :attr_s, :s
    undef_method :s
    alias_method :attr_s=, :s=
    undef_method :s=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_analysis_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @e_script = 0
      @f_rtl = false
      @f_layout_rtl = false
      @f_link_before = false
      @f_link_after = false
      @f_logical_order = false
      @f_no_glyph_index = false
      @s = SCRIPT_STATE.new
    end
    
    private
    alias_method :initialize__script_analysis, :initialize
  end
  
end
