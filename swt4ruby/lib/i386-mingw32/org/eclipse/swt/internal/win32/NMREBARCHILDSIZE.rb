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
  module NMREBARCHILDSIZEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMREBARCHILDSIZE < NMREBARCHILDSIZEImports.const_get :NMHDR
    include_class_members NMREBARCHILDSIZEImports
    
    attr_accessor :u_band
    alias_method :attr_u_band, :u_band
    undef_method :u_band
    alias_method :attr_u_band=, :u_band=
    undef_method :u_band=
    
    attr_accessor :w_id
    alias_method :attr_w_id, :w_id
    undef_method :w_id
    alias_method :attr_w_id=, :w_id=
    undef_method :w_id=
    
    # RECT rcChild;
    # @field accessor=rcChild.left
    attr_accessor :rc_child_left
    alias_method :attr_rc_child_left, :rc_child_left
    undef_method :rc_child_left
    alias_method :attr_rc_child_left=, :rc_child_left=
    undef_method :rc_child_left=
    
    # @field accessor=rcChild.top
    attr_accessor :rc_child_top
    alias_method :attr_rc_child_top, :rc_child_top
    undef_method :rc_child_top
    alias_method :attr_rc_child_top=, :rc_child_top=
    undef_method :rc_child_top=
    
    # @field accessor=rcChild.right
    attr_accessor :rc_child_right
    alias_method :attr_rc_child_right, :rc_child_right
    undef_method :rc_child_right
    alias_method :attr_rc_child_right=, :rc_child_right=
    undef_method :rc_child_right=
    
    # @field accessor=rcChild.bottom
    attr_accessor :rc_child_bottom
    alias_method :attr_rc_child_bottom, :rc_child_bottom
    undef_method :rc_child_bottom
    alias_method :attr_rc_child_bottom=, :rc_child_bottom=
    undef_method :rc_child_bottom=
    
    # RECT rcBand;
    # @field accessor=rcBand.left
    attr_accessor :rc_band_left
    alias_method :attr_rc_band_left, :rc_band_left
    undef_method :rc_band_left
    alias_method :attr_rc_band_left=, :rc_band_left=
    undef_method :rc_band_left=
    
    # @field accessor=rcBand.top
    attr_accessor :rc_band_top
    alias_method :attr_rc_band_top, :rc_band_top
    undef_method :rc_band_top
    alias_method :attr_rc_band_top=, :rc_band_top=
    undef_method :rc_band_top=
    
    # @field accessor=rcBand.right
    attr_accessor :rc_band_right
    alias_method :attr_rc_band_right, :rc_band_right
    undef_method :rc_band_right
    alias_method :attr_rc_band_right=, :rc_band_right=
    undef_method :rc_band_right=
    
    # @field accessor=rcBand.bottom
    attr_accessor :rc_band_bottom
    alias_method :attr_rc_band_bottom, :rc_band_bottom
    undef_method :rc_band_bottom
    alias_method :attr_rc_band_bottom=, :rc_band_bottom=
    undef_method :rc_band_bottom=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmrebarchildsize_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @u_band = 0
      @w_id = 0
      @rc_child_left = 0
      @rc_child_top = 0
      @rc_child_right = 0
      @rc_child_bottom = 0
      @rc_band_left = 0
      @rc_band_top = 0
      @rc_band_right = 0
      @rc_band_bottom = 0
      super()
    end
    
    private
    alias_method :initialize__nmrebarchildsize, :initialize
  end
  
end
