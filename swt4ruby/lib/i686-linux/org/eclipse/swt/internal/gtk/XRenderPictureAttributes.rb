require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module XRenderPictureAttributesImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class XRenderPictureAttributes 
    include_class_members XRenderPictureAttributesImports
    
    attr_accessor :repeat
    alias_method :attr_repeat, :repeat
    undef_method :repeat
    alias_method :attr_repeat=, :repeat=
    undef_method :repeat=
    
    # long
    attr_accessor :alpha_map
    alias_method :attr_alpha_map, :alpha_map
    undef_method :alpha_map
    alias_method :attr_alpha_map=, :alpha_map=
    undef_method :alpha_map=
    
    attr_accessor :alpha_x_origin
    alias_method :attr_alpha_x_origin, :alpha_x_origin
    undef_method :alpha_x_origin
    alias_method :attr_alpha_x_origin=, :alpha_x_origin=
    undef_method :alpha_x_origin=
    
    attr_accessor :alpha_y_origin
    alias_method :attr_alpha_y_origin, :alpha_y_origin
    undef_method :alpha_y_origin
    alias_method :attr_alpha_y_origin=, :alpha_y_origin=
    undef_method :alpha_y_origin=
    
    attr_accessor :clip_x_origin
    alias_method :attr_clip_x_origin, :clip_x_origin
    undef_method :clip_x_origin
    alias_method :attr_clip_x_origin=, :clip_x_origin=
    undef_method :clip_x_origin=
    
    attr_accessor :clip_y_origin
    alias_method :attr_clip_y_origin, :clip_y_origin
    undef_method :clip_y_origin
    alias_method :attr_clip_y_origin=, :clip_y_origin=
    undef_method :clip_y_origin=
    
    # long
    attr_accessor :clip_mask
    alias_method :attr_clip_mask, :clip_mask
    undef_method :clip_mask
    alias_method :attr_clip_mask=, :clip_mask=
    undef_method :clip_mask=
    
    attr_accessor :graphics_exposures
    alias_method :attr_graphics_exposures, :graphics_exposures
    undef_method :graphics_exposures
    alias_method :attr_graphics_exposures=, :graphics_exposures=
    undef_method :graphics_exposures=
    
    attr_accessor :subwindow_mode
    alias_method :attr_subwindow_mode, :subwindow_mode
    undef_method :subwindow_mode
    alias_method :attr_subwindow_mode=, :subwindow_mode=
    undef_method :subwindow_mode=
    
    attr_accessor :poly_edge
    alias_method :attr_poly_edge, :poly_edge
    undef_method :poly_edge
    alias_method :attr_poly_edge=, :poly_edge=
    undef_method :poly_edge=
    
    attr_accessor :poly_mode
    alias_method :attr_poly_mode, :poly_mode
    undef_method :poly_mode
    alias_method :attr_poly_mode=, :poly_mode=
    undef_method :poly_mode=
    
    # long
    attr_accessor :dither
    alias_method :attr_dither, :dither
    undef_method :dither
    alias_method :attr_dither=, :dither=
    undef_method :dither=
    
    attr_accessor :component_alpha
    alias_method :attr_component_alpha, :component_alpha
    undef_method :component_alpha
    alias_method :attr_component_alpha=, :component_alpha=
    undef_method :component_alpha=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._xrender_picture_attributes_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @repeat = false
      @alpha_map = 0
      @alpha_x_origin = 0
      @alpha_y_origin = 0
      @clip_x_origin = 0
      @clip_y_origin = 0
      @clip_mask = 0
      @graphics_exposures = false
      @subwindow_mode = 0
      @poly_edge = 0
      @poly_mode = 0
      @dither = 0
      @component_alpha = false
    end
    
    private
    alias_method :initialize__xrender_picture_attributes, :initialize
  end
  
end
