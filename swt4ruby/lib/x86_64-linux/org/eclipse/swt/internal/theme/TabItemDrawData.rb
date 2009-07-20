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
  module TabItemDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class TabItemDrawData < TabItemDrawDataImports.const_get :DrawData
    include_class_members TabItemDrawDataImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :position
    alias_method :attr_position, :position
    undef_method :position
    alias_method :attr_position=, :position=
    undef_method :position=
    
    class_module.module_eval {
      const_set_lazy(:TAB_CURVATURE) { 1 }
      const_attr_reader  :TAB_CURVATURE
    }
    
    typesig { [] }
    def initialize
      @parent = nil
      @position = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      # int
      notebook_handle = theme.attr_notebook_handle
      # int
      gtk_style = OS.gtk_widget_get_style(notebook_handle)
      hborder = 0
      vborder = 0
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        hborder = theme.get_widget_property(notebook_handle, "tab-hborder")
        vborder = theme.get_widget_property(notebook_handle, "tab-vborder")
      else
        hborder = 2
        vborder = 2
      end
      focus_width = theme.get_widget_property(notebook_handle, "focus-line-width")
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      ythickness = OS.gtk_style_get_ythickness(gtk_style)
      border_x = xthickness + TAB_CURVATURE + focus_width + hborder
      border_y = ythickness + TAB_CURVATURE + focus_width + vborder
      x = self.attr_client_area.attr_x - border_x
      y = self.attr_client_area.attr_y - border_y
      width = self.attr_client_area.attr_width + 2 * border_x
      height = self.attr_client_area.attr_height + 2 * border_y
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      # int
      notebook_handle = theme.attr_notebook_handle
      # int
      gtk_style = OS.gtk_widget_get_style(notebook_handle)
      # int
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      x = bounds.attr_x
      y = bounds.attr_y
      width = bounds.attr_width
      height = bounds.attr_height
      if (((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::SELECTED)).equal?(0))
        if (((@parent.attr_style & SWT::BOTTOM)).equal?(0))
          y += TAB_CURVATURE
        end
        height -= TAB_CURVATURE
      end
      gap_side = OS::GTK_POS_BOTTOM
      if (!((@parent.attr_style & SWT::BOTTOM)).equal?(0))
        gap_side = OS::GTK_POS_TOP
      end
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      detail = Converter.wcs_to_mbcs(nil, "tab", true)
      OS.gtk_paint_extension(gtk_style, drawable, state_type, OS::GTK_SHADOW_OUT, nil, notebook_handle, detail, x, y, width, height, gap_side)
      if (!(self.attr_client_area).nil?)
        hborder = 0
        vborder = 0
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          hborder = theme.get_widget_property(notebook_handle, "tab-hborder")
          vborder = theme.get_widget_property(notebook_handle, "tab-vborder")
        else
          hborder = 2
          vborder = 2
        end
        focus_line_width = theme.get_widget_property(notebook_handle, "focus-line-width")
        xthickness = OS.gtk_style_get_xthickness(gtk_style)
        ythickness = OS.gtk_style_get_ythickness(gtk_style)
        border_x = xthickness + TAB_CURVATURE + focus_line_width + hborder
        border_y = ythickness + TAB_CURVATURE + focus_line_width + vborder
        self.attr_client_area.attr_x = bounds.attr_x + border_x
        self.attr_client_area.attr_y = bounds.attr_y + border_y
        self.attr_client_area.attr_width = bounds.attr_width - 2 * border_x
        self.attr_client_area.attr_height = bounds.attr_height - 2 * border_y
      end
    end
    
    typesig { [::Java::Int] }
    def get_state_type(part)
      state = self.attr_state[part]
      state_type = OS::GTK_STATE_ACTIVE
      if (!((state & DrawData::SELECTED)).equal?(0))
        state_type = OS::GTK_STATE_NORMAL
      end
      return state_type
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__tab_item_draw_data, :initialize
  end
  
end
