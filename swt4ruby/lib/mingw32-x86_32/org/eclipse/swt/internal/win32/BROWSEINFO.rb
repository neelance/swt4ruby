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
  module BROWSEINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class BROWSEINFO 
    include_class_members BROWSEINFOImports
    
    # @field cast=(HWND)
    # long
    attr_accessor :hwnd_owner
    alias_method :attr_hwnd_owner, :hwnd_owner
    undef_method :hwnd_owner
    alias_method :attr_hwnd_owner=, :hwnd_owner=
    undef_method :hwnd_owner=
    
    # @field cast=(LPCITEMIDLIST)
    # long
    attr_accessor :pidl_root
    alias_method :attr_pidl_root, :pidl_root
    undef_method :pidl_root
    alias_method :attr_pidl_root=, :pidl_root=
    undef_method :pidl_root=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :psz_display_name
    alias_method :attr_psz_display_name, :psz_display_name
    undef_method :psz_display_name
    alias_method :attr_psz_display_name=, :psz_display_name=
    undef_method :psz_display_name=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpsz_title
    alias_method :attr_lpsz_title, :lpsz_title
    undef_method :lpsz_title
    alias_method :attr_lpsz_title=, :lpsz_title=
    undef_method :lpsz_title=
    
    attr_accessor :ul_flags
    alias_method :attr_ul_flags, :ul_flags
    undef_method :ul_flags
    alias_method :attr_ul_flags=, :ul_flags=
    undef_method :ul_flags=
    
    # @field cast=(BFFCALLBACK)
    # long
    attr_accessor :lpfn
    alias_method :attr_lpfn, :lpfn
    undef_method :lpfn
    alias_method :attr_lpfn=, :lpfn=
    undef_method :lpfn=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    attr_accessor :i_image
    alias_method :attr_i_image, :i_image
    undef_method :i_image
    alias_method :attr_i_image=, :i_image=
    undef_method :i_image=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._browseinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @hwnd_owner = 0
      @pidl_root = 0
      @psz_display_name = 0
      @lpsz_title = 0
      @ul_flags = 0
      @lpfn = 0
      @l_param = 0
      @i_image = 0
    end
    
    private
    alias_method :initialize__browseinfo, :initialize
  end
  
end
