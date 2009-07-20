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
  module TabFolderDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class TabFolderDrawData < TabFolderDrawDataImports.const_get :DrawData
    include_class_members TabFolderDrawDataImports
    
    attr_accessor :tabs_width
    alias_method :attr_tabs_width, :tabs_width
    undef_method :tabs_width
    alias_method :attr_tabs_width=, :tabs_width=
    undef_method :tabs_width=
    
    attr_accessor :tabs_height
    alias_method :attr_tabs_height, :tabs_height
    undef_method :tabs_height
    alias_method :attr_tabs_height=, :tabs_height=
    undef_method :tabs_height=
    
    attr_accessor :tabs_area
    alias_method :attr_tabs_area, :tabs_area
    undef_method :tabs_area
    alias_method :attr_tabs_area=, :tabs_area=
    undef_method :tabs_area=
    
    attr_accessor :selected_x
    alias_method :attr_selected_x, :selected_x
    undef_method :selected_x
    alias_method :attr_selected_x=, :selected_x=
    undef_method :selected_x=
    
    attr_accessor :selected_width
    alias_method :attr_selected_width, :selected_width
    undef_method :selected_width
    alias_method :attr_selected_width=, :selected_width=
    undef_method :selected_width=
    
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
    typesig { [] }
    def initialize
      @tabs_width = 0
      @tabs_height = 0
      @tabs_area = nil
      @selected_x = 0
      @selected_width = 0
      @spacing = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
      if ((SWT.get_platform == "gtk"))
        @spacing = -2
      end
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
      height -= @tabs_height
      gap_x = @selected_x
      gap_width = @selected_width
      gap_side = OS::GTK_POS_TOP
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        gap_side = OS::GTK_POS_BOTTOM
      else
        y += @tabs_height
      end
      detail = Converter.wcs_to_mbcs(nil, "notebook", true)
      OS.gtk_paint_box_gap(gtk_style, drawable, get_state_type(DrawData::WIDGET_WHOLE), OS::GTK_SHADOW_OUT, nil, notebook_handle, detail, x, y, width, height, gap_side, gap_x, gap_width)
      if (!(@tabs_area).nil?)
        @tabs_area.attr_x = bounds.attr_x
        @tabs_area.attr_y = bounds.attr_y
        @tabs_area.attr_width = bounds.attr_width
        @tabs_area.attr_height = @tabs_height
        if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
          @tabs_area.attr_y += bounds.attr_height - @tabs_height
        end
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
    alias_method :initialize__tab_folder_draw_data, :initialize
  end
  
end
