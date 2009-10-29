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
  module OPENFILENAMEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OPENFILENAME 
    include_class_members OPENFILENAMEImports
    
    attr_accessor :l_struct_size
    alias_method :attr_l_struct_size, :l_struct_size
    undef_method :l_struct_size
    alias_method :attr_l_struct_size=, :l_struct_size=
    undef_method :l_struct_size=
    
    # @field cast=(HWND)
    # long
    attr_accessor :hwnd_owner
    alias_method :attr_hwnd_owner, :hwnd_owner
    undef_method :hwnd_owner
    alias_method :attr_hwnd_owner=, :hwnd_owner=
    undef_method :hwnd_owner=
    
    # @field cast=(HINSTANCE)
    # long
    attr_accessor :h_instance
    alias_method :attr_h_instance, :h_instance
    undef_method :h_instance
    alias_method :attr_h_instance=, :h_instance=
    undef_method :h_instance=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpstr_filter
    alias_method :attr_lpstr_filter, :lpstr_filter
    undef_method :lpstr_filter
    alias_method :attr_lpstr_filter=, :lpstr_filter=
    undef_method :lpstr_filter=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :lpstr_custom_filter
    alias_method :attr_lpstr_custom_filter, :lpstr_custom_filter
    undef_method :lpstr_custom_filter
    alias_method :attr_lpstr_custom_filter=, :lpstr_custom_filter=
    undef_method :lpstr_custom_filter=
    
    attr_accessor :n_max_cust_filter
    alias_method :attr_n_max_cust_filter, :n_max_cust_filter
    undef_method :n_max_cust_filter
    alias_method :attr_n_max_cust_filter=, :n_max_cust_filter=
    undef_method :n_max_cust_filter=
    
    attr_accessor :n_filter_index
    alias_method :attr_n_filter_index, :n_filter_index
    undef_method :n_filter_index
    alias_method :attr_n_filter_index=, :n_filter_index=
    undef_method :n_filter_index=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :lpstr_file
    alias_method :attr_lpstr_file, :lpstr_file
    undef_method :lpstr_file
    alias_method :attr_lpstr_file=, :lpstr_file=
    undef_method :lpstr_file=
    
    attr_accessor :n_max_file
    alias_method :attr_n_max_file, :n_max_file
    undef_method :n_max_file
    alias_method :attr_n_max_file=, :n_max_file=
    undef_method :n_max_file=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :lpstr_file_title
    alias_method :attr_lpstr_file_title, :lpstr_file_title
    undef_method :lpstr_file_title
    alias_method :attr_lpstr_file_title=, :lpstr_file_title=
    undef_method :lpstr_file_title=
    
    attr_accessor :n_max_file_title
    alias_method :attr_n_max_file_title, :n_max_file_title
    undef_method :n_max_file_title
    alias_method :attr_n_max_file_title=, :n_max_file_title=
    undef_method :n_max_file_title=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpstr_initial_dir
    alias_method :attr_lpstr_initial_dir, :lpstr_initial_dir
    undef_method :lpstr_initial_dir
    alias_method :attr_lpstr_initial_dir=, :lpstr_initial_dir=
    undef_method :lpstr_initial_dir=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpstr_title
    alias_method :attr_lpstr_title, :lpstr_title
    undef_method :lpstr_title
    alias_method :attr_lpstr_title=, :lpstr_title=
    undef_method :lpstr_title=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :n_file_offset
    alias_method :attr_n_file_offset, :n_file_offset
    undef_method :n_file_offset
    alias_method :attr_n_file_offset=, :n_file_offset=
    undef_method :n_file_offset=
    
    attr_accessor :n_file_extension
    alias_method :attr_n_file_extension, :n_file_extension
    undef_method :n_file_extension
    alias_method :attr_n_file_extension=, :n_file_extension=
    undef_method :n_file_extension=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpstr_def_ext
    alias_method :attr_lpstr_def_ext, :lpstr_def_ext
    undef_method :lpstr_def_ext
    alias_method :attr_lpstr_def_ext=, :lpstr_def_ext=
    undef_method :lpstr_def_ext=
    
    # long
    attr_accessor :l_cust_data
    alias_method :attr_l_cust_data, :l_cust_data
    undef_method :l_cust_data
    alias_method :attr_l_cust_data=, :l_cust_data=
    undef_method :l_cust_data=
    
    # @field cast=(LPOFNHOOKPROC)
    # long
    attr_accessor :lpfn_hook
    alias_method :attr_lpfn_hook, :lpfn_hook
    undef_method :lpfn_hook
    alias_method :attr_lpfn_hook=, :lpfn_hook=
    undef_method :lpfn_hook=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lp_template_name
    alias_method :attr_lp_template_name, :lp_template_name
    undef_method :lp_template_name
    alias_method :attr_lp_template_name=, :lp_template_name=
    undef_method :lp_template_name=
    
    # @field cast=(void *),flags=no_wince
    # long
    attr_accessor :pv_reserved
    alias_method :attr_pv_reserved, :pv_reserved
    undef_method :pv_reserved
    alias_method :attr_pv_reserved=, :pv_reserved=
    undef_method :pv_reserved=
    
    # @field flags=no_wince
    attr_accessor :dw_reserved
    alias_method :attr_dw_reserved, :dw_reserved
    undef_method :dw_reserved
    alias_method :attr_dw_reserved=, :dw_reserved=
    undef_method :dw_reserved=
    
    # @field flags=no_wince
    attr_accessor :flags_ex
    alias_method :attr_flags_ex, :flags_ex
    undef_method :flags_ex
    alias_method :attr_flags_ex=, :flags_ex=
    undef_method :flags_ex=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 0) ? OS._openfilename_sizeof : 76 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @l_struct_size = 0
      @hwnd_owner = 0
      @h_instance = 0
      @lpstr_filter = 0
      @lpstr_custom_filter = 0
      @n_max_cust_filter = 0
      @n_filter_index = 0
      @lpstr_file = 0
      @n_max_file = 0
      @lpstr_file_title = 0
      @n_max_file_title = 0
      @lpstr_initial_dir = 0
      @lpstr_title = 0
      @flags = 0
      @n_file_offset = 0
      @n_file_extension = 0
      @lpstr_def_ext = 0
      @l_cust_data = 0
      @lpfn_hook = 0
      @lp_template_name = 0
      @pv_reserved = 0
      @dw_reserved = 0
      @flags_ex = 0
    end
    
    private
    alias_method :initialize__openfilename, :initialize
  end
  
end
