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
  module SIPINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class SIPINFO 
    include_class_members SIPINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :fdw_flags
    alias_method :attr_fdw_flags, :fdw_flags
    undef_method :fdw_flags
    alias_method :attr_fdw_flags=, :fdw_flags=
    undef_method :fdw_flags=
    
    # RECT rcVisibleDesktop
    # @field accessor=rcVisibleDesktop.left
    attr_accessor :rc_visible_desktop_left
    alias_method :attr_rc_visible_desktop_left, :rc_visible_desktop_left
    undef_method :rc_visible_desktop_left
    alias_method :attr_rc_visible_desktop_left=, :rc_visible_desktop_left=
    undef_method :rc_visible_desktop_left=
    
    # @field accessor=rcVisibleDesktop.top
    attr_accessor :rc_visible_desktop_top
    alias_method :attr_rc_visible_desktop_top, :rc_visible_desktop_top
    undef_method :rc_visible_desktop_top
    alias_method :attr_rc_visible_desktop_top=, :rc_visible_desktop_top=
    undef_method :rc_visible_desktop_top=
    
    # @field accessor=rcVisibleDesktop.right
    attr_accessor :rc_visible_desktop_right
    alias_method :attr_rc_visible_desktop_right, :rc_visible_desktop_right
    undef_method :rc_visible_desktop_right
    alias_method :attr_rc_visible_desktop_right=, :rc_visible_desktop_right=
    undef_method :rc_visible_desktop_right=
    
    # @field accessor=rcVisibleDesktop.bottom
    attr_accessor :rc_visible_desktop_bottom
    alias_method :attr_rc_visible_desktop_bottom, :rc_visible_desktop_bottom
    undef_method :rc_visible_desktop_bottom
    alias_method :attr_rc_visible_desktop_bottom=, :rc_visible_desktop_bottom=
    undef_method :rc_visible_desktop_bottom=
    
    # RECT rcSipRect
    # @field accessor=rcSipRect.left
    attr_accessor :rc_sip_rect_left
    alias_method :attr_rc_sip_rect_left, :rc_sip_rect_left
    undef_method :rc_sip_rect_left
    alias_method :attr_rc_sip_rect_left=, :rc_sip_rect_left=
    undef_method :rc_sip_rect_left=
    
    # @field accessor=rcSipRect.top
    attr_accessor :rc_sip_rect_top
    alias_method :attr_rc_sip_rect_top, :rc_sip_rect_top
    undef_method :rc_sip_rect_top
    alias_method :attr_rc_sip_rect_top=, :rc_sip_rect_top=
    undef_method :rc_sip_rect_top=
    
    # @field accessor=rcSipRect.right
    attr_accessor :rc_sip_rect_right
    alias_method :attr_rc_sip_rect_right, :rc_sip_rect_right
    undef_method :rc_sip_rect_right
    alias_method :attr_rc_sip_rect_right=, :rc_sip_rect_right=
    undef_method :rc_sip_rect_right=
    
    # @field accessor=rcSipRect.bottom
    attr_accessor :rc_sip_rect_bottom
    alias_method :attr_rc_sip_rect_bottom, :rc_sip_rect_bottom
    undef_method :rc_sip_rect_bottom
    alias_method :attr_rc_sip_rect_bottom=, :rc_sip_rect_bottom=
    undef_method :rc_sip_rect_bottom=
    
    attr_accessor :dw_im_data_size
    alias_method :attr_dw_im_data_size, :dw_im_data_size
    undef_method :dw_im_data_size
    alias_method :attr_dw_im_data_size=, :dw_im_data_size=
    undef_method :dw_im_data_size=
    
    # @field cast=(void *)
    # long
    attr_accessor :pv_im_data
    alias_method :attr_pv_im_data, :pv_im_data
    undef_method :pv_im_data
    alias_method :attr_pv_im_data=, :pv_im_data=
    undef_method :pv_im_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._sipinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @fdw_flags = 0
      @rc_visible_desktop_left = 0
      @rc_visible_desktop_top = 0
      @rc_visible_desktop_right = 0
      @rc_visible_desktop_bottom = 0
      @rc_sip_rect_left = 0
      @rc_sip_rect_top = 0
      @rc_sip_rect_right = 0
      @rc_sip_rect_bottom = 0
      @dw_im_data_size = 0
      @pv_im_data = 0
    end
    
    private
    alias_method :initialize__sipinfo, :initialize
  end
  
end
