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
  module BulletImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class represent bullets in the <code>StyledText</code>.
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
  # @see StyledText#setLineBullet(int, int, Bullet)
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class Bullet 
    include_class_members BulletImports
    
    # The bullet type.  Possible values are:
    # <ul>
    # <li><code>ST.BULLET_DOT</code></li>
    # <li><code>ST.BULLET_NUMBER</code></li>
    # <li><code>ST.BULLET_LETTER_LOWER</code></li>
    # <li><code>ST.BULLET_LETTER_UPPER</code></li>
    # <li><code>ST.BULLET_TEXT</code></li>
    # <li><code>ST.BULLET_CUSTOM</code></li>
    # </ul>
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # The bullet style.
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    # The bullet text.
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :lines_indices
    alias_method :attr_lines_indices, :lines_indices
    undef_method :lines_indices
    alias_method :attr_lines_indices=, :lines_indices=
    undef_method :lines_indices=
    
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    typesig { [StyleRange] }
    # Create a new bullet with the specified style, and type <code>ST.BULLET_DOT</code>.
    # The style must have a glyph metrics set.
    # 
    # @param style the style
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the style or the glyph metrics are null</li>
    # </ul>
    def initialize(style)
      initialize__bullet(ST::BULLET_DOT, style)
    end
    
    typesig { [::Java::Int, StyleRange] }
    # Create a new bullet the specified style and type.
    # The style must have a glyph metrics set.
    # 
    # @param type the bullet type
    # @param style the style
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the style or the glyph metrics are null</li>
    # </ul>
    def initialize(type, style)
      @type = 0
      @style = nil
      @text = nil
      @lines_indices = nil
      @count = 0
      if ((style).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((style.attr_metrics).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @type = type
      @style = style
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def add_indices(start_line, line_count)
      if ((@lines_indices).nil?)
        @lines_indices = Array.typed(::Java::Int).new(line_count) { 0 }
        @count = line_count
        i = 0
        while i < line_count
          @lines_indices[i] = start_line + i
          ((i += 1) - 1)
        end
      else
        modify_start = 0
        while (modify_start < @count)
          if (start_line <= @lines_indices[modify_start])
            break
          end
          ((modify_start += 1) - 1)
        end
        modify_end = modify_start
        while (modify_end < @count)
          if (start_line + line_count <= @lines_indices[modify_end])
            break
          end
          ((modify_end += 1) - 1)
        end
        new_size = modify_start + line_count + @count - modify_end
        if (new_size > @lines_indices.attr_length)
          new_lines_indices = Array.typed(::Java::Int).new(new_size) { 0 }
          System.arraycopy(@lines_indices, 0, new_lines_indices, 0, @count)
          @lines_indices = new_lines_indices
        end
        System.arraycopy(@lines_indices, modify_end, @lines_indices, modify_start + line_count, @count - modify_end)
        i = 0
        while i < line_count
          @lines_indices[modify_start + i] = start_line + i
          ((i += 1) - 1)
        end
        @count = new_size
      end
    end
    
    typesig { [::Java::Int] }
    def index_of(line_index)
      i = 0
      while i < @count
        if ((@lines_indices[i]).equal?(line_index))
          return i
        end
        ((i += 1) - 1)
      end
      return -1
    end
    
    typesig { [] }
    def hash_code
      return @style.hash_code ^ @type
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def remove_indices(start_line, replace_line_count, new_line_count, update)
      if ((@count).equal?(0))
        return nil
      end
      if (start_line > @lines_indices[@count - 1])
        return nil
      end
      end_line = start_line + replace_line_count
      delta = new_line_count - replace_line_count
      i = 0
      while i < @count
        index = @lines_indices[i]
        if (start_line <= index)
          j = i
          while (j < @count)
            if (@lines_indices[j] >= end_line)
              break
            end
            ((j += 1) - 1)
          end
          if (update)
            k = j
            while k < @count
              @lines_indices[k] += delta
              ((k += 1) - 1)
            end
          end
          redraw_lines = Array.typed(::Java::Int).new(@count - j) { 0 }
          System.arraycopy(@lines_indices, j, redraw_lines, 0, @count - j)
          System.arraycopy(@lines_indices, j, @lines_indices, i, @count - j)
          @count -= (j - i)
          return redraw_lines
        end
        ((i += 1) - 1)
      end
      i_ = 0
      while i_ < @count
        @lines_indices[i_] += delta
        ((i_ += 1) - 1)
      end
      return nil
    end
    
    typesig { [] }
    def size
      return @count
    end
    
    private
    alias_method :initialize__bullet, :initialize
  end
  
end
