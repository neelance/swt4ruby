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
  module FontMetricsImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide measurement information
  # about fonts including ascent, descent, height, leading
  # space between rows, and average character width.
  # <code>FontMetrics</code> are obtained from <code>GC</code>s
  # using the <code>getFontMetrics()</code> method.
  # 
  # @see GC#getFontMetrics
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class FontMetrics 
    include_class_members FontMetricsImports
    
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    attr_accessor :average_char_width
    alias_method :attr_average_char_width, :average_char_width
    undef_method :average_char_width
    alias_method :attr_average_char_width=, :average_char_width=
    undef_method :average_char_width=
    
    attr_accessor :leading
    alias_method :attr_leading, :leading
    undef_method :leading
    alias_method :attr_leading=, :leading=
    undef_method :leading=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    typesig { [] }
    def initialize
      @ascent = 0
      @descent = 0
      @average_char_width = 0
      @leading = 0
      @height = 0
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def cocoa_new(ascent, descent, average_char_width, leading, height)
        font_metrics = FontMetrics.new
        font_metrics.attr_ascent = ascent
        font_metrics.attr_descent = descent
        font_metrics.attr_average_char_width = average_char_width
        font_metrics.attr_leading = leading
        font_metrics.attr_height = height
        return font_metrics
      end
    }
    
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
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(FontMetrics)))
        return false
      end
      metrics = object
      return (@ascent).equal?(metrics.attr_ascent) && (@descent).equal?(metrics.attr_descent) && (@average_char_width).equal?(metrics.attr_average_char_width) && (@leading).equal?(metrics.attr_leading) && (@height).equal?(metrics.attr_height)
    end
    
    typesig { [] }
    # Returns the ascent of the font described by the receiver. A
    # font's <em>ascent</em> is the distance from the baseline to the
    # top of actual characters, not including any of the leading area,
    # measured in pixels.
    # 
    # @return the ascent of the font
    def get_ascent
      return @ascent
    end
    
    typesig { [] }
    # Returns the average character width, measured in pixels,
    # of the font described by the receiver.
    # 
    # @return the average character width of the font
    def get_average_char_width
      return @average_char_width
    end
    
    typesig { [] }
    # Returns the descent of the font described by the receiver. A
    # font's <em>descent</em> is the distance from the baseline to the
    # bottom of actual characters, not including any of the leading area,
    # measured in pixels.
    # 
    # @return the descent of the font
    def get_descent
      return @descent
    end
    
    typesig { [] }
    # Returns the height of the font described by the receiver,
    # measured in pixels. A font's <em>height</em> is the sum of
    # its ascent, descent and leading area.
    # 
    # @return the height of the font
    # 
    # @see #getAscent
    # @see #getDescent
    # @see #getLeading
    def get_height
      return @height
    end
    
    typesig { [] }
    # Returns the leading area of the font described by the
    # receiver. A font's <em>leading area</em> is the space
    # above its ascent which may include accents or other marks.
    # 
    # @return the leading space of the font
    def get_leading
      return @leading
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
      return @ascent ^ @descent ^ @average_char_width ^ @leading ^ @height
    end
    
    private
    alias_method :initialize__font_metrics, :initialize
  end
  
end
