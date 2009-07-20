require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CTabFolderLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides the layout for CTabFolder
  # 
  # @see CTabFolder
  class CTabFolderLayout < CTabFolderLayoutImports.const_get :SwtLayout
    include_class_members CTabFolderLayoutImports
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      folder = composite
      items = folder.attr_items
      # preferred width of tab area to show all tabs
      tab_w = 0
      gc = SwtGC.new(folder)
      i = 0
      while i < items.attr_length
        if (folder.attr_single)
          tab_w = Math.max(tab_w, items[i].preferred_width(gc, true, false))
        else
          tab_w += items[i].preferred_width(gc, (i).equal?(folder.attr_selected_index), false)
        end
        i += 1
      end
      gc.dispose
      tab_w += 3
      if (folder.attr_show_max)
        tab_w += CTabFolder::BUTTON_SIZE
      end
      if (folder.attr_show_min)
        tab_w += CTabFolder::BUTTON_SIZE
      end
      if (folder.attr_single)
        tab_w += 3 * CTabFolder::BUTTON_SIZE / 2
      end # chevron
      if (!(folder.attr_top_right).nil?)
        pt = folder.attr_top_right.compute_size(SWT::DEFAULT, folder.attr_tab_height, flush_cache)
        tab_w += 3 + pt.attr_x
      end
      if (!folder.attr_single && !folder.attr_simple)
        tab_w += folder.attr_curve_width - 2 * folder.attr_curve_indent
      end
      control_w = 0
      control_h = 0
      # preferred size of controls in tab items
      i_ = 0
      while i_ < items.attr_length
        control = items[i_].get_control
        if (!(control).nil? && !control.is_disposed)
          size = control.compute_size(w_hint, h_hint, flush_cache)
          control_w = Math.max(control_w, size.attr_x)
          control_h = Math.max(control_h, size.attr_y)
        end
        i_ += 1
      end
      min_width = Math.max(tab_w, control_w)
      min_height = (folder.attr_minimized) ? 0 : control_h
      if ((min_width).equal?(0))
        min_width = CTabFolder::DEFAULT_WIDTH
      end
      if ((min_height).equal?(0))
        min_height = CTabFolder::DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        min_width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        min_height = h_hint
      end
      return Point.new(min_width, min_height)
    end
    
    typesig { [Control] }
    def flush_cache(control)
      return true
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      folder = composite
      # resize content
      if (!(folder.attr_selected_index).equal?(-1))
        control = folder.attr_items[folder.attr_selected_index].get_control
        if (!(control).nil? && !control.is_disposed)
          control.set_bounds(folder.get_client_area)
        end
      end
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__ctab_folder_layout, :initialize
  end
  
end
