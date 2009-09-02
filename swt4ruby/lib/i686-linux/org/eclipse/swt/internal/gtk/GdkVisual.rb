require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module GdkVisualImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkVisual 
    include_class_members GdkVisualImports
    
    # @field cast=(GdkVisualType)
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # @field cast=(gint)
    attr_accessor :depth
    alias_method :attr_depth, :depth
    undef_method :depth
    alias_method :attr_depth=, :depth=
    undef_method :depth=
    
    # @field cast=(GdkByteOrder)
    attr_accessor :byte_order
    alias_method :attr_byte_order, :byte_order
    undef_method :byte_order
    alias_method :attr_byte_order=, :byte_order=
    undef_method :byte_order=
    
    # @field cast=(gint)
    attr_accessor :colormap_size
    alias_method :attr_colormap_size, :colormap_size
    undef_method :colormap_size
    alias_method :attr_colormap_size=, :colormap_size=
    undef_method :colormap_size=
    
    # @field cast=(gint)
    attr_accessor :bits_per_rgb
    alias_method :attr_bits_per_rgb, :bits_per_rgb
    undef_method :bits_per_rgb
    alias_method :attr_bits_per_rgb=, :bits_per_rgb=
    undef_method :bits_per_rgb=
    
    # @field cast=(guint32)
    attr_accessor :red_mask
    alias_method :attr_red_mask, :red_mask
    undef_method :red_mask
    alias_method :attr_red_mask=, :red_mask=
    undef_method :red_mask=
    
    # @field cast=(gint)
    attr_accessor :red_shift
    alias_method :attr_red_shift, :red_shift
    undef_method :red_shift
    alias_method :attr_red_shift=, :red_shift=
    undef_method :red_shift=
    
    # @field cast=(gint)
    attr_accessor :red_prec
    alias_method :attr_red_prec, :red_prec
    undef_method :red_prec
    alias_method :attr_red_prec=, :red_prec=
    undef_method :red_prec=
    
    # @field cast=(guint32)
    attr_accessor :green_mask
    alias_method :attr_green_mask, :green_mask
    undef_method :green_mask
    alias_method :attr_green_mask=, :green_mask=
    undef_method :green_mask=
    
    # @field cast=(gint)
    attr_accessor :green_shift
    alias_method :attr_green_shift, :green_shift
    undef_method :green_shift
    alias_method :attr_green_shift=, :green_shift=
    undef_method :green_shift=
    
    # @field cast=(gint)
    attr_accessor :green_prec
    alias_method :attr_green_prec, :green_prec
    undef_method :green_prec
    alias_method :attr_green_prec=, :green_prec=
    undef_method :green_prec=
    
    # @field cast=(guint32)
    attr_accessor :blue_mask
    alias_method :attr_blue_mask, :blue_mask
    undef_method :blue_mask
    alias_method :attr_blue_mask=, :blue_mask=
    undef_method :blue_mask=
    
    # @field cast=(gint)
    attr_accessor :blue_shift
    alias_method :attr_blue_shift, :blue_shift
    undef_method :blue_shift
    alias_method :attr_blue_shift=, :blue_shift=
    undef_method :blue_shift=
    
    # @field cast=(gint)
    attr_accessor :blue_prec
    alias_method :attr_blue_prec, :blue_prec
    undef_method :blue_prec
    alias_method :attr_blue_prec=, :blue_prec=
    undef_method :blue_prec=
    
    typesig { [] }
    def initialize
      @type = 0
      @depth = 0
      @byte_order = 0
      @colormap_size = 0
      @bits_per_rgb = 0
      @red_mask = 0
      @red_shift = 0
      @red_prec = 0
      @green_mask = 0
      @green_shift = 0
      @green_prec = 0
      @blue_mask = 0
      @blue_shift = 0
      @blue_prec = 0
    end
    
    private
    alias_method :initialize__gdk_visual, :initialize
  end
  
end
