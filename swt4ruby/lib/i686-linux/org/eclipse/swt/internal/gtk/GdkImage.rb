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
  module GdkImageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkImage 
    include_class_members GdkImageImports
    
    # @field cast=(GdkImageType)
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # @field cast=(GdkVisual *)
    # long
    attr_accessor :visual
    alias_method :attr_visual, :visual
    undef_method :visual
    alias_method :attr_visual=, :visual=
    undef_method :visual=
    
    # @field cast=(GdkByteOrder)
    attr_accessor :byte_order
    alias_method :attr_byte_order, :byte_order
    undef_method :byte_order
    alias_method :attr_byte_order=, :byte_order=
    undef_method :byte_order=
    
    # @field cast=(gint)
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # @field cast=(gint)
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # @field cast=(guint16)
    attr_accessor :depth
    alias_method :attr_depth, :depth
    undef_method :depth
    alias_method :attr_depth=, :depth=
    undef_method :depth=
    
    # @field cast=(guint16)
    attr_accessor :bpp
    alias_method :attr_bpp, :bpp
    undef_method :bpp
    alias_method :attr_bpp=, :bpp=
    undef_method :bpp=
    
    # @field cast=(guint16)
    attr_accessor :bpl
    alias_method :attr_bpl, :bpl
    undef_method :bpl
    alias_method :attr_bpl=, :bpl=
    undef_method :bpl=
    
    # @field cast=(guint16)
    attr_accessor :bits_per_pixel
    alias_method :attr_bits_per_pixel, :bits_per_pixel
    undef_method :bits_per_pixel
    alias_method :attr_bits_per_pixel=, :bits_per_pixel=
    undef_method :bits_per_pixel=
    
    # @field cast=(gpointer)
    # long
    attr_accessor :mem
    alias_method :attr_mem, :mem
    undef_method :mem
    alias_method :attr_mem=, :mem=
    undef_method :mem=
    
    # @field cast=(GdkColormap *)
    # long
    attr_accessor :colormap
    alias_method :attr_colormap, :colormap
    undef_method :colormap
    alias_method :attr_colormap=, :colormap=
    undef_method :colormap=
    
    # @field cast=(gpointer)
    # long
    attr_accessor :windowing_data
    alias_method :attr_windowing_data, :windowing_data
    undef_method :windowing_data
    alias_method :attr_windowing_data=, :windowing_data=
    undef_method :windowing_data=
    
    typesig { [] }
    def initialize
      @type = 0
      @visual = 0
      @byte_order = 0
      @width = 0
      @height = 0
      @depth = 0
      @bpp = 0
      @bpl = 0
      @bits_per_pixel = 0
      @mem = 0
      @colormap = 0
      @windowing_data = 0
    end
    
    private
    alias_method :initialize__gdk_image, :initialize
  end
  
end
