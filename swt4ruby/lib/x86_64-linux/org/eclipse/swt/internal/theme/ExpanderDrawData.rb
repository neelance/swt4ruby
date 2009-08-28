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
  module ExpanderDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class ExpanderDrawData < ExpanderDrawDataImports.const_get :DrawData
    include_class_members ExpanderDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      # int
      tree_handle = theme.attr_tree_handle
      # int
      gtk_style = OS.gtk_widget_get_style(tree_handle)
      # int
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      expander_style = OS::GTK_EXPANDER_COLAPSED
      if (!((self.attr_style & SWT::DOWN)).equal?(0))
        expander_style = OS::GTK_EXPANDER_EXPANDED
      end
      detail = Converter.wcs_to_mbcs(nil, "treeview", true)
      expander_size = theme.get_widget_property(tree_handle, "expander-size")
      x = bounds.attr_x + expander_size / 2
      y = bounds.attr_y + expander_size / 2
      OS.gtk_paint_expander(gtk_style, drawable, state_type, nil, tree_handle, detail, x, y, expander_style)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      # int
      tree_handle = theme.attr_tree_handle
      expander_size = theme.get_widget_property(tree_handle, "expander-size")
      if (Rectangle.new(bounds.attr_x, bounds.attr_y, expander_size, expander_size).contains(position))
        return DrawData::WIDGET_WHOLE
      end
      return DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__expander_draw_data, :initialize
  end
  
end
