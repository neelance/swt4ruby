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
  module CHOOSECOLORImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class CHOOSECOLOR 
    include_class_members CHOOSECOLORImports
    
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
    attr_accessor :h_instance
    alias_method :attr_h_instance, :h_instance
    undef_method :h_instance
    alias_method :attr_h_instance=, :h_instance=
    undef_method :h_instance=
    
    attr_accessor :rgb_result
    alias_method :attr_rgb_result, :rgb_result
    undef_method :rgb_result
    alias_method :attr_rgb_result=, :rgb_result=
    undef_method :rgb_result=
    
    # long
    attr_accessor :lp_cust_colors
    alias_method :attr_lp_cust_colors, :lp_cust_colors
    undef_method :lp_cust_colors
    alias_method :attr_lp_cust_colors=, :lp_cust_colors=
    undef_method :lp_cust_colors=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
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
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._choosecolor_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @l_struct_size = 0
      @hwnd_owner = 0
      @h_instance = 0
      @rgb_result = 0
      @lp_cust_colors = 0
      @flags = 0
      @l_cust_data = 0
      @lpfn_hook = 0
      @lp_template_name = 0
    end
    
    private
    alias_method :initialize__choosecolor, :initialize
  end
  
end
