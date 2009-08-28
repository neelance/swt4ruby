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
  module ViewFormLayoutImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides the layout for ViewForm
  # 
  # @see ViewForm
  class ViewFormLayout < ViewFormLayoutImports.const_get :SwtLayout
    include_class_members ViewFormLayoutImports
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      form = composite
      left = form.attr_top_left
      center = form.attr_top_center
      right = form.attr_top_right
      content = form.attr_content
      left_size = Point.new(0, 0)
      if (!(left).nil?)
        left_size = compute_child_size(left, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
      end
      center_size = Point.new(0, 0)
      if (!(center).nil?)
        center_size = compute_child_size(center, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
      end
      right_size = Point.new(0, 0)
      if (!(right).nil?)
        right_size = compute_child_size(right, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
      end
      size = Point.new(0, 0)
      # calculate width of title bar
      if (form.attr_separate_top_center || (!(w_hint).equal?(SWT::DEFAULT) && left_size.attr_x + center_size.attr_x + right_size.attr_x > w_hint))
        size.attr_x = left_size.attr_x + right_size.attr_x
        if (left_size.attr_x > 0 && right_size.attr_x > 0)
          size.attr_x += form.attr_horizontal_spacing
        end
        size.attr_x = Math.max(center_size.attr_x, size.attr_x)
        size.attr_y = Math.max(left_size.attr_y, right_size.attr_y)
        if (!(center).nil?)
          size.attr_y += center_size.attr_y
          if (!(left).nil? || !(right).nil?)
            size.attr_y += form.attr_vertical_spacing
          end
        end
      else
        size.attr_x = left_size.attr_x + center_size.attr_x + right_size.attr_x
        count = -1
        if (left_size.attr_x > 0)
          count += 1
        end
        if (center_size.attr_x > 0)
          count += 1
        end
        if (right_size.attr_x > 0)
          count += 1
        end
        if (count > 0)
          size.attr_x += count * form.attr_horizontal_spacing
        end
        size.attr_y = Math.max(left_size.attr_y, Math.max(center_size.attr_y, right_size.attr_y))
      end
      if (!(content).nil?)
        if (!(left).nil? || !(right).nil? || !(center).nil?)
          size.attr_y += 1
        end # allow space for a vertical separator
        content_size = Point.new(0, 0)
        content_size = compute_child_size(content, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
        size.attr_x = Math.max(size.attr_x, content_size.attr_x)
        size.attr_y += content_size.attr_y
        if (size.attr_y > content_size.attr_y)
          size.attr_y += form.attr_vertical_spacing
        end
      end
      size.attr_x += 2 * form.attr_margin_width
      size.attr_y += 2 * form.attr_margin_height
      if (!(w_hint).equal?(SWT::DEFAULT))
        size.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        size.attr_y = h_hint
      end
      return size
    end
    
    typesig { [Control, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_child_size(control, w_hint, h_hint, flush_cache)
      data = control.get_layout_data
      if ((data).nil? || !(data.is_a?(CLayoutData)))
        data = CLayoutData.new
        control.set_layout_data(data)
      end
      return (data).compute_size(control, w_hint, h_hint, flush_cache)
    end
    
    typesig { [Control] }
    def compute_trim(c)
      if (c.is_a?(Scrollable))
        rect = (c).compute_trim(0, 0, 0, 0)
        return rect.attr_width
      end
      return c.get_border_width * 2
    end
    
    typesig { [Control] }
    def flush_cache(control)
      data = control.get_layout_data
      if (!(data).nil? && data.is_a?(CLayoutData))
        (data).flush_cache
      end
      return true
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      form = composite
      left = form.attr_top_left
      center = form.attr_top_center
      right = form.attr_top_right
      content = form.attr_content
      rect = composite.get_client_area
      left_size = Point.new(0, 0)
      if (!(left).nil? && !left.is_disposed)
        left_size = compute_child_size(left, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
      end
      center_size = Point.new(0, 0)
      if (!(center).nil? && !center.is_disposed)
        center_size = compute_child_size(center, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
      end
      right_size = Point.new(0, 0)
      if (!(right).nil? && !right.is_disposed)
        right_size = compute_child_size(right, SWT::DEFAULT, SWT::DEFAULT, flush_cache)
      end
      min_top_width = left_size.attr_x + center_size.attr_x + right_size.attr_x + 2 * form.attr_margin_width + 2 * form.attr_highlight
      count = -1
      if (left_size.attr_x > 0)
        count += 1
      end
      if (center_size.attr_x > 0)
        count += 1
      end
      if (right_size.attr_x > 0)
        count += 1
      end
      if (count > 0)
        min_top_width += count * form.attr_horizontal_spacing
      end
      x = rect.attr_x + rect.attr_width - form.attr_margin_width - form.attr_highlight
      y = rect.attr_y + form.attr_margin_height + form.attr_highlight
      top = false
      if (form.attr_separate_top_center || min_top_width > rect.attr_width)
        top_height = Math.max(right_size.attr_y, left_size.attr_y)
        if (!(right).nil? && !right.is_disposed)
          top = true
          x -= right_size.attr_x
          right.set_bounds(x, y, right_size.attr_x, top_height)
          x -= form.attr_horizontal_spacing
        end
        if (!(left).nil? && !left.is_disposed)
          top = true
          trim = compute_trim(left)
          left_w = x - rect.attr_x - form.attr_margin_width - form.attr_highlight - trim
          left_size = compute_child_size(left, left_w, SWT::DEFAULT, false)
          left.set_bounds(rect.attr_x + form.attr_margin_width + form.attr_highlight, y, left_size.attr_x, top_height)
        end
        if (top)
          y += top_height + form.attr_vertical_spacing
        end
        if (!(center).nil? && !center.is_disposed)
          top = true
          trim = compute_trim(center)
          w = rect.attr_width - 2 * form.attr_margin_width - 2 * form.attr_highlight - trim
          center_size = compute_child_size(center, w, SWT::DEFAULT, false)
          center.set_bounds(rect.attr_x + rect.attr_width - form.attr_margin_width - form.attr_highlight - center_size.attr_x, y, center_size.attr_x, center_size.attr_y)
          y += center_size.attr_y + form.attr_vertical_spacing
        end
      else
        top_height = Math.max(right_size.attr_y, Math.max(center_size.attr_y, left_size.attr_y))
        if (!(right).nil? && !right.is_disposed)
          top = true
          x -= right_size.attr_x
          right.set_bounds(x, y, right_size.attr_x, top_height)
          x -= form.attr_horizontal_spacing
        end
        if (!(center).nil? && !center.is_disposed)
          top = true
          x -= center_size.attr_x
          center.set_bounds(x, y, center_size.attr_x, top_height)
          x -= form.attr_horizontal_spacing
        end
        if (!(left).nil? && !left.is_disposed)
          top = true
          trim = left.is_a?(Composite) ? (left).compute_trim(0, 0, 0, 0) : Rectangle.new(0, 0, 0, 0)
          w = x - rect.attr_x - form.attr_margin_width - form.attr_highlight - trim.attr_width
          h = top_height - trim.attr_height
          left_size = compute_child_size(left, w, h, false)
          left.set_bounds(rect.attr_x + form.attr_margin_width + form.attr_highlight, y, left_size.attr_x, top_height)
        end
        if (top)
          y += top_height + form.attr_vertical_spacing
        end
      end
      old_seperator = form.attr_separator
      form.attr_separator = -1
      if (!(content).nil? && !content.is_disposed)
        if (!(left).nil? || !(right).nil? || !(center).nil?)
          form.attr_separator = y
          y += 1
        end
        content.set_bounds(rect.attr_x + form.attr_margin_width + form.attr_highlight, y, rect.attr_width - 2 * form.attr_margin_width - 2 * form.attr_highlight, rect.attr_y + rect.attr_height - y - form.attr_margin_height - form.attr_highlight)
      end
      if (!(old_seperator).equal?(-1) && !(form.attr_separator).equal?(-1))
        t = Math.min(form.attr_separator, old_seperator)
        b = Math.max(form.attr_separator, old_seperator)
        form.redraw(form.attr_border_left, t, form.get_size.attr_x - form.attr_border_left - form.attr_border_right, b - t, false)
      end
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__view_form_layout, :initialize
  end
  
end
