require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSBezierPathImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSBezierPath < NSBezierPathImports.const_get :NSObject
    include_class_members NSBezierPathImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    typesig { [] }
    def add_clip
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_clip)
    end
    
    typesig { [NSBezierPath] }
    def append_bezier_path(path)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_, !(path).nil? ? path.attr_id : 0)
    end
    
    typesig { [NSPoint, ::Java::Float, ::Java::Float, ::Java::Float] }
    # double
    # double
    # double
    def append_bezier_path_with_arc_with_center(center, radius, start_angle, end_angle)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_with_arc_with_center_radius_start_angle_end_angle_, center, radius, start_angle, end_angle)
    end
    
    typesig { [NSPoint, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Boolean] }
    # double
    # double
    # double
    def append_bezier_path_with_arc_with_center(center, radius, start_angle, end_angle, clockwise)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_with_arc_with_center_radius_start_angle_end_angle_clockwise_, center, radius, start_angle, end_angle, clockwise)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSFont] }
    # long
    # long
    def append_bezier_path_with_glyphs(glyphs, count, font)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_with_glyphs_count_in_font_, glyphs, count, !(font).nil? ? font.attr_id : 0)
    end
    
    typesig { [NSRect] }
    def append_bezier_path_with_oval_in_rect(rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_with_oval_in_rect_, rect)
    end
    
    typesig { [NSRect] }
    def append_bezier_path_with_rect(rect)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_with_rect_, rect)
    end
    
    typesig { [NSRect, ::Java::Float, ::Java::Float] }
    # double
    # double
    def append_bezier_path_with_rounded_rect(rect, x_radius, y_radius)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_bezier_path_with_rounded_rect_x_radius_y_radius_, rect, x_radius, y_radius)
    end
    
    class_module.module_eval {
      typesig { [] }
      def bezier_path
        # long
        result = OS.objc_msg_send(OS.attr_class_nsbezier_path, OS.attr_sel_bezier_path)
        return !(result).equal?(0) ? NSBezierPath.new(result) : nil
      end
    }
    
    typesig { [] }
    def bezier_path_by_flattening_path
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_bezier_path_by_flattening_path)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSBezierPath.new(result) : nil)
    end
    
    class_module.module_eval {
      typesig { [NSRect] }
      def bezier_path_with_rect(rect)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsbezier_path, OS.attr_sel_bezier_path_with_rect_, rect)
        return !(result).equal?(0) ? NSBezierPath.new(result) : nil
      end
    }
    
    typesig { [] }
    def bounds
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_bounds)
      return result
    end
    
    typesig { [] }
    def close_path
      OS.objc_msg_send(self.attr_id, OS.attr_sel_close_path)
    end
    
    typesig { [NSPoint] }
    def contains_point(point)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_contains_point_, point)
    end
    
    typesig { [] }
    def control_point_bounds
      result = NSRect.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_control_point_bounds)
      return result
    end
    
    typesig { [] }
    def current_point
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_current_point)
      return result
    end
    
    typesig { [NSPoint, NSPoint, NSPoint] }
    def curve_to_point(end_point, control_point1, control_point2)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_curve_to_point_control_point1_control_point2_, end_point, control_point1, control_point2)
    end
    
    class_module.module_eval {
      typesig { [] }
      # double
      def default_flatness
        return (OS.objc_msg_send_fpret(OS.attr_class_nsbezier_path, OS.attr_sel_default_flatness)).to_f
      end
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def element_at_index(index, points)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_element_at_index_associated_points_, index, points)
    end
    
    typesig { [] }
    # long
    def element_count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_element_count)
    end
    
    typesig { [] }
    def fill
      OS.objc_msg_send(self.attr_id, OS.attr_sel_fill)
    end
    
    class_module.module_eval {
      typesig { [NSRect] }
      def fill_rect(rect)
        OS.objc_msg_send(OS.attr_class_nsbezier_path, OS.attr_sel_fill_rect_, rect)
      end
    }
    
    typesig { [] }
    def is_empty
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_empty)
    end
    
    typesig { [NSPoint] }
    def line_to_point(point)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_line_to_point_, point)
    end
    
    typesig { [NSPoint] }
    def move_to_point(point)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_move_to_point_, point)
    end
    
    typesig { [] }
    def remove_all_points
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_all_points)
    end
    
    typesig { [] }
    def set_clip
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_clip)
    end
    
    class_module.module_eval {
      typesig { [::Java::Float] }
      # double
      def set_default_flatness(flatness)
        OS.objc_msg_send(OS.attr_class_nsbezier_path, OS.attr_sel_set_default_flatness_, flatness)
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def set_line_cap_style(line_cap_style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_cap_style_, line_cap_style)
    end
    
    typesig { [Array.typed(::Java::Float), ::Java::Int, ::Java::Float] }
    # double[]
    # long
    # double
    def set_line_dash(pattern, count, phase)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_dash_count_phase_, pattern, count, phase)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_line_join_style(line_join_style)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_join_style_, line_join_style)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_line_width(line_width)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_line_width_, line_width)
    end
    
    typesig { [::Java::Float] }
    # double
    def set_miter_limit(miter_limit)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_miter_limit_, miter_limit)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_winding_rule(winding_rule)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_winding_rule_, winding_rule)
    end
    
    typesig { [] }
    def stroke
      OS.objc_msg_send(self.attr_id, OS.attr_sel_stroke)
    end
    
    class_module.module_eval {
      typesig { [NSRect] }
      def stroke_rect(rect)
        OS.objc_msg_send(OS.attr_class_nsbezier_path, OS.attr_sel_stroke_rect_, rect)
      end
    }
    
    typesig { [NSAffineTransform] }
    def transform_using_affine_transform(transform)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_transform_using_affine_transform_, !(transform).nil? ? transform.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsbezier_path, :initialize
  end
  
end
