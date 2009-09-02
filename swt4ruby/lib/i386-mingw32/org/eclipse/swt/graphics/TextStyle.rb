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
  module TextStyleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
    }
  end
  
  # <code>TextStyle</code> defines a set of styles that can be applied
  # to a range of text.
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
  # @see TextLayout
  # @see Font
  # @see Color
  # @see <a href="http://www.eclipse.org/swt/snippets/#textlayout">TextLayout, TextStyle snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class TextStyle 
    include_class_members TextStyleImports
    
    # the font of the style
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    # the foreground of the style
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    # the background of the style
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    # the underline flag of the style. The default underline
    # style is <code>SWT.UNDERLINE_SINGLE</code>.
    # 
    # 
    # @since 3.1
    attr_accessor :underline
    alias_method :attr_underline, :underline
    undef_method :underline
    alias_method :attr_underline=, :underline=
    undef_method :underline=
    
    # the underline color of the style
    # 
    # @since 3.4
    attr_accessor :underline_color
    alias_method :attr_underline_color, :underline_color
    undef_method :underline_color
    alias_method :attr_underline_color=, :underline_color=
    undef_method :underline_color=
    
    # the underline style. This style is ignored when
    # <code>underline</code> is false.
    # <p>
    # This value should be one of <code>SWT.UNDERLINE_SINGLE</code>,
    # <code>SWT.UNDERLINE_DOUBLE</code>, <code>SWT.UNDERLINE_ERROR</code>,
    # or <code>SWT.UNDERLINE_SQUIGGLE</code>.
    # </p>
    # 
    # @see SWT#UNDERLINE_SINGLE
    # @see SWT#UNDERLINE_DOUBLE
    # @see SWT#UNDERLINE_ERROR
    # @see SWT#UNDERLINE_SQUIGGLE
    # @see SWT#UNDERLINE_LINK
    # 
    # @since 3.4
    attr_accessor :underline_style
    alias_method :attr_underline_style, :underline_style
    undef_method :underline_style
    alias_method :attr_underline_style=, :underline_style=
    undef_method :underline_style=
    
    # the strikeout flag of the style
    # 
    # @since 3.1
    attr_accessor :strikeout
    alias_method :attr_strikeout, :strikeout
    undef_method :strikeout
    alias_method :attr_strikeout=, :strikeout=
    undef_method :strikeout=
    
    # the strikeout color of the style
    # 
    # @since 3.4
    attr_accessor :strikeout_color
    alias_method :attr_strikeout_color, :strikeout_color
    undef_method :strikeout_color
    alias_method :attr_strikeout_color=, :strikeout_color=
    undef_method :strikeout_color=
    
    # the border style. The default border style is <code>SWT.NONE</code>.
    # <p>
    # This value should be one of <code>SWT.BORDER_SOLID</code>,
    # <code>SWT.BORDER_DASH</code>,<code>SWT.BORDER_DOT</code> or
    # <code>SWT.NONE</code>.
    # </p>
    # 
    # @see SWT#BORDER_SOLID
    # @see SWT#BORDER_DASH
    # @see SWT#BORDER_DOT
    # @see SWT#NONE
    # 
    # @since 3.4
    attr_accessor :border_style
    alias_method :attr_border_style, :border_style
    undef_method :border_style
    alias_method :attr_border_style=, :border_style=
    undef_method :border_style=
    
    # the border color of the style
    # 
    # @since 3.4
    attr_accessor :border_color
    alias_method :attr_border_color, :border_color
    undef_method :border_color
    alias_method :attr_border_color=, :border_color=
    undef_method :border_color=
    
    # the GlyphMetrics of the style
    # 
    # @since 3.2
    attr_accessor :metrics
    alias_method :attr_metrics, :metrics
    undef_method :metrics
    alias_method :attr_metrics=, :metrics=
    undef_method :metrics=
    
    # the baseline rise of the style.
    # 
    # @since 3.2
    attr_accessor :rise
    alias_method :attr_rise, :rise
    undef_method :rise
    alias_method :attr_rise=, :rise=
    undef_method :rise=
    
    # the data. An user data field. It can be used to hold the HREF when the range
    # is used as a link or the embed object when the range is used with <code>GlyphMetrics</code>.
    # <p>
    # 
    # @since 3.5
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    typesig { [] }
    # Create an empty text style.
    # 
    # @since 3.4
    def initialize
      @font = nil
      @foreground = nil
      @background = nil
      @underline = false
      @underline_color = nil
      @underline_style = 0
      @strikeout = false
      @strikeout_color = nil
      @border_style = 0
      @border_color = nil
      @metrics = nil
      @rise = 0
      @data = nil
    end
    
    typesig { [Font, Color, Color] }
    # Create a new text style with the specified font, foreground
    # and background.
    # 
    # @param font the font of the style, <code>null</code> if none
    # @param foreground the foreground color of the style, <code>null</code> if none
    # @param background the background color of the style, <code>null</code> if none
    def initialize(font, foreground, background)
      @font = nil
      @foreground = nil
      @background = nil
      @underline = false
      @underline_color = nil
      @underline_style = 0
      @strikeout = false
      @strikeout_color = nil
      @border_style = 0
      @border_color = nil
      @metrics = nil
      @rise = 0
      @data = nil
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(foreground).nil? && foreground.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(background).nil? && background.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @font = font
      @foreground = foreground
      @background = background
    end
    
    typesig { [TextStyle] }
    # Create a new text style from an existing text style.
    # 
    # @param style the style to copy
    # 
    # @since 3.4
    def initialize(style)
      @font = nil
      @foreground = nil
      @background = nil
      @underline = false
      @underline_color = nil
      @underline_style = 0
      @strikeout = false
      @strikeout_color = nil
      @border_style = 0
      @border_color = nil
      @metrics = nil
      @rise = 0
      @data = nil
      if ((style).nil?)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @font = style.attr_font
      @foreground = style.attr_foreground
      @background = style.attr_background
      @underline = style.attr_underline
      @underline_color = style.attr_underline_color
      @underline_style = style.attr_underline_style
      @strikeout = style.attr_strikeout
      @strikeout_color = style.attr_strikeout_color
      @border_style = style.attr_border_style
      @border_color = style.attr_border_color
      @metrics = style.attr_metrics
      @rise = style.attr_rise
      @data = style.attr_data
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
      if ((object).nil?)
        return false
      end
      if (!(object.is_a?(TextStyle)))
        return false
      end
      style = object
      if (!(@foreground).nil?)
        if (!(@foreground == style.attr_foreground))
          return false
        end
      else
        if (!(style.attr_foreground).nil?)
          return false
        end
      end
      if (!(@background).nil?)
        if (!(@background == style.attr_background))
          return false
        end
      else
        if (!(style.attr_background).nil?)
          return false
        end
      end
      if (!(@font).nil?)
        if (!(@font == style.attr_font))
          return false
        end
      else
        if (!(style.attr_font).nil?)
          return false
        end
      end
      if (!(@metrics).nil? || !(style.attr_metrics).nil?)
        return false
      end
      if (!(@underline).equal?(style.attr_underline))
        return false
      end
      if (!(@underline_style).equal?(style.attr_underline_style))
        return false
      end
      if (!(@border_style).equal?(style.attr_border_style))
        return false
      end
      if (!(@strikeout).equal?(style.attr_strikeout))
        return false
      end
      if (!(@rise).equal?(style.attr_rise))
        return false
      end
      if (!(@underline_color).nil?)
        if (!(@underline_color == style.attr_underline_color))
          return false
        end
      else
        if (!(style.attr_underline_color).nil?)
          return false
        end
      end
      if (!(@strikeout_color).nil?)
        if (!(@strikeout_color == style.attr_strikeout_color))
          return false
        end
      else
        if (!(style.attr_strikeout_color).nil?)
          return false
        end
      end
      if (!(@underline_style).equal?(style.attr_underline_style))
        return false
      end
      if (!(@border_color).nil?)
        if (!(@border_color == style.attr_border_color))
          return false
        end
      else
        if (!(style.attr_border_color).nil?)
          return false
        end
      end
      if (!(@data).nil?)
        if (!(@data == style.attr_data))
          return false
        end
      else
        if (!(style.attr_data).nil?)
          return false
        end
      end
      return true
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
      hash = 0
      if (!(@foreground).nil?)
        hash ^= @foreground.hash_code
      end
      if (!(@background).nil?)
        hash ^= @background.hash_code
      end
      if (!(@font).nil?)
        hash ^= @font.hash_code
      end
      if (!(@metrics).nil?)
        hash ^= @metrics.hash_code
      end
      if (@underline)
        hash ^= hash
      end
      if (@strikeout)
        hash ^= hash
      end
      hash ^= @rise
      if (!(@underline_color).nil?)
        hash ^= @underline_color.hash_code
      end
      if (!(@strikeout_color).nil?)
        hash ^= @strikeout_color.hash_code
      end
      if (!(@border_color).nil?)
        hash ^= @border_color.hash_code
      end
      hash ^= @underline_style
      return hash
    end
    
    typesig { [TextStyle] }
    def is_adherent_border(style)
      if ((self).equal?(style))
        return true
      end
      if ((style).nil?)
        return false
      end
      if (!(@border_style).equal?(style.attr_border_style))
        return false
      end
      if (!(@border_color).nil?)
        if (!(@border_color == style.attr_border_color))
          return false
        end
      else
        if (!(style.attr_border_color).nil?)
          return false
        end
        if (!(@foreground).nil?)
          if (!(@foreground == style.attr_foreground))
            return false
          end
        else
          if (!(style.attr_foreground).nil?)
            return false
          end
        end
      end
      return true
    end
    
    typesig { [TextStyle] }
    def is_adherent_underline(style)
      if ((self).equal?(style))
        return true
      end
      if ((style).nil?)
        return false
      end
      if (!(@underline).equal?(style.attr_underline))
        return false
      end
      if (!(@underline_style).equal?(style.attr_underline_style))
        return false
      end
      if (!(@underline_color).nil?)
        if (!(@underline_color == style.attr_underline_color))
          return false
        end
      else
        if (!(style.attr_underline_color).nil?)
          return false
        end
        if (!(@foreground).nil?)
          if (!(@foreground == style.attr_foreground))
            return false
          end
        else
          if (!(style.attr_foreground).nil?)
            return false
          end
        end
      end
      return true
    end
    
    typesig { [TextStyle] }
    def is_adherent_strikeout(style)
      if ((self).equal?(style))
        return true
      end
      if ((style).nil?)
        return false
      end
      if (!(@strikeout).equal?(style.attr_strikeout))
        return false
      end
      if (!(@strikeout_color).nil?)
        if (!(@strikeout_color == style.attr_strikeout_color))
          return false
        end
      else
        if (!(style.attr_strikeout_color).nil?)
          return false
        end
        if (!(@foreground).nil?)
          if (!(@foreground == style.attr_foreground))
            return false
          end
        else
          if (!(style.attr_foreground).nil?)
            return false
          end
        end
      end
      return true
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the <code>TextStyle</code>
    def to_s
      buffer = StringBuffer.new("TextStyle {") # $NON-NLS-1$
      start_length = buffer.length
      if (!(@font).nil?)
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("font=") # $NON-NLS-1$
        buffer.append(@font)
      end
      if (!(@foreground).nil?)
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("foreground=") # $NON-NLS-1$
        buffer.append(@foreground)
      end
      if (!(@background).nil?)
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("background=") # $NON-NLS-1$
        buffer.append(@background)
      end
      if (@underline)
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("underline=") # $NON-NLS-1$
        case (@underline_style)
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        # $NON-NLS-1$
        when SWT::UNDERLINE_SINGLE
          buffer.append("single")
        when SWT::UNDERLINE_DOUBLE
          buffer.append("double")
        when SWT::UNDERLINE_SQUIGGLE
          buffer.append("squiggle")
        when SWT::UNDERLINE_ERROR
          buffer.append("error")
        when SWT::UNDERLINE_LINK
          buffer.append("link")
        end # $NON-NLS-1$
        if (!(@underline_color).nil?)
          buffer.append(", underlineColor=") # $NON-NLS-1$
          buffer.append(@underline_color)
        end
      end
      if (@strikeout)
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("striked out") # $NON-NLS-1$
        if (!(@strikeout_color).nil?)
          buffer.append(", strikeoutColor=") # $NON-NLS-1$
          buffer.append(@strikeout_color)
        end
      end
      if (!(@border_style).equal?(SWT::NONE))
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("border=") # $NON-NLS-1$
        case (@border_style)
        # $NON-NLS-1$
        # $NON-NLS-1$
        when SWT::BORDER_SOLID
          buffer.append("solid")
        when SWT::BORDER_DOT
          buffer.append("dot")
        when SWT::BORDER_DASH
          buffer.append("dash")
        end # $NON-NLS-1$
        if (!(@border_color).nil?)
          buffer.append(", borderColor=") # $NON-NLS-1$
          buffer.append(@border_color)
        end
      end
      if (!(@rise).equal?(0))
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("rise=") # $NON-NLS-1$
        buffer.append(@rise)
      end
      if (!(@metrics).nil?)
        if (buffer.length > start_length)
          buffer.append(", ")
        end # $NON-NLS-1$
        buffer.append("metrics=") # $NON-NLS-1$
        buffer.append(@metrics)
      end
      buffer.append("}") # $NON-NLS-1$
      return buffer.to_s
    end
    
    private
    alias_method :initialize__text_style, :initialize
  end
  
end
