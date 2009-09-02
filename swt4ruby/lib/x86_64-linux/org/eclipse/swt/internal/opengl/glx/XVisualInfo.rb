require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Opengl::Glx
  module XVisualInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Opengl::Glx
    }
  end
  
  class XVisualInfo 
    include_class_members XVisualInfoImports
    
    # @field cast=(Visual *)
    # int
    attr_accessor :visual
    alias_method :attr_visual, :visual
    undef_method :visual
    alias_method :attr_visual=, :visual=
    undef_method :visual=
    
    attr_accessor :visualid
    alias_method :attr_visualid, :visualid
    undef_method :visualid
    alias_method :attr_visualid=, :visualid=
    undef_method :visualid=
    
    attr_accessor :screen
    alias_method :attr_screen, :screen
    undef_method :screen
    alias_method :attr_screen=, :screen=
    undef_method :screen=
    
    attr_accessor :depth
    alias_method :attr_depth, :depth
    undef_method :depth
    alias_method :attr_depth=, :depth=
    undef_method :depth=
    
    # @field accessor=class
    attr_accessor :cclass
    alias_method :attr_cclass, :cclass
    undef_method :cclass
    alias_method :attr_cclass=, :cclass=
    undef_method :cclass=
    
    attr_accessor :red_mask
    alias_method :attr_red_mask, :red_mask
    undef_method :red_mask
    alias_method :attr_red_mask=, :red_mask=
    undef_method :red_mask=
    
    attr_accessor :green_mask
    alias_method :attr_green_mask, :green_mask
    undef_method :green_mask
    alias_method :attr_green_mask=, :green_mask=
    undef_method :green_mask=
    
    attr_accessor :blue_mask
    alias_method :attr_blue_mask, :blue_mask
    undef_method :blue_mask
    alias_method :attr_blue_mask=, :blue_mask=
    undef_method :blue_mask=
    
    attr_accessor :colormap_size
    alias_method :attr_colormap_size, :colormap_size
    undef_method :colormap_size
    alias_method :attr_colormap_size=, :colormap_size=
    undef_method :colormap_size=
    
    attr_accessor :bits_per_rgb
    alias_method :attr_bits_per_rgb, :bits_per_rgb
    undef_method :bits_per_rgb
    alias_method :attr_bits_per_rgb=, :bits_per_rgb=
    undef_method :bits_per_rgb=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { GLX._xvisual_info_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @visual = 0
      @visualid = 0
      @screen = 0
      @depth = 0
      @cclass = 0
      @red_mask = 0
      @green_mask = 0
      @blue_mask = 0
      @colormap_size = 0
      @bits_per_rgb = 0
    end
    
    private
    alias_method :initialize__xvisual_info, :initialize
  end
  
end
