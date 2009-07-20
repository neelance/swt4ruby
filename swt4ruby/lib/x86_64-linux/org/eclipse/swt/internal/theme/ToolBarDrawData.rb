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
  module ToolBarDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class ToolBarDrawData < ToolBarDrawDataImports.const_get :DrawData
    include_class_members ToolBarDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      # int
      toolbar_handle = theme.attr_toolbar_handle
      # int
      gtk_style = OS.gtk_widget_get_style(toolbar_handle)
      # int
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      x = bounds.attr_x
      y = bounds.attr_y
      width = bounds.attr_width
      height = bounds.attr_height
      detail = Converter.wcs_to_mbcs(nil, "toolbar", true)
      OS.gtk_paint_box(gtk_style, drawable, get_state_type(DrawData::WIDGET_WHOLE), OS::GTK_SHADOW_NONE, nil, toolbar_handle, detail, x, y, width, height)
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = bounds.attr_x
        self.attr_client_area.attr_y = bounds.attr_y
        self.attr_client_area.attr_width = bounds.attr_width
        self.attr_client_area.attr_height = bounds.attr_height
      end
    end
    
    typesig { [::Java::Int] }
    def get_state_type(part)
      return OS::GTK_STATE_NORMAL
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__tool_bar_draw_data, :initialize
  end
  
end
