require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module GCDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class are descriptions of GCs in terms
  # of unallocated platform-specific data fields.
  # <p>
  # <b>IMPORTANT:</b> This class is <em>not</em> part of the public
  # API for SWT. It is marked public only so that it can be shared
  # within the packages provided by SWT. It is not available on all
  # platforms, and should never be called from application code.
  # </p>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noinstantiate This class is not intended to be instantiated by clients.
  class SwtGCData 
    include_class_members GCDataImports
    
    attr_accessor :device
    alias_method :attr_device, :device
    undef_method :device
    alias_method :attr_device=, :device=
    undef_method :device=
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :foreground_pattern
    alias_method :attr_foreground_pattern, :foreground_pattern
    undef_method :foreground_pattern
    alias_method :attr_foreground_pattern=, :foreground_pattern=
    undef_method :foreground_pattern=
    
    attr_accessor :background_pattern
    alias_method :attr_background_pattern, :background_pattern
    undef_method :background_pattern
    alias_method :attr_background_pattern=, :background_pattern=
    undef_method :background_pattern=
    
    # int
    attr_accessor :clip_rgn
    alias_method :attr_clip_rgn, :clip_rgn
    undef_method :clip_rgn
    alias_method :attr_clip_rgn=, :clip_rgn=
    undef_method :clip_rgn=
    
    attr_accessor :line_width
    alias_method :attr_line_width, :line_width
    undef_method :line_width
    alias_method :attr_line_width=, :line_width=
    undef_method :line_width=
    
    attr_accessor :line_style
    alias_method :attr_line_style, :line_style
    undef_method :line_style
    alias_method :attr_line_style=, :line_style=
    undef_method :line_style=
    
    attr_accessor :line_dashes
    alias_method :attr_line_dashes, :line_dashes
    undef_method :line_dashes
    alias_method :attr_line_dashes=, :line_dashes=
    undef_method :line_dashes=
    
    attr_accessor :line_dashes_offset
    alias_method :attr_line_dashes_offset, :line_dashes_offset
    undef_method :line_dashes_offset
    alias_method :attr_line_dashes_offset=, :line_dashes_offset=
    undef_method :line_dashes_offset=
    
    attr_accessor :line_miter_limit
    alias_method :attr_line_miter_limit, :line_miter_limit
    undef_method :line_miter_limit
    alias_method :attr_line_miter_limit=, :line_miter_limit=
    undef_method :line_miter_limit=
    
    attr_accessor :line_cap
    alias_method :attr_line_cap, :line_cap
    undef_method :line_cap
    alias_method :attr_line_cap=, :line_cap=
    undef_method :line_cap=
    
    attr_accessor :line_join
    alias_method :attr_line_join, :line_join
    undef_method :line_join
    alias_method :attr_line_join=, :line_join=
    undef_method :line_join=
    
    attr_accessor :xor_mode
    alias_method :attr_xor_mode, :xor_mode
    undef_method :xor_mode
    alias_method :attr_xor_mode=, :xor_mode=
    undef_method :xor_mode=
    
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
    attr_accessor :interpolation
    alias_method :attr_interpolation, :interpolation
    undef_method :interpolation
    alias_method :attr_interpolation=, :interpolation=
    undef_method :interpolation=
    
    # int
    attr_accessor :context
    alias_method :attr_context, :context
    undef_method :context
    alias_method :attr_context=, :context=
    undef_method :context=
    
    # int
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    # int
    attr_accessor :damage_rgn
    alias_method :attr_damage_rgn, :damage_rgn
    undef_method :damage_rgn
    alias_method :attr_damage_rgn=, :damage_rgn=
    undef_method :damage_rgn=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    # int
    attr_accessor :drawable
    alias_method :attr_drawable, :drawable
    undef_method :drawable
    alias_method :attr_drawable=, :drawable=
    undef_method :drawable=
    
    # int
    attr_accessor :cairo
    alias_method :attr_cairo, :cairo
    undef_method :cairo
    alias_method :attr_cairo=, :cairo=
    undef_method :cairo=
    
    attr_accessor :cairo_xoffset
    alias_method :attr_cairo_xoffset, :cairo_xoffset
    undef_method :cairo_xoffset
    alias_method :attr_cairo_xoffset=, :cairo_xoffset=
    undef_method :cairo_xoffset=
    
    attr_accessor :cairo_yoffset
    alias_method :attr_cairo_yoffset, :cairo_yoffset
    undef_method :cairo_yoffset
    alias_method :attr_cairo_yoffset=, :cairo_yoffset=
    undef_method :cairo_yoffset=
    
    attr_accessor :dispose_cairo
    alias_method :attr_dispose_cairo, :dispose_cairo
    undef_method :dispose_cairo
    alias_method :attr_dispose_cairo=, :dispose_cairo=
    undef_method :dispose_cairo=
    
    attr_accessor :clipping_transform
    alias_method :attr_clipping_transform, :clipping_transform
    undef_method :clipping_transform
    alias_method :attr_clipping_transform=, :clipping_transform=
    undef_method :clipping_transform=
    
    attr_accessor :string
    alias_method :attr_string, :string
    undef_method :string
    alias_method :attr_string=, :string=
    undef_method :string=
    
    attr_accessor :string_width
    alias_method :attr_string_width, :string_width
    undef_method :string_width
    alias_method :attr_string_width=, :string_width=
    undef_method :string_width=
    
    attr_accessor :string_height
    alias_method :attr_string_height, :string_height
    undef_method :string_height
    alias_method :attr_string_height=, :string_height=
    undef_method :string_height=
    
    attr_accessor :draw_flags
    alias_method :attr_draw_flags, :draw_flags
    undef_method :draw_flags
    alias_method :attr_draw_flags=, :draw_flags=
    undef_method :draw_flags=
    
    attr_accessor :real_drawable
    alias_method :attr_real_drawable, :real_drawable
    undef_method :real_drawable
    alias_method :attr_real_drawable=, :real_drawable=
    undef_method :real_drawable=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    typesig { [] }
    def initialize
      @device = nil
      @style = 0
      @state = -1
      @foreground = nil
      @background = nil
      @font = nil
      @foreground_pattern = nil
      @background_pattern = nil
      @clip_rgn = 0
      @line_width = 0.0
      @line_style = SWT::LINE_SOLID
      @line_dashes = nil
      @line_dashes_offset = 0.0
      @line_miter_limit = 10
      @line_cap = SWT::CAP_FLAT
      @line_join = SWT::JOIN_MITER
      @xor_mode = false
      @alpha = 0xff
      @interpolation = SWT::DEFAULT
      @context = 0
      @layout = 0
      @damage_rgn = 0
      @image = nil
      @drawable = 0
      @cairo = 0
      @cairo_xoffset = 0.0
      @cairo_yoffset = 0.0
      @dispose_cairo = false
      @clipping_transform = nil
      @string = nil
      @string_width = -1
      @string_height = -1
      @draw_flags = 0
      @real_drawable = false
      @width = -1
      @height = -1
    end
    
    private
    alias_method :initialize__gcdata, :initialize
  end
  
end
