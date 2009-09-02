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
  module WNDCLASSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class WNDCLASS 
    include_class_members WNDCLASSImports
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    # @field cast=(WNDPROC)
    # long
    attr_accessor :lpfn_wnd_proc
    alias_method :attr_lpfn_wnd_proc, :lpfn_wnd_proc
    undef_method :lpfn_wnd_proc
    alias_method :attr_lpfn_wnd_proc=, :lpfn_wnd_proc=
    undef_method :lpfn_wnd_proc=
    
    attr_accessor :cb_cls_extra
    alias_method :attr_cb_cls_extra, :cb_cls_extra
    undef_method :cb_cls_extra
    alias_method :attr_cb_cls_extra=, :cb_cls_extra=
    undef_method :cb_cls_extra=
    
    attr_accessor :cb_wnd_extra
    alias_method :attr_cb_wnd_extra, :cb_wnd_extra
    undef_method :cb_wnd_extra
    alias_method :attr_cb_wnd_extra=, :cb_wnd_extra=
    undef_method :cb_wnd_extra=
    
    # @field cast=(HINSTANCE)
    # long
    attr_accessor :h_instance
    alias_method :attr_h_instance, :h_instance
    undef_method :h_instance
    alias_method :attr_h_instance=, :h_instance=
    undef_method :h_instance=
    
    # @field cast=(HICON)
    # long
    attr_accessor :h_icon
    alias_method :attr_h_icon, :h_icon
    undef_method :h_icon
    alias_method :attr_h_icon=, :h_icon=
    undef_method :h_icon=
    
    # @field cast=(HCURSOR)
    # long
    attr_accessor :h_cursor
    alias_method :attr_h_cursor, :h_cursor
    undef_method :h_cursor
    alias_method :attr_h_cursor=, :h_cursor=
    undef_method :h_cursor=
    
    # @field cast=(HBRUSH)
    # long
    attr_accessor :hbr_background
    alias_method :attr_hbr_background, :hbr_background
    undef_method :hbr_background
    alias_method :attr_hbr_background=, :hbr_background=
    undef_method :hbr_background=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpsz_menu_name
    alias_method :attr_lpsz_menu_name, :lpsz_menu_name
    undef_method :lpsz_menu_name
    alias_method :attr_lpsz_menu_name=, :lpsz_menu_name=
    undef_method :lpsz_menu_name=
    
    # @field cast=(LPCTSTR)
    # long
    attr_accessor :lpsz_class_name
    alias_method :attr_lpsz_class_name, :lpsz_class_name
    undef_method :lpsz_class_name
    alias_method :attr_lpsz_class_name=, :lpsz_class_name=
    undef_method :lpsz_class_name=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._wndclass_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @lpfn_wnd_proc = 0
      @cb_cls_extra = 0
      @cb_wnd_extra = 0
      @h_instance = 0
      @h_icon = 0
      @h_cursor = 0
      @hbr_background = 0
      @lpsz_menu_name = 0
      @lpsz_class_name = 0
    end
    
    private
    alias_method :initialize__wndclass, :initialize
  end
  
end
