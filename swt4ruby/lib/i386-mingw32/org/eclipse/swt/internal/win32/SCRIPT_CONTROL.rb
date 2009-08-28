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
  module SCRIPT_CONTROLImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SCRIPT_CONTROL 
    include_class_members SCRIPT_CONTROLImports
    
    attr_accessor :u_default_language
    alias_method :attr_u_default_language, :u_default_language
    undef_method :u_default_language
    alias_method :attr_u_default_language=, :u_default_language=
    undef_method :u_default_language=
    
    attr_accessor :f_context_digits
    alias_method :attr_f_context_digits, :f_context_digits
    undef_method :f_context_digits
    alias_method :attr_f_context_digits=, :f_context_digits=
    undef_method :f_context_digits=
    
    attr_accessor :f_invert_pre_bound_dir
    alias_method :attr_f_invert_pre_bound_dir, :f_invert_pre_bound_dir
    undef_method :f_invert_pre_bound_dir
    alias_method :attr_f_invert_pre_bound_dir=, :f_invert_pre_bound_dir=
    undef_method :f_invert_pre_bound_dir=
    
    attr_accessor :f_invert_post_bound_dir
    alias_method :attr_f_invert_post_bound_dir, :f_invert_post_bound_dir
    undef_method :f_invert_post_bound_dir
    alias_method :attr_f_invert_post_bound_dir=, :f_invert_post_bound_dir=
    undef_method :f_invert_post_bound_dir=
    
    attr_accessor :f_link_string_before
    alias_method :attr_f_link_string_before, :f_link_string_before
    undef_method :f_link_string_before
    alias_method :attr_f_link_string_before=, :f_link_string_before=
    undef_method :f_link_string_before=
    
    attr_accessor :f_link_string_after
    alias_method :attr_f_link_string_after, :f_link_string_after
    undef_method :f_link_string_after
    alias_method :attr_f_link_string_after=, :f_link_string_after=
    undef_method :f_link_string_after=
    
    attr_accessor :f_neutral_override
    alias_method :attr_f_neutral_override, :f_neutral_override
    undef_method :f_neutral_override
    alias_method :attr_f_neutral_override=, :f_neutral_override=
    undef_method :f_neutral_override=
    
    attr_accessor :f_numeric_override
    alias_method :attr_f_numeric_override, :f_numeric_override
    undef_method :f_numeric_override
    alias_method :attr_f_numeric_override=, :f_numeric_override=
    undef_method :f_numeric_override=
    
    attr_accessor :f_legacy_bidi_class
    alias_method :attr_f_legacy_bidi_class, :f_legacy_bidi_class
    undef_method :f_legacy_bidi_class
    alias_method :attr_f_legacy_bidi_class=, :f_legacy_bidi_class=
    undef_method :f_legacy_bidi_class=
    
    attr_accessor :f_reserved
    alias_method :attr_f_reserved, :f_reserved
    undef_method :f_reserved
    alias_method :attr_f_reserved=, :f_reserved=
    undef_method :f_reserved=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._script_control_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @u_default_language = 0
      @f_context_digits = false
      @f_invert_pre_bound_dir = false
      @f_invert_post_bound_dir = false
      @f_link_string_before = false
      @f_link_string_after = false
      @f_neutral_override = false
      @f_numeric_override = false
      @f_legacy_bidi_class = false
      @f_reserved = 0
    end
    
    private
    alias_method :initialize__script_control, :initialize
  end
  
end
