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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    # double
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    # double
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
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
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
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
    
    attr_accessor :line_dashes_offset
    alias_method :attr_line_dashes_offset, :line_dashes_offset
    undef_method :line_dashes_offset
    alias_method :attr_line_dashes_offset=, :line_dashes_offset=
    undef_method :line_dashes_offset=
    
    attr_accessor :line_dashes
    alias_method :attr_line_dashes, :line_dashes
    undef_method :line_dashes
    alias_method :attr_line_dashes=, :line_dashes=
    undef_method :line_dashes=
    
    attr_accessor :line_miter_limit
    alias_method :attr_line_miter_limit, :line_miter_limit
    undef_method :line_miter_limit
    alias_method :attr_line_miter_limit=, :line_miter_limit=
    undef_method :line_miter_limit=
    
    attr_accessor :xor_mode
    alias_method :attr_xor_mode, :xor_mode
    undef_method :xor_mode
    alias_method :attr_xor_mode=, :xor_mode=
    undef_method :xor_mode=
    
    attr_accessor :antialias
    alias_method :attr_antialias, :antialias
    undef_method :antialias
    alias_method :attr_antialias=, :antialias=
    undef_method :antialias=
    
    attr_accessor :text_antialias
    alias_method :attr_text_antialias, :text_antialias
    undef_method :text_antialias
    alias_method :attr_text_antialias=, :text_antialias=
    undef_method :text_antialias=
    
    attr_accessor :fill_rule
    alias_method :attr_fill_rule, :fill_rule
    undef_method :fill_rule
    alias_method :attr_fill_rule=, :fill_rule=
    undef_method :fill_rule=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :fg
    alias_method :attr_fg, :fg
    undef_method :fg
    alias_method :attr_fg=, :fg=
    undef_method :fg=
    
    attr_accessor :bg
    alias_method :attr_bg, :bg
    undef_method :bg
    alias_method :attr_bg=, :bg=
    undef_method :bg=
    
    # double
    attr_accessor :draw_xoffset
    alias_method :attr_draw_xoffset, :draw_xoffset
    undef_method :draw_xoffset
    alias_method :attr_draw_xoffset=, :draw_xoffset=
    undef_method :draw_xoffset=
    
    attr_accessor :draw_yoffset
    alias_method :attr_draw_yoffset, :draw_yoffset
    undef_method :draw_yoffset
    alias_method :attr_draw_yoffset=, :draw_yoffset=
    undef_method :draw_yoffset=
    
    attr_accessor :paint_rect
    alias_method :attr_paint_rect, :paint_rect
    undef_method :paint_rect
    alias_method :attr_paint_rect=, :paint_rect=
    undef_method :paint_rect=
    
    attr_accessor :path
    alias_method :attr_path, :path
    undef_method :path
    alias_method :attr_path=, :path=
    undef_method :path=
    
    attr_accessor :transform
    alias_method :attr_transform, :transform
    undef_method :transform
    alias_method :attr_transform=, :transform=
    undef_method :transform=
    
    attr_accessor :inverse_transform
    alias_method :attr_inverse_transform, :inverse_transform
    undef_method :inverse_transform
    alias_method :attr_inverse_transform=, :inverse_transform=
    undef_method :inverse_transform=
    
    attr_accessor :clip_path
    alias_method :attr_clip_path, :clip_path
    undef_method :clip_path
    alias_method :attr_clip_path=, :clip_path=
    undef_method :clip_path=
    
    attr_accessor :visible_path
    alias_method :attr_visible_path, :visible_path
    undef_method :visible_path
    alias_method :attr_visible_path=, :visible_path=
    undef_method :visible_path=
    
    # long
    attr_accessor :visible_rgn
    alias_method :attr_visible_rgn, :visible_rgn
    undef_method :visible_rgn
    alias_method :attr_visible_rgn=, :visible_rgn=
    undef_method :visible_rgn=
    
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    attr_accessor :thread
    alias_method :attr_thread, :thread
    undef_method :thread
    alias_method :attr_thread=, :thread=
    undef_method :thread=
    
    attr_accessor :flipped_context
    alias_method :attr_flipped_context, :flipped_context
    undef_method :flipped_context
    alias_method :attr_flipped_context=, :flipped_context=
    undef_method :flipped_context=
    
    attr_accessor :restore_context
    alias_method :attr_restore_context, :restore_context
    undef_method :restore_context
    alias_method :attr_restore_context=, :restore_context=
    undef_method :restore_context=
    
    typesig { [] }
    def initialize
      @device = nil
      @style = 0
      @state = -1
      @foreground = nil
      @background = nil
      @foreground_pattern = nil
      @background_pattern = nil
      @font = nil
      @alpha = 0xff
      @line_width = 0.0
      @line_style = SWT::LINE_SOLID
      @line_cap = SWT::CAP_FLAT
      @line_join = SWT::JOIN_MITER
      @line_dashes_offset = 0.0
      @line_dashes = nil
      @line_miter_limit = 10
      @xor_mode = false
      @antialias = SWT::DEFAULT
      @text_antialias = SWT::DEFAULT
      @fill_rule = SWT::FILL_EVEN_ODD
      @image = nil
      @fg = nil
      @bg = nil
      @draw_xoffset = 0.0
      @draw_yoffset = 0.0
      @paint_rect = nil
      @path = nil
      @transform = nil
      @inverse_transform = nil
      @clip_path = nil
      @visible_path = nil
      @visible_rgn = 0
      @view = nil
      @size = nil
      @thread = nil
      @flipped_context = nil
      @restore_context = false
    end
    
    private
    alias_method :initialize__gcdata, :initialize
  end
  
end
