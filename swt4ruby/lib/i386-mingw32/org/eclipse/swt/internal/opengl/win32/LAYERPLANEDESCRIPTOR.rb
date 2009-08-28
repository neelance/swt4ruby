require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Opengl::Win32
  module LAYERPLANEDESCRIPTORImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Opengl::Win32
    }
  end
  
  class LAYERPLANEDESCRIPTOR 
    include_class_members LAYERPLANEDESCRIPTORImports
    
    attr_accessor :n_size
    alias_method :attr_n_size, :n_size
    undef_method :n_size
    alias_method :attr_n_size=, :n_size=
    undef_method :n_size=
    
    attr_accessor :n_version
    alias_method :attr_n_version, :n_version
    undef_method :n_version
    alias_method :attr_n_version=, :n_version=
    undef_method :n_version=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    attr_accessor :i_pixel_type
    alias_method :attr_i_pixel_type, :i_pixel_type
    undef_method :i_pixel_type
    alias_method :attr_i_pixel_type=, :i_pixel_type=
    undef_method :i_pixel_type=
    
    attr_accessor :c_color_bits
    alias_method :attr_c_color_bits, :c_color_bits
    undef_method :c_color_bits
    alias_method :attr_c_color_bits=, :c_color_bits=
    undef_method :c_color_bits=
    
    attr_accessor :c_red_bits
    alias_method :attr_c_red_bits, :c_red_bits
    undef_method :c_red_bits
    alias_method :attr_c_red_bits=, :c_red_bits=
    undef_method :c_red_bits=
    
    attr_accessor :c_red_shift
    alias_method :attr_c_red_shift, :c_red_shift
    undef_method :c_red_shift
    alias_method :attr_c_red_shift=, :c_red_shift=
    undef_method :c_red_shift=
    
    attr_accessor :c_green_bits
    alias_method :attr_c_green_bits, :c_green_bits
    undef_method :c_green_bits
    alias_method :attr_c_green_bits=, :c_green_bits=
    undef_method :c_green_bits=
    
    attr_accessor :c_green_shift
    alias_method :attr_c_green_shift, :c_green_shift
    undef_method :c_green_shift
    alias_method :attr_c_green_shift=, :c_green_shift=
    undef_method :c_green_shift=
    
    attr_accessor :c_blue_bits
    alias_method :attr_c_blue_bits, :c_blue_bits
    undef_method :c_blue_bits
    alias_method :attr_c_blue_bits=, :c_blue_bits=
    undef_method :c_blue_bits=
    
    attr_accessor :c_blue_shift
    alias_method :attr_c_blue_shift, :c_blue_shift
    undef_method :c_blue_shift
    alias_method :attr_c_blue_shift=, :c_blue_shift=
    undef_method :c_blue_shift=
    
    attr_accessor :c_alpha_bits
    alias_method :attr_c_alpha_bits, :c_alpha_bits
    undef_method :c_alpha_bits
    alias_method :attr_c_alpha_bits=, :c_alpha_bits=
    undef_method :c_alpha_bits=
    
    attr_accessor :c_alpha_shift
    alias_method :attr_c_alpha_shift, :c_alpha_shift
    undef_method :c_alpha_shift
    alias_method :attr_c_alpha_shift=, :c_alpha_shift=
    undef_method :c_alpha_shift=
    
    attr_accessor :c_accum_bits
    alias_method :attr_c_accum_bits, :c_accum_bits
    undef_method :c_accum_bits
    alias_method :attr_c_accum_bits=, :c_accum_bits=
    undef_method :c_accum_bits=
    
    attr_accessor :c_accum_red_bits
    alias_method :attr_c_accum_red_bits, :c_accum_red_bits
    undef_method :c_accum_red_bits
    alias_method :attr_c_accum_red_bits=, :c_accum_red_bits=
    undef_method :c_accum_red_bits=
    
    attr_accessor :c_accum_green_bits
    alias_method :attr_c_accum_green_bits, :c_accum_green_bits
    undef_method :c_accum_green_bits
    alias_method :attr_c_accum_green_bits=, :c_accum_green_bits=
    undef_method :c_accum_green_bits=
    
    attr_accessor :c_accum_blue_bits
    alias_method :attr_c_accum_blue_bits, :c_accum_blue_bits
    undef_method :c_accum_blue_bits
    alias_method :attr_c_accum_blue_bits=, :c_accum_blue_bits=
    undef_method :c_accum_blue_bits=
    
    attr_accessor :c_accum_alpha_bits
    alias_method :attr_c_accum_alpha_bits, :c_accum_alpha_bits
    undef_method :c_accum_alpha_bits
    alias_method :attr_c_accum_alpha_bits=, :c_accum_alpha_bits=
    undef_method :c_accum_alpha_bits=
    
    attr_accessor :c_depth_bits
    alias_method :attr_c_depth_bits, :c_depth_bits
    undef_method :c_depth_bits
    alias_method :attr_c_depth_bits=, :c_depth_bits=
    undef_method :c_depth_bits=
    
    attr_accessor :c_stencil_bits
    alias_method :attr_c_stencil_bits, :c_stencil_bits
    undef_method :c_stencil_bits
    alias_method :attr_c_stencil_bits=, :c_stencil_bits=
    undef_method :c_stencil_bits=
    
    attr_accessor :c_aux_buffers
    alias_method :attr_c_aux_buffers, :c_aux_buffers
    undef_method :c_aux_buffers
    alias_method :attr_c_aux_buffers=, :c_aux_buffers=
    undef_method :c_aux_buffers=
    
    attr_accessor :i_layer_plane
    alias_method :attr_i_layer_plane, :i_layer_plane
    undef_method :i_layer_plane
    alias_method :attr_i_layer_plane=, :i_layer_plane=
    undef_method :i_layer_plane=
    
    attr_accessor :b_reserved
    alias_method :attr_b_reserved, :b_reserved
    undef_method :b_reserved
    alias_method :attr_b_reserved=, :b_reserved=
    undef_method :b_reserved=
    
    attr_accessor :cr_transparent
    alias_method :attr_cr_transparent, :cr_transparent
    undef_method :cr_transparent
    alias_method :attr_cr_transparent=, :cr_transparent=
    undef_method :cr_transparent=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 36 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @n_size = 0
      @n_version = 0
      @dw_flags = 0
      @i_pixel_type = 0
      @c_color_bits = 0
      @c_red_bits = 0
      @c_red_shift = 0
      @c_green_bits = 0
      @c_green_shift = 0
      @c_blue_bits = 0
      @c_blue_shift = 0
      @c_alpha_bits = 0
      @c_alpha_shift = 0
      @c_accum_bits = 0
      @c_accum_red_bits = 0
      @c_accum_green_bits = 0
      @c_accum_blue_bits = 0
      @c_accum_alpha_bits = 0
      @c_depth_bits = 0
      @c_stencil_bits = 0
      @c_aux_buffers = 0
      @i_layer_plane = 0
      @b_reserved = 0
      @cr_transparent = 0
    end
    
    private
    alias_method :initialize__layerplanedescriptor, :initialize
  end
  
end
