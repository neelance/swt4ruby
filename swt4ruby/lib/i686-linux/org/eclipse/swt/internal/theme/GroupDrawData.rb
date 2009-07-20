require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module GroupDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GroupDrawData < GroupDrawDataImports.const_get :DrawData
    include_class_members GroupDrawDataImports
    
    attr_accessor :header_width
    alias_method :attr_header_width, :header_width
    undef_method :header_width
    alias_method :attr_header_width=, :header_width=
    undef_method :header_width=
    
    attr_accessor :header_height
    alias_method :attr_header_height, :header_height
    undef_method :header_height
    alias_method :attr_header_height=, :header_height=
    undef_method :header_height=
    
    attr_accessor :header_area
    alias_method :attr_header_area, :header_area
    undef_method :header_area
    alias_method :attr_header_area=, :header_area=
    undef_method :header_area=
    
    class_module.module_eval {
      const_set_lazy(:GROUP_X) { 2 }
      const_attr_reader  :GROUP_X
      
      const_set_lazy(:GROUP_PAD) { 1 }
      const_attr_reader  :GROUP_PAD
    }
    
    typesig { [] }
    def initialize
      @header_width = 0
      @header_height = 0
      @header_area = nil
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    class_module.module_eval {
      const_set_lazy(:GROUP_HEADER_X) { 9 }
      const_attr_reader  :GROUP_HEADER_X
      
      const_set_lazy(:GROUP_HEADER_PAD) { 2 }
      const_attr_reader  :GROUP_HEADER_PAD
    }
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      # long
      frame_handle = theme.attr_frame_handle
      # long
      gtk_style = OS.gtk_widget_get_style(frame_handle)
      # long
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      ythickness = OS.gtk_style_get_ythickness(gtk_style)
      x = bounds.attr_x
      y = bounds.attr_y + @header_height / 2
      width = bounds.attr_width
      height = bounds.attr_height - @header_height / 2
      detail = Converter.wcs_to_mbcs(nil, "frame", true)
      gap_x = xthickness + GROUP_X
      gap_width = @header_width + GROUP_PAD * 2
      gap_side = OS::GTK_POS_TOP
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      OS.gtk_paint_shadow_gap(gtk_style, drawable, state_type, OS::GTK_SHADOW_ETCHED_IN, nil, frame_handle, detail, x, y, width, height, gap_side, gap_x, gap_width)
      if (!(@header_area).nil?)
        @header_area.attr_x = bounds.attr_x + gap_x + GROUP_PAD
        @header_area.attr_y = bounds.attr_y
        @header_area.attr_width = @header_width
        @header_area.attr_height = @header_height
      end
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = bounds.attr_x + xthickness
        self.attr_client_area.attr_y = bounds.attr_y + ythickness + @header_height
        self.attr_client_area.attr_width = bounds.attr_width - 2 * xthickness
        self.attr_client_area.attr_height = bounds.attr_height - 2 * ythickness - @header_height
      end
    end
    
    typesig { [::Java::Int] }
    def get_state_type(part)
      state = self.attr_state[part]
      state_type = OS::GTK_STATE_NORMAL
      if (!((state & DrawData::DISABLED)).equal?(0))
        state_type = OS::GTK_STATE_INSENSITIVE
      end
      return state_type
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__group_draw_data, :initialize
  end
  
end
