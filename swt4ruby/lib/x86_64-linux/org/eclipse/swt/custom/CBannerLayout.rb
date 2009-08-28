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
  module CBannerLayoutImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides the layout for CBanner
  # 
  # @see CBanner
  class CBannerLayout < CBannerLayoutImports.const_get :SwtLayout
    include_class_members CBannerLayoutImports
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      banner = composite
      left = banner.attr_left
      right = banner.attr_right
      bottom = banner.attr_bottom
      show_curve = !(left).nil? && !(right).nil?
      height = h_hint
      width = w_hint
      # Calculate component sizes
      bottom_size = Point.new(0, 0)
      if (!(bottom).nil?)
        trim = compute_trim(bottom)
        w = (w_hint).equal?(SWT::DEFAULT) ? SWT::DEFAULT : Math.max(0, width - trim)
        bottom_size = compute_child_size(bottom, w, SWT::DEFAULT, flush_cache)
      end
      right_size = Point.new(0, 0)
      if (!(right).nil?)
        trim = compute_trim(right)
        w = SWT::DEFAULT
        if (!(banner.attr_right_width).equal?(SWT::DEFAULT))
          w = banner.attr_right_width - trim
          if (!(left).nil?)
            w = Math.min(w, width - banner.attr_curve_width + 2 * banner.attr_curve_indent - CBanner::MIN_LEFT - trim)
          end
          w = Math.max(0, w)
        end
        right_size = compute_child_size(right, w, SWT::DEFAULT, flush_cache)
        if (!(w_hint).equal?(SWT::DEFAULT))
          width -= right_size.attr_x + banner.attr_curve_width - 2 * banner.attr_curve_indent
        end
      end
      left_size = Point.new(0, 0)
      if (!(left).nil?)
        trim = compute_trim(left)
        w = (w_hint).equal?(SWT::DEFAULT) ? SWT::DEFAULT : Math.max(0, width - trim)
        left_size = compute_child_size(left, w, SWT::DEFAULT, flush_cache)
      end
      # Add up sizes
      width = left_size.attr_x + right_size.attr_x
      height = bottom_size.attr_y
      if (!(bottom).nil? && (!(left).nil? || !(right).nil?))
        height += CBanner::BORDER_STRIPE + 2
      end
      if (!(left).nil?)
        if ((right).nil?)
          height += left_size.attr_y
        else
          height += Math.max(left_size.attr_y, (banner.attr_right_min_height).equal?(SWT::DEFAULT) ? right_size.attr_y : banner.attr_right_min_height)
        end
      else
        height += right_size.attr_y
      end
      if (show_curve)
        width += banner.attr_curve_width - 2 * banner.attr_curve_indent
        height += CBanner::BORDER_TOP + CBanner::BORDER_BOTTOM + 2 * CBanner::BORDER_STRIPE
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
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
      banner = composite
      left = banner.attr_left
      right = banner.attr_right
      bottom = banner.attr_bottom
      size = banner.get_size
      show_curve = !(left).nil? && !(right).nil?
      width = size.attr_x - 2 * banner.get_border_width
      height = size.attr_y - 2 * banner.get_border_width
      bottom_size = Point.new(0, 0)
      if (!(bottom).nil?)
        trim = compute_trim(bottom)
        w = Math.max(0, width - trim)
        bottom_size = compute_child_size(bottom, w, SWT::DEFAULT, flush_cache)
        height -= bottom_size.attr_y + CBanner::BORDER_STRIPE + 2
      end
      if (show_curve)
        height -= CBanner::BORDER_TOP + CBanner::BORDER_BOTTOM + 2 * CBanner::BORDER_STRIPE
      end
      height = Math.max(0, height)
      right_size = Point.new(0, 0)
      if (!(right).nil?)
        trim = compute_trim(right)
        w = SWT::DEFAULT
        if (!(banner.attr_right_width).equal?(SWT::DEFAULT))
          w = banner.attr_right_width - trim
          if (!(left).nil?)
            w = Math.min(w, width - banner.attr_curve_width + 2 * banner.attr_curve_indent - CBanner::MIN_LEFT - trim)
          end
          w = Math.max(0, w)
        end
        right_size = compute_child_size(right, w, SWT::DEFAULT, flush_cache)
        width = width - (right_size.attr_x - banner.attr_curve_indent + banner.attr_curve_width - banner.attr_curve_indent)
      end
      left_size = Point.new(0, 0)
      if (!(left).nil?)
        trim = compute_trim(left)
        w = Math.max(0, width - trim)
        left_size = compute_child_size(left, w, SWT::DEFAULT, flush_cache)
      end
      x = 0
      y = 0
      old_start = banner.attr_curve_start
      left_rect = nil
      right_rect = nil
      bottom_rect = nil
      if (!(bottom).nil?)
        bottom_rect = Rectangle.new(x, y + size.attr_y - bottom_size.attr_y, bottom_size.attr_x, bottom_size.attr_y)
      end
      if (show_curve)
        y += CBanner::BORDER_TOP + CBanner::BORDER_STRIPE
      end
      if (!(left).nil?)
        left_rect = Rectangle.new(x, y, left_size.attr_x, left_size.attr_y)
        banner.attr_curve_start = x + left_size.attr_x - banner.attr_curve_indent
        x += left_size.attr_x - banner.attr_curve_indent + banner.attr_curve_width - banner.attr_curve_indent
      end
      if (!(right).nil?)
        if (!(left).nil?)
          right_size.attr_y = Math.max(left_size.attr_y, (banner.attr_right_min_height).equal?(SWT::DEFAULT) ? right_size.attr_y : banner.attr_right_min_height)
        end
        right_rect = Rectangle.new(x, y, right_size.attr_x, right_size.attr_y)
      end
      if (banner.attr_curve_start < old_start)
        banner.redraw(banner.attr_curve_start - CBanner::CURVE_TAIL, 0, old_start + banner.attr_curve_width - banner.attr_curve_start + CBanner::CURVE_TAIL + 5, size.attr_y, false)
      end
      if (banner.attr_curve_start > old_start)
        banner.redraw(old_start - CBanner::CURVE_TAIL, 0, banner.attr_curve_start + banner.attr_curve_width - old_start + CBanner::CURVE_TAIL + 5, size.attr_y, false)
      end
      # The paint events must be flushed in order to make the curve draw smoothly
      # while the user drags the divider.
      # On Windows, it is necessary to flush the paints before the children are
      # resized because otherwise the children (particularly toolbars) will flash.
      banner.update
      banner.attr_curve_rect = Rectangle.new(banner.attr_curve_start, 0, banner.attr_curve_width, size.attr_y)
      if (!(bottom_rect).nil?)
        bottom.set_bounds(bottom_rect)
      end
      if (!(right_rect).nil?)
        right.set_bounds(right_rect)
      end
      if (!(left_rect).nil?)
        left.set_bounds(left_rect)
      end
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__cbanner_layout, :initialize
  end
  
end
