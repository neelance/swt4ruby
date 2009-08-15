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
  module RegionImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
      super(device)
      @handle = OS._create_rect_rgn(0, 0, 0, 0)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [Device, ::Java::Int] }
    # Constructs a new region given a handle to the operating
    # system resources that it should represent.
    # 
    # @param handle the handle for the result
    def initialize(device, handle)
      @handle = 0
      super(device)
      @handle = handle
    end
    
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
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      # long
      poly_rgn = OS._create_polygon_rgn(point_array, point_array.attr_length / 2, OS::ALTERNATE)
      OS._combine_rgn(@handle, @handle, poly_rgn, OS::RGN_OR)
      OS._delete_object(poly_rgn)
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
      add(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
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
      # long
      rect_rgn = OS._create_rect_rgn(x, y, x + width, y + height)
      OS._combine_rgn(@handle, @handle, rect_rgn, OS::RGN_OR)
      OS._delete_object(rect_rgn)
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
      OS._combine_rgn(@handle, @handle, region.attr_handle, OS::RGN_OR)
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
      return OS._pt_in_region(@handle, x, y)
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
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((pt).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return contains(pt.attr_x, pt.attr_y)
    end
    
    typesig { [] }
    def destroy
      OS._delete_object(@handle)
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
      rgn = object
      return (@handle).equal?(rgn.attr_handle)
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
      rect = RECT.new
      OS._get_rgn_box(@handle, rect)
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
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
      # long
      rect_rgn = OS._create_rect_rgn(x, y, x + width, y + height)
      OS._combine_rgn(@handle, @handle, rect_rgn, OS::RGN_AND)
      OS._delete_object(rect_rgn)
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
      OS._combine_rgn(@handle, @handle, region.attr_handle, OS::RGN_AND)
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
      r = RECT.new
      OS._set_rect(r, x, y, x + width, y + height)
      return OS._rect_in_region(@handle, r)
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
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
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
      rect = RECT.new
      result = OS._get_rgn_box(@handle, rect)
      if ((result).equal?(OS::NULLREGION))
        return true
      end
      return ((rect.attr_right - rect.attr_left) <= 0) || ((rect.attr_bottom - rect.attr_top) <= 0)
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
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      # long
      poly_rgn = OS._create_polygon_rgn(point_array, point_array.attr_length / 2, OS::ALTERNATE)
      OS._combine_rgn(@handle, @handle, poly_rgn, OS::RGN_DIFF)
      OS._delete_object(poly_rgn)
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
      # long
      rect_rgn = OS._create_rect_rgn(x, y, x + width, y + height)
      OS._combine_rgn(@handle, @handle, rect_rgn, OS::RGN_DIFF)
      OS._delete_object(rect_rgn)
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
      OS._combine_rgn(@handle, @handle, region.attr_handle, OS::RGN_DIFF)
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
      OS._offset_rgn(@handle, x, y)
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
      translate(pt.attr_x, pt.attr_y)
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
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new region.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Region</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param device the device on which to allocate the region
      # @param handle the handle for the region
      # @return a new region object containing the specified device and handle
      def win32_new(device, handle)
        return Region.new(device, handle)
      end
    }
    
    private
    alias_method :initialize__region, :initialize
  end
  
end
