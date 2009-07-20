require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module LZWCodecImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class LZWCodec 
    include_class_members LZWCodecImports
    
    attr_accessor :bits_per_pixel
    alias_method :attr_bits_per_pixel, :bits_per_pixel
    undef_method :bits_per_pixel
    alias_method :attr_bits_per_pixel=, :bits_per_pixel=
    undef_method :bits_per_pixel=
    
    attr_accessor :block_size
    alias_method :attr_block_size, :block_size
    undef_method :block_size
    alias_method :attr_block_size=, :block_size=
    undef_method :block_size=
    
    attr_accessor :block_index
    alias_method :attr_block_index, :block_index
    undef_method :block_index
    alias_method :attr_block_index=, :block_index=
    undef_method :block_index=
    
    attr_accessor :current_byte
    alias_method :attr_current_byte, :current_byte
    undef_method :current_byte
    alias_method :attr_current_byte=, :current_byte=
    undef_method :current_byte=
    
    attr_accessor :bits_left
    alias_method :attr_bits_left, :bits_left
    undef_method :bits_left
    alias_method :attr_bits_left=, :bits_left=
    undef_method :bits_left=
    
    attr_accessor :code_size
    alias_method :attr_code_size, :code_size
    undef_method :code_size
    alias_method :attr_code_size=, :code_size=
    undef_method :code_size=
    
    attr_accessor :clear_code
    alias_method :attr_clear_code, :clear_code
    undef_method :clear_code
    alias_method :attr_clear_code=, :clear_code=
    undef_method :clear_code=
    
    attr_accessor :end_code
    alias_method :attr_end_code, :end_code
    undef_method :end_code
    alias_method :attr_end_code=, :end_code=
    undef_method :end_code=
    
    attr_accessor :new_codes
    alias_method :attr_new_codes, :new_codes
    undef_method :new_codes
    alias_method :attr_new_codes=, :new_codes=
    undef_method :new_codes=
    
    attr_accessor :top_slot
    alias_method :attr_top_slot, :top_slot
    undef_method :top_slot
    alias_method :attr_top_slot=, :top_slot=
    undef_method :top_slot=
    
    attr_accessor :current_slot
    alias_method :attr_current_slot, :current_slot
    undef_method :current_slot
    alias_method :attr_current_slot=, :current_slot=
    undef_method :current_slot=
    
    attr_accessor :image_width
    alias_method :attr_image_width, :image_width
    undef_method :image_width
    alias_method :attr_image_width=, :image_width=
    undef_method :image_width=
    
    attr_accessor :image_height
    alias_method :attr_image_height, :image_height
    undef_method :image_height
    alias_method :attr_image_height=, :image_height=
    undef_method :image_height=
    
    attr_accessor :image_x
    alias_method :attr_image_x, :image_x
    undef_method :image_x
    alias_method :attr_image_x=, :image_x=
    undef_method :image_x=
    
    attr_accessor :image_y
    alias_method :attr_image_y, :image_y
    undef_method :image_y
    alias_method :attr_image_y=, :image_y=
    undef_method :image_y=
    
    attr_accessor :pass
    alias_method :attr_pass, :pass
    undef_method :pass
    alias_method :attr_pass=, :pass=
    undef_method :pass=
    
    attr_accessor :line
    alias_method :attr_line, :line
    undef_method :line
    alias_method :attr_line=, :line=
    undef_method :line=
    
    attr_accessor :code_mask
    alias_method :attr_code_mask, :code_mask
    undef_method :code_mask
    alias_method :attr_code_mask=, :code_mask=
    undef_method :code_mask=
    
    attr_accessor :block
    alias_method :attr_block, :block
    undef_method :block
    alias_method :attr_block=, :block=
    undef_method :block=
    
    attr_accessor :line_array
    alias_method :attr_line_array, :line_array
    undef_method :line_array
    alias_method :attr_line_array=, :line_array=
    undef_method :line_array=
    
    attr_accessor :stack
    alias_method :attr_stack, :stack
    undef_method :stack
    alias_method :attr_stack=, :stack=
    undef_method :stack=
    
    attr_accessor :suffix
    alias_method :attr_suffix, :suffix
    undef_method :suffix
    alias_method :attr_suffix=, :suffix=
    undef_method :suffix=
    
    attr_accessor :prefix
    alias_method :attr_prefix, :prefix
    undef_method :prefix
    alias_method :attr_prefix=, :prefix=
    undef_method :prefix=
    
    attr_accessor :node_stack
    alias_method :attr_node_stack, :node_stack
    undef_method :node_stack
    alias_method :attr_node_stack=, :node_stack=
    undef_method :node_stack=
    
    attr_accessor :input_stream
    alias_method :attr_input_stream, :input_stream
    undef_method :input_stream
    alias_method :attr_input_stream=, :input_stream=
    undef_method :input_stream=
    
    attr_accessor :output_stream
    alias_method :attr_output_stream, :output_stream
    undef_method :output_stream
    alias_method :attr_output_stream=, :output_stream=
    undef_method :output_stream=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :loader
    alias_method :attr_loader, :loader
    undef_method :loader
    alias_method :attr_loader=, :loader=
    undef_method :loader=
    
    attr_accessor :interlaced
    alias_method :attr_interlaced, :interlaced
    undef_method :interlaced
    alias_method :attr_interlaced=, :interlaced=
    undef_method :interlaced=
    
    class_module.module_eval {
      const_set_lazy(:MASK_TABLE) { Array.typed(::Java::Int).new([0x1, 0x3, 0x7, 0xf, 0x1f, 0x3f, 0x7f, 0xff, 0x1ff, 0x3ff, 0x7ff, 0xfff]) }
      const_attr_reader  :MASK_TABLE
    }
    
    typesig { [] }
    # Decode the input.
    def decode
      code = 0
      oc = 0
      fc = 0
      buf = Array.typed(::Java::Byte).new(@image_width) { 0 }
      stack_index = 0
      buf_index = 0
      c = 0
      while (!((c = next_code)).equal?(@end_code))
        if ((c).equal?(@clear_code))
          @code_size = @bits_per_pixel + 1
          @code_mask = MASK_TABLE[@bits_per_pixel]
          @current_slot = @new_codes
          @top_slot = 1 << @code_size
          while (((c = next_code)).equal?(@clear_code))
          end
          if (!(c).equal?(@end_code))
            oc = fc = c
            buf[buf_index] = c
            ((buf_index += 1) - 1)
            if ((buf_index).equal?(@image_width))
              next_put_pixels(buf)
              buf_index = 0
            end
          end
        else
          code = c
          if (code >= @current_slot)
            code = oc
            @stack[stack_index] = fc
            ((stack_index += 1) - 1)
          end
          while (code >= @new_codes)
            @stack[stack_index] = @suffix[code]
            ((stack_index += 1) - 1)
            code = @prefix[code]
          end
          @stack[stack_index] = code
          ((stack_index += 1) - 1)
          if (@current_slot < @top_slot)
            fc = code
            @suffix[@current_slot] = fc
            @prefix[@current_slot] = oc
            ((@current_slot += 1) - 1)
            oc = c
          end
          if (@current_slot >= @top_slot)
            if (@code_size < 12)
              @code_mask = MASK_TABLE[@code_size]
              ((@code_size += 1) - 1)
              @top_slot = @top_slot + @top_slot
            end
          end
          while (stack_index > 0)
            ((stack_index -= 1) + 1)
            buf[buf_index] = @stack[stack_index]
            ((buf_index += 1) - 1)
            if ((buf_index).equal?(@image_width))
              next_put_pixels(buf)
              buf_index = 0
            end
          end
        end
      end
      if (!(buf_index).equal?(0) && @line < @image_height)
        next_put_pixels(buf)
      end
    end
    
    typesig { [LEDataInputStream, ImageLoader, ImageData, ::Java::Boolean, ::Java::Int] }
    # Decode the LZW-encoded bytes in the given byte stream
    # into the given DeviceIndependentImage.
    def decode(input_stream, loader, image, interlaced, depth)
      @input_stream = input_stream
      @loader = loader
      @image = image
      @interlaced = interlaced
      @bits_per_pixel = depth
      initialize_for_decoding
      decode
    end
    
    typesig { [] }
    # Encode the image.
    def encode
      next_put_code(@clear_code)
      last_prefix = encode_loop
      next_put_code(last_prefix)
      next_put_code(@end_code)
      # Write out last partial block
      if ((@bits_left).equal?(8))
        @block[0] = (@block_index - 1) # Nothing in last byte
      else
        @block[0] = (@block_index) # Last byte has data
      end
      write_block
      # Write out empty block to indicate the end (if needed)
      if (!(@block[0]).equal?(0))
        @block[0] = 0
        write_block
      end
    end
    
    typesig { [LEDataOutputStream, ImageData] }
    # Encode the bytes into the given byte stream
    # from the given DeviceIndependentImage.
    def encode(byte_stream, image)
      @output_stream = byte_stream
      @image = image
      initialize_for_encoding
      encode
    end
    
    typesig { [] }
    # Encoding loop broken out to allow early return.
    def encode_loop
      pixel = next_pixel
      found = false
      node = nil
      while (true)
        current_prefix = pixel
        node = @node_stack[current_prefix]
        found = true
        pixel = next_pixel
        if (pixel < 0)
          return current_prefix
        end
        while (found && (!(node.attr_children).nil?))
          node = node.attr_children
          while (found && (!(node.attr_suffix).equal?(pixel)))
            if (pixel < node.attr_suffix)
              if ((node.attr_left).nil?)
                node.attr_left = LZWNode.new
                found = false
              end
              node = node.attr_left
            else
              if ((node.attr_right).nil?)
                node.attr_right = LZWNode.new
                found = false
              end
              node = node.attr_right
            end
          end
          if (found)
            current_prefix = node.attr_code
            pixel = next_pixel
            if (pixel < 0)
              return current_prefix
            end
          end
        end
        if (found)
          node.attr_children = LZWNode.new
          node = node.attr_children
        end
        node.attr_children = nil
        node.attr_left = nil
        node.attr_right = nil
        node.attr_code = @current_slot
        node.attr_prefix = current_prefix
        node.attr_suffix = pixel
        next_put_code(current_prefix)
        ((@current_slot += 1) - 1)
        # Off by one?
        if (@current_slot < 4096)
          if (@current_slot > @top_slot)
            ((@code_size += 1) - 1)
            @code_mask = MASK_TABLE[@code_size - 1]
            @top_slot *= 2
          end
        else
          next_put_code(@clear_code)
          i = 0
          while i < @node_stack.attr_length
            @node_stack[i].attr_children = nil
            ((i += 1) - 1)
          end
          @code_size = @bits_per_pixel + 1
          @code_mask = MASK_TABLE[@code_size - 1]
          @current_slot = @new_codes
          @top_slot = 1 << @code_size
        end
      end
    end
    
    typesig { [] }
    # Initialize the receiver for decoding the given
    # byte array.
    def initialize_for_decoding
      @pass = 1
      @line = 0
      @code_size = @bits_per_pixel + 1
      @top_slot = 1 << @code_size
      @clear_code = 1 << @bits_per_pixel
      @end_code = @clear_code + 1
      @new_codes = @current_slot = @end_code + 1
      @current_byte = -1
      @block_size = @bits_left = 0
      @block_index = 0
      @code_mask = MASK_TABLE[@code_size - 1]
      @stack = Array.typed(::Java::Int).new(4096) { 0 }
      @suffix = Array.typed(::Java::Int).new(4096) { 0 }
      @prefix = Array.typed(::Java::Int).new(4096) { 0 }
      @block = Array.typed(::Java::Byte).new(256) { 0 }
      @image_width = @image.attr_width
      @image_height = @image.attr_height
    end
    
    typesig { [] }
    # Initialize the receiver for encoding the given
    # byte array.
    def initialize_for_encoding
      @interlaced = false
      @bits_per_pixel = @image.attr_depth
      @code_size = @bits_per_pixel + 1
      @top_slot = 1 << @code_size
      @clear_code = 1 << @bits_per_pixel
      @end_code = @clear_code + 1
      @new_codes = @current_slot = @end_code + 1
      @bits_left = 8
      @current_byte = 0
      @block_index = 1
      @block_size = 255
      @block = Array.typed(::Java::Byte).new(@block_size) { 0 }
      @block[0] = (@block_size - 1)
      @node_stack = Array.typed(LZWNode).new(1 << @bits_per_pixel) { nil }
      i = 0
      while i < @node_stack.attr_length
        node = LZWNode.new
        node.attr_code = i + 1
        node.attr_prefix = -1
        node.attr_suffix = i + 1
        @node_stack[i] = node
        ((i += 1) - 1)
      end
      @image_width = @image.attr_width
      @image_height = @image.attr_height
      @image_y = -1
      @line_array = Array.typed(::Java::Byte).new(@image_width) { 0 }
      @image_x = @image_width + 1 # Force a read
    end
    
    typesig { [] }
    # Answer the next code from the input byte array.
    def next_code
      code = 0
      if ((@bits_left).equal?(0))
        if (@block_index >= @block_size)
          @block_size = read_block
          @block_index = 0
          if ((@block_size).equal?(0))
            return @end_code
          end
        end
        ((@block_index += 1) - 1)
        @current_byte = @block[@block_index] & 0xff
        @bits_left = 8
        code = @current_byte
      else
        shift = @bits_left - 8
        if (shift < 0)
          code = @current_byte >> (0 - shift)
        else
          code = @current_byte << shift
        end
      end
      while (@code_size > @bits_left)
        if (@block_index >= @block_size)
          @block_size = read_block
          @block_index = 0
          if ((@block_size).equal?(0))
            return @end_code
          end
        end
        ((@block_index += 1) - 1)
        @current_byte = @block[@block_index] & 0xff
        code += @current_byte << @bits_left
        @bits_left += 8
      end
      @bits_left -= @code_size
      return code & @code_mask
    end
    
    typesig { [] }
    # Answer the next pixel to encode in the image
    def next_pixel
      ((@image_x += 1) - 1)
      if (@image_x > @image_width)
        ((@image_y += 1) - 1)
        if (@image_y >= @image_height)
          return -1
        else
          next_pixels(@line_array, @image_width)
        end
        @image_x = 1
      end
      return @line_array[@image_x - 1] & 0xff
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    # Copy a row of pixel values from the image.
    def next_pixels(buf, line_width)
      if ((@image.attr_depth).equal?(8))
        System.arraycopy(@image.attr_data, @image_y * @image.attr_bytes_per_line, buf, 0, line_width)
      else
        @image.get_pixels(0, @image_y, line_width, buf, 0)
      end
    end
    
    typesig { [::Java::Int] }
    # Output aCode to the output stream.
    def next_put_code(a_code)
      code_to_do = a_code
      code_bits_to_do = @code_size
      # Fill in the remainder of the current byte with the
      # *high-order* bits of the code.
      c = code_to_do & MASK_TABLE[@bits_left - 1]
      @current_byte = @current_byte | (c << (8 - @bits_left))
      @block[@block_index] = @current_byte
      code_bits_to_do -= @bits_left
      if (code_bits_to_do < 1)
        # The whole code fit in the first byte, so we are done.
        @bits_left -= @code_size
        if ((@bits_left).equal?(0))
          # We used the whole last byte, so get ready
          # for the next one.
          @bits_left = 8
          ((@block_index += 1) - 1)
          if (@block_index >= @block_size)
            write_block
            @block_index = 1
          end
          @current_byte = 0
        end
        return
      end
      code_to_do = code_to_do >> @bits_left
      # Fill in any remaining whole bytes (i.e. not the last one!)
      ((@block_index += 1) - 1)
      if (@block_index >= @block_size)
        write_block
        @block_index = 1
      end
      while (code_bits_to_do >= 8)
        @current_byte = code_to_do & 0xff
        @block[@block_index] = @current_byte
        code_to_do = code_to_do >> 8
        code_bits_to_do -= 8
        ((@block_index += 1) - 1)
        if (@block_index >= @block_size)
          write_block
          @block_index = 1
        end
      end
      # Fill the *low-order* bits of the last byte with the remainder
      @bits_left = 8 - code_bits_to_do
      @current_byte = code_to_do
      @block[@block_index] = @current_byte
    end
    
    typesig { [Array.typed(::Java::Byte)] }
    # Copy a row of pixel values to the image.
    def next_put_pixels(buf)
      if ((@image.attr_depth).equal?(8))
        # Slight optimization for depth = 8.
        start = @line * @image.attr_bytes_per_line
        i = 0
        while i < @image_width
          @image.attr_data[start + i] = buf[i]
          ((i += 1) - 1)
        end
      else
        @image.set_pixels(0, @line, @image_width, buf, 0)
      end
      if (@interlaced)
        if ((@pass).equal?(1))
          copy_row(buf, 7)
          @line += 8
        else
          if ((@pass).equal?(2))
            copy_row(buf, 3)
            @line += 8
          else
            if ((@pass).equal?(3))
              copy_row(buf, 1)
              @line += 4
            else
              if ((@pass).equal?(4))
                @line += 2
              else
                if ((@pass).equal?(5))
                  @line += 0
                end
              end
            end
          end
        end
        if (@line >= @image_height)
          ((@pass += 1) - 1)
          if ((@pass).equal?(2))
            @line = 4
          else
            if ((@pass).equal?(3))
              @line = 2
            else
              if ((@pass).equal?(4))
                @line = 1
              else
                if ((@pass).equal?(5))
                  @line = 0
                end
              end
            end
          end
          if (@pass < 5)
            if (@loader.has_listeners)
              image_copy = @image.clone
              @loader.notify_listeners(ImageLoaderEvent.new(@loader, image_copy, @pass - 2, false))
            end
          end
        end
        if (@line >= @image_height)
          @line = 0
        end
      else
        ((@line += 1) - 1)
      end
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    # Copy duplicate rows of pixel values to the image.
    # This is to fill in rows if the image is interlaced.
    def copy_row(buf, copies)
      i = 1
      while i <= copies
        if (@line + i < @image_height)
          @image.set_pixels(0, @line + i, @image_width, buf, 0)
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [] }
    # Read a block from the byte stream.
    # Return the number of bytes read.
    # Throw an exception if the block could not be read.
    def read_block
      size = -1
      begin
        size = @input_stream.read
        if ((size).equal?(-1))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        @block[0] = size
        size = @input_stream.read(@block, 1, size)
        if ((size).equal?(-1))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
      rescue Exception => e
        SWT.error(SWT::ERROR_IO, e)
      end
      return size
    end
    
    typesig { [] }
    # Write a block to the byte stream.
    # Throw an exception if the block could not be written.
    def write_block
      begin
        @output_stream.write(@block, 0, (@block[0] & 0xff) + 1)
      rescue Exception => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [] }
    def initialize
      @bits_per_pixel = 0
      @block_size = 0
      @block_index = 0
      @current_byte = 0
      @bits_left = 0
      @code_size = 0
      @clear_code = 0
      @end_code = 0
      @new_codes = 0
      @top_slot = 0
      @current_slot = 0
      @image_width = 0
      @image_height = 0
      @image_x = 0
      @image_y = 0
      @pass = 0
      @line = 0
      @code_mask = 0
      @block = nil
      @line_array = nil
      @stack = nil
      @suffix = nil
      @prefix = nil
      @node_stack = nil
      @input_stream = nil
      @output_stream = nil
      @image = nil
      @loader = nil
      @interlaced = false
    end
    
    private
    alias_method :initialize__lzwcodec, :initialize
  end
  
end
