require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module MonitorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are descriptions of monitors.
  # 
  # @see Display
  # @see <a href="http://www.eclipse.org/swt/snippets/#monitor">Monitor snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class SwtMonitor 
    include_class_members MonitorImports
    
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :client_x
    alias_method :attr_client_x, :client_x
    undef_method :client_x
    alias_method :attr_client_x=, :client_x=
    undef_method :client_x=
    
    attr_accessor :client_y
    alias_method :attr_client_y, :client_y
    undef_method :client_y
    alias_method :attr_client_y=, :client_y=
    undef_method :client_y=
    
    attr_accessor :client_width
    alias_method :attr_client_width, :client_width
    undef_method :client_width
    alias_method :attr_client_width=, :client_width=
    undef_method :client_width=
    
    attr_accessor :client_height
    alias_method :attr_client_height, :client_height
    undef_method :client_height
    alias_method :attr_client_height=, :client_height=
    undef_method :client_height=
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @handle = 0
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @client_x = 0
      @client_y = 0
      @client_width = 0
      @client_height = 0
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
      if (!(object.is_a?(SwtMonitor)))
        return false
      end
      monitor = object
      return (@handle).equal?(monitor.attr_handle)
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its device. Note that on multi-monitor systems the
    # origin can be negative.
    # 
    # @return the receiver's bounding rectangle
    def get_bounds
      return Rectangle.new(@x, @y, @width, @height)
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data.
    # 
    # @return the client area
    def get_client_area
      return Rectangle.new(@client_x, @client_y, @client_width, @client_height)
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
      # 64
      return RJava.cast_to_int(@handle)
    end
    
    private
    alias_method :initialize__monitor, :initialize
  end
  
end
