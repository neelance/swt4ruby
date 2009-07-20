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
  module FontMetricsImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    # On Windows, handle is a Win32 TEXTMETRIC struct
    # On Photon, handle is a Photon FontQueryInfo struct
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
    
    typesig { [] }
    # Prevents instances from being created outside the package.
    def initialize
      @handle = nil
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
    def equals(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(FontMetrics)))
        return false
      end
      metric = (object).attr_handle
      # handle.tmFirstChar == metric.tmFirstChar &&
      # handle.tmLastChar == metric.tmLastChar &&
      # handle.tmDefaultChar == metric.tmDefaultChar &&
      # handle.tmBreakChar == metric.tmBreakChar &&
      return (@handle.attr_tm_height).equal?(metric.attr_tm_height) && (@handle.attr_tm_ascent).equal?(metric.attr_tm_ascent) && (@handle.attr_tm_descent).equal?(metric.attr_tm_descent) && (@handle.attr_tm_internal_leading).equal?(metric.attr_tm_internal_leading) && (@handle.attr_tm_external_leading).equal?(metric.attr_tm_external_leading) && (@handle.attr_tm_ave_char_width).equal?(metric.attr_tm_ave_char_width) && (@handle.attr_tm_max_char_width).equal?(metric.attr_tm_max_char_width) && (@handle.attr_tm_weight).equal?(metric.attr_tm_weight) && (@handle.attr_tm_overhang).equal?(metric.attr_tm_overhang) && (@handle.attr_tm_digitized_aspect_x).equal?(metric.attr_tm_digitized_aspect_x) && (@handle.attr_tm_digitized_aspect_y).equal?(metric.attr_tm_digitized_aspect_y) && (@handle.attr_tm_italic).equal?(metric.attr_tm_italic) && (@handle.attr_tm_underlined).equal?(metric.attr_tm_underlined) && (@handle.attr_tm_struck_out).equal?(metric.attr_tm_struck_out) && (@handle.attr_tm_pitch_and_family).equal?(metric.attr_tm_pitch_and_family) && (@handle.attr_tm_char_set).equal?(metric.attr_tm_char_set)
    end
    
    typesig { [] }
    # Returns the ascent of the font described by the receiver. A
    # font's <em>ascent</em> is the distance from the baseline to the
    # top of actual characters, not including any of the leading area,
    # measured in pixels.
    # 
    # @return the ascent of the font
    def get_ascent
      return @handle.attr_tm_ascent - @handle.attr_tm_internal_leading
    end
    
    typesig { [] }
    # Returns the average character width, measured in pixels,
    # of the font described by the receiver.
    # 
    # @return the average character width of the font
    def get_average_char_width
      return @handle.attr_tm_ave_char_width
    end
    
    typesig { [] }
    # Returns the descent of the font described by the receiver. A
    # font's <em>descent</em> is the distance from the baseline to the
    # bottom of actual characters, not including any of the leading area,
    # measured in pixels.
    # 
    # @return the descent of the font
    def get_descent
      return @handle.attr_tm_descent
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
      return @handle.attr_tm_height
    end
    
    typesig { [] }
    # Returns the leading area of the font described by the
    # receiver. A font's <em>leading area</em> is the space
    # above its ascent which may include accents or other marks.
    # 
    # @return the leading space of the font
    def get_leading
      return @handle.attr_tm_internal_leading
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
      # handle.tmFirstChar ^ handle.tmLastChar ^ handle.tmDefaultChar ^ handle.tmBreakChar ^
      return @handle.attr_tm_height ^ @handle.attr_tm_ascent ^ @handle.attr_tm_descent ^ @handle.attr_tm_internal_leading ^ @handle.attr_tm_external_leading ^ @handle.attr_tm_ave_char_width ^ @handle.attr_tm_max_char_width ^ @handle.attr_tm_weight ^ @handle.attr_tm_overhang ^ @handle.attr_tm_digitized_aspect_x ^ @handle.attr_tm_digitized_aspect_y ^ @handle.attr_tm_italic ^ @handle.attr_tm_underlined ^ @handle.attr_tm_struck_out ^ @handle.attr_tm_pitch_and_family ^ @handle.attr_tm_char_set
    end
    
    class_module.module_eval {
      typesig { [TEXTMETRIC] }
      # Invokes platform specific functionality to allocate a new font metrics.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>FontMetrics</code>. It is marked public only so that
      # it can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param handle the <code>TEXTMETRIC</code> containing information about a font
      # @return a new font metrics object containing the specified <code>TEXTMETRIC</code>
      def win32_new(handle)
        font_metrics = FontMetrics.new
        font_metrics.attr_handle = handle
        return font_metrics
      end
    }
    
    private
    alias_method :initialize__font_metrics, :initialize
  end
  
end
