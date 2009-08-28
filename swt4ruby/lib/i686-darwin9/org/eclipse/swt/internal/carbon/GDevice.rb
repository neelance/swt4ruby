require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module GDeviceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class GDevice 
    include_class_members GDeviceImports
    
    attr_accessor :gd_ref_num
    alias_method :attr_gd_ref_num, :gd_ref_num
    undef_method :gd_ref_num
    alias_method :attr_gd_ref_num=, :gd_ref_num=
    undef_method :gd_ref_num=
    
    attr_accessor :gd_id
    alias_method :attr_gd_id, :gd_id
    undef_method :gd_id
    alias_method :attr_gd_id=, :gd_id=
    undef_method :gd_id=
    
    attr_accessor :gd_type
    alias_method :attr_gd_type, :gd_type
    undef_method :gd_type
    alias_method :attr_gd_type=, :gd_type=
    undef_method :gd_type=
    
    attr_accessor :gd_itable
    alias_method :attr_gd_itable, :gd_itable
    undef_method :gd_itable
    alias_method :attr_gd_itable=, :gd_itable=
    undef_method :gd_itable=
    
    attr_accessor :gd_res_pref
    alias_method :attr_gd_res_pref, :gd_res_pref
    undef_method :gd_res_pref
    alias_method :attr_gd_res_pref=, :gd_res_pref=
    undef_method :gd_res_pref=
    
    attr_accessor :gd_search_proc
    alias_method :attr_gd_search_proc, :gd_search_proc
    undef_method :gd_search_proc
    alias_method :attr_gd_search_proc=, :gd_search_proc=
    undef_method :gd_search_proc=
    
    attr_accessor :gd_comp_proc
    alias_method :attr_gd_comp_proc, :gd_comp_proc
    undef_method :gd_comp_proc
    alias_method :attr_gd_comp_proc=, :gd_comp_proc=
    undef_method :gd_comp_proc=
    
    attr_accessor :gd_flags
    alias_method :attr_gd_flags, :gd_flags
    undef_method :gd_flags
    alias_method :attr_gd_flags=, :gd_flags=
    undef_method :gd_flags=
    
    attr_accessor :gd_pmap
    alias_method :attr_gd_pmap, :gd_pmap
    undef_method :gd_pmap
    alias_method :attr_gd_pmap=, :gd_pmap=
    undef_method :gd_pmap=
    
    attr_accessor :gd_ref_con
    alias_method :attr_gd_ref_con, :gd_ref_con
    undef_method :gd_ref_con
    alias_method :attr_gd_ref_con=, :gd_ref_con=
    undef_method :gd_ref_con=
    
    attr_accessor :gd_next_gd
    alias_method :attr_gd_next_gd, :gd_next_gd
    undef_method :gd_next_gd
    alias_method :attr_gd_next_gd=, :gd_next_gd=
    undef_method :gd_next_gd=
    
    # Rect gdRect;
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    attr_accessor :gd_mode
    alias_method :attr_gd_mode, :gd_mode
    undef_method :gd_mode
    alias_method :attr_gd_mode=, :gd_mode=
    undef_method :gd_mode=
    
    attr_accessor :gd_ccbytes
    alias_method :attr_gd_ccbytes, :gd_ccbytes
    undef_method :gd_ccbytes
    alias_method :attr_gd_ccbytes=, :gd_ccbytes=
    undef_method :gd_ccbytes=
    
    attr_accessor :gd_ccdepth
    alias_method :attr_gd_ccdepth, :gd_ccdepth
    undef_method :gd_ccdepth
    alias_method :attr_gd_ccdepth=, :gd_ccdepth=
    undef_method :gd_ccdepth=
    
    attr_accessor :gd_ccxdata
    alias_method :attr_gd_ccxdata, :gd_ccxdata
    undef_method :gd_ccxdata
    alias_method :attr_gd_ccxdata=, :gd_ccxdata=
    undef_method :gd_ccxdata=
    
    attr_accessor :gd_ccxmask
    alias_method :attr_gd_ccxmask, :gd_ccxmask
    undef_method :gd_ccxmask
    alias_method :attr_gd_ccxmask=, :gd_ccxmask=
    undef_method :gd_ccxmask=
    
    attr_accessor :gd_ext
    alias_method :attr_gd_ext, :gd_ext
    undef_method :gd_ext
    alias_method :attr_gd_ext=, :gd_ext=
    undef_method :gd_ext=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 62 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @gd_ref_num = 0
      @gd_id = 0
      @gd_type = 0
      @gd_itable = 0
      @gd_res_pref = 0
      @gd_search_proc = 0
      @gd_comp_proc = 0
      @gd_flags = 0
      @gd_pmap = 0
      @gd_ref_con = 0
      @gd_next_gd = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      @gd_mode = 0
      @gd_ccbytes = 0
      @gd_ccdepth = 0
      @gd_ccxdata = 0
      @gd_ccxmask = 0
      @gd_ext = 0
    end
    
    private
    alias_method :initialize__gdevice, :initialize
  end
  
end
