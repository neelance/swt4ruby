require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module PathImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class represent paths through the two-dimensional
  # coordinate system. Paths do not have to be continuous, and can be
  # described using lines, rectangles, arcs, cubic or quadratic bezier curves,
  # glyphs, or other paths.
  # <p>
  # Application code must explicitly invoke the <code>Path.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # <p>
  # This class requires the operating system's advanced graphics subsystem
  # which may not be available on some platforms.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#path">Path, Pattern snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: GraphicsExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  class Path < PathImports.const_get :Resource
    include_class_members PathImports
    
    # the OS resource for the Path
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :moved
    alias_method :attr_moved, :moved
    undef_method :moved
    alias_method :attr_moved=, :moved=
    undef_method :moved=
    
    attr_accessor :closed
    alias_method :attr_closed, :closed
    undef_method :closed
    alias_method :attr_closed=, :closed=
    undef_method :closed=
    
    typesig { [Device] }
    # Constructs a new empty Path.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the path
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the device is null and there is no current device</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the path could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device)
      @handle = 0
      @moved = false
      @closed = false
      @origin_x = 0.0
      @origin_y = 0.0
      @point = nil
      @first = false
      @element = nil
      @count = 0
      @type_count = 0
      @types = nil
      @points = nil
      super(device)
      @closed = true
      @point = Array.typed(::Java::Float).new(2) { 0.0 }
      @handle = OS._cgpath_create_mutable
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [Device, Path, ::Java::Float] }
    # Constructs a new Path that is a copy of <code>path</code>. If
    # <code>flatness</code> is less than or equal to zero, an unflatten
    # copy of the path is created. Otherwise, it specifies the maximum
    # error between the path and its flatten copy. Smaller numbers give
    # better approximation.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the path
    # @param path the path to make a copy
    # @param flatness the flatness value
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the path is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the path has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the path could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    # @since 3.4
    def initialize(device, path, flatness)
      @handle = 0
      @moved = false
      @closed = false
      @origin_x = 0.0
      @origin_y = 0.0
      @point = nil
      @first = false
      @element = nil
      @count = 0
      @type_count = 0
      @types = nil
      @points = nil
      super(device)
      @closed = true
      @point = Array.typed(::Java::Float).new(2) { 0.0 }
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (path.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      flatness = Math.max(0, flatness)
      if ((flatness).equal?(0))
        @handle = OS._cgpath_create_mutable_copy(path.attr_handle)
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
      else
        @handle = OS._cgpath_create_mutable
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        data = path.get_path_data
        bezier_path = Cocoa.objc_msg_send(Cocoa::C_NSBezierPath, Cocoa::S_bezierPath)
        types = data.attr_types
        points = data.attr_points
        point = NSPoint.new
        point2 = NSPoint.new
        point3 = NSPoint.new
        i = 0
        j = 0
        while i < types.attr_length
          case (types[i])
          when SWT::PATH_MOVE_TO
            point.attr_x = points[((j += 1) - 1)]
            point.attr_y = points[((j += 1) - 1)]
            Cocoa.objc_msg_send(bezier_path, Cocoa::S_moveToPoint, point)
          when SWT::PATH_LINE_TO
            point.attr_x = points[((j += 1) - 1)]
            point.attr_y = points[((j += 1) - 1)]
            Cocoa.objc_msg_send(bezier_path, Cocoa::S_lineToPoint, point)
          when SWT::PATH_CUBIC_TO
            point2.attr_x = points[((j += 1) - 1)]
            point2.attr_y = points[((j += 1) - 1)]
            point3.attr_x = points[((j += 1) - 1)]
            point3.attr_y = points[((j += 1) - 1)]
            point.attr_x = points[((j += 1) - 1)]
            point.attr_y = points[((j += 1) - 1)]
            Cocoa.objc_msg_send(bezier_path, Cocoa::S_curveToPoint, point, point2, point3)
          when SWT::PATH_QUAD_TO
            current_x = point.attr_x
            current_y = point.attr_y
            point2.attr_x = points[((j += 1) - 1)]
            point2.attr_y = points[((j += 1) - 1)]
            point.attr_x = points[((j += 1) - 1)]
            point.attr_y = points[((j += 1) - 1)]
            x0 = current_x
            y0 = current_y
            cx1 = x0 + 2 * (point2.attr_x - x0) / 3
            cy1 = y0 + 2 * (point2.attr_y - y0) / 3
            cx2 = cx1 + (point.attr_x - x0) / 3
            cy2 = cy1 + (point.attr_y - y0) / 3
            point2.attr_x = cx1
            point2.attr_y = cy1
            point3.attr_x = cx2
            point3.attr_y = cy2
            Cocoa.objc_msg_send(bezier_path, Cocoa::S_curveToPoint, point, point2, point3)
          when SWT::PATH_CLOSE
            Cocoa.objc_msg_send(bezier_path, Cocoa::S_closePath)
          else
            dispose
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          i += 1
        end
        Cocoa.objc_msg_send(Cocoa::C_NSBezierPath, Cocoa::S_setDefaultFlatness, flatness)
        bezier_path = Cocoa.objc_msg_send(bezier_path, Cocoa::S_bezierPathByFlatteningPath)
        count = Cocoa.objc_msg_send(bezier_path, Cocoa::S_elementCount)
        points_ptr = OS.malloc(NSPoint.attr_sizeof * 3)
        if ((points_ptr).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        i_ = 0
        while i_ < count
          element = Cocoa.objc_msg_send(bezier_path, Cocoa::S_elementAtIndex_associatedPoints, i_, points_ptr)
          case (element)
          when Cocoa::NSMoveToBezierPathElement
            Cocoa.memmove(point, points_ptr, NSPoint.attr_sizeof)
            move_to(point.attr_x, point.attr_y)
          when Cocoa::NSLineToBezierPathElement
            Cocoa.memmove(point, points_ptr, NSPoint.attr_sizeof)
            line_to(point.attr_x, point.attr_y)
          when Cocoa::NSCurveToBezierPathElement
            Cocoa.memmove(point, points_ptr, NSPoint.attr_sizeof)
            Cocoa.memmove(point2, points_ptr + NSPoint.attr_sizeof, NSPoint.attr_sizeof)
            Cocoa.memmove(point3, points_ptr + NSPoint.attr_sizeof + NSPoint.attr_sizeof, NSPoint.attr_sizeof)
            cubic_to(point2.attr_x, point2.attr_y, point3.attr_x, point3.attr_y, point.attr_x, point.attr_y)
          when Cocoa::NSClosePathBezierPathElement
            close
          end
          i_ += 1
        end
        OS.free(points_ptr)
      end
      init
    end
    
    typesig { [Device, PathData] }
    # Constructs a new Path with the specifed PathData.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the path
    # @param data the data for the path
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the data is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the path could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    # @since 3.4
    def initialize(device, data)
      initialize__path(device)
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(data)
    end
    
    typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
    # Adds to the receiver a circular or elliptical arc that lies within
    # the specified rectangular area.
    # <p>
    # The resulting arc begins at <code>startAngle</code> and extends
    # for <code>arcAngle</code> degrees.
    # Angles are interpreted such that 0 degrees is at the 3 o'clock
    # position. A positive value indicates a counter-clockwise rotation
    # while a negative value indicates a clockwise rotation.
    # </p><p>
    # The center of the arc is the center of the rectangle whose origin
    # is (<code>x</code>, <code>y</code>) and whose size is specified by the
    # <code>width</code> and <code>height</code> arguments.
    # </p><p>
    # The resulting arc covers an area <code>width + 1</code> pixels wide
    # by <code>height + 1</code> pixels tall.
    # </p>
    # 
    # @param x the x coordinate of the upper-left corner of the arc
    # @param y the y coordinate of the upper-left corner of the arc
    # @param width the width of the arc
    # @param height the height of the arc
    # @param startAngle the beginning angle
    # @param arcAngle the angular extent of the arc, relative to the start angle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def add_arc(x, y, width, height, start_angle, arc_angle)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      cmt = Array.typed(::Java::Float).new(6) { 0.0 }
      OS._cgaffine_transform_make(width / 2, 0, 0, height / 2, x + width / 2, y + height / 2, cmt)
      angle = -start_angle * (Compatibility::PI).to_f / 180
      if (@closed)
        OS._cgpath_move_to_point(@handle, cmt, (Math.cos(angle)).to_f, (Math.sin(angle)).to_f)
      end
      OS._cgpath_add_arc(@handle, cmt, 0, 0, 1, angle, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180, arc_angle >= 0)
      @moved = true
      @closed = false
      if (Math.abs(arc_angle) >= 360)
        close
      end
    end
    
    typesig { [Path] }
    # Adds to the receiver the path described by the parameter.
    # 
    # @param path the path to add to the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def add_path(path)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (path.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      OS._cgpath_add_path(@handle, nil, path.attr_handle)
      @moved = false
      @closed = path.attr_closed
    end
    
    typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
    # Adds to the receiver the rectangle specified by x, y, width and height.
    # 
    # @param x the x coordinate of the rectangle to add
    # @param y the y coordinate of the rectangle to add
    # @param width the width of the rectangle to add
    # @param height the height of the rectangle to add
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def add_rectangle(x, y, width, height)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      rect = CGRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      OS._cgpath_add_rect(@handle, nil, rect)
      @moved = false
      @closed = true
    end
    
    typesig { [::Java::Int] }
    def new_path_proc(data)
      @first = true
      return 0
    end
    
    typesig { [::Java::Int] }
    def close_path_proc(data)
      @first = true
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def line_proc(pt1, pt2, data)
      if (@first)
        @first = false
        OS.memmove(@point, pt1, 8)
        OS._cgpath_move_to_point(@handle, nil, @origin_x + @point[0], @origin_y + @point[1])
      end
      OS.memmove(@point, pt2, 8)
      OS._cgpath_add_line_to_point(@handle, nil, @origin_x + @point[0], @origin_y + @point[1])
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def curve_proc(pt1, control_pt, pt2, data)
      if (@first)
        @first = false
        OS.memmove(@point, pt1, 8)
        OS._cgpath_move_to_point(@handle, nil, @origin_x + @point[0], @origin_y + @point[1])
      end
      OS.memmove(@point, pt2, 8)
      x2 = @point[0]
      y2 = @point[1]
      OS.memmove(@point, control_pt, 8)
      OS._cgpath_add_quad_curve_to_point(@handle, nil, @origin_x + @point[0], @origin_y + @point[1], @origin_x + x2, @origin_y + y2)
      return 0
    end
    
    attr_accessor :origin_x
    alias_method :attr_origin_x, :origin_x
    undef_method :origin_x
    alias_method :attr_origin_x=, :origin_x=
    undef_method :origin_x=
    
    attr_accessor :origin_y
    alias_method :attr_origin_y, :origin_y
    undef_method :origin_y
    alias_method :attr_origin_y=, :origin_y=
    undef_method :origin_y=
    
    attr_accessor :point
    alias_method :attr_point, :point
    undef_method :point
    alias_method :attr_point=, :point=
    undef_method :point=
    
    attr_accessor :first
    alias_method :attr_first, :first
    undef_method :first
    alias_method :attr_first=, :first=
    undef_method :first=
    
    typesig { [String, ::Java::Float, ::Java::Float, Font] }
    # Adds to the receiver the pattern of glyphs generated by drawing
    # the given string using the given font starting at the point (x, y).
    # 
    # @param string the text to use
    # @param x the x coordinate of the starting point
    # @param y the y coordinate of the starting point
    # @param font the font to use
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the font is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the font has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def add_string(string, x, y, font)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((font).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      length_ = string.length
      if ((length_).equal?(0))
        return
      end
      @moved = false
      @closed = true
      new_path_callback = Callback.new(self, "newPathProc", 1)
      new_path_proc = new_path_callback.get_address
      if ((new_path_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      line_callback = Callback.new(self, "lineProc", 3)
      line_proc = line_callback.get_address
      if ((line_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      curve_callback = Callback.new(self, "curveProc", 4)
      curve_proc = curve_callback.get_address
      if ((curve_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      close_path_callback = Callback.new(self, "closePathProc", 1)
      close_path_proc = close_path_callback.get_address
      if ((close_path_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      style = font.attr_atsui_style
      if ((style).equal?(0))
        style = font.create_style
      end
      if ((style).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsucreate_text_layout(buffer)
      if ((buffer[0]).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      layout = buffer[0]
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      text_ptr = OS._new_ptr(length_ * 2)
      if ((text_ptr).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.memmove(text_ptr, chars, length_ * 2)
      OS._atsuset_text_pointer_location(layout, text_ptr, 0, length_, length_)
      OS._atsuset_run_style(layout, style, 0, length_)
      OS._atsuset_transient_font_matching(layout, true)
      ascent = Array.typed(::Java::Int).new(1) { 0 }
      descent = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsuget_unjustified_bounds(layout, 0, length_, nil, nil, ascent, descent)
      y += OS._fix2x(ascent[0])
      layout_records = Array.typed(::Java::Int).new(1) { 0 }
      num_records = Array.typed(::Java::Int).new(1) { 0 }
      delta_ys = Array.typed(::Java::Int).new(1) { 0 }
      num_delta_ys = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsudirect_get_layout_data_array_ptr_from_text_layout(layout, 0, OS.attr_k_atsudirect_data_layout_record_atslayout_record_current, layout_records, num_records)
      OS._atsudirect_get_layout_data_array_ptr_from_text_layout(layout, 0, OS.attr_k_atsudirect_data_baseline_delta_fixed_array, delta_ys, num_delta_ys)
      delta_y = Array.typed(::Java::Int).new(1) { 0 }
      status = Array.typed(::Java::Int).new(1) { 0 }
      record = ATSLayoutRecord.new
      i = 0
      while i < num_records[0]
        OS.memmove(record, layout_records[0] + (i * ATSLayoutRecord.attr_sizeof), ATSLayoutRecord.attr_sizeof)
        @origin_x = x + (OS._fix2x(record.attr_real_pos)).to_f
        if ((delta_ys[0]).equal?(0))
          @origin_y = y
        else
          OS.memmove(delta_y, delta_ys[0] + (i * 4), 4)
          @origin_y = y - (OS._fix2x(delta_y[0])).to_f
        end
        @first = true
        if (!(record.attr_glyph_id).equal?(OS.attr_k_atsdeleted_glyphcode))
          OS._atsuglyph_get_quadratic_paths(style, record.attr_glyph_id, new_path_proc, line_proc, curve_proc, close_path_proc, 0, status)
        end
        i += 1
      end
      OS._cgpath_close_subpath(@handle)
      if (!(delta_ys[0]).equal?(0))
        OS._atsudirect_release_layout_data_array_ptr(0, OS.attr_k_atsudirect_data_baseline_delta_fixed_array, delta_ys[0])
      end
      OS._atsudirect_release_layout_data_array_ptr(0, OS.attr_k_atsudirect_data_layout_record_atslayout_record_current, layout_records[0])
      if (!(style).equal?(font.attr_atsui_style))
        OS._atsudispose_style(style)
      end
      if (!(layout).equal?(0))
        OS._atsudispose_text_layout(layout)
      end
      if (!(text_ptr).equal?(0))
        OS._dispose_ptr(text_ptr)
      end
      new_path_callback.dispose
      line_callback.dispose
      curve_callback.dispose
      close_path_callback.dispose
    end
    
    attr_accessor :element
    alias_method :attr_element, :element
    undef_method :element
    alias_method :attr_element=, :element=
    undef_method :element=
    
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    attr_accessor :type_count
    alias_method :attr_type_count, :type_count
    undef_method :type_count
    alias_method :attr_type_count=, :type_count=
    undef_method :type_count=
    
    attr_accessor :types
    alias_method :attr_types, :types
    undef_method :types
    alias_method :attr_types=, :types=
    undef_method :types=
    
    attr_accessor :points
    alias_method :attr_points, :points
    undef_method :points
    alias_method :attr_points=, :points=
    undef_method :points=
    
    typesig { [::Java::Int, ::Java::Int] }
    def applier_func(info, element_ptr)
      OS.memmove(@element, element_ptr, CGPathElement.attr_sizeof)
      type = 0
      length_ = 1
      case (@element.attr_type)
      when OS.attr_k_cgpath_element_move_to_point
        type = SWT::PATH_MOVE_TO
      when OS.attr_k_cgpath_element_add_line_to_point
        type = SWT::PATH_LINE_TO
      when OS.attr_k_cgpath_element_add_quad_curve_to_point
        type = SWT::PATH_QUAD_TO
        length_ = 2
      when OS.attr_k_cgpath_element_add_curve_to_point
        type = SWT::PATH_CUBIC_TO
        length_ = 3
      when OS.attr_k_cgpath_element_close_subpath
        type = SWT::PATH_CLOSE
        length_ = 0
      end
      if (!(@types).nil?)
        @types[@type_count] = type
        if (length_ > 0)
          OS.memmove(@point, @element.attr_points, length_ * 8)
          System.arraycopy(@point, 0, @points, @count, length_ * 2)
        end
      end
      @type_count += 1
      @count += length_ * 2
      return 0
    end
    
    typesig { [] }
    # Closes the current sub path by adding to the receiver a line
    # from the current point of the path back to the starting point
    # of the sub path.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def close
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      OS._cgpath_close_subpath(@handle)
      @moved = false
      @closed = true
    end
    
    typesig { [::Java::Float, ::Java::Float, SwtGC, ::Java::Boolean] }
    # Returns <code>true</code> if the specified point is contained by
    # the receiver and false otherwise.
    # <p>
    # If outline is <code>true</code>, the point (x, y) checked for containment in
    # the receiver's outline. If outline is <code>false</code>, the point is
    # checked to see if it is contained within the bounds of the (closed) area
    # covered by the receiver.
    # 
    # @param x the x coordinate of the point to test for containment
    # @param y the y coordinate of the point to test for containment
    # @param gc the GC to use when testing for containment
    # @param outline controls whether to check the outline or contained area of the path
    # @return <code>true</code> if the path contains the point and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the gc has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def contains(x, y, gc, outline)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      gc.check_gc(GC::LINE_CAP | GC::LINE_JOIN | GC::LINE_STYLE | GC::LINE_WIDTH)
      # TODO - see windows
      pixel = OS._new_ptr(4)
      if ((pixel).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      buffer = Array.typed(::Java::Int).new([-0x1])
      OS.memmove(pixel, buffer, 4)
      context = OS._cgbitmap_context_create(pixel, 1, 1, 8, 4, self.attr_device.attr_colorspace, OS.attr_k_cgimage_alpha_none_skip_first)
      if ((context).equal?(0))
        OS._dispose_ptr(pixel)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      data = gc.attr_data
      cap_style = 0
      case (data.attr_line_cap)
      when SWT::CAP_ROUND
        cap_style = OS.attr_k_cgline_cap_round
      when SWT::CAP_FLAT
        cap_style = OS.attr_k_cgline_cap_butt
      when SWT::CAP_SQUARE
        cap_style = OS.attr_k_cgline_cap_square
      end
      OS._cgcontext_set_line_cap(context, cap_style)
      join_style = 0
      case (data.attr_line_join)
      when SWT::JOIN_MITER
        join_style = OS.attr_k_cgline_join_miter
      when SWT::JOIN_ROUND
        join_style = OS.attr_k_cgline_join_round
      when SWT::JOIN_BEVEL
        join_style = OS.attr_k_cgline_join_bevel
      end
      OS._cgcontext_set_line_join(context, join_style)
      OS._cgcontext_set_line_width(context, data.attr_line_width)
      OS._cgcontext_translate_ctm(context, -x + 0.5, -y + 0.5)
      OS._cgcontext_add_path(context, @handle)
      if (outline)
        OS._cgcontext_stroke_path(context)
      else
        if ((data.attr_fill_rule).equal?(SWT::FILL_WINDING))
          OS._cgcontext_fill_path(context)
        else
          OS._cgcontext_eofill_path(context)
        end
      end
      OS._cgcontext_release(context)
      OS.memmove(buffer, pixel, 4)
      OS._dispose_ptr(pixel)
      return !(buffer[0]).equal?(-0x1)
    end
    
    typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
    # Adds to the receiver a cubic bezier curve based on the parameters.
    # 
    # @param cx1 the x coordinate of the first control point of the spline
    # @param cy1 the y coordinate of the first control of the spline
    # @param cx2 the x coordinate of the second control of the spline
    # @param cy2 the y coordinate of the second control of the spline
    # @param x the x coordinate of the end point of the spline
    # @param y the y coordinate of the end point of the spline
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def cubic_to(cx1, cy1, cx2, cy2, x, y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!@moved)
        pt = CGPoint.new
        if (!OS._cgpath_is_empty(@handle))
          OS._cgpath_get_current_point(@handle, pt)
        end
        OS._cgpath_move_to_point(@handle, nil, pt.attr_x, pt.attr_y)
        @moved = true
      end
      @closed = false
      OS._cgpath_add_curve_to_point(@handle, nil, cx1, cy1, cx2, cy2, x, y)
    end
    
    typesig { [] }
    def destroy
      OS._cgpath_release(@handle)
      @handle = 0
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # Replaces the first four elements in the parameter with values that
    # describe the smallest rectangle that will completely contain the
    # receiver (i.e. the bounding box).
    # 
    # @param bounds the array to hold the result
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter is too small to hold the bounding box</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_bounds(bounds)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (bounds.attr_length < 4)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rect = CGRect.new
      OS._cgpath_get_bounding_box(@handle, rect)
      bounds[0] = rect.attr_x
      bounds[1] = rect.attr_y
      bounds[2] = rect.attr_width
      bounds[3] = rect.attr_height
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # Replaces the first two elements in the parameter with values that
    # describe the current point of the path.
    # 
    # @param point the array to hold the result
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter is too small to hold the end point</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_current_point(point)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (point.attr_length < 2)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pt = CGPoint.new
      if (!OS._cgpath_is_empty(@handle))
        OS._cgpath_get_current_point(@handle, pt)
      end
      point[0] = pt.attr_x
      point[1] = pt.attr_y
    end
    
    typesig { [] }
    # Returns a device independent representation of the receiver.
    # 
    # @return the PathData for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see PathData
    def get_path_data
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      callback = Callback.new(self, "applierFunc", 2)
      proc = callback.get_address
      if ((proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @count = @type_count = 0
      @element = CGPathElement.new
      OS._cgpath_apply(@handle, 0, proc)
      @types = Array.typed(::Java::Byte).new(@type_count) { 0 }
      @points = Array.typed(::Java::Float).new(@count) { 0.0 }
      @point = Array.typed(::Java::Float).new(6) { 0.0 }
      @count = @type_count = 0
      OS._cgpath_apply(@handle, 0, proc)
      callback.dispose
      result = PathData.new
      result.attr_types = @types
      result.attr_points = @points
      @element = nil
      @types = nil
      @points = nil
      @point = nil
      return result
    end
    
    typesig { [PathData] }
    def init(data)
      types = data.attr_types
      points = data.attr_points
      i = 0
      j = 0
      while i < types.attr_length
        case (types[i])
        when SWT::PATH_MOVE_TO
          move_to(points[((j += 1) - 1)], points[((j += 1) - 1)])
        when SWT::PATH_LINE_TO
          line_to(points[((j += 1) - 1)], points[((j += 1) - 1)])
        when SWT::PATH_CUBIC_TO
          cubic_to(points[((j += 1) - 1)], points[((j += 1) - 1)], points[((j += 1) - 1)], points[((j += 1) - 1)], points[((j += 1) - 1)], points[((j += 1) - 1)])
        when SWT::PATH_QUAD_TO
          quad_to(points[((j += 1) - 1)], points[((j += 1) - 1)], points[((j += 1) - 1)], points[((j += 1) - 1)])
        when SWT::PATH_CLOSE
          close
        else
          dispose
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the Path has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the Path.
    # When a Path has been disposed, it is an error to
    # invoke any other method using the Path.
    # 
    # @return <code>true</code> when the Path is disposed, and <code>false</code> otherwise
    def is_disposed
      return (@handle).equal?(0)
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # Adds to the receiver a line from the current point to
    # the point specified by (x, y).
    # 
    # @param x the x coordinate of the end of the line to add
    # @param y the y coordinate of the end of the line to add
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def line_to(x, y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!@moved)
        pt = CGPoint.new
        if (!OS._cgpath_is_empty(@handle))
          OS._cgpath_get_current_point(@handle, pt)
        end
        OS._cgpath_move_to_point(@handle, nil, pt.attr_x, pt.attr_y)
        @moved = true
      end
      @closed = false
      OS._cgpath_add_line_to_point(@handle, nil, x, y)
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # Sets the current point of the receiver to the point
    # specified by (x, y). Note that this starts a new
    # sub path.
    # 
    # @param x the x coordinate of the new end point
    # @param y the y coordinate of the new end point
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def move_to(x, y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      OS._cgpath_move_to_point(@handle, nil, x, y)
      # Bug in Quartz.  If CGPathMoveToPoint() is not called at the
      # begining of a subpath, the following segments do not output
      # anything.  The fix is to detect that the app did not call
      # CGPathMoveToPoint() and call it explicitly.
      @closed = true
      @moved = true
    end
    
    typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
    # Adds to the receiver a quadratic curve based on the parameters.
    # 
    # @param cx the x coordinate of the control point of the spline
    # @param cy the y coordinate of the control point of the spline
    # @param x the x coordinate of the end point of the spline
    # @param y the y coordinate of the end point of the spline
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def quad_to(cx, cy, x, y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!@moved)
        pt = CGPoint.new
        if (!OS._cgpath_is_empty(@handle))
          OS._cgpath_get_current_point(@handle, pt)
        end
        OS._cgpath_move_to_point(@handle, nil, pt.attr_x, pt.attr_y)
        @moved = true
      end
      @closed = false
      OS._cgpath_add_quad_curve_to_point(@handle, nil, cx, cy, x, y)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "Path {*DISPOSED*}"
      end
      return "Path {" + RJava.cast_to_string(@handle) + "}"
    end
    
    private
    alias_method :initialize__path, :initialize
  end
  
end
