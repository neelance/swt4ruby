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
  module SCRIPT_PROPERTIESImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_PROPERTIES 
    include_class_members SCRIPT_PROPERTIESImports
    
    attr_accessor :langid
    alias_method :attr_langid, :langid
    undef_method :langid
    alias_method :attr_langid=, :langid=
    undef_method :langid=
    
    attr_accessor :f_numeric
    alias_method :attr_f_numeric, :f_numeric
    undef_method :f_numeric
    alias_method :attr_f_numeric=, :f_numeric=
    undef_method :f_numeric=
    
    attr_accessor :f_complex
    alias_method :attr_f_complex, :f_complex
    undef_method :f_complex
    alias_method :attr_f_complex=, :f_complex=
    undef_method :f_complex=
    
    attr_accessor :f_needs_word_breaking
    alias_method :attr_f_needs_word_breaking, :f_needs_word_breaking
    undef_method :f_needs_word_breaking
    alias_method :attr_f_needs_word_breaking=, :f_needs_word_breaking=
    undef_method :f_needs_word_breaking=
    
    attr_accessor :f_needs_caret_info
    alias_method :attr_f_needs_caret_info, :f_needs_caret_info
    undef_method :f_needs_caret_info
    alias_method :attr_f_needs_caret_info=, :f_needs_caret_info=
    undef_method :f_needs_caret_info=
    
    attr_accessor :b_char_set
    alias_method :attr_b_char_set, :b_char_set
    undef_method :b_char_set
    alias_method :attr_b_char_set=, :b_char_set=
    undef_method :b_char_set=
    
    attr_accessor :f_control
    alias_method :attr_f_control, :f_control
    undef_method :f_control
    alias_method :attr_f_control=, :f_control=
    undef_method :f_control=
    
    attr_accessor :f_private_use_area
    alias_method :attr_f_private_use_area, :f_private_use_area
    undef_method :f_private_use_area
    alias_method :attr_f_private_use_area=, :f_private_use_area=
    undef_method :f_private_use_area=
    
    attr_accessor :f_needs_character_justify
    alias_method :attr_f_needs_character_justify, :f_needs_character_justify
    undef_method :f_needs_character_justify
    alias_method :attr_f_needs_character_justify=, :f_needs_character_justify=
    undef_method :f_needs_character_justify=
    
    attr_accessor :f_invalid_glyph
    alias_method :attr_f_invalid_glyph, :f_invalid_glyph
    undef_method :f_invalid_glyph
    alias_method :attr_f_invalid_glyph=, :f_invalid_glyph=
    undef_method :f_invalid_glyph=
    
    attr_accessor :f_invalid_log_attr
    alias_method :attr_f_invalid_log_attr, :f_invalid_log_attr
    undef_method :f_invalid_log_attr
    alias_method :attr_f_invalid_log_attr=, :f_invalid_log_attr=
    undef_method :f_invalid_log_attr=
    
    attr_accessor :f_cdm
    alias_method :attr_f_cdm, :f_cdm
    undef_method :f_cdm
    alias_method :attr_f_cdm=, :f_cdm=
    undef_method :f_cdm=
    
    attr_accessor :f_ambiguous_char_set
    alias_method :attr_f_ambiguous_char_set, :f_ambiguous_char_set
    undef_method :f_ambiguous_char_set
    alias_method :attr_f_ambiguous_char_set=, :f_ambiguous_char_set=
    undef_method :f_ambiguous_char_set=
    
    attr_accessor :f_cluster_size_varies
    alias_method :attr_f_cluster_size_varies, :f_cluster_size_varies
    undef_method :f_cluster_size_varies
    alias_method :attr_f_cluster_size_varies=, :f_cluster_size_varies=
    undef_method :f_cluster_size_varies=
    
    attr_accessor :f_reject_invalid
    alias_method :attr_f_reject_invalid, :f_reject_invalid
    undef_method :f_reject_invalid
    alias_method :attr_f_reject_invalid=, :f_reject_invalid=
    undef_method :f_reject_invalid=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_properties_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @langid = 0
      @f_numeric = false
      @f_complex = false
      @f_needs_word_breaking = false
      @f_needs_caret_info = false
      @b_char_set = 0
      @f_control = false
      @f_private_use_area = false
      @f_needs_character_justify = false
      @f_invalid_glyph = false
      @f_invalid_log_attr = false
      @f_cdm = false
      @f_ambiguous_char_set = false
      @f_cluster_size_varies = false
      @f_reject_invalid = false
    end
    
    private
    alias_method :initialize__script_properties, :initialize
  end
  
end
