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
  module CHOOSEFONTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class CHOOSEFONT 
    include_class_members CHOOSEFONTImports
    
    attr_accessor :l_struct_size
    alias_method :attr_l_struct_size, :l_struct_size
    undef_method :l_struct_size
    alias_method :attr_l_struct_size=, :l_struct_size=
    undef_method :l_struct_size=
    
    # long
    attr_accessor :hwnd_owner
    alias_method :attr_hwnd_owner, :hwnd_owner
    undef_method :hwnd_owner
    alias_method :attr_hwnd_owner=, :hwnd_owner=
    undef_method :hwnd_owner=
    
    # long
    attr_accessor :h_dc
    alias_method :attr_h_dc, :h_dc
    undef_method :h_dc
    alias_method :attr_h_dc=, :h_dc=
    undef_method :h_dc=
    
    # long
    attr_accessor :lp_log_font
    alias_method :attr_lp_log_font, :lp_log_font
    undef_method :lp_log_font
    alias_method :attr_lp_log_font=, :lp_log_font=
    undef_method :lp_log_font=
    
    attr_accessor :i_point_size
    alias_method :attr_i_point_size, :i_point_size
    undef_method :i_point_size
    alias_method :attr_i_point_size=, :i_point_size=
    undef_method :i_point_size=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :rgb_colors
    alias_method :attr_rgb_colors, :rgb_colors
    undef_method :rgb_colors
    alias_method :attr_rgb_colors=, :rgb_colors=
    undef_method :rgb_colors=
    
    # long
    attr_accessor :l_cust_data
    alias_method :attr_l_cust_data, :l_cust_data
    undef_method :l_cust_data
    alias_method :attr_l_cust_data=, :l_cust_data=
    undef_method :l_cust_data=
    
    # long
    attr_accessor :lpfn_hook
    alias_method :attr_lpfn_hook, :lpfn_hook
    undef_method :lpfn_hook
    alias_method :attr_lpfn_hook=, :lpfn_hook=
    undef_method :lpfn_hook=
    
    # long
    attr_accessor :lp_template_name
    alias_method :attr_lp_template_name, :lp_template_name
    undef_method :lp_template_name
    alias_method :attr_lp_template_name=, :lp_template_name=
    undef_method :lp_template_name=
    
    # long
    attr_accessor :h_instance
    alias_method :attr_h_instance, :h_instance
    undef_method :h_instance
    alias_method :attr_h_instance=, :h_instance=
    undef_method :h_instance=
    
    # long
    attr_accessor :lpsz_style
    alias_method :attr_lpsz_style, :lpsz_style
    undef_method :lpsz_style
    alias_method :attr_lpsz_style=, :lpsz_style=
    undef_method :lpsz_style=
    
    attr_accessor :n_font_type
    alias_method :attr_n_font_type, :n_font_type
    undef_method :n_font_type
    alias_method :attr_n_font_type=, :n_font_type=
    undef_method :n_font_type=
    
    attr_accessor :n_size_min
    alias_method :attr_n_size_min, :n_size_min
    undef_method :n_size_min
    alias_method :attr_n_size_min=, :n_size_min=
    undef_method :n_size_min=
    
    attr_accessor :n_size_max
    alias_method :attr_n_size_max, :n_size_max
    undef_method :n_size_max
    alias_method :attr_n_size_max=, :n_size_max=
    undef_method :n_size_max=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._choosefont_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @l_struct_size = 0
      @hwnd_owner = 0
      @h_dc = 0
      @lp_log_font = 0
      @i_point_size = 0
      @flags = 0
      @rgb_colors = 0
      @l_cust_data = 0
      @lpfn_hook = 0
      @lp_template_name = 0
      @h_instance = 0
      @lpsz_style = 0
      @n_font_type = 0
      @n_size_min = 0
      @n_size_max = 0
    end
    
    private
    alias_method :initialize__choosefont, :initialize
  end
  
end
