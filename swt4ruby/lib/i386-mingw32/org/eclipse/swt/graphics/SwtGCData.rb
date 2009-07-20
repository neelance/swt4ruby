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
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    attr_accessor :line_style
    alias_method :attr_line_style, :line_style
    undef_method :line_style
    alias_method :attr_line_style=, :line_style=
    undef_method :line_style=
    
    attr_accessor :line_width
    alias_method :attr_line_width, :line_width
    undef_method :line_width
    alias_method :attr_line_width=, :line_width=
    undef_method :line_width=
    
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
    
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    # long
    attr_accessor :h_pen
    alias_method :attr_h_pen, :h_pen
    undef_method :h_pen
    alias_method :attr_h_pen=, :h_pen=
    undef_method :h_pen=
    
    attr_accessor :h_old_pen
    alias_method :attr_h_old_pen, :h_old_pen
    undef_method :h_old_pen
    alias_method :attr_h_old_pen=, :h_old_pen=
    undef_method :h_old_pen=
    
    # long
    attr_accessor :h_brush
    alias_method :attr_h_brush, :h_brush
    undef_method :h_brush
    alias_method :attr_h_brush=, :h_brush=
    undef_method :h_brush=
    
    attr_accessor :h_old_brush
    alias_method :attr_h_old_brush, :h_old_brush
    undef_method :h_old_brush
    alias_method :attr_h_old_brush=, :h_old_brush=
    undef_method :h_old_brush=
    
    # long
    attr_accessor :h_null_bitmap
    alias_method :attr_h_null_bitmap, :h_null_bitmap
    undef_method :h_null_bitmap
    alias_method :attr_h_null_bitmap=, :h_null_bitmap=
    undef_method :h_null_bitmap=
    
    # long
    attr_accessor :hwnd
    alias_method :attr_hwnd, :hwnd
    undef_method :hwnd
    alias_method :attr_hwnd=, :hwnd=
    undef_method :hwnd=
    
    attr_accessor :ps
    alias_method :attr_ps, :ps
    undef_method :ps
    alias_method :attr_ps=, :ps=
    undef_method :ps=
    
    attr_accessor :layout
    alias_method :attr_layout, :layout
    undef_method :layout
    alias_method :attr_layout=, :layout=
    undef_method :layout=
    
    # long
    attr_accessor :gdip_graphics
    alias_method :attr_gdip_graphics, :gdip_graphics
    undef_method :gdip_graphics
    alias_method :attr_gdip_graphics=, :gdip_graphics=
    undef_method :gdip_graphics=
    
    # long
    attr_accessor :gdip_pen
    alias_method :attr_gdip_pen, :gdip_pen
    undef_method :gdip_pen
    alias_method :attr_gdip_pen=, :gdip_pen=
    undef_method :gdip_pen=
    
    # long
    attr_accessor :gdip_brush
    alias_method :attr_gdip_brush, :gdip_brush
    undef_method :gdip_brush
    alias_method :attr_gdip_brush=, :gdip_brush=
    undef_method :gdip_brush=
    
    # long
    attr_accessor :gdip_fg_brush
    alias_method :attr_gdip_fg_brush, :gdip_fg_brush
    undef_method :gdip_fg_brush
    alias_method :attr_gdip_fg_brush=, :gdip_fg_brush=
    undef_method :gdip_fg_brush=
    
    # long
    attr_accessor :gdip_bg_brush
    alias_method :attr_gdip_bg_brush, :gdip_bg_brush
    undef_method :gdip_bg_brush
    alias_method :attr_gdip_bg_brush=, :gdip_bg_brush=
    undef_method :gdip_bg_brush=
    
    # long
    attr_accessor :gdip_font
    alias_method :attr_gdip_font, :gdip_font
    undef_method :gdip_font
    alias_method :attr_gdip_font=, :gdip_font=
    undef_method :gdip_font=
    
    attr_accessor :gdip_xoffset
    alias_method :attr_gdip_xoffset, :gdip_xoffset
    undef_method :gdip_xoffset
    alias_method :attr_gdip_xoffset=, :gdip_xoffset=
    undef_method :gdip_xoffset=
    
    attr_accessor :gdip_yoffset
    alias_method :attr_gdip_yoffset, :gdip_yoffset
    undef_method :gdip_yoffset
    alias_method :attr_gdip_yoffset=, :gdip_yoffset=
    undef_method :gdip_yoffset=
    
    attr_accessor :ui_state
    alias_method :attr_ui_state, :ui_state
    undef_method :ui_state
    alias_method :attr_ui_state=, :ui_state=
    undef_method :ui_state=
    
    attr_accessor :focus_drawn
    alias_method :attr_focus_drawn, :focus_drawn
    undef_method :focus_drawn
    alias_method :attr_focus_drawn=, :focus_drawn=
    undef_method :focus_drawn=
    
    typesig { [] }
    def initialize
      @device = nil
      @style = 0
      @state = -1
      @foreground = -1
      @background = -1
      @font = nil
      @foreground_pattern = nil
      @background_pattern = nil
      @line_style = SWT::LINE_SOLID
      @line_width = 0.0
      @line_cap = SWT::CAP_FLAT
      @line_join = SWT::JOIN_MITER
      @line_dashes_offset = 0.0
      @line_dashes = nil
      @line_miter_limit = 10
      @alpha = 0xff
      @image = nil
      @h_pen = 0
      @h_old_pen = 0
      @h_brush = 0
      @h_old_brush = 0
      @h_null_bitmap = 0
      @hwnd = 0
      @ps = nil
      @layout = -1
      @gdip_graphics = 0
      @gdip_pen = 0
      @gdip_brush = 0
      @gdip_fg_brush = 0
      @gdip_bg_brush = 0
      @gdip_font = 0
      @gdip_xoffset = 0.0
      @gdip_yoffset = 0.0
      @ui_state = 0
      @focus_drawn = false
    end
    
    private
    alias_method :initialize__gcdata, :initialize
  end
  
end
