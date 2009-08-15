require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module StyleRangeImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :CloneableCompatibility
    }
  end
  
  # <code>StyleRange</code> defines a set of styles for a specified
  # range of text.
  # <p>
  # The hashCode() method in this class uses the values of the public
  # fields to compute the hash value. When storing instances of the
  # class in hashed collections, do not modify these fields after the
  # object has been inserted.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class StyleRange < StyleRangeImports.const_get :TextStyle
    include_class_members StyleRangeImports
    overload_protected {
      include CloneableCompatibility
    }
    
    # the start offset of the range, zero-based from the document start
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    # the length of the range
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    # the font style of the range. It may be a combination of
    # SWT.NORMAL, SWT.ITALIC or SWT.BOLD
    # 
    # Note: the font style is not used if the <code>font</code> attribute
    # is set
    attr_accessor :font_style
    alias_method :attr_font_style, :font_style
    undef_method :font_style
    alias_method :attr_font_style=, :font_style=
    undef_method :font_style=
    
    typesig { [] }
    # Create a new style range with no styles
    # 
    # @since 3.2
    def initialize
      @start = 0
      @length = 0
      @font_style = 0
      super()
      @font_style = SWT::NORMAL
    end
    
    typesig { [TextStyle] }
    # Create a new style range from an existing text style.
    # 
    # @param style the text style to copy
    # 
    # @since 3.4
    def initialize(style)
      @start = 0
      @length = 0
      @font_style = 0
      super(style)
      @font_style = SWT::NORMAL
    end
    
    typesig { [::Java::Int, ::Java::Int, Color, Color] }
    # Create a new style range.
    # 
    # @param start start offset of the style
    # @param length length of the style
    # @param foreground foreground color of the style, null if none
    # @param background background color of the style, null if none
    def initialize(start, length, foreground, background)
      @start = 0
      @length = 0
      @font_style = 0
      super(nil, foreground, background)
      @font_style = SWT::NORMAL
      @start = start
      @length = length
    end
    
    typesig { [::Java::Int, ::Java::Int, Color, Color, ::Java::Int] }
    # Create a new style range.
    # 
    # @param start start offset of the style
    # @param length length of the style
    # @param foreground foreground color of the style, null if none
    # @param background background color of the style, null if none
    # @param fontStyle font style of the style, may be SWT.NORMAL, SWT.ITALIC or SWT.BOLD
    def initialize(start, length, foreground, background, font_style)
      initialize__style_range(start, length, foreground, background)
      @font_style = font_style
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
      if (object.is_a?(StyleRange))
        style = object
        if (!(@start).equal?(style.attr_start))
          return false
        end
        if (!(@length).equal?(style.attr_length))
          return false
        end
        return similar_to(style)
      end
      return false
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
      return super ^ @font_style
    end
    
    typesig { [] }
    def is_variable_height
      return !(self.attr_font).nil? || !(self.attr_metrics).nil? || !(self.attr_rise).equal?(0)
    end
    
    typesig { [] }
    # Returns whether or not the receiver is unstyled (i.e., does not have any
    # style attributes specified).
    # 
    # @return true if the receiver is unstyled, false otherwise.
    def is_unstyled
      if (!(self.attr_font).nil?)
        return false
      end
      if (!(self.attr_rise).equal?(0))
        return false
      end
      if (!(self.attr_metrics).nil?)
        return false
      end
      if (!(self.attr_foreground).nil?)
        return false
      end
      if (!(self.attr_background).nil?)
        return false
      end
      if (!(@font_style).equal?(SWT::NORMAL))
        return false
      end
      if (self.attr_underline)
        return false
      end
      if (self.attr_strikeout)
        return false
      end
      if (!(self.attr_border_style).equal?(SWT::NONE))
        return false
      end
      return true
    end
    
    typesig { [StyleRange] }
    # Compares the specified object to this StyleRange and answer if the two
    # are similar. The object must be an instance of StyleRange and have the
    # same field values for except for start and length.
    # 
    # @param style the object to compare with this object
    # @return true if the objects are similar, false otherwise
    def similar_to(style)
      if (!TextStyle.instance_method(:==).bind(self).call(style))
        return false
      end
      if (!(@font_style).equal?(style.attr_font_style))
        return false
      end
      return true
    end
    
    typesig { [] }
    # Returns a new StyleRange with the same values as this StyleRange.
    # 
    # @return a shallow copy of this StyleRange
    def clone
      begin
        return super
      rescue CloneNotSupportedException => e
        return nil
      end
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the StyleRange
    def to_s
      buffer = StringBuffer.new
      buffer.append("StyleRange {")
      buffer.append(@start)
      buffer.append(", ")
      buffer.append(@length)
      buffer.append(", fontStyle=")
      case (@font_style)
      when SWT::BOLD
        buffer.append("bold")
      when SWT::ITALIC
        buffer.append("italic")
      when SWT::BOLD | SWT::ITALIC
        buffer.append("bold-italic")
      else
        buffer.append("normal")
      end
      str = super
      index = str.index_of(Character.new(?{.ord))
      str = RJava.cast_to_string(str.substring(index + 1))
      if (str.length > 1)
        buffer.append(", ")
      end
      buffer.append(str)
      return buffer.to_s
    end
    
    private
    alias_method :initialize__style_range, :initialize
  end
  
end
