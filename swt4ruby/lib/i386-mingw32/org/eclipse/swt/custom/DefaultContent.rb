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
  module DefaultContentImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Java::Util, :Vector
    }
  end
  
  class DefaultContent 
    include_class_members DefaultContentImports
    include StyledTextContent
    
    class_module.module_eval {
      const_set_lazy(:LineDelimiter) { System.get_property("line.separator") }
      const_attr_reader  :LineDelimiter
    }
    
    attr_accessor :text_listeners
    alias_method :attr_text_listeners, :text_listeners
    undef_method :text_listeners
    alias_method :attr_text_listeners=, :text_listeners=
    undef_method :text_listeners=
    
    # stores text listeners for event sending
    attr_accessor :text_store
    alias_method :attr_text_store, :text_store
    undef_method :text_store
    alias_method :attr_text_store=, :text_store=
    undef_method :text_store=
    
    # stores the actual text
    attr_accessor :gap_start
    alias_method :attr_gap_start, :gap_start
    undef_method :gap_start
    alias_method :attr_gap_start=, :gap_start=
    undef_method :gap_start=
    
    # the character position start of the gap
    attr_accessor :gap_end
    alias_method :attr_gap_end, :gap_end
    undef_method :gap_end
    alias_method :attr_gap_end=, :gap_end=
    undef_method :gap_end=
    
    # the character position after the end of the gap
    attr_accessor :gap_line
    alias_method :attr_gap_line, :gap_line
    undef_method :gap_line
    alias_method :attr_gap_line=, :gap_line=
    undef_method :gap_line=
    
    # the line on which the gap exists, the gap will always be associated with one line
    attr_accessor :high_watermark
    alias_method :attr_high_watermark, :high_watermark
    undef_method :high_watermark
    alias_method :attr_high_watermark=, :high_watermark=
    undef_method :high_watermark=
    
    attr_accessor :low_watermark
    alias_method :attr_low_watermark, :low_watermark
    undef_method :low_watermark
    alias_method :attr_low_watermark=, :low_watermark=
    undef_method :low_watermark=
    
    attr_accessor :lines
    alias_method :attr_lines, :lines
    undef_method :lines
    alias_method :attr_lines=, :lines=
    undef_method :lines=
    
    # array of character positions and lengths representing the lines of text
    attr_accessor :line_count
    alias_method :attr_line_count, :line_count
    undef_method :line_count
    alias_method :attr_line_count=, :line_count=
    undef_method :line_count=
    
    # the number of lines of text
    attr_accessor :expand_exp
    alias_method :attr_expand_exp, :expand_exp
    undef_method :expand_exp
    alias_method :attr_expand_exp=, :expand_exp=
    undef_method :expand_exp=
    
    # the expansion exponent, used to increase the lines array exponentially
    attr_accessor :replace_expand_exp
    alias_method :attr_replace_expand_exp, :replace_expand_exp
    undef_method :replace_expand_exp
    alias_method :attr_replace_expand_exp=, :replace_expand_exp=
    undef_method :replace_expand_exp=
    
    typesig { [] }
    # the expansion exponent, used to increase the lines array exponentially
    # 
    # Creates a new DefaultContent and initializes it.  A <code>StyledTextContent</> will always have
    # at least one empty line.
    def initialize
      @text_listeners = Vector.new
      @text_store = CharArray.new(0)
      @gap_start = -1
      @gap_end = -1
      @gap_line = -1
      @high_watermark = 300
      @low_watermark = 50
      @lines = Array.typed(Array.typed(::Java::Int)).new(50) { Array.typed(::Java::Int).new(2) { 0 } }
      @line_count = 0
      @expand_exp = 1
      @replace_expand_exp = 1
      set_text("")
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Adds a line to the end of the line indexes array.  Increases the size of the array if necessary.
    # <code>lineCount</code> is updated to reflect the new entry.
    # <p>
    # 
    # @param start the start of the line
    # @param length the length of the line
    def add_line_index(start, length)
      size = @lines.attr_length
      if ((@line_count).equal?(size))
        # expand the lines by powers of 2
        new_lines = Array.typed(Array.typed(::Java::Int)).new(size + Compatibility.pow2(@expand_exp)) { Array.typed(::Java::Int).new(2) { 0 } }
        System.arraycopy(@lines, 0, new_lines, 0, size)
        @lines = new_lines
        @expand_exp += 1
      end
      range = Array.typed(::Java::Int).new([start, length])
      @lines[@line_count] = range
      @line_count += 1
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(Array.typed(::Java::Int)), ::Java::Int] }
    # Adds a line index to the end of <code>linesArray</code>.  Increases the
    # size of the array if necessary and returns a new array.
    # <p>
    # 
    # @param start the start of the line
    # @param length the length of the line
    # @param linesArray the array to which to add the line index
    # @param count the position at which to add the line
    # @return a new array of line indexes
    def add_line_index(start, length, lines_array, count)
      size = lines_array.attr_length
      new_lines = lines_array
      if ((count).equal?(size))
        new_lines = Array.typed(Array.typed(::Java::Int)).new(size + Compatibility.pow2(@replace_expand_exp)) { Array.typed(::Java::Int).new(2) { 0 } }
        @replace_expand_exp += 1
        System.arraycopy(lines_array, 0, new_lines, 0, size)
      end
      range = Array.typed(::Java::Int).new([start, length])
      new_lines[count] = range
      return new_lines
    end
    
    typesig { [TextChangeListener] }
    # Adds a <code>TextChangeListener</code> listening for
    # <code>TextChangingEvent</code> and <code>TextChangedEvent</code>. A
    # <code>TextChangingEvent</code> is sent before changes to the text occur.
    # A <code>TextChangedEvent</code> is sent after changes to the text
    # occurred.
    # <p>
    # 
    # @param listener the listener
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def add_text_change_listener(listener)
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = StyledTextListener.new(listener)
      @text_listeners.add_element(typed_listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Adjusts the gap to accommodate a text change that is occurring.
    # <p>
    # 
    # @param position the position at which a change is occurring
    # @param sizeHint the size of the change
    # @param line the line where the gap will go
    def adjust_gap(position, size_hint, line)
      if ((position).equal?(@gap_start))
        # text is being inserted at the gap position
        size = (@gap_end - @gap_start) - size_hint
        if (@low_watermark <= size && size <= @high_watermark)
          return
        end
      else
        if (((position + size_hint).equal?(@gap_start)) && (size_hint < 0))
          # text is being deleted at the gap position
          size = (@gap_end - @gap_start) - size_hint
          if (@low_watermark <= size && size <= @high_watermark)
            return
          end
        end
      end
      move_and_resize_gap(position, size_hint, line)
    end
    
    typesig { [] }
    # Calculates the indexes of each line in the text store.  Assumes no gap exists.
    # Optimized to do less checking.
    def index_lines
      start = 0
      @line_count = 0
      text_length = @text_store.attr_length
      i = 0
      i = start
      while i < text_length
        ch = @text_store[i]
        if ((ch).equal?(SWT::CR))
          # see if the next character is a LF
          if (i + 1 < text_length)
            ch = @text_store[i + 1]
            if ((ch).equal?(SWT::LF))
              i += 1
            end
          end
          add_line_index(start, i - start + 1)
          start = i + 1
        else
          if ((ch).equal?(SWT::LF))
            add_line_index(start, i - start + 1)
            start = i + 1
          end
        end
        i += 1
      end
      add_line_index(start, i - start)
    end
    
    typesig { [::Java::Char] }
    # Returns whether or not the given character is a line delimiter.  Both CR and LF
    # are valid line delimiters.
    # <p>
    # 
    # @param ch the character to test
    # @return true if ch is a delimiter, false otherwise
    def is_delimiter(ch)
      if ((ch).equal?(SWT::CR))
        return true
      end
      if ((ch).equal?(SWT::LF))
        return true
      end
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, String] }
    # Determine whether or not the replace operation is valid.  DefaultContent will not allow
    # the /r/n line delimiter to be split or partially deleted.
    # <p>
    # 
    # @param start	start offset of text to replace
    # @param replaceLength start offset of text to replace
    # @param newText start offset of text to replace
    # @return a boolean specifying whether or not the replace operation is valid
    def is_valid_replace(start, replace_length, new_text)
      if ((replace_length).equal?(0))
        # inserting text, see if the \r\n line delimiter is being split
        if ((start).equal?(0))
          return true
        end
        if ((start).equal?(get_char_count))
          return true
        end
        before = get_text_range(start - 1, 1).char_at(0)
        if ((before).equal?(Character.new(?\r.ord)))
          after = get_text_range(start, 1).char_at(0)
          if ((after).equal?(Character.new(?\n.ord)))
            return false
          end
        end
      else
        # deleting text, see if part of a \r\n line delimiter is being deleted
        start_char = get_text_range(start, 1).char_at(0)
        if ((start_char).equal?(Character.new(?\n.ord)))
          # see if char before delete position is \r
          if (!(start).equal?(0))
            before = get_text_range(start - 1, 1).char_at(0)
            if ((before).equal?(Character.new(?\r.ord)))
              return false
            end
          end
        end
        end_char = get_text_range(start + replace_length - 1, 1).char_at(0)
        if ((end_char).equal?(Character.new(?\r.ord)))
          # see if char after delete position is \n
          if (!(start + replace_length).equal?(get_char_count))
            after = get_text_range(start + replace_length, 1).char_at(0)
            if ((after).equal?(Character.new(?\n.ord)))
              return false
            end
          end
        end
      end
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Calculates the indexes of each line of text in the given range.
    # <p>
    # 
    # @param offset the logical start offset of the text lineate
    # @param length the length of the text to lineate, includes gap
    # @param numLines the number of lines to initially allocate for the line index array,
    # passed in for efficiency (the exact number of lines may be known)
    # @return a line indexes array where each line is identified by a start offset and
    # a length
    def index_lines(offset, length, num_lines)
      indexed_lines = Array.typed(Array.typed(::Java::Int)).new(num_lines) { Array.typed(::Java::Int).new(2) { 0 } }
      start = 0
      line_count = 0
      i = 0
      @replace_expand_exp = 1
      i = start
      while i < length
        location = i + offset
        if ((location >= @gap_start) && (location < @gap_end))
          # ignore the gap
        else
          ch = @text_store[location]
          if ((ch).equal?(SWT::CR))
            # see if the next character is a LF
            if (location + 1 < @text_store.attr_length)
              ch = @text_store[location + 1]
              if ((ch).equal?(SWT::LF))
                i += 1
              end
            end
            indexed_lines = add_line_index(start, i - start + 1, indexed_lines, line_count)
            line_count += 1
            start = i + 1
          else
            if ((ch).equal?(SWT::LF))
              indexed_lines = add_line_index(start, i - start + 1, indexed_lines, line_count)
              line_count += 1
              start = i + 1
            end
          end
        end
        i += 1
      end
      new_lines = Array.typed(Array.typed(::Java::Int)).new(line_count + 1) { Array.typed(::Java::Int).new(2) { 0 } }
      System.arraycopy(indexed_lines, 0, new_lines, 0, line_count)
      range = Array.typed(::Java::Int).new([start, i - start])
      new_lines[line_count] = range
      return new_lines
    end
    
    typesig { [::Java::Int, String] }
    # Inserts text.
    # <p>
    # 
    # @param position the position at which to insert the text
    # @param text the text to insert
    def insert(position, text)
      if ((text.length).equal?(0))
        return
      end
      start_line = get_line_at_offset(position)
      change = text.length
      end_insert = (position).equal?(get_char_count)
      adjust_gap(position, change, start_line)
      # during an insert the gap will be adjusted to start at
      # position and it will be associated with startline, the
      # inserted text will be placed in the gap
      start_line_offset = get_offset_at_line(start_line)
      # at this point, startLineLength will include the start line
      # and all of the newly inserted text
      start_line_length = get_physical_line(start_line).length
      if (change > 0)
        # shrink gap
        @gap_start += (change)
        i = 0
        while i < text.length
          @text_store[position + i] = text.char_at(i)
          i += 1
        end
      end
      # figure out the number of new lines that have been inserted
      new_lines = index_lines(start_line_offset, start_line_length, 10)
      # only insert an empty line if it is the last line in the text
      num_new_lines = new_lines.attr_length - 1
      if ((new_lines[num_new_lines][1]).equal?(0))
        # last inserted line is a new line
        if (end_insert)
          # insert happening at end of the text, leave numNewLines as
          # is since the last new line will not be concatenated with another
          # line
          num_new_lines += 1
        else
          num_new_lines -= 1
        end
      end
      # make room for the new lines
      expand_lines_by(num_new_lines)
      # shift down the lines after the replace line
      i = @line_count - 1
      while i > start_line
        @lines[i + num_new_lines] = @lines[i]
        i -= 1
      end
      # insert the new lines
      i_ = 0
      while i_ < num_new_lines
        new_lines[i_][0] += start_line_offset
        @lines[start_line + i_] = new_lines[i_]
        i_ += 1
      end
      # update the last inserted line
      if (num_new_lines < new_lines.attr_length)
        new_lines[num_new_lines][0] += start_line_offset
        @lines[start_line + num_new_lines] = new_lines[num_new_lines]
      end
      @line_count += num_new_lines
      @gap_line = get_line_at_physical_offset(@gap_start)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Moves the gap and adjusts its size in anticipation of a text change.
    # The gap is resized to actual size + the specified size and moved to the given
    # position.
    # <p>
    # 
    # @param position the position at which a change is occurring
    # @param size the size of the change
    # @param newGapLine the line where the gap should be put
    def move_and_resize_gap(position, size, new_gap_line)
      content = nil
      old_size = @gap_end - @gap_start
      new_size = 0
      if (size > 0)
        new_size = @high_watermark + size
      else
        new_size = @low_watermark - size
      end
      # remove the old gap from the lines information
      if (gap_exists)
        # adjust the line length
        @lines[@gap_line][1] = @lines[@gap_line][1] - old_size
        # adjust the offsets of the lines after the gapLine
        i = @gap_line + 1
        while i < @line_count
          @lines[i][0] = @lines[i][0] - old_size
          i += 1
        end
      end
      if (new_size < 0)
        if (old_size > 0)
          # removing the gap
          content = CharArray.new(@text_store.attr_length - old_size)
          System.arraycopy(@text_store, 0, content, 0, @gap_start)
          System.arraycopy(@text_store, @gap_end, content, @gap_start, content.attr_length - @gap_start)
          @text_store = content
        end
        @gap_start = @gap_end = position
        return
      end
      content = CharArray.new(@text_store.attr_length + (new_size - old_size))
      new_gap_start = position
      new_gap_end = new_gap_start + new_size
      if ((old_size).equal?(0))
        System.arraycopy(@text_store, 0, content, 0, new_gap_start)
        System.arraycopy(@text_store, new_gap_start, content, new_gap_end, content.attr_length - new_gap_end)
      else
        if (new_gap_start < @gap_start)
          delta = @gap_start - new_gap_start
          System.arraycopy(@text_store, 0, content, 0, new_gap_start)
          System.arraycopy(@text_store, new_gap_start, content, new_gap_end, delta)
          System.arraycopy(@text_store, @gap_end, content, new_gap_end + delta, @text_store.attr_length - @gap_end)
        else
          delta = new_gap_start - @gap_start
          System.arraycopy(@text_store, 0, content, 0, @gap_start)
          System.arraycopy(@text_store, @gap_end, content, @gap_start, delta)
          System.arraycopy(@text_store, @gap_end + delta, content, new_gap_end, content.attr_length - new_gap_end)
        end
      end
      @text_store = content
      @gap_start = new_gap_start
      @gap_end = new_gap_end
      # add the new gap to the lines information
      if (gap_exists)
        @gap_line = new_gap_line
        # adjust the line length
        gap_length = @gap_end - @gap_start
        @lines[@gap_line][1] = @lines[@gap_line][1] + (gap_length)
        # adjust the offsets of the lines after the gapLine
        i = @gap_line + 1
        while i < @line_count
          @lines[i][0] = @lines[i][0] + gap_length
          i += 1
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the number of lines that are in the specified text.
    # <p>
    # 
    # @param startOffset the start of the text to lineate
    # @param length the length of the text to lineate
    # @return number of lines
    def line_count(start_offset, length_)
      if ((length_).equal?(0))
        return 0
      end
      line_count = 0
      count = 0
      i = start_offset
      if (i >= @gap_start)
        i += @gap_end - @gap_start
      end
      while (count < length_)
        if ((i >= @gap_start) && (i < @gap_end))
          # ignore the gap
        else
          ch = @text_store[i]
          if ((ch).equal?(SWT::CR))
            # see if the next character is a LF
            if (i + 1 < @text_store.attr_length)
              ch = @text_store[i + 1]
              if ((ch).equal?(SWT::LF))
                i += 1
                count += 1
              end
            end
            line_count += 1
          else
            if ((ch).equal?(SWT::LF))
              line_count += 1
            end
          end
          count += 1
        end
        i += 1
      end
      return line_count
    end
    
    typesig { [String] }
    # Returns the number of lines that are in the specified text.
    # <p>
    # 
    # @param text the text to lineate
    # @return number of lines in the text
    def line_count(text)
      line_count = 0
      length_ = text.length
      i = 0
      while i < length_
        ch = text.char_at(i)
        if ((ch).equal?(SWT::CR))
          if (i + 1 < length_ && (text.char_at(i + 1)).equal?(SWT::LF))
            i += 1
          end
          line_count += 1
        else
          if ((ch).equal?(SWT::LF))
            line_count += 1
          end
        end
        i += 1
      end
      return line_count
    end
    
    typesig { [] }
    # @return the logical length of the text store
    def get_char_count
      length_ = @gap_end - @gap_start
      return (@text_store.attr_length - length_)
    end
    
    typesig { [::Java::Int] }
    # Returns the line at <code>index</code> without delimiters.
    # <p>
    # 
    # @param index	the index of the line to return
    # @return the logical line text (i.e., without the gap)
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when index is out of range</li>
    # </ul>
    def get_line(index)
      if ((index >= @line_count) || (index < 0))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      start = @lines[index][0]
      length_ = @lines[index][1]
      end_ = start + length_ - 1
      if (!gap_exists || (end_ < @gap_start) || (start >= @gap_end))
        # line is before or after the gap
        while ((length_ - 1 >= 0) && is_delimiter(@text_store[start + length_ - 1]))
          length_ -= 1
        end
        return String.new(@text_store, start, length_)
      else
        # gap is in the specified range, strip out the gap
        buf = StringBuffer.new
        gap_length = @gap_end - @gap_start
        buf.append(@text_store, start, @gap_start - start)
        buf.append(@text_store, @gap_end, length_ - gap_length - (@gap_start - start))
        length_ = buf.length
        while ((length_ - 1 >= 0) && is_delimiter(buf.char_at(length_ - 1)))
          length_ -= 1
        end
        return buf.to_s.substring(0, length_)
      end
    end
    
    typesig { [] }
    # Returns the line delimiter that should be used by the StyledText
    # widget when inserting new lines.  This delimiter may be different than the
    # delimiter that is used by the <code>StyledTextContent</code> interface.
    # <p>
    # 
    # @return the platform line delimiter as specified in the line.separator
    # system property.
    def get_line_delimiter
      return LineDelimiter
    end
    
    typesig { [::Java::Int] }
    # Returns the line at the given index with delimiters.
    # <p>
    # @param index	the index of the line to return
    # @return the logical line text (i.e., without the gap) with delimiters
    def get_full_line(index)
      start = @lines[index][0]
      length_ = @lines[index][1]
      end_ = start + length_ - 1
      if (!gap_exists || (end_ < @gap_start) || (start >= @gap_end))
        # line is before or after the gap
        return String.new(@text_store, start, length_)
      else
        # gap is in the specified range, strip out the gap
        buffer = StringBuffer.new
        gap_length = @gap_end - @gap_start
        buffer.append(@text_store, start, @gap_start - start)
        buffer.append(@text_store, @gap_end, length_ - gap_length - (@gap_start - start))
        return buffer.to_s
      end
    end
    
    typesig { [::Java::Int] }
    # Returns the physical line at the given index (i.e., with delimiters and the gap).
    # <p>
    # 
    # @param index the line index
    # @return the physical line
    def get_physical_line(index)
      start = @lines[index][0]
      length_ = @lines[index][1]
      return get_physical_text(start, length_)
    end
    
    typesig { [] }
    # @return the number of lines in the text store
    def get_line_count
      return @line_count
    end
    
    typesig { [::Java::Int] }
    # Returns the line at the given offset.
    # <p>
    # 
    # @param charPosition logical character offset (i.e., does not include gap)
    # @return the line index
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when charPosition is out of range</li>
    # </ul>
    def get_line_at_offset(char_position)
      if ((char_position > get_char_count) || (char_position < 0))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      position = 0
      if (char_position < @gap_start)
        # position is before the gap
        position = char_position
      else
        # position includes the gap
        position = char_position + (@gap_end - @gap_start)
      end
      # if last line and the line is not empty you can ask for
      # a position that doesn't exist (the one to the right of the
      # last character) - for inserting
      if (@line_count > 0)
        last_line = @line_count - 1
        if ((position).equal?(@lines[last_line][0] + @lines[last_line][1]))
          return last_line
        end
      end
      high = @line_count
      low = -1
      index = @line_count
      while (high - low > 1)
        index = (high + low) / 2
        line_start = @lines[index][0]
        line_end = line_start + @lines[index][1] - 1
        if (position <= line_start)
          high = index
        else
          if (position <= line_end)
            high = index
            break
          else
            low = index
          end
        end
      end
      return high
    end
    
    typesig { [::Java::Int] }
    # Returns the line index at the given physical offset.
    # <p>
    # 
    # @param position physical character offset (i.e., includes gap)
    # @return the line index
    def get_line_at_physical_offset(position)
      high = @line_count
      low = -1
      index = @line_count
      while (high - low > 1)
        index = (high + low) / 2
        line_start = @lines[index][0]
        line_end = line_start + @lines[index][1] - 1
        if (position <= line_start)
          high = index
        else
          if (position <= line_end)
            high = index
            break
          else
            low = index
          end
        end
      end
      return high
    end
    
    typesig { [::Java::Int] }
    # Returns the logical offset of the given line.
    # <p>
    # 
    # @param lineIndex index of line
    # @return the logical starting offset of the line.  When there are not any lines,
    # getOffsetAtLine(0) is a valid call that should answer 0.
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT when lineIndex is out of range</li>
    # </ul>
    def get_offset_at_line(line_index)
      if ((line_index).equal?(0))
        return 0
      end
      if ((line_index >= @line_count) || (line_index < 0))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      start = @lines[line_index][0]
      if (start > @gap_end)
        return start - (@gap_end - @gap_start)
      else
        return start
      end
    end
    
    typesig { [::Java::Int] }
    # Increases the line indexes array to accommodate more lines.
    # <p>
    # 
    # @param numLines the number to increase the array by
    def expand_lines_by(num_lines)
      size = @lines.attr_length
      if (size - @line_count >= num_lines)
        return
      end
      new_lines = Array.typed(Array.typed(::Java::Int)).new(size + Math.max(10, num_lines)) { Array.typed(::Java::Int).new(2) { 0 } }
      System.arraycopy(@lines, 0, new_lines, 0, size)
      @lines = new_lines
    end
    
    typesig { [::Java::Int] }
    # Reports an SWT error.
    # <p>
    # 
    # @param code the error code
    def error(code)
      SWT.error(code)
    end
    
    typesig { [] }
    # Returns whether or not a gap exists in the text store.
    # <p>
    # 
    # @return true if gap exists, false otherwise
    def gap_exists
      return !(@gap_start).equal?(@gap_end)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a string representing the continuous content of
    # the text store.
    # <p>
    # 
    # @param start	the physical start offset of the text to return
    # @param length the physical length of the text to return
    # @return the text
    def get_physical_text(start, length_)
      return String.new(@text_store, start, length_)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a string representing the logical content of
    # the text store (i.e., gap stripped out).
    # <p>
    # 
    # @param start the logical start offset of the text to return
    # @param length the logical length of the text to return
    # @return the text
    def get_text_range(start, length_)
      if ((@text_store).nil?)
        return ""
      end
      if ((length_).equal?(0))
        return ""
      end
      end_ = start + length_
      if (!gap_exists || (end_ < @gap_start))
        return String.new(@text_store, start, length_)
      end
      if (@gap_start < start)
        gap_length = @gap_end - @gap_start
        return String.new(@text_store, start + gap_length, length_)
      end
      buf = StringBuffer.new
      buf.append(@text_store, start, @gap_start - start)
      buf.append(@text_store, @gap_end, end_ - @gap_start)
      return buf.to_s
    end
    
    typesig { [TextChangeListener] }
    # Removes the specified <code>TextChangeListener</code>.
    # <p>
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when listener is null</li>
    # </ul>
    def remove_text_change_listener(listener)
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @text_listeners.size
        typed_listener = @text_listeners.element_at(i)
        if ((typed_listener.get_event_listener).equal?(listener))
          @text_listeners.remove_element_at(i)
          break
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, String] }
    # Replaces the text with <code>newText</code> starting at position <code>start</code>
    # for a length of <code>replaceLength</code>.  Notifies the appropriate listeners.
    # <p>
    # 
    # When sending the TextChangingEvent, <code>newLineCount</code> is the number of
    # lines that are going to be inserted and <code>replaceLineCount</code> is
    # the number of lines that are going to be deleted, based on the change
    # that occurs visually.  For example:
    # <ul>
    # <li>(replaceText,newText) ==> (replaceLineCount,newLineCount)
    # <li>("","\n") ==> (0,1)
    # <li>("\n\n","a") ==> (2,0)
    # </ul>
    # </p>
    # 
    # @param start	start offset of text to replace
    # @param replaceLength start offset of text to replace
    # @param newText start offset of text to replace
    # 
    # @exception SWTException <ul>
    # <li>ERROR_INVALID_ARGUMENT when the text change results in a multi byte
    # line delimiter being split or partially deleted.  Splitting a line
    # delimiter by inserting text between the CR and LF characters of the
    # \r\n delimiter or deleting part of this line delimiter is not supported</li>
    # </ul>
    def replace_text_range(start, replace_length, new_text)
      # check for invalid replace operations
      if (!is_valid_replace(start, replace_length, new_text))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # inform listeners
      event = StyledTextEvent.new(self)
      event.attr_type = StyledText::TextChanging
      event.attr_start = start
      event.attr_replace_line_count = line_count(start, replace_length)
      event.attr_text = new_text
      event.attr_new_line_count = line_count(new_text)
      event.attr_replace_char_count = replace_length
      event.attr_new_char_count = new_text.length
      send_text_event(event)
      # first delete the text to be replaced
      delete(start, replace_length, event.attr_replace_line_count + 1)
      # then insert the new text
      insert(start, new_text)
      # inform listeners
      event = StyledTextEvent.new(self)
      event.attr_type = StyledText::TextChanged
      send_text_event(event)
    end
    
    typesig { [StyledTextEvent] }
    # Sends the text listeners the TextChanged event.
    def send_text_event(event)
      i = 0
      while i < @text_listeners.size
        (@text_listeners.element_at(i)).handle_event(event)
        i += 1
      end
    end
    
    typesig { [String] }
    # Sets the content to text and removes the gap since there are no sensible predictions
    # about where the next change will occur.
    # <p>
    # 
    # @param text the text
    def set_text(text)
      @text_store = text.to_char_array
      @gap_start = -1
      @gap_end = -1
      @expand_exp = 1
      index_lines
      event = StyledTextEvent.new(self)
      event.attr_type = StyledText::TextSet
      event.attr_text = ""
      send_text_event(event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Deletes text.
    # <p>
    # @param position the position at which the text to delete starts
    # @param length the length of the text to delete
    # @param numLines the number of lines that are being deleted
    def delete(position, length_, num_lines)
      if ((length_).equal?(0))
        return
      end
      start_line = get_line_at_offset(position)
      start_line_offset = get_offset_at_line(start_line)
      end_line = get_line_at_offset(position + length_)
      end_text = ""
      splitting_delimiter = false
      if (position + length_ < get_char_count)
        end_text = RJava.cast_to_string(get_text_range(position + length_ - 1, 2))
        if (((end_text.char_at(0)).equal?(SWT::CR)) && ((end_text.char_at(1)).equal?(SWT::LF)))
          splitting_delimiter = true
        end
      end
      adjust_gap(position + length_, -length_, start_line)
      old_lines = index_lines(position, length_ + (@gap_end - @gap_start), num_lines)
      # enlarge the gap - the gap can be enlarged either to the
      # right or left
      if ((position + length_).equal?(@gap_start))
        @gap_start -= length_
      else
        @gap_end += length_
      end
      # figure out the length of the new concatenated line, do so by
      # finding the first line delimiter after position
      j = position
      eol = false
      while (j < @text_store.attr_length && !eol)
        if (j < @gap_start || j >= @gap_end)
          ch = @text_store[j]
          if (is_delimiter(ch))
            if (j + 1 < @text_store.attr_length)
              if ((ch).equal?(SWT::CR) && ((@text_store[j + 1]).equal?(SWT::LF)))
                j += 1
              end
            end
            eol = true
          end
        end
        j += 1
      end
      # update the line where the deletion started
      @lines[start_line][1] = (position - start_line_offset) + (j - position)
      # figure out the number of lines that have been deleted
      num_old_lines = old_lines.attr_length - 1
      if (splitting_delimiter)
        num_old_lines -= 1
      end
      # shift up the lines after the last deleted line, no need to update
      # the offset or length of the lines
      i = end_line + 1
      while i < @line_count
        @lines[i - num_old_lines] = @lines[i]
        i += 1
      end
      @line_count -= num_old_lines
      @gap_line = get_line_at_physical_offset(@gap_start)
    end
    
    private
    alias_method :initialize__default_content, :initialize
  end
  
end
