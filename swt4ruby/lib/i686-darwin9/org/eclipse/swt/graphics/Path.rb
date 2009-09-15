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
      @handle = nil
      super(device)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle = NSBezierPath.bezier_path
        if ((@handle).nil?)
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @handle.retain
        @handle.move_to_point(NSPoint.new)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      @handle = nil
      super(device)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        if ((path).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if (path.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        flatness = Math.max(0, flatness)
        if ((flatness).equal?(0))
          @handle = NSBezierPath.new(path.attr_handle.copy.attr_id)
        else
          # double
          default_flatness_ = NSBezierPath.default_flatness
          NSBezierPath.set_default_flatness(flatness)
          @handle = path.attr_handle.bezier_path_by_flattening_path
          @handle.retain
          NSBezierPath.set_default_flatness(default_flatness_)
        end
        if ((@handle).nil?)
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        if ((data).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        init(data)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(x + width / 2, y + height / 2)
        transform_.scale_xby(width / 2, height / 2)
        path = NSBezierPath.bezier_path
        center = NSPoint.new
        s_angle = -start_angle
        e_angle = -(start_angle + arc_angle)
        path.append_bezier_path_with_arc_with_center(center, 1, s_angle, e_angle, arc_angle > 0)
        path.transform_using_affine_transform(transform_)
        @handle.append_bezier_path(path)
        if (Math.abs(arc_angle) >= 360)
          @handle.close_path
        end
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.append_bezier_path(path.attr_handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      rect = NSRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.append_bezier_path_with_rect(rect)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        str = NSString.string_with(string)
        text_storage = NSTextStorage.new.alloc.init
        layout_manager = NSLayoutManager.new.alloc.init
        text_container = NSTextContainer.new.alloc
        size = NSSize.new
        size.attr_width = Float::MAX_VALUE
        size.attr_height = Float::MAX_VALUE
        text_container.init_with_container_size(size)
        text_storage.add_layout_manager(layout_manager)
        layout_manager.add_text_container(text_container)
        range = NSRange.new
        range.attr_length = str.length
        # Feature in Cocoa. Adding attributes directly to a NSTextStorage causes
        # output to the console and eventually a segmentation fault when printing
        # on a thread other than the main thread. The fix is to add attributes to
        # a separate NSMutableAttributedString and add it to text storage when done.
        attr_str = NSMutableAttributedString.new.alloc
        attr_str.attr_id = attr_str.init_with_string(str).attr_id
        attr_str.begin_editing
        attr_str.add_attribute(OS::NSFontAttributeName, font.attr_handle, range)
        font.add_traits(attr_str, range)
        attr_str.end_editing
        text_storage.set_attributed_string(attr_str)
        attr_str.release
        range = layout_manager.glyph_range_for_text_container(text_container)
        if (!(range.attr_length).equal?(0))
          # long
          glyphs = OS.malloc(4 * range.attr_length * 2)
          layout_manager.get_glyphs(glyphs, range)
          path = NSBezierPath.bezier_path
          point = NSPoint.new
          path.move_to_point(point)
          path.append_bezier_path_with_glyphs(glyphs, range.attr_length, font.attr_handle)
          transform_ = NSAffineTransform.transform
          transform_.scale_xby(1, -1)
          # double
          baseline = layout_manager.default_baseline_offset_for_font(font.attr_handle)
          transform_.translate_xby(x, -(y + baseline))
          path.transform_using_affine_transform(transform_)
          OS.free(glyphs)
          @handle.append_bezier_path(path)
        end
        text_container.release
        layout_manager.release
        text_storage.release
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.close_path
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # TODO - see windows
        if (outline)
          # long
          pixel = OS.malloc(4)
          if ((pixel).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          buffer = Array.typed(::Java::Int).new([-0x1])
          OS.memmove___org_eclipse_swt_graphics_path_1(pixel, buffer, 4)
          # long
          colorspace = OS._cgcolor_space_create_device_rgb
          # long
          context = OS._cgbitmap_context_create(pixel, 1, 1, 8, 4, colorspace, OS.attr_k_cgimage_alpha_none_skip_first)
          OS._cgcolor_space_release(colorspace)
          if ((context).equal?(0))
            OS.free(pixel)
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
          # long
          path = SwtGC.create_cgpath_ref(@handle)
          OS._cgcontext_add_path(context, path)
          OS._cgpath_release(path)
          OS._cgcontext_stroke_path(context)
          OS._cgcontext_release(context)
          OS.memmove___org_eclipse_swt_graphics_path_3(buffer, pixel, 4)
          OS.free(pixel)
          return !(buffer[0]).equal?(-0x1)
        else
          point = NSPoint.new
          point.attr_x = x
          point.attr_y = y
          return @handle.contains_point(point)
        end
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        pt = NSPoint.new
        pt.attr_x = x
        pt.attr_y = y
        ct1 = NSPoint.new
        ct1.attr_x = cx1
        ct1.attr_y = cy1
        ct2 = NSPoint.new
        ct2.attr_x = cx2
        ct2.attr_y = cy2
        @handle.curve_to_point(pt, ct1, ct2)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    def destroy
      @handle.release
      @handle = nil
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        rect = @handle.control_point_bounds
        # 64
        bounds[0] = (rect.attr_x).to_f
        # 64
        bounds[1] = (rect.attr_y).to_f
        # 64
        bounds[2] = (rect.attr_width).to_f
        # 64
        bounds[3] = (rect.attr_height).to_f
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        pt = @handle.current_point
        # 64
        point[0] = (pt.attr_x).to_f
        # 64
        point[1] = (pt.attr_y).to_f
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # 64
        count = RJava.cast_to_int(@handle.element_count)
        point_count = 0
        type_count = 0
        types = Array.typed(::Java::Byte).new(count) { 0 }
        point_array = Array.typed(::Java::Float).new(count * 6) { 0.0 }
        # long
        points = OS.malloc(3 * NSPoint.attr_sizeof)
        if ((points).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        pt = NSPoint.new
        i = 0
        while i < count
          # 64
          element = RJava.cast_to_int(@handle.element_at_index(i, points))
          case (element)
          when OS::NSMoveToBezierPathElement
            types[((type_count += 1) - 1)] = SWT::PATH_MOVE_TO
            OS.memmove___org_eclipse_swt_graphics_path_5(pt, points, NSPoint.attr_sizeof)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
          when OS::NSLineToBezierPathElement
            types[((type_count += 1) - 1)] = SWT::PATH_LINE_TO
            OS.memmove___org_eclipse_swt_graphics_path_7(pt, points, NSPoint.attr_sizeof)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
          when OS::NSCurveToBezierPathElement
            types[((type_count += 1) - 1)] = SWT::PATH_CUBIC_TO
            OS.memmove___org_eclipse_swt_graphics_path_9(pt, points, NSPoint.attr_sizeof)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
            OS.memmove___org_eclipse_swt_graphics_path_11(pt, points + NSPoint.attr_sizeof, NSPoint.attr_sizeof)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
            OS.memmove___org_eclipse_swt_graphics_path_13(pt, points + NSPoint.attr_sizeof + NSPoint.attr_sizeof, NSPoint.attr_sizeof)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
            point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
          when OS::NSClosePathBezierPathElement
            types[((type_count += 1) - 1)] = SWT::PATH_CLOSE
          end
          i += 1
        end
        OS.free(points)
        if (!(point_count).equal?(point_array.attr_length))
          temp = Array.typed(::Java::Float).new(point_count) { 0.0 }
          System.arraycopy(point_array, 0, temp, 0, point_count)
          point_array = temp
        end
        data = PathData.new
        data.attr_types = types
        data.attr_points = point_array
        return data
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      return (@handle).nil?
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        pt = NSPoint.new
        pt.attr_x = x
        pt.attr_y = y
        @handle.line_to_point(pt)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        pt = NSPoint.new
        pt.attr_x = x
        pt.attr_y = y
        @handle.move_to_point(pt)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        pt = NSPoint.new
        pt.attr_x = x
        pt.attr_y = y
        ct = NSPoint.new
        ct.attr_x = cx
        ct.attr_y = cy
        @handle.curve_to_point(pt, ct, ct)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
