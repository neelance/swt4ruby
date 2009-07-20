require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module GCDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
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
    
    attr_accessor :clipping_transform
    alias_method :attr_clipping_transform, :clipping_transform
    undef_method :clipping_transform
    alias_method :attr_clipping_transform=, :clipping_transform=
    undef_method :clipping_transform=
    
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
    
    attr_accessor :fore_pattern
    alias_method :attr_fore_pattern, :fore_pattern
    undef_method :fore_pattern
    alias_method :attr_fore_pattern=, :fore_pattern=
    undef_method :fore_pattern=
    
    attr_accessor :back_pattern
    alias_method :attr_back_pattern, :back_pattern
    undef_method :back_pattern
    alias_method :attr_back_pattern=, :back_pattern=
    undef_method :back_pattern=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :font_ascent
    alias_method :attr_font_ascent, :font_ascent
    undef_method :font_ascent
    alias_method :attr_font_ascent=, :font_ascent=
    undef_method :font_ascent=
    
    attr_accessor :font_descent
    alias_method :attr_font_descent, :font_descent
    undef_method :font_descent
    alias_method :attr_font_descent=, :font_descent=
    undef_method :font_descent=
    
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    attr_accessor :atsui_style
    alias_method :attr_atsui_style, :atsui_style
    undef_method :atsui_style
    alias_method :attr_atsui_style=, :atsui_style=
    undef_method :atsui_style=
    
    attr_accessor :tabs
    alias_method :attr_tabs, :tabs
    undef_method :tabs
    alias_method :attr_tabs=, :tabs=
    undef_method :tabs=
    
    attr_accessor :string
    alias_method :attr_string, :string
    undef_method :string
    alias_method :attr_string=, :string=
    undef_method :string=
    
    attr_accessor :string_length
    alias_method :attr_string_length, :string_length
    undef_method :string_length
    alias_method :attr_string_length=, :string_length=
    undef_method :string_length=
    
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
    
    attr_accessor :string_ptr
    alias_method :attr_string_ptr, :string_ptr
    undef_method :string_ptr
    alias_method :attr_string_ptr=, :string_ptr=
    undef_method :string_ptr=
    
    attr_accessor :thread
    alias_method :attr_thread, :thread
    undef_method :thread
    alias_method :attr_thread=, :thread=
    undef_method :thread=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :paint_event
    alias_method :attr_paint_event, :paint_event
    undef_method :paint_event
    alias_method :attr_paint_event=, :paint_event=
    undef_method :paint_event=
    
    attr_accessor :visible_rgn
    alias_method :attr_visible_rgn, :visible_rgn
    undef_method :visible_rgn
    alias_method :attr_visible_rgn=, :visible_rgn=
    undef_method :visible_rgn=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :port
    alias_method :attr_port, :port
    undef_method :port
    alias_method :attr_port=, :port=
    undef_method :port=
    
    attr_accessor :port_rect
    alias_method :attr_port_rect, :port_rect
    undef_method :port_rect
    alias_method :attr_port_rect=, :port_rect=
    undef_method :port_rect=
    
    attr_accessor :control_rect
    alias_method :attr_control_rect, :control_rect
    undef_method :control_rect
    alias_method :attr_control_rect=, :control_rect=
    undef_method :control_rect=
    
    attr_accessor :inset_rect
    alias_method :attr_inset_rect, :inset_rect
    undef_method :inset_rect
    alias_method :attr_inset_rect=, :inset_rect=
    undef_method :inset_rect=
    
    attr_accessor :update_clip
    alias_method :attr_update_clip, :update_clip
    undef_method :update_clip
    alias_method :attr_update_clip=, :update_clip=
    undef_method :update_clip=
    
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
      @transform = nil
      @inverse_transform = nil
      @clipping_transform = nil
      @clip_rgn = 0
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
      @draw_xoffset = 0.0
      @draw_yoffset = 0.0
      @fore_pattern = 0
      @back_pattern = 0
      @image = nil
      @font_ascent = 0
      @font_descent = 0
      @layout = 0
      @atsui_style = 0
      @tabs = 0
      @string = nil
      @string_length = 0
      @string_width = -1
      @string_height = -1
      @draw_flags = 0
      @string_ptr = 0
      @thread = nil
      @window = 0
      @paint_event = 0
      @visible_rgn = 0
      @control = 0
      @port = 0
      @port_rect = nil
      @control_rect = nil
      @inset_rect = nil
      @update_clip = false
    end
    
    private
    alias_method :initialize__gcdata, :initialize
  end
  
end
