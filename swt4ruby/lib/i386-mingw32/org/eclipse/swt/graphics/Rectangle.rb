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
  module RectangleImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :SerializableCompatibility
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class represent rectangular areas in an
  # (x, y) coordinate system. The top left corner of the rectangle
  # is specified by its x and y values, and the extent of the
  # rectangle is specified by its width and height.
  # <p>
  # The coordinate space for rectangles and points is considered
  # to have increasing values downward and to the right from its
  # origin making this the normal, computer graphics oriented notion
  # of (x, y) coordinates rather than the strict mathematical one.
  # </p>
  # <p>
  # The hashCode() method in this class uses the values of the public
  # fields to compute the hash value. When storing instances of the
  # class in hashed collections, do not modify these fields after the
  # object has been inserted.
  # </p>
  # <p>
  # Application code does <em>not</em> need to explicitly release the
  # resources managed by each instance when those instances are no longer
  # required, and thus no <code>dispose()</code> method is provided.
  # </p>
  # 
  # @see Point
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Rectangle 
    include_class_members RectangleImports
    include SerializableCompatibility
    
    # the x coordinate of the rectangle
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # the y coordinate of the rectangle
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # the width of the rectangle
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # the height of the rectangle
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3256439218279428914 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Construct a new instance of this class given the
    # x, y, width and height values.
    # 
    # @param x the x coordinate of the origin of the rectangle
    # @param y the y coordinate of the origin of the rectangle
    # @param width the width of the rectangle
    # @param height the height of the rectangle
    def initialize(x, y, width, height)
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @x = x
      @y = y
      @width = width
      @height = height
    end
    
    typesig { [Rectangle] }
    # Destructively replaces the x, y, width and height values
    # in the receiver with ones which represent the union of the
    # rectangles specified by the receiver and the given rectangle.
    # <p>
    # The union of two rectangles is the smallest single rectangle
    # that completely covers both of the areas covered by the two
    # given rectangles.
    # </p>
    # 
    # @param rect the rectangle to merge with the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    def add(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      left = @x < rect.attr_x ? @x : rect.attr_x
      top = @y < rect.attr_y ? @y : rect.attr_y
      lhs = @x + @width
      rhs = rect.attr_x + rect.attr_width
      right = lhs > rhs ? lhs : rhs
      lhs = @y + @height
      rhs = rect.attr_y + rect.attr_height
      bottom = lhs > rhs ? lhs : rhs
      @x = left
      @y = top
      @width = right - left
      @height = bottom - top
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns <code>true</code> if the point specified by the
    # arguments is inside the area specified by the receiver,
    # and <code>false</code> otherwise.
    # 
    # @param x the x coordinate of the point to test for containment
    # @param y the y coordinate of the point to test for containment
    # @return <code>true</code> if the rectangle contains the point and <code>false</code> otherwise
    def contains(x, y)
      return (x >= @x) && (y >= @y) && ((x - @x) < @width) && ((y - @y) < @height)
    end
    
    typesig { [Point] }
    # Returns <code>true</code> if the given point is inside the
    # area specified by the receiver, and <code>false</code>
    # otherwise.
    # 
    # @param pt the point to test for containment
    # @return <code>true</code> if the rectangle contains the point and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    def contains(pt)
      if ((pt).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return contains(pt.attr_x, pt.attr_y)
    end
    
    typesig { [Object] }
    # Compares the argument to the receiver, and returns true
    # if they represent the <em>same</em> object using a class
    # specific comparison.
    # 
    # @param object the object to compare with this object
    # @return <code>true</code> if the object is the same as this object and <code>false</code> otherwise
    # 
    # @see #hashCode()
    def ==(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(Rectangle)))
        return false
      end
      r = object
      return ((r.attr_x).equal?(@x)) && ((r.attr_y).equal?(@y)) && ((r.attr_width).equal?(@width)) && ((r.attr_height).equal?(@height))
    end
    
    typesig { [] }
    # Returns an integer hash code for the receiver. Any two
    # objects that return <code>true</code> when passed to
    # <code>equals</code> must return the same value for this
    # method.
    # 
    # @return the receiver's hash
    # 
    # @see #equals(Object)
    def hash_code
      return @x ^ @y ^ @width ^ @height
    end
    
    typesig { [Rectangle] }
    # Destructively replaces the x, y, width and height values
    # in the receiver with ones which represent the intersection of the
    # rectangles specified by the receiver and the given rectangle.
    # 
    # @param rect the rectangle to intersect with the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # 
    # since 3.0
    def intersect(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self).equal?(rect))
        return
      end
      left = @x > rect.attr_x ? @x : rect.attr_x
      top = @y > rect.attr_y ? @y : rect.attr_y
      lhs = @x + @width
      rhs = rect.attr_x + rect.attr_width
      right = lhs < rhs ? lhs : rhs
      lhs = @y + @height
      rhs = rect.attr_y + rect.attr_height
      bottom = lhs < rhs ? lhs : rhs
      @x = right < left ? 0 : left
      @y = bottom < top ? 0 : top
      @width = right < left ? 0 : right - left
      @height = bottom < top ? 0 : bottom - top
    end
    
    typesig { [Rectangle] }
    # Returns a new rectangle which represents the intersection
    # of the receiver and the given rectangle.
    # <p>
    # The intersection of two rectangles is the rectangle that
    # covers the area which is contained within both rectangles.
    # </p>
    # 
    # @param rect the rectangle to intersect with the receiver
    # @return the intersection of the receiver and the argument
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    def intersection(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self).equal?(rect))
        return Rectangle.new(@x, @y, @width, @height)
      end
      left = @x > rect.attr_x ? @x : rect.attr_x
      top = @y > rect.attr_y ? @y : rect.attr_y
      lhs = @x + @width
      rhs = rect.attr_x + rect.attr_width
      right = lhs < rhs ? lhs : rhs
      lhs = @y + @height
      rhs = rect.attr_y + rect.attr_height
      bottom = lhs < rhs ? lhs : rhs
      return Rectangle.new(right < left ? 0 : left, bottom < top ? 0 : top, right < left ? 0 : right - left, bottom < top ? 0 : bottom - top)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Returns <code>true</code> if the rectangle described by the
    # arguments intersects with the receiver and <code>false</code>
    # otherwise.
    # <p>
    # Two rectangles intersect if the area of the rectangle
    # representing their intersection is not empty.
    # </p>
    # 
    # @param x the x coordinate of the origin of the rectangle
    # @param y the y coordinate of the origin of the rectangle
    # @param width the width of the rectangle
    # @param height the height of the rectangle
    # @return <code>true</code> if the rectangle intersects with the receiver, and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # 
    # @see #intersection(Rectangle)
    # @see #isEmpty()
    # 
    # @since 3.0
    def intersects(x, y, width, height)
      return (x < @x + @width) && (y < @y + @height) && (x + width > @x) && (y + height > @y)
    end
    
    typesig { [Rectangle] }
    # Returns <code>true</code> if the given rectangle intersects
    # with the receiver and <code>false</code> otherwise.
    # <p>
    # Two rectangles intersect if the area of the rectangle
    # representing their intersection is not empty.
    # </p>
    # 
    # @param rect the rectangle to test for intersection
    # @return <code>true</code> if the rectangle intersects with the receiver, and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # 
    # @see #intersection(Rectangle)
    # @see #isEmpty()
    def intersects(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return (rect).equal?(self) || intersects(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver does not cover any
    # area in the (x, y) coordinate plane, and <code>false</code> if
    # the receiver does cover some area in the plane.
    # <p>
    # A rectangle is considered to <em>cover area</em> in the
    # (x, y) coordinate plane if both its width and height are
    # non-zero.
    # </p>
    # 
    # @return <code>true</code> if the receiver is empty, and <code>false</code> otherwise
    def is_empty
      return (@width <= 0) || (@height <= 0)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the rectangle
    def to_s
      return "Rectangle {" + RJava.cast_to_string(@x) + ", " + RJava.cast_to_string(@y) + ", " + RJava.cast_to_string(@width) + ", " + RJava.cast_to_string(@height) + "}" # $NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$
    end
    
    typesig { [Rectangle] }
    # Returns a new rectangle which represents the union of
    # the receiver and the given rectangle.
    # <p>
    # The union of two rectangles is the smallest single rectangle
    # that completely covers both of the areas covered by the two
    # given rectangles.
    # </p>
    # 
    # @param rect the rectangle to perform union with
    # @return the union of the receiver and the argument
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # </ul>
    # 
    # @see #add(Rectangle)
    def union(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      left = @x < rect.attr_x ? @x : rect.attr_x
      top = @y < rect.attr_y ? @y : rect.attr_y
      lhs = @x + @width
      rhs = rect.attr_x + rect.attr_width
      right = lhs > rhs ? lhs : rhs
      lhs = @y + @height
      rhs = rect.attr_y + rect.attr_height
      bottom = lhs > rhs ? lhs : rhs
      return Rectangle.new(left, top, right - left, bottom - top)
    end
    
    private
    alias_method :initialize__rectangle, :initialize
  end
  
end
