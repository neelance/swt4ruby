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
  module SHMENUBARINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SHMENUBARINFO 
    include_class_members SHMENUBARINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # long
    attr_accessor :hwnd_parent
    alias_method :attr_hwnd_parent, :hwnd_parent
    undef_method :hwnd_parent
    alias_method :attr_hwnd_parent=, :hwnd_parent=
    undef_method :hwnd_parent=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    attr_accessor :n_tool_bar_id
    alias_method :attr_n_tool_bar_id, :n_tool_bar_id
    undef_method :n_tool_bar_id
    alias_method :attr_n_tool_bar_id=, :n_tool_bar_id=
    undef_method :n_tool_bar_id=
    
    # long
    attr_accessor :h_inst_res
    alias_method :attr_h_inst_res, :h_inst_res
    undef_method :h_inst_res
    alias_method :attr_h_inst_res=, :h_inst_res=
    undef_method :h_inst_res=
    
    attr_accessor :n_bmp_id
    alias_method :attr_n_bmp_id, :n_bmp_id
    undef_method :n_bmp_id
    alias_method :attr_n_bmp_id=, :n_bmp_id=
    undef_method :n_bmp_id=
    
    attr_accessor :c_bmp_images
    alias_method :attr_c_bmp_images, :c_bmp_images
    undef_method :c_bmp_images
    alias_method :attr_c_bmp_images=, :c_bmp_images=
    undef_method :c_bmp_images=
    
    # long
    attr_accessor :hwnd_mb
    alias_method :attr_hwnd_mb, :hwnd_mb
    undef_method :hwnd_mb
    alias_method :attr_hwnd_mb=, :hwnd_mb=
    undef_method :hwnd_mb=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsSP ? 36 : OS._shmenubarinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @hwnd_parent = 0
      @dw_flags = 0
      @n_tool_bar_id = 0
      @h_inst_res = 0
      @n_bmp_id = 0
      @c_bmp_images = 0
      @hwnd_mb = 0
    end
    
    private
    alias_method :initialize__shmenubarinfo, :initialize
  end
  
end
