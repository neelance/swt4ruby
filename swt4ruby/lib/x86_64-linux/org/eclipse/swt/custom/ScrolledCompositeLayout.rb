require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module ScrolledCompositeLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides the layout for ScrolledComposite
  # 
  # @see ScrolledComposite
  class ScrolledCompositeLayout < ScrolledCompositeLayoutImports.const_get :SwtLayout
    include_class_members ScrolledCompositeLayoutImports
    
    attr_accessor :in_layout
    alias_method :attr_in_layout, :in_layout
    undef_method :in_layout
    alias_method :attr_in_layout=, :in_layout=
    undef_method :in_layout=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
    }
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      sc = composite
      size = Point.new(DEFAULT_WIDTH, DEFAULT_HEIGHT)
      if (!(sc.attr_content).nil?)
        preferred_size = sc.attr_content.compute_size(w_hint, h_hint, flush_cache)
        current_size = sc.attr_content.get_size
        size.attr_x = sc.get_expand_horizontal ? preferred_size.attr_x : current_size.attr_x
        size.attr_y = sc.get_expand_vertical ? preferred_size.attr_y : current_size.attr_y
      end
      size.attr_x = Math.max(size.attr_x, sc.attr_min_width)
      size.attr_y = Math.max(size.attr_y, sc.attr_min_height)
      if (!(w_hint).equal?(SWT::DEFAULT))
        size.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        size.attr_y = h_hint
      end
      return size
    end
    
    typesig { [Control] }
    def flush_cache(control)
      return true
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      if (@in_layout)
        return
      end
      sc = composite
      if ((sc.attr_content).nil?)
        return
      end
      h_bar = sc.get_horizontal_bar
      v_bar = sc.get_vertical_bar
      if (!(h_bar).nil?)
        if (h_bar.get_size.attr_y >= sc.get_size.attr_y)
          return
        end
      end
      if (!(v_bar).nil?)
        if (v_bar.get_size.attr_x >= sc.get_size.attr_x)
          return
        end
      end
      @in_layout = true
      content_rect = sc.attr_content.get_bounds
      if (!sc.attr_always_show_scroll)
        h_visible = sc.need_hscroll(content_rect, false)
        v_visible = sc.need_vscroll(content_rect, h_visible)
        if (!h_visible && v_visible)
          h_visible = sc.need_hscroll(content_rect, v_visible)
        end
        if (!(h_bar).nil?)
          h_bar.set_visible(h_visible)
        end
        if (!(v_bar).nil?)
          v_bar.set_visible(v_visible)
        end
      end
      host_rect = sc.get_client_area
      if (sc.attr_expand_horizontal)
        content_rect.attr_width = Math.max(sc.attr_min_width, host_rect.attr_width)
      end
      if (sc.attr_expand_vertical)
        content_rect.attr_height = Math.max(sc.attr_min_height, host_rect.attr_height)
      end
      if (!(h_bar).nil?)
        h_bar.set_maximum(content_rect.attr_width)
        h_bar.set_thumb(Math.min(content_rect.attr_width, host_rect.attr_width))
        h_page = content_rect.attr_width - host_rect.attr_width
        h_selection = h_bar.get_selection
        if (h_selection >= h_page)
          if (h_page <= 0)
            h_selection = 0
            h_bar.set_selection(0)
          end
          content_rect.attr_x = -h_selection
        end
      end
      if (!(v_bar).nil?)
        v_bar.set_maximum(content_rect.attr_height)
        v_bar.set_thumb(Math.min(content_rect.attr_height, host_rect.attr_height))
        v_page = content_rect.attr_height - host_rect.attr_height
        v_selection = v_bar.get_selection
        if (v_selection >= v_page)
          if (v_page <= 0)
            v_selection = 0
            v_bar.set_selection(0)
          end
          content_rect.attr_y = -v_selection
        end
      end
      sc.attr_content.set_bounds(content_rect)
      @in_layout = false
    end
    
    typesig { [] }
    def initialize
      @in_layout = false
      super()
      @in_layout = false
    end
    
    private
    alias_method :initialize__scrolled_composite_layout, :initialize
  end
  
end
