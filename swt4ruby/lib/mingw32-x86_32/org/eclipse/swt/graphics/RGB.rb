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
  module RGBImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :SerializableCompatibility
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class are descriptions of colors in
  # terms of the primary additive color model (red, green and
  # blue). A color may be described in terms of the relative
  # intensities of these three primary colors. The brightness
  # of each color is specified by a value in the range 0 to 255,
  # where 0 indicates no color (blackness) and 255 indicates
  # maximum intensity.
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
  # @see Color
  # @see <a href="http://www.eclipse.org/swt/snippets/#color">Color and RGB snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class RGB 
    include_class_members RGBImports
    include SerializableCompatibility
    
    # the red component of the RGB
    attr_accessor :red
    alias_method :attr_red, :red
    undef_method :red
    alias_method :attr_red=, :red=
    undef_method :red=
    
    # the green component of the RGB
    attr_accessor :green
    alias_method :attr_green, :green
    undef_method :green
    alias_method :attr_green=, :green=
    undef_method :green=
    
    # the blue component of the RGB
    attr_accessor :blue
    alias_method :attr_blue, :blue
    undef_method :blue
    alias_method :attr_blue=, :blue=
    undef_method :blue=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3258415023461249074 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Constructs an instance of this class with the given
    # red, green and blue values.
    # 
    # @param red the red component of the new instance
    # @param green the green component of the new instance
    # @param blue the blue component of the new instance
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the red, green or blue argument is not between 0 and 255</li>
    # </ul>
    def initialize(red, green, blue)
      @red = 0
      @green = 0
      @blue = 0
      if ((red > 255) || (red < 0) || (green > 255) || (green < 0) || (blue > 255) || (blue < 0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @red = red
      @green = green
      @blue = blue
    end
    
    typesig { [::Java::Float, ::Java::Float, ::Java::Float] }
    # Constructs an instance of this class with the given
    # hue, saturation, and brightness.
    # 
    # @param hue the hue value for the HSB color (from 0 to 360)
    # @param saturation the saturation value for the HSB color (from 0 to 1)
    # @param brightness the brightness value for the HSB color (from 0 to 1)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the hue is not between 0 and 360 or
    # the saturation or brightness is not between 0 and 1</li>
    # </ul>
    # 
    # @since 3.2
    def initialize(hue, saturation, brightness)
      @red = 0
      @green = 0
      @blue = 0
      if (hue < 0 || hue > 360 || saturation < 0 || saturation > 1 || brightness < 0 || brightness > 1)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      r = 0.0
      g = 0.0
      b = 0.0
      if ((saturation).equal?(0))
        r = g = b = brightness
      else
        if ((hue).equal?(360))
          hue = 0
        end
        hue /= 60
        i = RJava.cast_to_int(hue)
        f = hue - i
        p = brightness * (1 - saturation)
        q = brightness * (1 - saturation * f)
        t = brightness * (1 - saturation * (1 - f))
        case (i)
        when 0
          r = brightness
          g = t
          b = p
        when 1
          r = q
          g = brightness
          b = p
        when 2
          r = p
          g = brightness
          b = t
        when 3
          r = p
          g = q
          b = brightness
        when 4
          r = t
          g = p
          b = brightness
        when 5
          r = brightness
          g = p
          b = q
        else
          r = brightness
          g = p
          b = q
        end
      end
      @red = RJava.cast_to_int((r * 255 + 0.5))
      @green = RJava.cast_to_int((g * 255 + 0.5))
      @blue = RJava.cast_to_int((b * 255 + 0.5))
    end
    
    typesig { [] }
    # Returns the hue, saturation, and brightness of the color.
    # 
    # @return color space values in float format (hue, saturation, brightness)
    # 
    # @since 3.2
    def get_hsb
      r = @red / 255
      g = @green / 255
      b = @blue / 255
      max_ = Math.max(Math.max(r, g), b)
      min_ = Math.min(Math.min(r, g), b)
      delta = max_ - min_
      hue = 0
      brightness = max_
      saturation = (max_).equal?(0) ? 0 : (max_ - min_) / max_
      if (!(delta).equal?(0))
        if ((r).equal?(max_))
          hue = (g - b) / delta
        else
          if ((g).equal?(max_))
            hue = 2 + (b - r) / delta
          else
            hue = 4 + (r - g) / delta
          end
        end
        hue *= 60
        if (hue < 0)
          hue += 360
        end
      end
      return Array.typed(::Java::Float).new([hue, saturation, brightness])
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
      if (!(object.is_a?(RGB)))
        return false
      end
      rgb = object
      return ((rgb.attr_red).equal?(@red)) && ((rgb.attr_green).equal?(@green)) && ((rgb.attr_blue).equal?(@blue))
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
      return (@blue << 16) | (@green << 8) | @red
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the <code>RGB</code>
    def to_s
      return "RGB {" + RJava.cast_to_string(@red) + ", " + RJava.cast_to_string(@green) + ", " + RJava.cast_to_string(@blue) + "}" # $NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
    end
    
    private
    alias_method :initialize__rgb, :initialize
  end
  
end
