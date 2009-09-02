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
  module REBARBANDINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class REBARBANDINFO 
    include_class_members REBARBANDINFOImports
    
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
    
    attr_accessor :f_style
    alias_method :attr_f_style, :f_style
    undef_method :f_style
    alias_method :attr_f_style=, :f_style=
    undef_method :f_style=
    
    attr_accessor :clr_fore
    alias_method :attr_clr_fore, :clr_fore
    undef_method :clr_fore
    alias_method :attr_clr_fore=, :clr_fore=
    undef_method :clr_fore=
    
    attr_accessor :clr_back
    alias_method :attr_clr_back, :clr_back
    undef_method :clr_back
    alias_method :attr_clr_back=, :clr_back=
    undef_method :clr_back=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :lp_text
    alias_method :attr_lp_text, :lp_text
    undef_method :lp_text
    alias_method :attr_lp_text=, :lp_text=
    undef_method :lp_text=
    
    attr_accessor :cch
    alias_method :attr_cch, :cch
    undef_method :cch
    alias_method :attr_cch=, :cch=
    undef_method :cch=
    
    attr_accessor :i_image
    alias_method :attr_i_image, :i_image
    undef_method :i_image
    alias_method :attr_i_image=, :i_image=
    undef_method :i_image=
    
    # @field cast=(HWND)
    # long
    attr_accessor :hwnd_child
    alias_method :attr_hwnd_child, :hwnd_child
    undef_method :hwnd_child
    alias_method :attr_hwnd_child=, :hwnd_child=
    undef_method :hwnd_child=
    
    attr_accessor :cx_min_child
    alias_method :attr_cx_min_child, :cx_min_child
    undef_method :cx_min_child
    alias_method :attr_cx_min_child=, :cx_min_child=
    undef_method :cx_min_child=
    
    attr_accessor :cy_min_child
    alias_method :attr_cy_min_child, :cy_min_child
    undef_method :cy_min_child
    alias_method :attr_cy_min_child=, :cy_min_child=
    undef_method :cy_min_child=
    
    attr_accessor :cx
    alias_method :attr_cx, :cx
    undef_method :cx
    alias_method :attr_cx=, :cx=
    undef_method :cx=
    
    # @field cast=(HBITMAP)
    # long
    attr_accessor :hbm_back
    alias_method :attr_hbm_back, :hbm_back
    undef_method :hbm_back
    alias_method :attr_hbm_back=, :hbm_back=
    undef_method :hbm_back=
    
    attr_accessor :w_id
    alias_method :attr_w_id, :w_id
    undef_method :w_id
    alias_method :attr_w_id=, :w_id=
    undef_method :w_id=
    
    attr_accessor :cy_child
    alias_method :attr_cy_child, :cy_child
    undef_method :cy_child
    alias_method :attr_cy_child=, :cy_child=
    undef_method :cy_child=
    
    attr_accessor :cy_max_child
    alias_method :attr_cy_max_child, :cy_max_child
    undef_method :cy_max_child
    alias_method :attr_cy_max_child=, :cy_max_child=
    undef_method :cy_max_child=
    
    attr_accessor :cy_integral
    alias_method :attr_cy_integral, :cy_integral
    undef_method :cy_integral
    alias_method :attr_cy_integral=, :cy_integral=
    undef_method :cy_integral=
    
    attr_accessor :cx_ideal
    alias_method :attr_cx_ideal, :cx_ideal
    undef_method :cx_ideal
    alias_method :attr_cx_ideal=, :cx_ideal=
    undef_method :cx_ideal=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # @field flags=no_wince
    attr_accessor :cx_header
    alias_method :attr_cx_header, :cx_header
    undef_method :cx_header
    alias_method :attr_cx_header=, :cx_header=
    undef_method :cx_header=
    
    class_module.module_eval {
      # Note in WinCE.  The field cxHeader is not defined.
      const_set_lazy(:Sizeof) { OS._rebarbandinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @f_mask = 0
      @f_style = 0
      @clr_fore = 0
      @clr_back = 0
      @lp_text = 0
      @cch = 0
      @i_image = 0
      @hwnd_child = 0
      @cx_min_child = 0
      @cy_min_child = 0
      @cx = 0
      @hbm_back = 0
      @w_id = 0
      @cy_child = 0
      @cy_max_child = 0
      @cy_integral = 0
      @cx_ideal = 0
      @l_param = 0
      @cx_header = 0
    end
    
    private
    alias_method :initialize__rebarbandinfo, :initialize
  end
  
end
