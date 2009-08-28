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
  module DWM_BLURBEHINDImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DWM_BLURBEHIND 
    include_class_members DWM_BLURBEHINDImports
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    attr_accessor :f_enable
    alias_method :attr_f_enable, :f_enable
    undef_method :f_enable
    alias_method :attr_f_enable=, :f_enable=
    undef_method :f_enable=
    
    # long
    attr_accessor :h_rgn_blur
    alias_method :attr_h_rgn_blur, :h_rgn_blur
    undef_method :h_rgn_blur
    alias_method :attr_h_rgn_blur=, :h_rgn_blur=
    undef_method :h_rgn_blur=
    
    attr_accessor :f_transition_on_maximized
    alias_method :attr_f_transition_on_maximized, :f_transition_on_maximized
    undef_method :f_transition_on_maximized
    alias_method :attr_f_transition_on_maximized=, :f_transition_on_maximized=
    undef_method :f_transition_on_maximized=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._dwm_blurbehind_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_flags = 0
      @f_enable = false
      @h_rgn_blur = 0
      @f_transition_on_maximized = false
    end
    
    private
    alias_method :initialize__dwm_blurbehind, :initialize
  end
  
end
