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
  module MENUINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class MENUINFO 
    include_class_members MENUINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :f_mask
    alias_method :attr_f_mask, :f_mask
    undef_method :f_mask
    alias_method :attr_f_mask=, :f_mask=
    undef_method :f_mask=
    
    attr_accessor :dw_style
    alias_method :attr_dw_style, :dw_style
    undef_method :dw_style
    alias_method :attr_dw_style=, :dw_style=
    undef_method :dw_style=
    
    attr_accessor :cy_max
    alias_method :attr_cy_max, :cy_max
    undef_method :cy_max
    alias_method :attr_cy_max=, :cy_max=
    undef_method :cy_max=
    
    # @field cast=(HBRUSH)
    # long
    attr_accessor :hbr_back
    alias_method :attr_hbr_back, :hbr_back
    undef_method :hbr_back
    alias_method :attr_hbr_back=, :hbr_back=
    undef_method :hbr_back=
    
    attr_accessor :dw_context_help_id
    alias_method :attr_dw_context_help_id, :dw_context_help_id
    undef_method :dw_context_help_id
    alias_method :attr_dw_context_help_id=, :dw_context_help_id=
    undef_method :dw_context_help_id=
    
    # long
    attr_accessor :dw_menu_data
    alias_method :attr_dw_menu_data, :dw_menu_data
    undef_method :dw_menu_data
    alias_method :attr_dw_menu_data=, :dw_menu_data=
    undef_method :dw_menu_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._menuinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @f_mask = 0
      @dw_style = 0
      @cy_max = 0
      @hbr_back = 0
      @dw_context_help_id = 0
      @dw_menu_data = 0
    end
    
    private
    alias_method :initialize__menuinfo, :initialize
  end
  
end
