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
      include ::Org::Eclipse::Swt::Internal::Cairo
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
    # 
    # long
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
      super(device)
      @closed = true
      self.attr_device.check_cairo
      # long
      surface = Cairo.cairo_image_surface_create(Cairo::CAIRO_FORMAT_ARGB32, 1, 1)
      if ((surface).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @handle = Cairo.cairo_create(surface)
      Cairo.cairo_surface_destroy(surface)
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
      super(device)
      @closed = true
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (path.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      surface = Cairo.cairo_image_surface_create(Cairo::CAIRO_FORMAT_ARGB32, 1, 1)
      if ((surface).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @handle = Cairo.cairo_create(surface)
      Cairo.cairo_surface_destroy(surface)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # long
      copy = 0
      flatness = Math.max(0, flatness)
      if ((flatness).equal?(0))
        copy = Cairo.cairo_copy_path(path.attr_handle)
      else
        tolerance = Cairo.cairo_get_tolerance(path.attr_handle)
        Cairo.cairo_set_tolerance(path.attr_handle, flatness)
        copy = Cairo.cairo_copy_path_flat(path.attr_handle)
        Cairo.cairo_set_tolerance(path.attr_handle, tolerance)
      end
      if ((copy).equal?(0))
        Cairo.cairo_destroy(@handle)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_append_path(@handle, copy)
      Cairo.cairo_path_destroy(copy)
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
      @moved = true
      if ((width).equal?(height))
        angle = -start_angle * (Compatibility::PI).to_f / 180
        if (@closed)
          Cairo.cairo_move_to(@handle, (x + width / 2) + width / 2 * Math.cos(angle), (y + height / 2) + height / 2 * Math.sin(angle))
        end
        if (arc_angle >= 0)
          Cairo.cairo_arc_negative(@handle, x + width / 2, y + height / 2, width / 2, angle, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
        else
          Cairo.cairo_arc(@handle, x + width / 2, y + height / 2, width / 2, angle, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
        end
      else
        Cairo.cairo_save(@handle)
        Cairo.cairo_translate(@handle, x + width / 2, y + height / 2)
        Cairo.cairo_scale(@handle, width / 2, height / 2)
        angle = -start_angle * (Compatibility::PI).to_f / 180
        if (@closed)
          Cairo.cairo_move_to(@handle, Math.cos(angle), Math.sin(angle))
        end
        if (arc_angle >= 0)
          Cairo.cairo_arc_negative(@handle, 0, 0, 1, angle, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
        else
          Cairo.cairo_arc(@handle, 0, 0, 1, angle, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
        end
        Cairo.cairo_restore(@handle)
      end
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
      @moved = false
      # long
      copy = Cairo.cairo_copy_path(path.attr_handle)
      if ((copy).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_append_path(@handle, copy)
      Cairo.cairo_path_destroy(copy)
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
      @moved = false
      Cairo.cairo_rectangle(@handle, x, y, width, height)
      @closed = true
    end
    
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
      @moved = false
      SwtGC.add_cairo_string(@handle, string, x, y, font)
      @closed = true
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
      Cairo.cairo_close_path(@handle)
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
      # TODO - see Windows
      gc.init_cairo
      gc.check_gc(SwtGC::LINE_CAP | SwtGC::LINE_JOIN | SwtGC::LINE_STYLE | SwtGC::LINE_WIDTH)
      result = false
      # long
      cairo = gc.attr_data.attr_cairo
      # long
      copy = Cairo.cairo_copy_path(@handle)
      if ((copy).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_append_path(cairo, copy)
      Cairo.cairo_path_destroy(copy)
      if (outline)
        result = !(Cairo.cairo_in_stroke(cairo, x, y)).equal?(0)
      else
        result = !(Cairo.cairo_in_fill(cairo, x, y)).equal?(0)
      end
      Cairo.cairo_new_path(cairo)
      return result
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
        current_x = Array.typed(::Java::Double).new(1) { 0.0 }
        current_y = Array.typed(::Java::Double).new(1) { 0.0 }
        Cairo.cairo_get_current_point(@handle, current_x, current_y)
        Cairo.cairo_move_to(@handle, current_x[0], current_y[0])
        @moved = true
      end
      Cairo.cairo_curve_to(@handle, cx1, cy1, cx2, cy2, x, y)
      @closed = false
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
      # long
      copy = Cairo.cairo_copy_path(@handle)
      if ((copy).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      path = Cairo_path_t.new
      Cairo.memmove(path, copy, self.attr_cairo_path_t.attr_sizeof)
      min_x = 0
      min_y = 0
      max_x = 0
      max_y = 0
      if (path.attr_num_data > 0)
        min_x = min_y = Double::POSITIVE_INFINITY
        max_x = max_y = Double::NEGATIVE_INFINITY
        i = 0
        points = Array.typed(::Java::Double).new(6) { 0.0 }
        data = Cairo_path_data_t.new
        while (i < path.attr_num_data)
          # long
          offset = path.attr_data + i * self.attr_cairo_path_data_t.attr_sizeof
          Cairo.memmove(data, offset, self.attr_cairo_path_data_t.attr_sizeof)
          case (data.attr_type)
          when Cairo::CAIRO_PATH_MOVE_TO
            Cairo.memmove(points, offset + self.attr_cairo_path_data_t.attr_sizeof, self.attr_cairo_path_data_t.attr_sizeof)
            min_x = Math.min(min_x, points[0])
            min_y = Math.min(min_y, points[1])
            max_x = Math.max(max_x, points[0])
            max_y = Math.max(max_y, points[1])
          when Cairo::CAIRO_PATH_LINE_TO
            Cairo.memmove(points, offset + self.attr_cairo_path_data_t.attr_sizeof, self.attr_cairo_path_data_t.attr_sizeof)
            min_x = Math.min(min_x, points[0])
            min_y = Math.min(min_y, points[1])
            max_x = Math.max(max_x, points[0])
            max_y = Math.max(max_y, points[1])
          when Cairo::CAIRO_PATH_CURVE_TO
            Cairo.memmove(points, offset + self.attr_cairo_path_data_t.attr_sizeof, self.attr_cairo_path_data_t.attr_sizeof * 3)
            min_x = Math.min(min_x, points[0])
            min_y = Math.min(min_y, points[1])
            max_x = Math.max(max_x, points[0])
            max_y = Math.max(max_y, points[1])
            min_x = Math.min(min_x, points[2])
            min_y = Math.min(min_y, points[3])
            max_x = Math.max(max_x, points[2])
            max_y = Math.max(max_y, points[3])
            min_x = Math.min(min_x, points[4])
            min_y = Math.min(min_y, points[5])
            max_x = Math.max(max_x, points[4])
            max_y = Math.max(max_y, points[5])
          when Cairo::CAIRO_PATH_CLOSE_PATH
          end
          i += data.attr_length
        end
      end
      bounds[0] = (min_x).to_f
      bounds[1] = (min_y).to_f
      bounds[2] = ((max_x - min_x)).to_f
      bounds[3] = ((max_y - min_y)).to_f
      Cairo.cairo_path_destroy(copy)
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
      x = Array.typed(::Java::Double).new(1) { 0.0 }
      y = Array.typed(::Java::Double).new(1) { 0.0 }
      Cairo.cairo_get_current_point(@handle, x, y)
      point[0] = (x[0]).to_f
      point[1] = (y[0]).to_f
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
      # long
      copy = Cairo.cairo_copy_path(@handle)
      if ((copy).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      path = Cairo_path_t.new
      Cairo.memmove(path, copy, self.attr_cairo_path_t.attr_sizeof)
      types = Array.typed(::Java::Byte).new(path.attr_num_data) { 0 }
      pts = Array.typed(::Java::Float).new(path.attr_num_data * 6) { 0.0 }
      type_index = 0
      pts_index = 0
      if (path.attr_num_data > 0)
        i = 0
        points = Array.typed(::Java::Double).new(6) { 0.0 }
        data = Cairo_path_data_t.new
        while (i < path.attr_num_data)
          # long
          offset = path.attr_data + i * self.attr_cairo_path_data_t.attr_sizeof
          Cairo.memmove(data, offset, self.attr_cairo_path_data_t.attr_sizeof)
          case (data.attr_type)
          when Cairo::CAIRO_PATH_MOVE_TO
            types[((type_index += 1) - 1)] = SWT::PATH_MOVE_TO
            Cairo.memmove(points, offset + self.attr_cairo_path_data_t.attr_sizeof, self.attr_cairo_path_data_t.attr_sizeof)
            pts[((pts_index += 1) - 1)] = (points[0]).to_f
            pts[((pts_index += 1) - 1)] = (points[1]).to_f
          when Cairo::CAIRO_PATH_LINE_TO
            types[((type_index += 1) - 1)] = SWT::PATH_LINE_TO
            Cairo.memmove(points, offset + self.attr_cairo_path_data_t.attr_sizeof, self.attr_cairo_path_data_t.attr_sizeof)
            pts[((pts_index += 1) - 1)] = (points[0]).to_f
            pts[((pts_index += 1) - 1)] = (points[1]).to_f
          when Cairo::CAIRO_PATH_CURVE_TO
            types[((type_index += 1) - 1)] = SWT::PATH_CUBIC_TO
            Cairo.memmove(points, offset + self.attr_cairo_path_data_t.attr_sizeof, self.attr_cairo_path_data_t.attr_sizeof * 3)
            pts[((pts_index += 1) - 1)] = (points[0]).to_f
            pts[((pts_index += 1) - 1)] = (points[1]).to_f
            pts[((pts_index += 1) - 1)] = (points[2]).to_f
            pts[((pts_index += 1) - 1)] = (points[3]).to_f
            pts[((pts_index += 1) - 1)] = (points[4]).to_f
            pts[((pts_index += 1) - 1)] = (points[5]).to_f
          when Cairo::CAIRO_PATH_CLOSE_PATH
            types[((type_index += 1) - 1)] = SWT::PATH_CLOSE
          end
          i += data.attr_length
        end
      end
      if (!(type_index).equal?(types.attr_length))
        new_types = Array.typed(::Java::Byte).new(type_index) { 0 }
        System.arraycopy(types, 0, new_types, 0, type_index)
        types = new_types
      end
      if (!(pts_index).equal?(pts.attr_length))
        new_pts = Array.typed(::Java::Float).new(pts_index) { 0.0 }
        System.arraycopy(pts, 0, new_pts, 0, pts_index)
        pts = new_pts
      end
      Cairo.cairo_path_destroy(copy)
      result = PathData.new
      result.attr_types = types
      result.attr_points = pts
      return result
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
        current_x = Array.typed(::Java::Double).new(1) { 0.0 }
        current_y = Array.typed(::Java::Double).new(1) { 0.0 }
        Cairo.cairo_get_current_point(@handle, current_x, current_y)
        Cairo.cairo_move_to(@handle, current_x[0], current_y[0])
        @moved = true
      end
      Cairo.cairo_line_to(@handle, x, y)
      @closed = false
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
      # Bug in Cairo.  If cairo_move_to() is not called at the
      # begining of a subpath, the first cairo_line_to() or
      # cairo_curve_to() segment do not output anything.  The fix
      # is to detect that the app did not call cairo_move_to()
      # before those calls and call it explicitly.
      @moved = true
      Cairo.cairo_move_to(@handle, x, y)
      @closed = true
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
      current_x = Array.typed(::Java::Double).new(1) { 0.0 }
      current_y = Array.typed(::Java::Double).new(1) { 0.0 }
      Cairo.cairo_get_current_point(@handle, current_x, current_y)
      if (!@moved)
        Cairo.cairo_move_to(@handle, current_x[0], current_y[0])
        @moved = true
      end
      x0 = (current_x[0]).to_f
      y0 = (current_y[0]).to_f
      cx1 = x0 + 2 * (cx - x0) / 3
      cy1 = y0 + 2 * (cy - y0) / 3
      cx2 = cx1 + (x - x0) / 3
      cy2 = cy1 + (y - y0) / 3
      Cairo.cairo_curve_to(@handle, cx1, cy1, cx2, cy2, x, y)
      @closed = false
    end
    
    typesig { [] }
    def destroy
      Cairo.cairo_destroy(@handle)
      @handle = 0
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
