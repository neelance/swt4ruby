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
  module ProgressBarDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class ProgressBarDrawData < ProgressBarDrawDataImports.const_get :RangeDrawData
    include_class_members ProgressBarDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      # long
      progress_handle = theme.attr_progress_handle
      # long
      gtk_style = OS.gtk_widget_get_style(progress_handle)
      # long
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      detail = Converter.wcs_to_mbcs(nil, "trough", true)
      x = bounds.attr_x
      y = bounds.attr_y
      width = bounds.attr_width
      height = bounds.attr_height
      OS.gtk_paint_box(gtk_style, drawable, get_state_type(DrawData::WIDGET_WHOLE), OS::GTK_SHADOW_IN, nil, progress_handle, detail, x, y, width, height)
      xthichness = OS.gtk_style_get_xthickness(gtk_style)
      ythichness = OS.gtk_style_get_ythickness(gtk_style)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        OS.gtk_progress_bar_set_orientation(progress_handle, OS::GTK_PROGRESS_BOTTOM_TO_TOP)
        x += xthichness
        width -= xthichness * 2
        height -= ythichness * 2
        height *= self.attr_selection / (Math.max(1, (self.attr_maximum - self.attr_minimum))).to_f
        y += bounds.attr_height - ythichness - height
      else
        OS.gtk_progress_bar_set_orientation(progress_handle, OS::GTK_PROGRESS_LEFT_TO_RIGHT)
        x += xthichness
        y += ythichness
        width -= xthichness * 2
        height -= ythichness * 2
        width *= self.attr_selection / (Math.max(1, self.attr_maximum - self.attr_minimum)).to_f
      end
      detail = Converter.wcs_to_mbcs(nil, "bar", true)
      OS.gtk_paint_box(gtk_style, drawable, OS::GTK_STATE_PRELIGHT, OS::GTK_SHADOW_OUT, nil, progress_handle, detail, x, y, width, height)
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
    alias_method :initialize__progress_bar_draw_data, :initialize
  end
  
end
