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
  module RegionImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class represent areas of an x-y coordinate
  # system that are aggregates of the areas covered by a number
  # of polygons.
  # <p>
  # Application code must explicitly invoke the <code>Region.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: GraphicsExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Region < RegionImports.const_get :Resource
    include_class_members RegionImports
    
    # the OS resource for the region
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
    
    typesig { [] }
    # Constructs a new empty region.
    # 
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for region creation</li>
    # </ul>
    def initialize
      initialize__region(nil)
    end
    
    typesig { [Device] }
    # Constructs a new empty region.
    # <p>
    # You must dispose the region when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the region
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for region creation</li>
    # </ul>
    # 
    # @see #dispose
    # 
    # @since 3.0
    def initialize(device)
      @handle = 0
      @transform = nil
      @pt = nil
      @rect = nil
      super(device)
      @pt = NSPoint.new
      @rect = Array.typed(::Java::Short).new(4) { 0 }
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle = OS._new_rgn
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Device, ::Java::Int] }
    # long
    def initialize(device, handle)
      @handle = 0
      @transform = nil
      @pt = nil
      @rect = nil
      super(device)
      @pt = NSPoint.new
      @rect = Array.typed(::Java::Short).new(4) { 0 }
      @handle = handle
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int] }
      # long
      def cocoa_new(device, handle)
        return Region.new(device, handle)
      end
      
      typesig { [Array.typed(::Java::Int), ::Java::Int] }
      # long
      def poly_to_rgn(poly, length)
        r = Array.typed(::Java::Short).new(4) { 0 }
        # long
        poly_rgn = OS._new_rgn
        rect_rgn = OS._new_rgn
        min_y = poly[1]
        max_y = poly[1]
        y = 3
        while y < length
          if (poly[y] < min_y)
            min_y = poly[y]
          end
          if (poly[y] > max_y)
            max_y = poly[y]
          end
          y += 2
        end
        inter = Array.typed(::Java::Int).new(length + 1) { 0 }
        y_ = min_y
        while y_ <= max_y
          count = 0
          x1 = poly[0]
          y1 = poly[1]
          p = 2
          while p < length
            x2 = poly[p]
            y2 = poly[p + 1]
            if (!(y1).equal?(y2) && ((y1 <= y_ && y_ < y2) || (y2 <= y_ && y_ < y1)))
              inter[((count += 1) - 1)] = RJava.cast_to_int(((((y_ - y1) / ((y2 - y1)).to_f) * (x2 - x1)) + x1 + 0.5))
            end
            x1 = x2
            y1 = y2
            p += 2
          end
          x2 = poly[0]
          y2 = poly[1]
          if (!(y1).equal?(y2) && ((y1 <= y_ && y_ < y2) || (y2 <= y_ && y_ < y1)))
            inter[((count += 1) - 1)] = RJava.cast_to_int(((((y_ - y1) / ((y2 - y1)).to_f) * (x2 - x1)) + x1 + 0.5))
          end
          gap = count / 2
          while gap > 0
            i = gap
            while i < count
              j = i - gap
              while j >= 0
                if ((inter[j] - inter[j + gap]) <= 0)
                  break
                end
                temp = inter[j]
                inter[j] = inter[j + gap]
                inter[j + gap] = temp
                j -= gap
              end
              i += 1
            end
            gap /= 2
          end
          i = 0
          while i < count
            OS._set_rect(r, RJava.cast_to_short(inter[i]), RJava.cast_to_short(y_), RJava.cast_to_short((inter[i + 1])), RJava.cast_to_short((y_ + 1)))
            OS._rect_rgn(rect_rgn, r)
            OS._union_rgn(poly_rgn, rect_rgn, poly_rgn)
            i += 2
          end
          y_ += 1
        end
        OS._dispose_rgn(rect_rgn)
        return poly_rgn
      end
      
      typesig { [Array.typed(::Java::Int), ::Java::Int] }
      # long
      def poly_rgn(point_array, count)
        pool = nil
        if (!NSThread.is_main_thread)
          pool = NSAutoreleasePool.new.alloc.init
        end
        begin
          # long
          poly_rgn = 0
          if ((C::PTR_SIZEOF).equal?(4))
            poly_rgn = OS._new_rgn
            OS._open_rgn
            OS._move_to(RJava.cast_to_short(point_array[0]), RJava.cast_to_short(point_array[1]))
            i = 1
            while i < count / 2
              OS._line_to(RJava.cast_to_short(point_array[2 * i]), RJava.cast_to_short(point_array[2 * i + 1]))
              i += 1
            end
            OS._line_to(RJava.cast_to_short(point_array[0]), RJava.cast_to_short(point_array[1]))
            OS._close_rgn(poly_rgn)
          else
            poly_rgn = poly_to_rgn(point_array, count)
          end
          return poly_rgn
        ensure
          if (!(pool).nil?)
            pool.release
          end
        end
      end
    }
    
    typesig { [Array.typed(::Java::Int)] }
    # Adds the given polygon to the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param pointArray points that describe the polygon to merge with the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def add(point_array)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        add(point_array, point_array.attr_length)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def add(point_array, count)
      if (count <= 2)
        return
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # long
        poly_rgn_ = poly_rgn(point_array, count)
        OS._union_rgn(@handle, poly_rgn_, @handle)
        OS._dispose_rgn(poly_rgn_)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Rectangle] }
    # Adds the given rectangle to the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param rect the rectangle to merge with the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def add(rect)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (rect.attr_width < 0 || rect.attr_height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        add(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Adds the given rectangle to the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param x the x coordinate of the rectangle
    # @param y the y coordinate of the rectangle
    # @param width the width coordinate of the rectangle
    # @param height the height coordinate of the rectangle
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def add(x, y, width, height)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (width < 0 || height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # long
        rect_rgn = OS._new_rgn
        r = Array.typed(::Java::Short).new(4) { 0 }
        OS._set_rect(r, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
        OS._rect_rgn(rect_rgn, r)
        OS._union_rgn(@handle, rect_rgn, @handle)
        OS._dispose_rgn(rect_rgn)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Region] }
    # Adds all of the polygons which make up the area covered
    # by the argument to the collection of polygons the receiver
    # maintains to describe its area.
    # 
    # @param region the region to merge
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def add(region)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((region).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        OS._union_rgn(@handle, region.attr_handle, @handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns <code>true</code> if the point specified by the
    # arguments is inside the area specified by the receiver,
    # and <code>false</code> otherwise.
    # 
    # @param x the x coordinate of the point to test for containment
    # @param y the y coordinate of the point to test for containment
    # @return <code>true</code> if the region contains the point and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def contains(x, y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        point = Array.typed(::Java::Short).new([RJava.cast_to_short(y), RJava.cast_to_short(x)])
        return OS._pt_in_rgn(point, @handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Point] }
    # Returns <code>true</code> if the given point is inside the
    # area specified by the receiver, and <code>false</code>
    # otherwise.
    # 
    # @param pt the point to test for containment
    # @return <code>true</code> if the region contains the point and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def contains(pt)
      if ((pt).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return contains(pt.attr_x, pt.attr_y)
    end
    
    attr_accessor :transform
    alias_method :attr_transform, :transform
    undef_method :transform
    alias_method :attr_transform=, :transform=
    undef_method :transform=
    
    typesig { [NSAffineTransform] }
    def convert_rgn(transform)
      # long
      new_rgn = OS._new_rgn
      callback = Callback.new(self, "convertRgn", 4)
      # long
      proc = callback.get_address
      if ((proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @transform = transform
      OS._qdregion_to_rects(@handle, OS.attr_k_qdparse_region_from_top_left, proc, new_rgn)
      @transform = nil
      callback.dispose
      OS._copy_rgn(new_rgn, @handle)
      OS._dispose_rgn(new_rgn)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def convert_rgn(message, rgn, r, new_rgn)
      if ((message).equal?(OS.attr_k_qdregion_to_rects_msg_parse))
        rect = Array.typed(::Java::Short).new(4) { 0 }
        OS.memmove___org_eclipse_swt_graphics_region_1(rect, r, rect.attr_length * 2)
        i = 0
        point = NSPoint.new
        points = Array.typed(::Java::Int).new(10) { 0 }
        point.attr_x = rect[1]
        point.attr_y = rect[0]
        point = @transform.transform_point(point)
        start_x = 0
        start_y = 0
        points[((i += 1) - 1)] = start_x = RJava.cast_to_short(point.attr_x)
        points[((i += 1) - 1)] = start_y = RJava.cast_to_short(point.attr_y)
        point.attr_x = rect[3]
        point.attr_y = rect[0]
        point = @transform.transform_point(point)
        points[((i += 1) - 1)] = RJava.cast_to_short(Math.round(point.attr_x))
        points[((i += 1) - 1)] = RJava.cast_to_short(point.attr_y)
        point.attr_x = rect[3]
        point.attr_y = rect[2]
        point = @transform.transform_point(point)
        points[((i += 1) - 1)] = RJava.cast_to_short(Math.round(point.attr_x))
        points[((i += 1) - 1)] = RJava.cast_to_short(Math.round(point.attr_y))
        point.attr_x = rect[1]
        point.attr_y = rect[2]
        point = @transform.transform_point(point)
        points[((i += 1) - 1)] = RJava.cast_to_short(point.attr_x)
        points[((i += 1) - 1)] = RJava.cast_to_short(Math.round(point.attr_y))
        points[((i += 1) - 1)] = start_x
        points[((i += 1) - 1)] = start_y
        # long
        poly_rgn_ = poly_rgn(points, points.attr_length)
        OS._union_rgn(new_rgn, poly_rgn_, new_rgn)
        OS._dispose_rgn(poly_rgn_)
      end
      return 0
    end
    
    typesig { [] }
    def destroy
      OS._dispose_rgn(@handle)
      @handle = 0
    end
    
    typesig { [Object] }
    # Compares the argument to the receiver, and returns true
    # if they represent the <em>same</em> object using a class
    # specific comparison.
    # 
    # @param object the object to compare with this object
    # @return <code>true</code> if the object is the same as this object and <code>false</code> otherwise
    # 
    # @see #hashCode
    def ==(object)
      if ((self).equal?(object))
        return true
      end
      if (!(object.is_a?(Region)))
        return false
      end
      region = object
      return (@handle).equal?(region.attr_handle)
    end
    
    typesig { [] }
    # Returns a rectangle which represents the rectangular
    # union of the collection of polygons the receiver
    # maintains to describe its area.
    # 
    # @return a bounding rectangle for the region
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Rectangle#union
    def get_bounds
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        bounds = Array.typed(::Java::Short).new(4) { 0 }
        OS._get_region_bounds(@handle, bounds)
        width = bounds[3] - bounds[1]
        height = bounds[2] - bounds[0]
        return Rectangle.new(bounds[1], bounds[0], width, height)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    def get_path
      callback = Callback.new(self, "regionToRects", 4)
      if ((callback.get_address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      path = NSBezierPath.bezier_path
      path.retain
      OS._qdregion_to_rects(@handle, OS.attr_k_qdparse_region_from_top_left, callback.get_address, path.attr_id)
      callback.dispose
      if (path.is_empty)
        path.append_bezier_path_with_rect(NSRect.new)
      end
      return path
    end
    
    attr_accessor :pt
    alias_method :attr_pt, :pt
    undef_method :pt
    alias_method :attr_pt=, :pt=
    undef_method :pt=
    
    attr_accessor :rect
    alias_method :attr_rect, :rect
    undef_method :rect
    alias_method :attr_rect=, :rect=
    undef_method :rect=
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def region_to_rects(message, rgn, r, path)
      if ((message).equal?(OS.attr_k_qdregion_to_rects_msg_parse))
        OS.memmove___org_eclipse_swt_graphics_region_3(@rect, r, @rect.attr_length * 2)
        @pt.attr_x = @rect[1]
        @pt.attr_y = @rect[0]
        OS.objc_msg_send(path, OS.attr_sel_move_to_point_, @pt)
        @pt.attr_x = @rect[3]
        OS.objc_msg_send(path, OS.attr_sel_line_to_point_, @pt)
        @pt.attr_x = @rect[3]
        @pt.attr_y = @rect[2]
        OS.objc_msg_send(path, OS.attr_sel_line_to_point_, @pt)
        @pt.attr_x = @rect[1]
        OS.objc_msg_send(path, OS.attr_sel_line_to_point_, @pt)
        OS.objc_msg_send(path, OS.attr_sel_close_path)
      end
      return 0
    end
    
    typesig { [] }
    # Returns an integer hash code for the receiver. Any two
    # objects that return <code>true</code> when passed to
    # <code>equals</code> must return the same value for this
    # method.
    # 
    # @return the receiver's hash
    # 
    # @see #equals
    def hash_code
      # 64
      return RJava.cast_to_int(@handle)
    end
    
    typesig { [Rectangle] }
    # Intersects the given rectangle to the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param rect the rectangle to intersect with the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def intersect(rect)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      intersect(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Intersects the given rectangle to the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param x the x coordinate of the rectangle
    # @param y the y coordinate of the rectangle
    # @param width the width coordinate of the rectangle
    # @param height the height coordinate of the rectangle
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def intersect(x, y, width, height)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (width < 0 || height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # long
        rect_rgn = OS._new_rgn
        r = Array.typed(::Java::Short).new(4) { 0 }
        OS._set_rect(r, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
        OS._rect_rgn(rect_rgn, r)
        OS._sect_rgn(@handle, rect_rgn, @handle)
        OS._dispose_rgn(rect_rgn)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Region] }
    # Intersects all of the polygons which make up the area covered
    # by the argument to the collection of polygons the receiver
    # maintains to describe its area.
    # 
    # @param region the region to intersect
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def intersect(region)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((region).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        OS._sect_rgn(@handle, region.attr_handle, @handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Returns <code>true</code> if the rectangle described by the
    # arguments intersects with any of the polygons the receiver
    # maintains to describe its area, and <code>false</code> otherwise.
    # 
    # @param x the x coordinate of the origin of the rectangle
    # @param y the y coordinate of the origin of the rectangle
    # @param width the width of the rectangle
    # @param height the height of the rectangle
    # @return <code>true</code> if the rectangle intersects with the receiver, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Rectangle#intersects(Rectangle)
    def intersects(x, y, width, height)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        r = Array.typed(::Java::Short).new(4) { 0 }
        OS._set_rect(r, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
        return OS._rect_in_rgn(r, @handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Rectangle] }
    # Returns <code>true</code> if the given rectangle intersects
    # with any of the polygons the receiver maintains to describe
    # its area and <code>false</code> otherwise.
    # 
    # @param rect the rectangle to test for intersection
    # @return <code>true</code> if the rectangle intersects with the receiver, and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Rectangle#intersects(Rectangle)
    def intersects(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return intersects(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the region has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the region.
    # When a region has been disposed, it is an error to
    # invoke any other method using the region.
    # 
    # @return <code>true</code> when the region is disposed, and <code>false</code> otherwise
    def is_disposed
      return (@handle).equal?(0)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver does not cover any
    # area in the (x, y) coordinate plane, and <code>false</code> if
    # the receiver does cover some area in the plane.
    # 
    # @return <code>true</code> if the receiver is empty, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def is_empty
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        return OS._empty_rgn(@handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Subtracts the given polygon from the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param pointArray points that describe the polygon to merge with the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def subtract(point_array)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (point_array.attr_length < 2)
        return
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # long
        poly_rgn_ = poly_rgn(point_array, point_array.attr_length)
        OS._diff_rgn(@handle, poly_rgn_, @handle)
        OS._dispose_rgn(poly_rgn_)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Rectangle] }
    # Subtracts the given rectangle from the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param rect the rectangle to subtract from the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def subtract(rect)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      subtract(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Subtracts the given rectangle from the collection of polygons
    # the receiver maintains to describe its area.
    # 
    # @param x the x coordinate of the rectangle
    # @param y the y coordinate of the rectangle
    # @param width the width coordinate of the rectangle
    # @param height the height coordinate of the rectangle
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def subtract(x, y, width, height)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (width < 0 || height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # long
        rect_rgn = OS._new_rgn
        r = Array.typed(::Java::Short).new(4) { 0 }
        OS._set_rect(r, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
        OS._rect_rgn(rect_rgn, r)
        OS._diff_rgn(@handle, rect_rgn, @handle)
        OS._dispose_rgn(rect_rgn)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Region] }
    # Subtracts all of the polygons which make up the area covered
    # by the argument from the collection of polygons the receiver
    # maintains to describe its area.
    # 
    # @param region the region to subtract
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def subtract(region)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((region).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        OS._diff_rgn(@handle, region.attr_handle, @handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Translate all of the polygons the receiver maintains to describe
    # its area by the specified point.
    # 
    # @param x the x coordinate of the point to translate
    # @param y the y coordinate of the point to translate
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def translate(x, y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        OS._offset_rgn(@handle, RJava.cast_to_short(x), RJava.cast_to_short(y))
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Point] }
    # Translate all of the polygons the receiver maintains to describe
    # its area by the specified point.
    # 
    # @param pt the point to translate
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def translate(pt)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((pt).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        translate(pt.attr_x, pt.attr_y)
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
        return "Region {*DISPOSED*}"
      end
      return "Region {" + RJava.cast_to_string(@handle) + "}"
    end
    
    private
    alias_method :initialize__region, :initialize
  end
  
end
