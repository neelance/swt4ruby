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
  module PRINTDLGImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class PRINTDLG 
    include_class_members PRINTDLGImports
    
    attr_accessor :l_struct_size
    alias_method :attr_l_struct_size, :l_struct_size
    undef_method :l_struct_size
    alias_method :attr_l_struct_size=, :l_struct_size=
    undef_method :l_struct_size=
    
    # DWORD
    # long
    attr_accessor :hwnd_owner
    alias_method :attr_hwnd_owner, :hwnd_owner
    undef_method :hwnd_owner
    alias_method :attr_hwnd_owner=, :hwnd_owner=
    undef_method :hwnd_owner=
    
    # HWND
    # long
    attr_accessor :h_dev_mode
    alias_method :attr_h_dev_mode, :h_dev_mode
    undef_method :h_dev_mode
    alias_method :attr_h_dev_mode=, :h_dev_mode=
    undef_method :h_dev_mode=
    
    # HGLOBAL
    # long
    attr_accessor :h_dev_names
    alias_method :attr_h_dev_names, :h_dev_names
    undef_method :h_dev_names
    alias_method :attr_h_dev_names=, :h_dev_names=
    undef_method :h_dev_names=
    
    # HGLOBAL
    # long
    attr_accessor :h_dc
    alias_method :attr_h_dc, :h_dc
    undef_method :h_dc
    alias_method :attr_h_dc=, :h_dc=
    undef_method :h_dc=
    
    # HDC
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    # DWORD
    attr_accessor :n_from_page
    alias_method :attr_n_from_page, :n_from_page
    undef_method :n_from_page
    alias_method :attr_n_from_page=, :n_from_page=
    undef_method :n_from_page=
    
    # WORD
    attr_accessor :n_to_page
    alias_method :attr_n_to_page, :n_to_page
    undef_method :n_to_page
    alias_method :attr_n_to_page=, :n_to_page=
    undef_method :n_to_page=
    
    # WORD
    attr_accessor :n_min_page
    alias_method :attr_n_min_page, :n_min_page
    undef_method :n_min_page
    alias_method :attr_n_min_page=, :n_min_page=
    undef_method :n_min_page=
    
    # WORD
    attr_accessor :n_max_page
    alias_method :attr_n_max_page, :n_max_page
    undef_method :n_max_page
    alias_method :attr_n_max_page=, :n_max_page=
    undef_method :n_max_page=
    
    # WORD
    attr_accessor :n_copies
    alias_method :attr_n_copies, :n_copies
    undef_method :n_copies
    alias_method :attr_n_copies=, :n_copies=
    undef_method :n_copies=
    
    # WORD
    # long
    attr_accessor :h_instance
    alias_method :attr_h_instance, :h_instance
    undef_method :h_instance
    alias_method :attr_h_instance=, :h_instance=
    undef_method :h_instance=
    
    # HINSTANCE
    # long
    attr_accessor :l_cust_data
    alias_method :attr_l_cust_data, :l_cust_data
    undef_method :l_cust_data
    alias_method :attr_l_cust_data=, :l_cust_data=
    undef_method :l_cust_data=
    
    # LPARAM
    # long
    attr_accessor :lpfn_print_hook
    alias_method :attr_lpfn_print_hook, :lpfn_print_hook
    undef_method :lpfn_print_hook
    alias_method :attr_lpfn_print_hook=, :lpfn_print_hook=
    undef_method :lpfn_print_hook=
    
    # LPPRINTHOOKPROC
    # long
    attr_accessor :lpfn_setup_hook
    alias_method :attr_lpfn_setup_hook, :lpfn_setup_hook
    undef_method :lpfn_setup_hook
    alias_method :attr_lpfn_setup_hook=, :lpfn_setup_hook=
    undef_method :lpfn_setup_hook=
    
    # LPSETUPHOOKPROC
    # long
    attr_accessor :lp_print_template_name
    alias_method :attr_lp_print_template_name, :lp_print_template_name
    undef_method :lp_print_template_name
    alias_method :attr_lp_print_template_name=, :lp_print_template_name=
    undef_method :lp_print_template_name=
    
    # LPCTSTR
    # long
    attr_accessor :lp_setup_template_name
    alias_method :attr_lp_setup_template_name, :lp_setup_template_name
    undef_method :lp_setup_template_name
    alias_method :attr_lp_setup_template_name=, :lp_setup_template_name=
    undef_method :lp_setup_template_name=
    
    # LPCTSTR
    # long
    attr_accessor :h_print_template
    alias_method :attr_h_print_template, :h_print_template
    undef_method :h_print_template
    alias_method :attr_h_print_template=, :h_print_template=
    undef_method :h_print_template=
    
    # HGLOBAL
    # long
    attr_accessor :h_setup_template
    alias_method :attr_h_setup_template, :h_setup_template
    undef_method :h_setup_template
    alias_method :attr_h_setup_template=, :h_setup_template=
    undef_method :h_setup_template=
    
    class_module.module_eval {
      # HGLOBAL
      const_set_lazy(:Sizeof) { OS._printdlg_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @l_struct_size = 0
      @hwnd_owner = 0
      @h_dev_mode = 0
      @h_dev_names = 0
      @h_dc = 0
      @flags = 0
      @n_from_page = 0
      @n_to_page = 0
      @n_min_page = 0
      @n_max_page = 0
      @n_copies = 0
      @h_instance = 0
      @l_cust_data = 0
      @lpfn_print_hook = 0
      @lpfn_setup_hook = 0
      @lp_print_template_name = 0
      @lp_setup_template_name = 0
      @h_print_template = 0
      @h_setup_template = 0
    end
    
    private
    alias_method :initialize__printdlg, :initialize
  end
  
end
