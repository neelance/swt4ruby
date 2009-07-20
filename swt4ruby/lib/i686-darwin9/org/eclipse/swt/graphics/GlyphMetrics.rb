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
  module GlyphMetricsImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class represent glyph metrics.
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
  # @see TextStyle
  # @see TextLayout
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class GlyphMetrics 
    include_class_members GlyphMetricsImports
    
    # the ascent of the GlyphMetrics
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    # the descent of the GlyphMetrics
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    # the width of the GlyphMetrics
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Constructs an instance of this class with the given
    # ascent, descent and width values.
    # 
    # @param ascent the GlyphMetrics ascent
    # @param descent the GlyphMetrics descent
    # @param width the GlyphMetrics width
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the ascent, descent or width argument is negative</li>
    # </ul>
    def initialize(ascent, descent, width)
      @ascent = 0
      @descent = 0
      @width = 0
      if (ascent < 0 || descent < 0 || width < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @ascent = ascent
      @descent = descent
      @width = width
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
    def equals(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(GlyphMetrics)))
        return false
      end
      metrics = object
      return (metrics.attr_ascent).equal?(@ascent) && (metrics.attr_descent).equal?(@descent) && (metrics.attr_width).equal?(@width)
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
      return @ascent ^ @descent ^ @width
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the <code>GlyphMetrics</code>
    def to_s
      return "GlyphMetrics {" + (@ascent).to_s + ", " + (@descent).to_s + ", " + (@width).to_s + "}" # $NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
    end
    
    private
    alias_method :initialize__glyph_metrics, :initialize
  end
  
end
