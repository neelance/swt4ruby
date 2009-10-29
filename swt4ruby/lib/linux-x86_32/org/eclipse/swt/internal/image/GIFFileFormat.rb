require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module GIFFileFormatImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  class GIFFileFormat < GIFFileFormatImports.const_get :FileFormat
    include_class_members GIFFileFormatImports
    
    attr_accessor :signature
    alias_method :attr_signature, :signature
    undef_method :signature
    alias_method :attr_signature=, :signature=
    undef_method :signature=
    
    attr_accessor :screen_width
    alias_method :attr_screen_width, :screen_width
    undef_method :screen_width
    alias_method :attr_screen_width=, :screen_width=
    undef_method :screen_width=
    
    attr_accessor :screen_height
    alias_method :attr_screen_height, :screen_height
    undef_method :screen_height
    alias_method :attr_screen_height=, :screen_height=
    undef_method :screen_height=
    
    attr_accessor :background_pixel
    alias_method :attr_background_pixel, :background_pixel
    undef_method :background_pixel
    alias_method :attr_background_pixel=, :background_pixel=
    undef_method :background_pixel=
    
    attr_accessor :bits_per_pixel
    alias_method :attr_bits_per_pixel, :bits_per_pixel
    undef_method :bits_per_pixel
    alias_method :attr_bits_per_pixel=, :bits_per_pixel=
    undef_method :bits_per_pixel=
    
    attr_accessor :default_depth
    alias_method :attr_default_depth, :default_depth
    undef_method :default_depth
    alias_method :attr_default_depth=, :default_depth=
    undef_method :default_depth=
    
    attr_accessor :disposal_method
    alias_method :attr_disposal_method, :disposal_method
    undef_method :disposal_method
    alias_method :attr_disposal_method=, :disposal_method=
    undef_method :disposal_method=
    
    attr_accessor :delay_time
    alias_method :attr_delay_time, :delay_time
    undef_method :delay_time
    alias_method :attr_delay_time=, :delay_time=
    undef_method :delay_time=
    
    attr_accessor :transparent_pixel
    alias_method :attr_transparent_pixel, :transparent_pixel
    undef_method :transparent_pixel
    alias_method :attr_transparent_pixel=, :transparent_pixel=
    undef_method :transparent_pixel=
    
    attr_accessor :repeat_count
    alias_method :attr_repeat_count, :repeat_count
    undef_method :repeat_count
    alias_method :attr_repeat_count=, :repeat_count=
    undef_method :repeat_count=
    
    class_module.module_eval {
      const_set_lazy(:GIF_APPLICATION_EXTENSION_BLOCK_ID) { 0xff }
      const_attr_reader  :GIF_APPLICATION_EXTENSION_BLOCK_ID
      
      const_set_lazy(:GIF_GRAPHICS_CONTROL_BLOCK_ID) { 0xf9 }
      const_attr_reader  :GIF_GRAPHICS_CONTROL_BLOCK_ID
      
      const_set_lazy(:GIF_PLAIN_TEXT_BLOCK_ID) { 0x1 }
      const_attr_reader  :GIF_PLAIN_TEXT_BLOCK_ID
      
      const_set_lazy(:GIF_COMMENT_BLOCK_ID) { 0xfe }
      const_attr_reader  :GIF_COMMENT_BLOCK_ID
      
      const_set_lazy(:GIF_EXTENSION_BLOCK_ID) { 0x21 }
      const_attr_reader  :GIF_EXTENSION_BLOCK_ID
      
      const_set_lazy(:GIF_IMAGE_BLOCK_ID) { 0x2c }
      const_attr_reader  :GIF_IMAGE_BLOCK_ID
      
      const_set_lazy(:GIF_TRAILER_ID) { 0x3b }
      const_attr_reader  :GIF_TRAILER_ID
      
      const_set_lazy(:GIF89a) { Array.typed(::Java::Byte).new([Character.new(?G.ord), Character.new(?I.ord), Character.new(?F.ord), Character.new(?8.ord), Character.new(?9.ord), Character.new(?a.ord)]) }
      const_attr_reader  :GIF89a
      
      const_set_lazy(:NETSCAPE2_0) { Array.typed(::Java::Byte).new([Character.new(?N.ord), Character.new(?E.ord), Character.new(?T.ord), Character.new(?S.ord), Character.new(?C.ord), Character.new(?A.ord), Character.new(?P.ord), Character.new(?E.ord), Character.new(?2.ord), Character.new(?..ord), Character.new(?0.ord)]) }
      const_attr_reader  :NETSCAPE2_0
      
      typesig { [::Java::Int] }
      # Answer a palette containing numGrays
      # shades of gray, ranging from black to white.
      def gray_ramp(num_grays)
        n = num_grays - 1
        colors = Array.typed(RGB).new(num_grays) { nil }
        i = 0
        while i < num_grays
          intensity = ((i * 3) * 256 / n)
          colors[i] = RGB.new(intensity, intensity, intensity)
          i += 1
        end
        return PaletteData.new(colors)
      end
    }
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        signature = Array.typed(::Java::Byte).new(3) { 0 }
        stream.read(signature)
        stream.unread(signature)
        return (signature[0]).equal?(Character.new(?G.ord)) && (signature[1]).equal?(Character.new(?I.ord)) && (signature[2]).equal?(Character.new(?F.ord))
      rescue JavaException => e
        return false
      end
    end
    
    typesig { [] }
    # Load the GIF image(s) stored in the input stream.
    # Return an array of ImageData representing the image(s).
    def load_from_byte_stream
      signature = Array.typed(::Java::Byte).new(3) { 0 }
      version_bytes = Array.typed(::Java::Byte).new(3) { 0 }
      block = Array.typed(::Java::Byte).new(7) { 0 }
      begin
        self.attr_input_stream.read(signature)
        if (!((signature[0]).equal?(Character.new(?G.ord)) && (signature[1]).equal?(Character.new(?I.ord)) && (signature[2]).equal?(Character.new(?F.ord))))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        self.attr_input_stream.read(version_bytes)
        self.attr_input_stream.read(block)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      @screen_width = (block[0] & 0xff) | ((block[1] & 0xff) << 8)
      self.attr_loader.attr_logical_screen_width = @screen_width
      @screen_height = (block[2] & 0xff) | ((block[3] & 0xff) << 8)
      self.attr_loader.attr_logical_screen_height = @screen_height
      bit_field = block[4]
      @background_pixel = block[5] & 0xff
      # aspect = block[6] & 0xFF;
      @bits_per_pixel = ((bit_field >> 4) & 0x7) + 1
      @default_depth = (bit_field & 0x7) + 1
      palette = nil
      if (!((bit_field & 0x80)).equal?(0))
        # Global palette.
        # sorted = (bitField & 0x8) != 0;
        palette = read_palette(1 << @default_depth)
      else
        # No global palette.
        # sorted = false;
        @background_pixel = -1
        @default_depth = @bits_per_pixel
      end
      self.attr_loader.attr_background_pixel = @background_pixel
      get_extensions
      id = read_id
      images = Array.typed(ImageData).new(0) { nil }
      while ((id).equal?(GIF_IMAGE_BLOCK_ID))
        image = read_image_block(palette)
        if (self.attr_loader.has_listeners)
          self.attr_loader.notify_listeners(ImageLoaderEvent.new(self.attr_loader, image, 3, true))
        end
        old_images = images
        images = Array.typed(ImageData).new(old_images.attr_length + 1) { nil }
        System.arraycopy(old_images, 0, images, 0, old_images.attr_length)
        images[images.attr_length - 1] = image
        begin
          # Read the 0-byte terminator at the end of the image.
          id = self.attr_input_stream.read
          if (id > 0)
            # We read the terminator earlier.
            self.attr_input_stream.unread(Array.typed(::Java::Byte).new([id]))
          end
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        get_extensions
        id = read_id
      end
      return images
    end
    
    typesig { [] }
    # Read and return the next block or extension identifier from the file.
    def read_id
      begin
        return self.attr_input_stream.read
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      return -1
    end
    
    typesig { [] }
    # Read extensions until an image descriptor appears.
    # In the future, if we care about the extensions, they
    # should be properly grouped with the image data before
    # which they appeared. Right now, the interesting parts
    # of some extensions are kept, but the rest is discarded.
    # Throw an error if an error occurs.
    def get_extensions
      id = read_id
      while (!(id).equal?(GIF_IMAGE_BLOCK_ID) && !(id).equal?(GIF_TRAILER_ID) && id > 0)
        if ((id).equal?(GIF_EXTENSION_BLOCK_ID))
          read_extension
        else
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        id = read_id
      end
      if ((id).equal?(GIF_IMAGE_BLOCK_ID) || (id).equal?(GIF_TRAILER_ID))
        begin
          self.attr_input_stream.unread(Array.typed(::Java::Byte).new([id]))
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
    end
    
    typesig { [] }
    # Read a control extension.
    # Return the extension block data.
    def read_extension
      extension_id = read_id
      if ((extension_id).equal?(GIF_COMMENT_BLOCK_ID))
        return read_comment_extension
      end
      if ((extension_id).equal?(GIF_PLAIN_TEXT_BLOCK_ID))
        return read_plain_text_extension
      end
      if ((extension_id).equal?(GIF_GRAPHICS_CONTROL_BLOCK_ID))
        return read_graphics_control_extension
      end
      if ((extension_id).equal?(GIF_APPLICATION_EXTENSION_BLOCK_ID))
        return read_application_extension
      end
      # Otherwise, we don't recognize the block. If the
      # field size is correct, we can just skip over
      # the block contents.
      begin
        ext_size = self.attr_input_stream.read
        if (ext_size < 0)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        ext = Array.typed(::Java::Byte).new(ext_size) { 0 }
        self.attr_input_stream.read(ext, 0, ext_size)
        return ext
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
        return nil
      end
    end
    
    typesig { [] }
    # We have just read the Comment extension identifier
    # from the input stream. Read in the rest of the comment
    # and return it. GIF comment blocks are variable size.
    def read_comment_extension
      begin
        comment = Array.typed(::Java::Byte).new(0) { 0 }
        block = Array.typed(::Java::Byte).new(255) { 0 }
        size = self.attr_input_stream.read
        while ((size > 0) && (!(self.attr_input_stream.read(block, 0, size)).equal?(-1)))
          old_comment = comment
          comment = Array.typed(::Java::Byte).new(old_comment.attr_length + size) { 0 }
          System.arraycopy(old_comment, 0, comment, 0, old_comment.attr_length)
          System.arraycopy(block, 0, comment, old_comment.attr_length, size)
          size = self.attr_input_stream.read
        end
        return comment
      rescue JavaException => e
        SWT.error(SWT::ERROR_IO, e)
        return nil
      end
    end
    
    typesig { [] }
    # We have just read the PlainText extension identifier
    # from the input stream. Read in the plain text info and text,
    # and return the text. GIF plain text blocks are variable size.
    def read_plain_text_extension
      begin
        # Read size of block = 0x0C.
        self.attr_input_stream.read
        # Read the text information (x, y, width, height, colors).
        info = Array.typed(::Java::Byte).new(12) { 0 }
        self.attr_input_stream.read(info)
        # Read the text.
        text = Array.typed(::Java::Byte).new(0) { 0 }
        block = Array.typed(::Java::Byte).new(255) { 0 }
        size = self.attr_input_stream.read
        while ((size > 0) && (!(self.attr_input_stream.read(block, 0, size)).equal?(-1)))
          old_text = text
          text = Array.typed(::Java::Byte).new(old_text.attr_length + size) { 0 }
          System.arraycopy(old_text, 0, text, 0, old_text.attr_length)
          System.arraycopy(block, 0, text, old_text.attr_length, size)
          size = self.attr_input_stream.read
        end
        return text
      rescue JavaException => e
        SWT.error(SWT::ERROR_IO, e)
        return nil
      end
    end
    
    typesig { [] }
    # We have just read the GraphicsControl extension identifier
    # from the input stream. Read in the control information, store
    # it, and return it.
    def read_graphics_control_extension
      begin
        # Read size of block = 0x04.
        self.attr_input_stream.read
        # Read the control block.
        control_block = Array.typed(::Java::Byte).new(4) { 0 }
        self.attr_input_stream.read(control_block)
        bit_field = control_block[0]
        # Store the user input field.
        # userInput = (bitField & 0x02) != 0;
        # Store the disposal method.
        @disposal_method = (bit_field >> 2) & 0x7
        # Store the delay time.
        @delay_time = (control_block[1] & 0xff) | ((control_block[2] & 0xff) << 8)
        # Store the transparent color.
        if (!((bit_field & 0x1)).equal?(0))
          @transparent_pixel = control_block[3] & 0xff
        else
          @transparent_pixel = -1
        end
        # Read block terminator.
        self.attr_input_stream.read
        return control_block
      rescue JavaException => e
        SWT.error(SWT::ERROR_IO, e)
        return nil
      end
    end
    
    typesig { [] }
    # We have just read the Application extension identifier
    # from the input stream.  Read in the rest of the extension,
    # look for and store 'number of repeats', and return the data.
    def read_application_extension
      begin
        # Read block data.
        block_size = self.attr_input_stream.read
        block_data = Array.typed(::Java::Byte).new(block_size) { 0 }
        self.attr_input_stream.read(block_data)
        # Read application data.
        data = Array.typed(::Java::Byte).new(0) { 0 }
        block = Array.typed(::Java::Byte).new(255) { 0 }
        size = self.attr_input_stream.read
        while ((size > 0) && (!(self.attr_input_stream.read(block, 0, size)).equal?(-1)))
          old_data = data
          data = Array.typed(::Java::Byte).new(old_data.attr_length + size) { 0 }
          System.arraycopy(old_data, 0, data, 0, old_data.attr_length)
          System.arraycopy(block, 0, data, old_data.attr_length, size)
          size = self.attr_input_stream.read
        end
        # Look for the NETSCAPE 'repeat count' field for an animated GIF.
        netscape = block_size > 7 && (block_data[0]).equal?(Character.new(?N.ord)) && (block_data[1]).equal?(Character.new(?E.ord)) && (block_data[2]).equal?(Character.new(?T.ord)) && (block_data[3]).equal?(Character.new(?S.ord)) && (block_data[4]).equal?(Character.new(?C.ord)) && (block_data[5]).equal?(Character.new(?A.ord)) && (block_data[6]).equal?(Character.new(?P.ord)) && (block_data[7]).equal?(Character.new(?E.ord))
        authentic = block_size > 10 && (block_data[8]).equal?(Character.new(?2.ord)) && (block_data[9]).equal?(Character.new(?..ord)) && (block_data[10]).equal?(Character.new(?0.ord))
        if (netscape && authentic && (data[0]).equal?(1))
          # $NON-NLS-1$ //$NON-NLS-2$
          @repeat_count = (data[1] & 0xff) | ((data[2] & 0xff) << 8)
          self.attr_loader.attr_repeat_count = @repeat_count
        end
        return data
      rescue JavaException => e
        SWT.error(SWT::ERROR_IO, e)
        return nil
      end
    end
    
    typesig { [PaletteData] }
    # Return a DeviceIndependentImage representing the
    # image block at the current position in the input stream.
    # Throw an error if an error occurs.
    def read_image_block(default_palette)
      depth = 0
      palette = nil
      block = Array.typed(::Java::Byte).new(9) { 0 }
      begin
        self.attr_input_stream.read(block)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      left = (block[0] & 0xff) | ((block[1] & 0xff) << 8)
      top = (block[2] & 0xff) | ((block[3] & 0xff) << 8)
      width = (block[4] & 0xff) | ((block[5] & 0xff) << 8)
      height = (block[6] & 0xff) | ((block[7] & 0xff) << 8)
      bit_field = block[8]
      interlaced = !((bit_field & 0x40)).equal?(0)
      # boolean sorted = (bitField & 0x20) != 0;
      if (!((bit_field & 0x80)).equal?(0))
        # Local palette.
        depth = (bit_field & 0x7) + 1
        palette = read_palette(1 << depth)
      else
        # No local palette.
        depth = @default_depth
        palette = default_palette
      end
      # Work around: Ignore the case where a GIF specifies an
      # invalid index for the transparent pixel that is larger
      # than the number of entries in the palette.
      if (@transparent_pixel > 1 << depth)
        @transparent_pixel = -1
      end
      # Promote depth to next highest supported value.
      if (!((depth).equal?(1) || (depth).equal?(4) || (depth).equal?(8)))
        if (depth < 4)
          depth = 4
        else
          depth = 8
        end
      end
      if ((palette).nil?)
        palette = gray_ramp(1 << depth)
      end
      initial_code_size = -1
      begin
        initial_code_size = self.attr_input_stream.read
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      if (initial_code_size < 0)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      image = ImageData.internal_new(width, height, depth, palette, 4, nil, 0, nil, nil, -1, @transparent_pixel, SWT::IMAGE_GIF, left, top, @disposal_method, @delay_time)
      codec = LZWCodec.new
      codec.decode(self.attr_input_stream, self.attr_loader, image, interlaced, initial_code_size)
      return image
    end
    
    typesig { [::Java::Int] }
    # Read a palette from the input stream.
    def read_palette(num_colors)
      bytes = Array.typed(::Java::Byte).new(num_colors * 3) { 0 }
      begin
        if (!(self.attr_input_stream.read(bytes)).equal?(bytes.attr_length))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      colors = Array.typed(RGB).new(num_colors) { nil }
      i = 0
      while i < num_colors
        colors[i] = RGB.new(bytes[i * 3] & 0xff, bytes[i * 3 + 1] & 0xff, bytes[i * 3 + 2] & 0xff)
        i += 1
      end
      return PaletteData.new(colors)
    end
    
    typesig { [ImageLoader] }
    def unload_into_byte_stream(loader)
      # Step 1: Acquire GIF parameters.
      data = loader.attr_data
      frame_count = data.attr_length
      multi = frame_count > 1
      first_image = data[0]
      logical_screen_width = multi ? loader.attr_logical_screen_width : first_image.attr_width
      logical_screen_height = multi ? loader.attr_logical_screen_height : first_image.attr_height
      background_pixel = loader.attr_background_pixel
      depth = first_image.attr_depth
      palette = first_image.attr_palette
      colors = palette.get_rgbs
      global_table = 1
      # Step 2: Check for validity and global/local color map.
      if (!((depth).equal?(1) || (depth).equal?(4) || (depth).equal?(8)))
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      i = 0
      while i < frame_count
        if (data[i].attr_palette.attr_is_direct)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        if (multi)
          if (!(data[i].attr_height <= logical_screen_height && data[i].attr_width <= logical_screen_width && (data[i].attr_depth).equal?(depth)))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          if ((global_table).equal?(1))
            rgbs = data[i].attr_palette.get_rgbs
            if (!(rgbs.attr_length).equal?(colors.attr_length))
              global_table = 0
            else
              j = 0
              while j < colors.attr_length
                if (!((rgbs[j].attr_red).equal?(colors[j].attr_red) && (rgbs[j].attr_green).equal?(colors[j].attr_green) && (rgbs[j].attr_blue).equal?(colors[j].attr_blue)))
                  global_table = 0
                end
                j += 1
              end
            end
          end
        end
        i += 1
      end
      begin
        # Step 3: Write the GIF89a Header and Logical Screen Descriptor.
        self.attr_output_stream.write(GIF89a)
        bit_field = global_table * 128 + (depth - 1) * 16 + depth - 1
        self.attr_output_stream.write_short(RJava.cast_to_short(logical_screen_width))
        self.attr_output_stream.write_short(RJava.cast_to_short(logical_screen_height))
        self.attr_output_stream.write(bit_field)
        self.attr_output_stream.write(background_pixel)
        self.attr_output_stream.write(0) # Aspect ratio is 1:1
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      # Step 4: Write Global Color Table if applicable.
      if ((global_table).equal?(1))
        write_palette(palette, depth)
      end
      # Step 5: Write Application Extension if applicable.
      if (multi)
        repeat_count = loader.attr_repeat_count
        begin
          self.attr_output_stream.write(GIF_EXTENSION_BLOCK_ID)
          self.attr_output_stream.write(GIF_APPLICATION_EXTENSION_BLOCK_ID)
          self.attr_output_stream.write(NETSCAPE2_0.attr_length)
          self.attr_output_stream.write(NETSCAPE2_0)
          self.attr_output_stream.write(3) # Three bytes follow
          self.attr_output_stream.write(1) # Extension type
          self.attr_output_stream.write_short(RJava.cast_to_short(repeat_count))
          self.attr_output_stream.write(0) # Block terminator
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
      frame = 0
      while frame < frame_count
        # Step 6: Write Graphics Control Block for each frame if applicable.
        if (multi || !(data[frame].attr_transparent_pixel).equal?(-1))
          write_graphics_control_block(data[frame])
        end
        # Step 7: Write Image Header for each frame.
        x = data[frame].attr_x
        y = data[frame].attr_y
        width = data[frame].attr_width
        height = data[frame].attr_height
        begin
          self.attr_output_stream.write(GIF_IMAGE_BLOCK_ID)
          block = Array.typed(::Java::Byte).new(9) { 0 }
          block[0] = (x & 0xff)
          block[1] = ((x >> 8) & 0xff)
          block[2] = (y & 0xff)
          block[3] = ((y >> 8) & 0xff)
          block[4] = (width & 0xff)
          block[5] = ((width >> 8) & 0xff)
          block[6] = (height & 0xff)
          block[7] = ((height >> 8) & 0xff)
          block[8] = ((global_table).equal?(0) ? (depth - 1) | 0x80 : 0x0)
          self.attr_output_stream.write(block)
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        # Step 8: Write Local Color Table for each frame if applicable.
        if ((global_table).equal?(0))
          write_palette(data[frame].attr_palette, depth)
        end
        # Step 9: Write the actual data for each frame.
        begin
          self.attr_output_stream.write(depth) # Minimum LZW Code size
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        LZWCodec.new.encode(self.attr_output_stream, data[frame])
        frame += 1
      end
      # Step 10: Write GIF terminator.
      begin
        self.attr_output_stream.write(0x3b)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [ImageData] }
    # Write out a GraphicsControlBlock to describe
    # the specified device independent image.
    def write_graphics_control_block(image)
      begin
        self.attr_output_stream.write(GIF_EXTENSION_BLOCK_ID)
        self.attr_output_stream.write(GIF_GRAPHICS_CONTROL_BLOCK_ID)
        gc_block = Array.typed(::Java::Byte).new(4) { 0 }
        gc_block[0] = 0
        gc_block[1] = 0
        gc_block[2] = 0
        gc_block[3] = 0
        if (!(image.attr_transparent_pixel).equal?(-1))
          gc_block[0] = 0x1
          gc_block[3] = image.attr_transparent_pixel
        end
        if (!(image.attr_disposal_method).equal?(0))
          gc_block[0] |= ((image.attr_disposal_method & 0x7) << 2)
        end
        if (!(image.attr_delay_time).equal?(0))
          gc_block[1] = (image.attr_delay_time & 0xff)
          gc_block[2] = ((image.attr_delay_time >> 8) & 0xff)
        end
        self.attr_output_stream.write(gc_block.attr_length)
        self.attr_output_stream.write(gc_block)
        self.attr_output_stream.write(0) # Block terminator
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [PaletteData, ::Java::Int] }
    # Write the specified palette to the output stream.
    def write_palette(palette, depth)
      bytes = Array.typed(::Java::Byte).new((1 << depth) * 3) { 0 }
      offset = 0
      i = 0
      while i < palette.attr_colors.attr_length
        color = palette.attr_colors[i]
        bytes[offset] = color.attr_red
        bytes[offset + 1] = color.attr_green
        bytes[offset + 2] = color.attr_blue
        offset += 3
        i += 1
      end
      begin
        self.attr_output_stream.write(bytes)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [] }
    def initialize
      @signature = nil
      @screen_width = 0
      @screen_height = 0
      @background_pixel = 0
      @bits_per_pixel = 0
      @default_depth = 0
      @disposal_method = 0
      @delay_time = 0
      @transparent_pixel = 0
      @repeat_count = 0
      super()
      @disposal_method = 0
      @delay_time = 0
      @transparent_pixel = -1
      @repeat_count = 1
    end
    
    private
    alias_method :initialize__giffile_format, :initialize
  end
  
end
