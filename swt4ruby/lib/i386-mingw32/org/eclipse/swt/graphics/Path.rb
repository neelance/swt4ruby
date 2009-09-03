require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module PathImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    attr_accessor :current_point
    alias_method :attr_current_point, :current_point
    undef_method :current_point
    alias_method :attr_current_point=, :current_point=
    undef_method :current_point=
    
    attr_accessor :start_point
    alias_method :attr_start_point, :start_point
    undef_method :start_point
    alias_method :attr_start_point=, :start_point=
    undef_method :start_point=
    
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
      @current_point = nil
      @start_point = nil
      super(device)
      @current_point = PointF.new
      @start_point = PointF.new
      self.attr_device.check_gdip
      @handle = SwtGdip._graphics_path_new(SwtGdip::FillModeAlternate)
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
      @current_point = nil
      @start_point = nil
      super(device)
      @current_point = PointF.new
      @start_point = PointF.new
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (path.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      flatness = Math.max(0, flatness)
      @handle = SwtGdip._graphics_path_clone(path.attr_handle)
      if (!(flatness).equal?(0))
        SwtGdip._graphics_path_flatten(@handle, 0, flatness)
      end
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
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
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      if ((width).equal?(0) || (height).equal?(0) || (arc_angle).equal?(0))
        return
      end
      if ((width).equal?(height))
        SwtGdip._graphics_path_add_arc(@handle, x, y, width, height, -start_angle, -arc_angle)
      else
        # long
        path = SwtGdip._graphics_path_new(SwtGdip::FillModeAlternate)
        if ((path).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # long
        matrix = SwtGdip._matrix_new(width, 0, 0, height, x, y)
        if ((matrix).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        SwtGdip._graphics_path_add_arc(path, 0, 0, 1, 1, -start_angle, -arc_angle)
        SwtGdip._graphics_path_transform(path, matrix)
        SwtGdip._graphics_path_add_path(@handle, path, true)
        SwtGdip._matrix_delete(matrix)
        SwtGdip._graphics_path_delete(path)
      end
      SwtGdip._graphics_path_get_last_point(@handle, @current_point)
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
      # TODO - expose connect?
      SwtGdip._graphics_path_add_path(@handle, path.attr_handle, false)
      @current_point.attr_x = path.attr_current_point.attr_x
      @current_point.attr_y = path.attr_current_point.attr_y
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
      rect = RectF.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      SwtGdip._graphics_path_add_rectangle(@handle, rect)
      @current_point.attr_x = x
      @current_point.attr_y = y
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
      length_ = string.length
      buffer = CharArray.new(length_)
      string.get_chars(0, length_, buffer, 0)
      # long
      h_dc = self.attr_device.internal_new__gc(nil)
      # long
      # long
      family = Array.typed(::Java::Int).new(1) { 0 }
      # long
      gdip_font = SwtGC.create_gdip_font(h_dc, font.attr_handle, 0, self.attr_device.attr_font_collection, family, nil)
      point = PointF.new
      point.attr_x = x - (SwtGdip._font_get_size(gdip_font) / 6)
      point.attr_y = y
      style = SwtGdip._font_get_style(gdip_font)
      size = SwtGdip._font_get_size(gdip_font)
      SwtGdip._graphics_path_add_string(@handle, buffer, length_, family[0], style, size, point, 0)
      SwtGdip._graphics_path_get_last_point(@handle, @current_point)
      SwtGdip._font_family_delete(family[0])
      SwtGdip._font_delete(gdip_font)
      self.attr_device.internal_dispose__gc(h_dc, nil)
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
      SwtGdip._graphics_path_close_figure(@handle)
      # Feature in GDI+. CloseFigure() does affect the last
      # point, so GetLastPoint() does not return the starting
      # point of the subpath after calling CloseFigure().  The
      # fix is to remember the subpath starting point and use
      # it instead.
      @current_point.attr_x = @start_point.attr_x
      @current_point.attr_y = @start_point.attr_y
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
      # TODO - should use GC transformation
      gc.init_gdip
      gc.check_gc(SwtGC::LINE_CAP | SwtGC::LINE_JOIN | SwtGC::LINE_STYLE | SwtGC::LINE_WIDTH)
      mode = (OS._get_poly_fill_mode(gc.attr_handle)).equal?(OS::WINDING) ? SwtGdip::FillModeWinding : SwtGdip::FillModeAlternate
      SwtGdip._graphics_path_set_fill_mode(@handle, mode)
      if (outline)
        return SwtGdip._graphics_path_is_outline_visible(@handle, x, y, gc.attr_data.attr_gdip_pen, gc.attr_data.attr_gdip_graphics)
      else
        return SwtGdip._graphics_path_is_visible(@handle, x, y, gc.attr_data.attr_gdip_graphics)
      end
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
      SwtGdip._graphics_path_add_bezier(@handle, @current_point.attr_x, @current_point.attr_y, cx1, cy1, cx2, cy2, x, y)
      SwtGdip._graphics_path_get_last_point(@handle, @current_point)
    end
    
    typesig { [] }
    def destroy
      SwtGdip._graphics_path_delete(@handle)
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
      rect = RectF.new
      SwtGdip._graphics_path_get_bounds(@handle, rect, 0, 0)
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
      point[0] = @current_point.attr_x
      point[1] = @current_point.attr_y
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
      count = SwtGdip._graphics_path_get_point_count(@handle)
      gdip_types = Array.typed(::Java::Byte).new(count) { 0 }
      points = Array.typed(::Java::Float).new(count * 2) { 0.0 }
      SwtGdip._graphics_path_get_path_types(@handle, gdip_types, count)
      SwtGdip._graphics_path_get_path_points(@handle, points, count)
      types = Array.typed(::Java::Byte).new(count * 2) { 0 }
      index = 0
      types_index = 0
      while (index < count)
        type = gdip_types[index]
        close = false
        case (type & SwtGdip::PathPointTypePathTypeMask)
        when SwtGdip::PathPointTypeStart
          types[((types_index += 1) - 1)] = SWT::PATH_MOVE_TO
          close = !((type & SwtGdip::PathPointTypeCloseSubpath)).equal?(0)
          index += 1
        when SwtGdip::PathPointTypeLine
          types[((types_index += 1) - 1)] = SWT::PATH_LINE_TO
          close = !((type & SwtGdip::PathPointTypeCloseSubpath)).equal?(0)
          index += 1
        when SwtGdip::PathPointTypeBezier
          types[((types_index += 1) - 1)] = SWT::PATH_CUBIC_TO
          close = !((gdip_types[index + 2] & SwtGdip::PathPointTypeCloseSubpath)).equal?(0)
          index += 3
        else
          index += 1
        end
        if (close)
          types[((types_index += 1) - 1)] = SWT::PATH_CLOSE
        end
      end
      if (!(types_index).equal?(types.attr_length))
        new_types = Array.typed(::Java::Byte).new(types_index) { 0 }
        System.arraycopy(types, 0, new_types, 0, types_index)
        types = new_types
      end
      result = PathData.new
      result.attr_types = types
      result.attr_points = points
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
      SwtGdip._graphics_path_add_line(@handle, @current_point.attr_x, @current_point.attr_y, x, y)
      SwtGdip._graphics_path_get_last_point(@handle, @current_point)
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
      SwtGdip._graphics_path_start_figure(@handle)
      @current_point.attr_x = @start_point.attr_x = x
      @current_point.attr_y = @start_point.attr_y = y
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
      cx1 = @current_point.attr_x + 2 * (cx - @current_point.attr_x) / 3
      cy1 = @current_point.attr_y + 2 * (cy - @current_point.attr_y) / 3
      cx2 = cx1 + (x - @current_point.attr_x) / 3
      cy2 = cy1 + (y - @current_point.attr_y) / 3
      SwtGdip._graphics_path_add_bezier(@handle, @current_point.attr_x, @current_point.attr_y, cx1, cy1, cx2, cy2, x, y)
      SwtGdip._graphics_path_get_last_point(@handle, @current_point)
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
