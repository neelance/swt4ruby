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
  module PointImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :SerializableCompatibility
    }
  end
  
  # Instances of this class represent places on the (x, y)
  # coordinate plane.
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
  # @see Rectangle
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Point 
    include_class_members PointImports
    include SerializableCompatibility
    
    # the x coordinate of the point
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # the y coordinate of the point
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257002163938146354 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    # Constructs a new point with the given x and y coordinates.
    # 
    # @param x the x coordinate of the new point
    # @param y the y coordinate of the new point
    def initialize(x, y)
      @x = 0
      @y = 0
      @x = x
      @y = y
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
      if (!(object.is_a?(Point)))
        return false
      end
      p = object
      return ((p.attr_x).equal?(@x)) && ((p.attr_y).equal?(@y))
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
      return @x ^ @y
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the point
    def to_s
      return "Point {" + RJava.cast_to_string(@x) + ", " + RJava.cast_to_string(@y) + "}" # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
    end
    
    private
    alias_method :initialize__point, :initialize
  end
  
end
