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
  module SHELLEXECUTEINFOImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHELLEXECUTEINFO 
    include_class_members SHELLEXECUTEINFOImports
    
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
    
    # long
    attr_accessor :hwnd
    alias_method :attr_hwnd, :hwnd
    undef_method :hwnd
    alias_method :attr_hwnd=, :hwnd=
    undef_method :hwnd=
    
    # long
    attr_accessor :lp_verb
    alias_method :attr_lp_verb, :lp_verb
    undef_method :lp_verb
    alias_method :attr_lp_verb=, :lp_verb=
    undef_method :lp_verb=
    
    # long
    attr_accessor :lp_file
    alias_method :attr_lp_file, :lp_file
    undef_method :lp_file
    alias_method :attr_lp_file=, :lp_file=
    undef_method :lp_file=
    
    # long
    attr_accessor :lp_parameters
    alias_method :attr_lp_parameters, :lp_parameters
    undef_method :lp_parameters
    alias_method :attr_lp_parameters=, :lp_parameters=
    undef_method :lp_parameters=
    
    # long
    attr_accessor :lp_directory
    alias_method :attr_lp_directory, :lp_directory
    undef_method :lp_directory
    alias_method :attr_lp_directory=, :lp_directory=
    undef_method :lp_directory=
    
    attr_accessor :n_show
    alias_method :attr_n_show, :n_show
    undef_method :n_show
    alias_method :attr_n_show=, :n_show=
    undef_method :n_show=
    
    # long
    attr_accessor :h_inst_app
    alias_method :attr_h_inst_app, :h_inst_app
    undef_method :h_inst_app
    alias_method :attr_h_inst_app=, :h_inst_app=
    undef_method :h_inst_app=
    
    # Optional members
    # long
    attr_accessor :lp_idlist
    alias_method :attr_lp_idlist, :lp_idlist
    undef_method :lp_idlist
    alias_method :attr_lp_idlist=, :lp_idlist=
    undef_method :lp_idlist=
    
    # long
    attr_accessor :lp_class
    alias_method :attr_lp_class, :lp_class
    undef_method :lp_class
    alias_method :attr_lp_class=, :lp_class=
    undef_method :lp_class=
    
    # long
    attr_accessor :hkey_class
    alias_method :attr_hkey_class, :hkey_class
    undef_method :hkey_class
    alias_method :attr_hkey_class=, :hkey_class=
    undef_method :hkey_class=
    
    attr_accessor :dw_hot_key
    alias_method :attr_dw_hot_key, :dw_hot_key
    undef_method :dw_hot_key
    alias_method :attr_dw_hot_key=, :dw_hot_key=
    undef_method :dw_hot_key=
    
    # union {
    # HANDLE hIcon;
    # HANDLE hMonitor;
    # };
    # long
    attr_accessor :h_icon
    alias_method :attr_h_icon, :h_icon
    undef_method :h_icon
    alias_method :attr_h_icon=, :h_icon=
    undef_method :h_icon=
    
    # long
    attr_accessor :h_process
    alias_method :attr_h_process, :h_process
    undef_method :h_process
    alias_method :attr_h_process=, :h_process=
    undef_method :h_process=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._shellexecuteinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @f_mask = 0
      @hwnd = 0
      @lp_verb = 0
      @lp_file = 0
      @lp_parameters = 0
      @lp_directory = 0
      @n_show = 0
      @h_inst_app = 0
      @lp_idlist = 0
      @lp_class = 0
      @hkey_class = 0
      @dw_hot_key = 0
      @h_icon = 0
      @h_process = 0
    end
    
    private
    alias_method :initialize__shellexecuteinfo, :initialize
  end
  
end
