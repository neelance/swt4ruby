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
  module SCRIPT_STATEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_STATE 
    include_class_members SCRIPT_STATEImports
    
    attr_accessor :u_bidi_level
    alias_method :attr_u_bidi_level, :u_bidi_level
    undef_method :u_bidi_level
    alias_method :attr_u_bidi_level=, :u_bidi_level=
    undef_method :u_bidi_level=
    
    attr_accessor :f_override_direction
    alias_method :attr_f_override_direction, :f_override_direction
    undef_method :f_override_direction
    alias_method :attr_f_override_direction=, :f_override_direction=
    undef_method :f_override_direction=
    
    attr_accessor :f_inhibit_sym_swap
    alias_method :attr_f_inhibit_sym_swap, :f_inhibit_sym_swap
    undef_method :f_inhibit_sym_swap
    alias_method :attr_f_inhibit_sym_swap=, :f_inhibit_sym_swap=
    undef_method :f_inhibit_sym_swap=
    
    attr_accessor :f_char_shape
    alias_method :attr_f_char_shape, :f_char_shape
    undef_method :f_char_shape
    alias_method :attr_f_char_shape=, :f_char_shape=
    undef_method :f_char_shape=
    
    attr_accessor :f_digit_substitute
    alias_method :attr_f_digit_substitute, :f_digit_substitute
    undef_method :f_digit_substitute
    alias_method :attr_f_digit_substitute=, :f_digit_substitute=
    undef_method :f_digit_substitute=
    
    attr_accessor :f_inhibit_ligate
    alias_method :attr_f_inhibit_ligate, :f_inhibit_ligate
    undef_method :f_inhibit_ligate
    alias_method :attr_f_inhibit_ligate=, :f_inhibit_ligate=
    undef_method :f_inhibit_ligate=
    
    attr_accessor :f_display_zwg
    alias_method :attr_f_display_zwg, :f_display_zwg
    undef_method :f_display_zwg
    alias_method :attr_f_display_zwg=, :f_display_zwg=
    undef_method :f_display_zwg=
    
    attr_accessor :f_arabic_num_context
    alias_method :attr_f_arabic_num_context, :f_arabic_num_context
    undef_method :f_arabic_num_context
    alias_method :attr_f_arabic_num_context=, :f_arabic_num_context=
    undef_method :f_arabic_num_context=
    
    attr_accessor :f_gcp_clusters
    alias_method :attr_f_gcp_clusters, :f_gcp_clusters
    undef_method :f_gcp_clusters
    alias_method :attr_f_gcp_clusters=, :f_gcp_clusters=
    undef_method :f_gcp_clusters=
    
    attr_accessor :f_reserved
    alias_method :attr_f_reserved, :f_reserved
    undef_method :f_reserved
    alias_method :attr_f_reserved=, :f_reserved=
    undef_method :f_reserved=
    
    attr_accessor :f_engine_reserved
    alias_method :attr_f_engine_reserved, :f_engine_reserved
    undef_method :f_engine_reserved
    alias_method :attr_f_engine_reserved=, :f_engine_reserved=
    undef_method :f_engine_reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_state_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @u_bidi_level = 0
      @f_override_direction = false
      @f_inhibit_sym_swap = false
      @f_char_shape = false
      @f_digit_substitute = false
      @f_inhibit_ligate = false
      @f_display_zwg = false
      @f_arabic_num_context = false
      @f_gcp_clusters = false
      @f_reserved = false
      @f_engine_reserved = 0
    end
    
    private
    alias_method :initialize__script_state, :initialize
  end
  
end
