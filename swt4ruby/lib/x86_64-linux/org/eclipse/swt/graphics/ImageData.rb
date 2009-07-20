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
  module ImageDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :CloneableCompatibility
    }
  end
  
  # Instances of this class are device-independent descriptions
  # of images. They are typically used as an intermediate format
  # between loading from or writing to streams and creating an
  # <code>Image</code>.
  # <p>
  # Note that the public fields <code>x</code>, <code>y</code>,
  # <code>disposalMethod</code> and <code>delayTime</code> are
  # typically only used when the image is in a set of images used
  # for animation.
  # </p>
  # 
  # @see Image
  # @see ImageLoader
  # @see <a href="http://www.eclipse.org/swt/snippets/#image">ImageData snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ImageAnalyzer</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ImageData 
    include_class_members ImageDataImports
    include CloneableCompatibility
    
    # The width of the image, in pixels.
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # The height of the image, in pixels.
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # The color depth of the image, in bits per pixel.
    # <p>
    # Note that a depth of 8 or less does not necessarily
    # mean that the image is palette indexed, or
    # conversely that a depth greater than 8 means that
    # the image is direct color.  Check the associated
    # PaletteData's isDirect field for such determinations.
    attr_accessor :depth
    alias_method :attr_depth, :depth
    undef_method :depth
    alias_method :attr_depth=, :depth=
    undef_method :depth=
    
    # The scanline padding.
    # <p>
    # If one scanline of the image is not a multiple of
    # this number, it will be padded with zeros until it is.
    # </p>
    attr_accessor :scanline_pad
    alias_method :attr_scanline_pad, :scanline_pad
    undef_method :scanline_pad
    alias_method :attr_scanline_pad=, :scanline_pad=
    undef_method :scanline_pad=
    
    # The number of bytes per scanline.
    # <p>
    # This is a multiple of the scanline padding.
    # </p>
    attr_accessor :bytes_per_line
    alias_method :attr_bytes_per_line, :bytes_per_line
    undef_method :bytes_per_line
    alias_method :attr_bytes_per_line=, :bytes_per_line=
    undef_method :bytes_per_line=
    
    # The pixel data of the image.
    # <p>
    # Note that for 16 bit depth images the pixel data is stored
    # in least significant byte order; however, for 24bit and
    # 32bit depth images the pixel data is stored in most
    # significant byte order.
    # </p>
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # The color table for the image.
    attr_accessor :palette
    alias_method :attr_palette, :palette
    undef_method :palette
    alias_method :attr_palette=, :palette=
    undef_method :palette=
    
    # The transparent pixel.
    # <p>
    # Pixels with this value are transparent.
    # </p><p>
    # The default is -1 which means 'no transparent pixel'.
    # </p>
    attr_accessor :transparent_pixel
    alias_method :attr_transparent_pixel, :transparent_pixel
    undef_method :transparent_pixel
    alias_method :attr_transparent_pixel=, :transparent_pixel=
    undef_method :transparent_pixel=
    
    # An icon-specific field containing the data from the icon mask.
    # <p>
    # This is a 1 bit bitmap stored with the most significant
    # bit first.  The number of bytes per scanline is
    # '((width + 7) / 8 + (maskPad - 1)) / maskPad * maskPad'.
    # </p><p>
    # The default is null which means 'no transparency mask'.
    # </p>
    attr_accessor :mask_data
    alias_method :attr_mask_data, :mask_data
    undef_method :mask_data
    alias_method :attr_mask_data=, :mask_data=
    undef_method :mask_data=
    
    # An icon-specific field containing the scanline pad of the mask.
    # <p>
    # If one scanline of the transparency mask is not a
    # multiple of this number, it will be padded with zeros until
    # it is.
    # </p>
    attr_accessor :mask_pad
    alias_method :attr_mask_pad, :mask_pad
    undef_method :mask_pad
    alias_method :attr_mask_pad=, :mask_pad=
    undef_method :mask_pad=
    
    # The alpha data of the image.
    # <p>
    # Every pixel can have an <em>alpha blending</em> value that
    # varies from 0, meaning fully transparent, to 255 meaning
    # fully opaque.  The number of bytes per scanline is
    # 'width'.
    # </p>
    attr_accessor :alpha_data
    alias_method :attr_alpha_data, :alpha_data
    undef_method :alpha_data
    alias_method :attr_alpha_data=, :alpha_data=
    undef_method :alpha_data=
    
    # The global alpha value to be used for every pixel.
    # <p>
    # If this value is set, the <code>alphaData</code> field
    # is ignored and when the image is rendered each pixel
    # will be blended with the background an amount
    # proportional to this value.
    # </p><p>
    # The default is -1 which means 'no global alpha value'
    # </p>
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
    # The type of file from which the image was read.
    # 
    # It is expressed as one of the following values:
    # <dl>
    # <dt><code>IMAGE_BMP</code></dt>
    # <dd>Windows BMP file format, no compression</dd>
    # <dt><code>IMAGE_BMP_RLE</code></dt>
    # <dd>Windows BMP file format, RLE compression if appropriate</dd>
    # <dt><code>IMAGE_GIF</code></dt>
    # <dd>GIF file format</dd>
    # <dt><code>IMAGE_ICO</code></dt>
    # <dd>Windows ICO file format</dd>
    # <dt><code>IMAGE_JPEG</code></dt>
    # <dd>JPEG file format</dd>
    # <dt><code>IMAGE_PNG</code></dt>
    # <dd>PNG file format</dd>
    # </dl>
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # The x coordinate of the top left corner of the image
    # within the logical screen (this field corresponds to
    # the GIF89a Image Left Position value).
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # The y coordinate of the top left corner of the image
    # within the logical screen (this field corresponds to
    # the GIF89a Image Top Position value).
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # A description of how to dispose of the current image
    # before displaying the next.
    # 
    # It is expressed as one of the following values:
    # <dl>
    # <dt><code>DM_UNSPECIFIED</code></dt>
    # <dd>disposal method not specified</dd>
    # <dt><code>DM_FILL_NONE</code></dt>
    # <dd>do nothing - leave the image in place</dd>
    # <dt><code>DM_FILL_BACKGROUND</code></dt>
    # <dd>fill with the background color</dd>
    # <dt><code>DM_FILL_PREVIOUS</code></dt>
    # <dd>restore the previous picture</dd>
    # </dl>
    # (this field corresponds to the GIF89a Disposal Method value)
    attr_accessor :disposal_method
    alias_method :attr_disposal_method, :disposal_method
    undef_method :disposal_method
    alias_method :attr_disposal_method=, :disposal_method=
    undef_method :disposal_method=
    
    # The time to delay before displaying the next image
    # in an animation (this field corresponds to the GIF89a
    # Delay Time value).
    attr_accessor :delay_time
    alias_method :attr_delay_time, :delay_time
    undef_method :delay_time
    alias_method :attr_delay_time=, :delay_time=
    undef_method :delay_time=
    
    class_module.module_eval {
      # Arbitrary channel width data to 8-bit conversion table.
      const_set_lazy(:ANY_TO_EIGHT) { Array.typed(::Java::Byte).new(9) { 0 } }
      const_attr_reader  :ANY_TO_EIGHT
      
      when_class_loaded do
        b = 0
        while b < 9
          data = ANY_TO_EIGHT[b] = Array.typed(::Java::Byte).new(1 << b) { 0 }
          if ((b).equal?(0))
            (b += 1)
            next
          end
          inc = 0
          bit = 0x10000
          while !((bit >>= b)).equal?(0)
            inc |= bit
          end
          v = 0
          p = 0
          while v < 0x10000
            data[((p += 1) - 1)] = (v >> 8)
            v += inc
          end
          (b += 1)
        end
      end
      
      const_set_lazy(:ONE_TO_ONE_MAPPING) { ANY_TO_EIGHT[8] }
      const_attr_reader  :ONE_TO_ONE_MAPPING
      
      # Scaled 8x8 Bayer dither matrix.
      const_set_lazy(:DITHER_MATRIX) { Array.typed(Array.typed(::Java::Int)).new([Array.typed(::Java::Int).new([0xfc0000, 0x7c0000, 0xdc0000, 0x5c0000, 0xf40000, 0x740000, 0xd40000, 0x540000]), Array.typed(::Java::Int).new([0x3c0000, 0xbc0000, 0x1c0000, 0x9c0000, 0x340000, 0xb40000, 0x140000, 0x940000]), Array.typed(::Java::Int).new([0xcc0000, 0x4c0000, 0xec0000, 0x6c0000, 0xc40000, 0x440000, 0xe40000, 0x640000]), Array.typed(::Java::Int).new([0xc0000, 0x8c0000, 0x2c0000, 0xac0000, 0x40000, 0x840000, 0x240000, 0xa40000]), Array.typed(::Java::Int).new([0xf00000, 0x700000, 0xd00000, 0x500000, 0xf80000, 0x780000, 0xd80000, 0x580000]), Array.typed(::Java::Int).new([0x300000, 0xb00000, 0x100000, 0x900000, 0x380000, 0xb80000, 0x180000, 0x980000]), Array.typed(::Java::Int).new([0xc00000, 0x400000, 0xe00000, 0x600000, 0xc80000, 0x480000, 0xe80000, 0x680000]), Array.typed(::Java::Int).new([0x0, 0x800000, 0x200000, 0xa00000, 0x80000, 0x880000, 0x280000, 0xa80000])]) }
      const_attr_reader  :DITHER_MATRIX
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, PaletteData] }
    # Constructs a new, empty ImageData with the given width, height,
    # depth and palette. The data will be initialized to an (all zero)
    # array of the appropriate size.
    # 
    # @param width the width of the image
    # @param height the height of the image
    # @param depth the depth of the image
    # @param palette the palette of the image (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the width or height is negative, or if the depth is not
    # one of 1, 2, 4, 8, 16, 24 or 32</li>
    # <li>ERROR_NULL_ARGUMENT - if the palette is null</li>
    # </ul>
    def initialize(width, height, depth, palette)
      initialize__image_data(width, height, depth, palette, 4, nil, 0, nil, nil, -1, -1, SWT::IMAGE_UNDEFINED, 0, 0, 0, 0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, PaletteData, ::Java::Int, Array.typed(::Java::Byte)] }
    # Constructs a new, empty ImageData with the given width, height,
    # depth, palette, scanlinePad and data.
    # 
    # @param width the width of the image
    # @param height the height of the image
    # @param depth the depth of the image
    # @param palette the palette of the image
    # @param scanlinePad the padding of each line, in bytes
    # @param data the data of the image
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the width or height is negative, or if the depth is not
    # one of 1, 2, 4, 8, 16, 24 or 32, or the data array is too small to contain the image data</li>
    # <li>ERROR_NULL_ARGUMENT - if the palette or data is null</li>
    # <li>ERROR_CANNOT_BE_ZERO - if the scanlinePad is zero</li>
    # </ul>
    def initialize(width, height, depth, palette, scanline_pad, data)
      initialize__image_data(width, height, depth, palette, scanline_pad, check_data(data), 0, nil, nil, -1, -1, SWT::IMAGE_UNDEFINED, 0, 0, 0, 0)
    end
    
    typesig { [InputStream] }
    # Constructs an <code>ImageData</code> loaded from the specified
    # input stream. Throws an error if an error occurs while loading
    # the image, or if the image has an unsupported type.  Application
    # code is still responsible for closing the input stream.
    # <p>
    # This constructor is provided for convenience when loading a single
    # image only. If the stream contains multiple images, only the first
    # one will be loaded. To load multiple images, use
    # <code>ImageLoader.load()</code>.
    # </p><p>
    # This constructor may be used to load a resource as follows:
    # </p>
    # <pre>
    # static ImageData loadImageData (Class clazz, String string) {
    # InputStream stream = clazz.getResourceAsStream (string);
    # if (stream == null) return null;
    # ImageData imageData = null;
    # try {
    # imageData = new ImageData (stream);
    # } catch (SWTException ex) {
    # } finally {
    # try {
    # stream.close ();
    # } catch (IOException ex) {}
    # }
    # return imageData;
    # }
    # </pre>
    # 
    # @param stream the input stream to load the image from (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the stream is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while reading from the stream</li>
    # <li>ERROR_INVALID_IMAGE - if the image stream contains invalid data</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image stream contains an unrecognized format</li>
    # </ul>
    # 
    # @see ImageLoader#load(InputStream)
    def initialize(stream)
      @width = 0
      @height = 0
      @depth = 0
      @scanline_pad = 0
      @bytes_per_line = 0
      @data = nil
      @palette = nil
      @transparent_pixel = 0
      @mask_data = nil
      @mask_pad = 0
      @alpha_data = nil
      @alpha = 0
      @type = 0
      @x = 0
      @y = 0
      @disposal_method = 0
      @delay_time = 0
      data = ImageDataLoader.load(stream)
      if (data.attr_length < 1)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      i = data[0]
      set_all_fields(i.attr_width, i.attr_height, i.attr_depth, i.attr_scanline_pad, i.attr_bytes_per_line, i.attr_data, i.attr_palette, i.attr_transparent_pixel, i.attr_mask_data, i.attr_mask_pad, i.attr_alpha_data, i.attr_alpha, i.attr_type, i.attr_x, i.attr_y, i.attr_disposal_method, i.attr_delay_time)
    end
    
    typesig { [String] }
    # Constructs an <code>ImageData</code> loaded from a file with the
    # specified name. Throws an error if an error occurs loading the
    # image, or if the image has an unsupported type.
    # <p>
    # This constructor is provided for convenience when loading a single
    # image only. If the file contains multiple images, only the first
    # one will be loaded. To load multiple images, use
    # <code>ImageLoader.load()</code>.
    # </p>
    # 
    # @param filename the name of the file to load the image from (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the file name is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while reading from the file</li>
    # <li>ERROR_INVALID_IMAGE - if the image file contains invalid data</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image file contains an unrecognized format</li>
    # </ul>
    def initialize(filename)
      @width = 0
      @height = 0
      @depth = 0
      @scanline_pad = 0
      @bytes_per_line = 0
      @data = nil
      @palette = nil
      @transparent_pixel = 0
      @mask_data = nil
      @mask_pad = 0
      @alpha_data = nil
      @alpha = 0
      @type = 0
      @x = 0
      @y = 0
      @disposal_method = 0
      @delay_time = 0
      data = ImageDataLoader.load(filename)
      if (data.attr_length < 1)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      i = data[0]
      set_all_fields(i.attr_width, i.attr_height, i.attr_depth, i.attr_scanline_pad, i.attr_bytes_per_line, i.attr_data, i.attr_palette, i.attr_transparent_pixel, i.attr_mask_data, i.attr_mask_pad, i.attr_alpha_data, i.attr_alpha, i.attr_type, i.attr_x, i.attr_y, i.attr_disposal_method, i.attr_delay_time)
    end
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @width = 0
      @height = 0
      @depth = 0
      @scanline_pad = 0
      @bytes_per_line = 0
      @data = nil
      @palette = nil
      @transparent_pixel = 0
      @mask_data = nil
      @mask_pad = 0
      @alpha_data = nil
      @alpha = 0
      @type = 0
      @x = 0
      @y = 0
      @disposal_method = 0
      @delay_time = 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, PaletteData, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Constructs an image data by giving values for all non-computable fields.
    # <p>
    # This method is for internal use, and is not described further.
    # </p>
    def initialize(width, height, depth, palette, scanline_pad, data, mask_pad, mask_data, alpha_data, alpha, transparent_pixel, type, x, y, disposal_method, delay_time)
      @width = 0
      @height = 0
      @depth = 0
      @scanline_pad = 0
      @bytes_per_line = 0
      @data = nil
      @palette = nil
      @transparent_pixel = 0
      @mask_data = nil
      @mask_pad = 0
      @alpha_data = nil
      @alpha = 0
      @type = 0
      @x = 0
      @y = 0
      @disposal_method = 0
      @delay_time = 0
      if ((palette).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((depth).equal?(1) || (depth).equal?(2) || (depth).equal?(4) || (depth).equal?(8) || (depth).equal?(16) || (depth).equal?(24) || (depth).equal?(32)))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (width <= 0 || height <= 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((scanline_pad).equal?(0))
        SWT.error(SWT::ERROR_CANNOT_BE_ZERO)
      end
      bytes_per_line = (((width * depth + 7) / 8) + (scanline_pad - 1)) / scanline_pad * scanline_pad
      # When the image is being loaded from a PNG, we need to use the theoretical minimum
      # number of bytes per line to check whether there is enough data, because the actual
      # number of bytes per line is calculated based on the given depth, which may be larger
      # than the actual depth of the PNG.
      min_bytes_per_line = (type).equal?(SWT::IMAGE_PNG) ? ((((width + 7) / 8) + 3) / 4) * 4 : bytes_per_line
      if (!(data).nil? && data.attr_length < min_bytes_per_line * height)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      set_all_fields(width, height, depth, scanline_pad, bytes_per_line, !(data).nil? ? data : Array.typed(::Java::Byte).new(bytes_per_line * height) { 0 }, palette, transparent_pixel, mask_data, mask_pad, alpha_data, alpha, type, x, y, disposal_method, delay_time)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), PaletteData, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Initializes all fields in the receiver. This method must be called
    # by all public constructors to ensure that all fields are initialized
    # for a new ImageData object. If a new field is added to the class,
    # then it must be added to this method.
    # <p>
    # This method is for internal use, and is not described further.
    # </p>
    def set_all_fields(width, height, depth, scanline_pad, bytes_per_line, data, palette, transparent_pixel, mask_data, mask_pad, alpha_data, alpha, type, x, y, disposal_method, delay_time)
      @width = width
      @height = height
      @depth = depth
      @scanline_pad = scanline_pad
      @bytes_per_line = bytes_per_line
      @data = data
      @palette = palette
      @transparent_pixel = transparent_pixel
      @mask_data = mask_data
      @mask_pad = mask_pad
      @alpha_data = alpha_data
      @alpha = alpha
      @type = type
      @x = x
      @y = y
      @disposal_method = disposal_method
      @delay_time = delay_time
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, PaletteData, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Invokes internal SWT functionality to create a new instance of
      # this class.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>ImageData</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is subject
      # to change without notice, and should never be called from
      # application code.
      # </p>
      # <p>
      # This method is for internal use, and is not described further.
      # </p>
      def internal_new(width, height, depth, palette, scanline_pad, data, mask_pad, mask_data, alpha_data, alpha, transparent_pixel, type, x, y, disposal_method, delay_time)
        return ImageData.new(width, height, depth, palette, scanline_pad, data, mask_pad, mask_data, alpha_data, alpha, transparent_pixel, type, x, y, disposal_method, delay_time)
      end
    }
    
    typesig { [::Java::Int] }
    def color_mask_image(pixel)
      mask = ImageData.new(@width, @height, 1, bw_palette, 2, nil, 0, nil, nil, -1, -1, SWT::IMAGE_UNDEFINED, 0, 0, 0, 0)
      row = Array.typed(::Java::Int).new(@width) { 0 }
      y = 0
      while y < @height
        get_pixels(0, y, @width, row, 0)
        i = 0
        while i < @width
          if (!(pixel).equal?(-1) && (row[i]).equal?(pixel))
            row[i] = 0
          else
            row[i] = 1
          end
          ((i += 1) - 1)
        end
        mask.set_pixels(0, y, @width, row, 0)
        ((y += 1) - 1)
      end
      return mask
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Byte)] }
      def check_data(data)
        if ((data).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return data
      end
    }
    
    typesig { [] }
    # Returns a new instance of the same class as the receiver,
    # whose slots have been filled in with <em>copies</em> of
    # the values in the slots of the receiver. That is, the
    # returned object is a <em>deep copy</em> of the receiver.
    # 
    # @return a copy of the receiver.
    def clone
      clone_data = Array.typed(::Java::Byte).new(@data.attr_length) { 0 }
      System.arraycopy(@data, 0, clone_data, 0, @data.attr_length)
      clone_mask_data = nil
      if (!(@mask_data).nil?)
        clone_mask_data = Array.typed(::Java::Byte).new(@mask_data.attr_length) { 0 }
        System.arraycopy(@mask_data, 0, clone_mask_data, 0, @mask_data.attr_length)
      end
      clone_alpha_data = nil
      if (!(@alpha_data).nil?)
        clone_alpha_data = Array.typed(::Java::Byte).new(@alpha_data.attr_length) { 0 }
        System.arraycopy(@alpha_data, 0, clone_alpha_data, 0, @alpha_data.attr_length)
      end
      return ImageData.new(@width, @height, @depth, @palette, @scanline_pad, clone_data, @mask_pad, clone_mask_data, clone_alpha_data, @alpha, @transparent_pixel, @type, @x, @y, @disposal_method, @delay_time)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the alpha value at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's alpha data.
    # The alpha value is between 0 (transparent) and
    # 255 (opaque).
    # 
    # @param x the x coordinate of the pixel to get the alpha value of
    # @param y the y coordinate of the pixel to get the alpha value of
    # @return the alpha value at the given coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if either argument is out of range</li>
    # </ul>
    def get_alpha(x, y)
      if (x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@alpha_data).nil?)
        return 255
      end
      return @alpha_data[y * @width + x] & 0xff
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    # Returns <code>getWidth</code> alpha values starting at offset
    # <code>x</code> in scanline <code>y</code> in the receiver's alpha
    # data starting at <code>startIndex</code>. The alpha values
    # are unsigned, between <code>(byte)0</code> (transparent) and
    # <code>(byte)255</code> (opaque).
    # 
    # @param x the x position of the pixel to begin getting alpha values
    # @param y the y position of the pixel to begin getting alpha values
    # @param getWidth the width of the data to get
    # @param alphas the buffer in which to put the alpha values
    # @param startIndex the offset into the image to begin getting alpha values
    # 
    # @exception IndexOutOfBoundsException if getWidth is too large
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if pixels is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # <li>ERROR_INVALID_ARGUMENT - if getWidth is negative</li>
    # </ul>
    def get_alphas(x, y, get_width, alphas, start_index)
      if ((alphas).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (get_width < 0 || x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((get_width).equal?(0))
        return
      end
      if ((@alpha_data).nil?)
        end_index = start_index + get_width
        i = start_index
        while i < end_index
          alphas[i] = 255
          ((i += 1) - 1)
        end
        return
      end
      # may throw an IndexOutOfBoundsException
      System.arraycopy(@alpha_data, y * @width + x, alphas, start_index, get_width)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the pixel value at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's data.
    # 
    # @param x the x position of the pixel to get
    # @param y the y position of the pixel to get
    # @return the pixel at the given coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if either argument is out of bounds</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH if the depth is not one of 1, 2, 4, 8, 16, 24 or 32</li>
    # </ul>
    def get_pixel(x, y)
      if (x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      index = 0
      the_byte = 0
      mask = 0
      case (@depth)
      when 32
        index = (y * @bytes_per_line) + (x * 4)
        return ((@data[index] & 0xff) << 24) + ((@data[index + 1] & 0xff) << 16) + ((@data[index + 2] & 0xff) << 8) + (@data[index + 3] & 0xff)
      when 24
        index = (y * @bytes_per_line) + (x * 3)
        return ((@data[index] & 0xff) << 16) + ((@data[index + 1] & 0xff) << 8) + (@data[index + 2] & 0xff)
      when 16
        index = (y * @bytes_per_line) + (x * 2)
        return ((@data[index + 1] & 0xff) << 8) + (@data[index] & 0xff)
      when 8
        index = (y * @bytes_per_line) + x
        return @data[index] & 0xff
      when 4
        index = (y * @bytes_per_line) + (x >> 1)
        the_byte = @data[index] & 0xff
        if (((x & 0x1)).equal?(0))
          return the_byte >> 4
        else
          return the_byte & 0xf
        end
      when 2
        index = (y * @bytes_per_line) + (x >> 2)
        the_byte = @data[index] & 0xff
        offset = 3 - (x % 4)
        mask = 3 << (offset * 2)
        return (the_byte & mask) >> (offset * 2)
      when 1
        index = (y * @bytes_per_line) + (x >> 3)
        the_byte = @data[index] & 0xff
        mask = 1 << (7 - (x & 0x7))
        if (((the_byte & mask)).equal?(0))
          return 0
        else
          return 1
        end
      end
      SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    # Returns <code>getWidth</code> pixel values starting at offset
    # <code>x</code> in scanline <code>y</code> in the receiver's
    # data starting at <code>startIndex</code>.
    # 
    # @param x the x position of the first pixel to get
    # @param y the y position of the first pixel to get
    # @param getWidth the width of the data to get
    # @param pixels the buffer in which to put the pixels
    # @param startIndex the offset into the byte array to begin storing pixels
    # 
    # @exception IndexOutOfBoundsException if getWidth is too large
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if pixels is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # <li>ERROR_INVALID_ARGUMENT - if getWidth is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH - if the depth is not one of 1, 2, 4 or 8
    # (For higher depths, use the int[] version of this method.)</li>
    # </ul>
    def get_pixels(x, y, get_width, pixels, start_index)
      if ((pixels).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (get_width < 0 || x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((get_width).equal?(0))
        return
      end
      index = 0
      the_byte = 0
      mask = 0
      n = get_width
      i = start_index
      src_x = x
      src_y = y
      case (@depth)
      when 8
        index = (y * @bytes_per_line) + x
        j = 0
        while j < get_width
          pixels[i] = @data[index]
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            ((index += 1) - 1)
          end
          ((j += 1) - 1)
        end
        return
      when 4
        index = (y * @bytes_per_line) + (x >> 1)
        if (((x & 0x1)).equal?(1))
          the_byte = @data[index] & 0xff
          pixels[i] = (the_byte & 0xf)
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            ((index += 1) - 1)
          end
        end
        while (n > 1)
          the_byte = @data[index] & 0xff
          pixels[i] = (the_byte >> 4)
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            pixels[i] = (the_byte & 0xf)
            ((i += 1) - 1)
            ((n -= 1) + 1)
            ((src_x += 1) - 1)
            if (src_x >= @width)
              ((src_y += 1) - 1)
              index = src_y * @bytes_per_line
              src_x = 0
            else
              ((index += 1) - 1)
            end
          end
        end
        if (n > 0)
          the_byte = @data[index] & 0xff
          pixels[i] = (the_byte >> 4)
        end
        return
      when 2
        index = (y * @bytes_per_line) + (x >> 2)
        the_byte = @data[index] & 0xff
        offset = 0
        while (n > 0)
          offset = 3 - (src_x % 4)
          mask = 3 << (offset * 2)
          pixels[i] = ((the_byte & mask) >> (offset * 2))
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            if (n > 0)
              the_byte = @data[index] & 0xff
            end
            src_x = 0
          else
            if ((offset).equal?(0))
              ((index += 1) - 1)
              the_byte = @data[index] & 0xff
            end
          end
        end
        return
      when 1
        index = (y * @bytes_per_line) + (x >> 3)
        the_byte = @data[index] & 0xff
        while (n > 0)
          mask = 1 << (7 - (src_x & 0x7))
          if (((the_byte & mask)).equal?(0))
            pixels[i] = 0
          else
            pixels[i] = 1
          end
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            if (n > 0)
              the_byte = @data[index] & 0xff
            end
            src_x = 0
          else
            if ((mask).equal?(1))
              ((index += 1) - 1)
              if (n > 0)
                the_byte = @data[index] & 0xff
              end
            end
          end
        end
        return
      end
      SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
    # Returns <code>getWidth</code> pixel values starting at offset
    # <code>x</code> in scanline <code>y</code> in the receiver's
    # data starting at <code>startIndex</code>.
    # 
    # @param x the x position of the first pixel to get
    # @param y the y position of the first pixel to get
    # @param getWidth the width of the data to get
    # @param pixels the buffer in which to put the pixels
    # @param startIndex the offset into the buffer to begin storing pixels
    # 
    # @exception IndexOutOfBoundsException if getWidth is too large
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if pixels is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # <li>ERROR_INVALID_ARGUMENT - if getWidth is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH - if the depth is not one of 1, 2, 4, 8, 16, 24 or 32</li>
    # </ul>
    def get_pixels(x, y, get_width, pixels, start_index)
      if ((pixels).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (get_width < 0 || x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((get_width).equal?(0))
        return
      end
      index = 0
      the_byte = 0
      mask = 0
      n = get_width
      i = start_index
      src_x = x
      src_y = y
      case (@depth)
      when 32
        index = (y * @bytes_per_line) + (x * 4)
        i = start_index
        j = 0
        while j < get_width
          pixels[i] = ((@data[index] & 0xff) << 24) | ((@data[index + 1] & 0xff) << 16) | ((@data[index + 2] & 0xff) << 8) | (@data[index + 3] & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            index += 4
          end
          ((j += 1) - 1)
        end
        return
      when 24
        index = (y * @bytes_per_line) + (x * 3)
        j = 0
        while j < get_width
          pixels[i] = ((@data[index] & 0xff) << 16) | ((@data[index + 1] & 0xff) << 8) | (@data[index + 2] & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            index += 3
          end
          ((j += 1) - 1)
        end
        return
      when 16
        index = (y * @bytes_per_line) + (x * 2)
        j = 0
        while j < get_width
          pixels[i] = ((@data[index + 1] & 0xff) << 8) + (@data[index] & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            index += 2
          end
          ((j += 1) - 1)
        end
        return
      when 8
        index = (y * @bytes_per_line) + x
        j = 0
        while j < get_width
          pixels[i] = @data[index] & 0xff
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            ((index += 1) - 1)
          end
          ((j += 1) - 1)
        end
        return
      when 4
        index = (y * @bytes_per_line) + (x >> 1)
        if (((x & 0x1)).equal?(1))
          the_byte = @data[index] & 0xff
          pixels[i] = the_byte & 0xf
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            ((index += 1) - 1)
          end
        end
        while (n > 1)
          the_byte = @data[index] & 0xff
          pixels[i] = the_byte >> 4
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            pixels[i] = the_byte & 0xf
            ((i += 1) - 1)
            ((n -= 1) + 1)
            ((src_x += 1) - 1)
            if (src_x >= @width)
              ((src_y += 1) - 1)
              index = src_y * @bytes_per_line
              src_x = 0
            else
              ((index += 1) - 1)
            end
          end
        end
        if (n > 0)
          the_byte = @data[index] & 0xff
          pixels[i] = the_byte >> 4
        end
        return
      when 2
        index = (y * @bytes_per_line) + (x >> 2)
        the_byte = @data[index] & 0xff
        offset = 0
        while (n > 0)
          offset = 3 - (src_x % 4)
          mask = 3 << (offset * 2)
          pixels[i] = ((the_byte & mask) >> (offset * 2))
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            if (n > 0)
              the_byte = @data[index] & 0xff
            end
            src_x = 0
          else
            if ((offset).equal?(0))
              ((index += 1) - 1)
              the_byte = @data[index] & 0xff
            end
          end
        end
        return
      when 1
        index = (y * @bytes_per_line) + (x >> 3)
        the_byte = @data[index] & 0xff
        while (n > 0)
          mask = 1 << (7 - (src_x & 0x7))
          if (((the_byte & mask)).equal?(0))
            pixels[i] = 0
          else
            pixels[i] = 1
          end
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            if (n > 0)
              the_byte = @data[index] & 0xff
            end
            src_x = 0
          else
            if ((mask).equal?(1))
              ((index += 1) - 1)
              if (n > 0)
                the_byte = @data[index] & 0xff
              end
            end
          end
        end
        return
      end
      SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
    end
    
    typesig { [] }
    # Returns an array of <code>RGB</code>s which comprise the
    # indexed color table of the receiver, or null if the receiver
    # has a direct color model.
    # 
    # @return the RGB values for the image or null if direct color
    # 
    # @see PaletteData#getRGBs()
    def get_rgbs
      return @palette.get_rgbs
    end
    
    typesig { [] }
    # Returns an <code>ImageData</code> which specifies the
    # transparency mask information for the receiver. If the
    # receiver has no transparency or is not an icon, returns
    # an opaque mask.
    # 
    # @return the transparency mask
    def get_transparency_mask
      if ((get_transparency_type).equal?(SWT::TRANSPARENCY_MASK))
        return ImageData.new(@width, @height, 1, bw_palette, @mask_pad, @mask_data)
      else
        return color_mask_image(@transparent_pixel)
      end
    end
    
    typesig { [] }
    # Returns the image transparency type, which will be one of
    # <code>SWT.TRANSPARENCY_NONE</code>, <code>SWT.TRANSPARENCY_MASK</code>,
    # <code>SWT.TRANSPARENCY_PIXEL</code> or <code>SWT.TRANSPARENCY_ALPHA</code>.
    # 
    # @return the receiver's transparency type
    def get_transparency_type
      if (!(@mask_data).nil?)
        return SWT::TRANSPARENCY_MASK
      end
      if (!(@transparent_pixel).equal?(-1))
        return SWT::TRANSPARENCY_PIXEL
      end
      if (!(@alpha_data).nil?)
        return SWT::TRANSPARENCY_ALPHA
      end
      return SWT::TRANSPARENCY_NONE
    end
    
    typesig { [] }
    # Returns the byte order of the receiver.
    # 
    # @return MSB_FIRST or LSB_FIRST
    def get_byte_order
      return !(@depth).equal?(16) ? MSB_FIRST : LSB_FIRST
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a copy of the receiver which has been stretched or
    # shrunk to the specified size. If either the width or height
    # is negative, the resulting image will be inverted in the
    # associated axis.
    # 
    # @param width the width of the new ImageData
    # @param height the height of the new ImageData
    # @return a scaled copy of the image
    def scaled_to(width, height)
      # Create a destination image with no data
      flip_x = (width < 0)
      if (flip_x)
        width = -width
      end
      flip_y = (height < 0)
      if (flip_y)
        height = -height
      end
      dest = ImageData.new(width, height, @depth, @palette, @scanline_pad, nil, 0, nil, nil, -1, @transparent_pixel, @type, @x, @y, @disposal_method, @delay_time)
      # Scale the image contents
      if (@palette.attr_is_direct)
        blit(BLIT_SRC, @data, @depth, @bytes_per_line, self.get_byte_order, 0, 0, @width, @height, 0, 0, 0, ALPHA_OPAQUE, nil, 0, 0, 0, dest.attr_data, dest.attr_depth, dest.attr_bytes_per_line, dest.get_byte_order, 0, 0, dest.attr_width, dest.attr_height, 0, 0, 0, flip_x, flip_y)
      else
        blit(BLIT_SRC, @data, @depth, @bytes_per_line, self.get_byte_order, 0, 0, @width, @height, nil, nil, nil, ALPHA_OPAQUE, nil, 0, 0, 0, dest.attr_data, dest.attr_depth, dest.attr_bytes_per_line, dest.get_byte_order, 0, 0, dest.attr_width, dest.attr_height, nil, nil, nil, flip_x, flip_y)
      end
      # Scale the image mask or alpha
      if (!(@mask_data).nil?)
        dest.attr_mask_pad = @mask_pad
        dest_bpl = (dest.attr_width + 7) / 8
        dest_bpl = (dest_bpl + (dest.attr_mask_pad - 1)) / dest.attr_mask_pad * dest.attr_mask_pad
        dest.attr_mask_data = Array.typed(::Java::Byte).new(dest_bpl * dest.attr_height) { 0 }
        src_bpl = (@width + 7) / 8
        src_bpl = (src_bpl + (@mask_pad - 1)) / @mask_pad * @mask_pad
        blit(BLIT_SRC, @mask_data, 1, src_bpl, MSB_FIRST, 0, 0, @width, @height, nil, nil, nil, ALPHA_OPAQUE, nil, 0, 0, 0, dest.attr_mask_data, 1, dest_bpl, MSB_FIRST, 0, 0, dest.attr_width, dest.attr_height, nil, nil, nil, flip_x, flip_y)
      else
        if (!(@alpha).equal?(-1))
          dest.attr_alpha = @alpha
        else
          if (!(@alpha_data).nil?)
            dest.attr_alpha_data = Array.typed(::Java::Byte).new(dest.attr_width * dest.attr_height) { 0 }
            blit(BLIT_SRC, @alpha_data, 8, @width, MSB_FIRST, 0, 0, @width, @height, nil, nil, nil, ALPHA_OPAQUE, nil, 0, 0, 0, dest.attr_alpha_data, 8, dest.attr_width, MSB_FIRST, 0, 0, dest.attr_width, dest.attr_height, nil, nil, nil, flip_x, flip_y)
          end
        end
      end
      return dest
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the alpha value at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's alpha data.
    # The alpha value must be between 0 (transparent)
    # and 255 (opaque).
    # 
    # @param x the x coordinate of the alpha value to set
    # @param y the y coordinate of the alpha value to set
    # @param alpha the value to set the alpha to
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # </ul>
    def set_alpha(x, y, alpha)
      if (x >= @width || y >= @height || x < 0 || y < 0 || alpha < 0 || alpha > 255)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@alpha_data).nil?)
        @alpha_data = Array.typed(::Java::Byte).new(@width * @height) { 0 }
      end
      @alpha_data[y * @width + x] = alpha
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    # Sets the alpha values starting at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's alpha data to the
    # values from the array <code>alphas</code> starting at
    # <code>startIndex</code>. The alpha values must be between
    # <code>(byte)0</code> (transparent) and <code>(byte)255</code> (opaque)
    # 
    # @param x the x coordinate of the pixel to being setting the alpha values
    # @param y the y coordinate of the pixel to being setting the alpha values
    # @param putWidth the width of the alpha values to set
    # @param alphas the alpha values to set
    # @param startIndex the index at which to begin setting
    # 
    # @exception IndexOutOfBoundsException if putWidth is too large
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if pixels is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # <li>ERROR_INVALID_ARGUMENT - if putWidth is negative</li>
    # </ul>
    def set_alphas(x, y, put_width, alphas, start_index)
      if ((alphas).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (put_width < 0 || x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((put_width).equal?(0))
        return
      end
      if ((@alpha_data).nil?)
        @alpha_data = Array.typed(::Java::Byte).new(@width * @height) { 0 }
      end
      # may throw an IndexOutOfBoundsException
      System.arraycopy(alphas, start_index, @alpha_data, y * @width + x, put_width)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the pixel value at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's data.
    # 
    # @param x the x coordinate of the pixel to set
    # @param y the y coordinate of the pixel to set
    # @param pixelValue the value to set the pixel to
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH if the depth is not one of 1, 2, 4, 8, 16, 24 or 32</li>
    # </ul>
    def set_pixel(x, y, pixel_value)
      if (x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      index = 0
      the_byte = 0
      mask = 0
      case (@depth)
      when 32
        index = (y * @bytes_per_line) + (x * 4)
        @data[index] = ((pixel_value >> 24) & 0xff)
        @data[index + 1] = ((pixel_value >> 16) & 0xff)
        @data[index + 2] = ((pixel_value >> 8) & 0xff)
        @data[index + 3] = (pixel_value & 0xff)
        return
      when 24
        index = (y * @bytes_per_line) + (x * 3)
        @data[index] = ((pixel_value >> 16) & 0xff)
        @data[index + 1] = ((pixel_value >> 8) & 0xff)
        @data[index + 2] = (pixel_value & 0xff)
        return
      when 16
        index = (y * @bytes_per_line) + (x * 2)
        @data[index + 1] = ((pixel_value >> 8) & 0xff)
        @data[index] = (pixel_value & 0xff)
        return
      when 8
        index = (y * @bytes_per_line) + x
        @data[index] = (pixel_value & 0xff)
        return
      when 4
        index = (y * @bytes_per_line) + (x >> 1)
        if (((x & 0x1)).equal?(0))
          @data[index] = ((@data[index] & 0xf) | ((pixel_value & 0xf) << 4))
        else
          @data[index] = ((@data[index] & 0xf0) | (pixel_value & 0xf))
        end
        return
      when 2
        index = (y * @bytes_per_line) + (x >> 2)
        the_byte = @data[index]
        offset = 3 - (x % 4)
        mask = 0xff ^ (3 << (offset * 2))
        @data[index] = ((@data[index] & mask) | (pixel_value << (offset * 2)))
        return
      when 1
        index = (y * @bytes_per_line) + (x >> 3)
        the_byte = @data[index]
        mask = 1 << (7 - (x & 0x7))
        if (((pixel_value & 0x1)).equal?(1))
          @data[index] = (the_byte | mask)
        else
          @data[index] = (the_byte & (mask ^ -1))
        end
        return
      end
      SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
    # Sets the pixel values starting at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's data to the
    # values from the array <code>pixels</code> starting at
    # <code>startIndex</code>.
    # 
    # @param x the x position of the pixel to set
    # @param y the y position of the pixel to set
    # @param putWidth the width of the pixels to set
    # @param pixels the pixels to set
    # @param startIndex the index at which to begin setting
    # 
    # @exception IndexOutOfBoundsException if putWidth is too large
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if pixels is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # <li>ERROR_INVALID_ARGUMENT - if putWidth is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH if the depth is not one of 1, 2, 4, 8
    # (For higher depths, use the int[] version of this method.)</li>
    # </ul>
    def set_pixels(x, y, put_width, pixels, start_index)
      if ((pixels).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (put_width < 0 || x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((put_width).equal?(0))
        return
      end
      index = 0
      the_byte = 0
      mask = 0
      n = put_width
      i = start_index
      src_x = x
      src_y = y
      case (@depth)
      when 8
        index = (y * @bytes_per_line) + x
        j = 0
        while j < put_width
          @data[index] = (pixels[i] & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            ((index += 1) - 1)
          end
          ((j += 1) - 1)
        end
        return
      when 4
        index = (y * @bytes_per_line) + (x >> 1)
        high = ((x & 0x1)).equal?(0)
        while (n > 0)
          the_byte = pixels[i] & 0xf
          if (high)
            @data[index] = ((@data[index] & 0xf) | (the_byte << 4))
          else
            @data[index] = ((@data[index] & 0xf0) | the_byte)
          end
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            high = true
            src_x = 0
          else
            if (!high)
              ((index += 1) - 1)
            end
            high = !high
          end
        end
        return
      when 2
        masks = Array.typed(::Java::Byte).new([0xfc, 0xf3, 0xcf, 0x3f])
        index = (y * @bytes_per_line) + (x >> 2)
        offset = 3 - (x % 4)
        while (n > 0)
          the_byte = pixels[i] & 0x3
          @data[index] = ((@data[index] & masks[offset]) | (the_byte << (offset * 2)))
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            offset = 0
            src_x = 0
          else
            if ((offset).equal?(0))
              ((index += 1) - 1)
              offset = 3
            else
              ((offset -= 1) + 1)
            end
          end
        end
        return
      when 1
        index = (y * @bytes_per_line) + (x >> 3)
        while (n > 0)
          mask = 1 << (7 - (src_x & 0x7))
          if (((pixels[i] & 0x1)).equal?(1))
            @data[index] = ((@data[index] & 0xff) | mask)
          else
            @data[index] = ((@data[index] & 0xff) & (mask ^ -1))
          end
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            if ((mask).equal?(1))
              ((index += 1) - 1)
            end
          end
        end
        return
      end
      SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
    # Sets the pixel values starting at offset <code>x</code> in
    # scanline <code>y</code> in the receiver's data to the
    # values from the array <code>pixels</code> starting at
    # <code>startIndex</code>.
    # 
    # @param x the x position of the pixel to set
    # @param y the y position of the pixel to set
    # @param putWidth the width of the pixels to set
    # @param pixels the pixels to set
    # @param startIndex the index at which to begin setting
    # 
    # @exception IndexOutOfBoundsException if putWidth is too large
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if pixels is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if x or y is out of bounds</li>
    # <li>ERROR_INVALID_ARGUMENT - if putWidth is negative</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH if the depth is not one of 1, 2, 4, 8, 16, 24 or 32</li>
    # </ul>
    def set_pixels(x, y, put_width, pixels, start_index)
      if ((pixels).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (put_width < 0 || x >= @width || y >= @height || x < 0 || y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((put_width).equal?(0))
        return
      end
      index = 0
      the_byte = 0
      mask = 0
      n = put_width
      i = start_index
      pixel = 0
      src_x = x
      src_y = y
      case (@depth)
      when 32
        index = (y * @bytes_per_line) + (x * 4)
        j = 0
        while j < put_width
          pixel = pixels[i]
          @data[index] = ((pixel >> 24) & 0xff)
          @data[index + 1] = ((pixel >> 16) & 0xff)
          @data[index + 2] = ((pixel >> 8) & 0xff)
          @data[index + 3] = (pixel & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            index += 4
          end
          ((j += 1) - 1)
        end
        return
      when 24
        index = (y * @bytes_per_line) + (x * 3)
        j = 0
        while j < put_width
          pixel = pixels[i]
          @data[index] = ((pixel >> 16) & 0xff)
          @data[index + 1] = ((pixel >> 8) & 0xff)
          @data[index + 2] = (pixel & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            index += 3
          end
          ((j += 1) - 1)
        end
        return
      when 16
        index = (y * @bytes_per_line) + (x * 2)
        j = 0
        while j < put_width
          pixel = pixels[i]
          @data[index] = (pixel & 0xff)
          @data[index + 1] = ((pixel >> 8) & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            index += 2
          end
          ((j += 1) - 1)
        end
        return
      when 8
        index = (y * @bytes_per_line) + x
        j = 0
        while j < put_width
          @data[index] = (pixels[i] & 0xff)
          ((i += 1) - 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            ((index += 1) - 1)
          end
          ((j += 1) - 1)
        end
        return
      when 4
        index = (y * @bytes_per_line) + (x >> 1)
        high = ((x & 0x1)).equal?(0)
        while (n > 0)
          the_byte = pixels[i] & 0xf
          if (high)
            @data[index] = ((@data[index] & 0xf) | (the_byte << 4))
          else
            @data[index] = ((@data[index] & 0xf0) | the_byte)
          end
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            high = true
            src_x = 0
          else
            if (!high)
              ((index += 1) - 1)
            end
            high = !high
          end
        end
        return
      when 2
        masks = Array.typed(::Java::Byte).new([0xfc, 0xf3, 0xcf, 0x3f])
        index = (y * @bytes_per_line) + (x >> 2)
        offset = 3 - (x % 4)
        while (n > 0)
          the_byte = pixels[i] & 0x3
          @data[index] = ((@data[index] & masks[offset]) | (the_byte << (offset * 2)))
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            offset = 3
            src_x = 0
          else
            if ((offset).equal?(0))
              ((index += 1) - 1)
              offset = 3
            else
              ((offset -= 1) + 1)
            end
          end
        end
        return
      when 1
        index = (y * @bytes_per_line) + (x >> 3)
        while (n > 0)
          mask = 1 << (7 - (src_x & 0x7))
          if (((pixels[i] & 0x1)).equal?(1))
            @data[index] = ((@data[index] & 0xff) | mask)
          else
            @data[index] = ((@data[index] & 0xff) & (mask ^ -1))
          end
          ((i += 1) - 1)
          ((n -= 1) + 1)
          ((src_x += 1) - 1)
          if (src_x >= @width)
            ((src_y += 1) - 1)
            index = src_y * @bytes_per_line
            src_x = 0
          else
            if ((mask).equal?(1))
              ((index += 1) - 1)
            end
          end
        end
        return
      end
      SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns a palette with 2 colors: black & white.
      def bw_palette
        return PaletteData.new(Array.typed(RGB).new([RGB.new(0, 0, 0), RGB.new(255, 255, 255)]))
      end
      
      typesig { [::Java::Int] }
      # Gets the offset of the most significant bit for
      # the given mask.
      def get_msboffset(mask)
        i = 31
        while i >= 0
          if (!(((mask >> i) & 0x1)).equal?(0))
            return i + 1
          end
          ((i -= 1) + 1)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Byte, ::Java::Byte, ::Java::Byte, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # Finds the closest match.
      def closest_match(depth, red, green, blue, red_mask, green_mask, blue_mask, reds, greens, blues)
        if (depth > 8)
          rshift = 32 - get_msboffset(red_mask)
          gshift = 32 - get_msboffset(green_mask)
          bshift = 32 - get_msboffset(blue_mask)
          return (((red << 24) >> rshift) & red_mask) | (((green << 24) >> gshift) & green_mask) | (((blue << 24) >> bshift) & blue_mask)
        end
        r = 0
        g = 0
        b = 0
        min_distance = 0x7fffffff
        nearest_pixel = 0
        n = reds.attr_length
        j = 0
        while j < n
          r = (reds[j] & 0xff) - (red & 0xff)
          g = (greens[j] & 0xff) - (green & 0xff)
          b = (blues[j] & 0xff) - (blue & 0xff)
          distance = r * r + g * g + b * b
          if (distance < min_distance)
            nearest_pixel = j
            if ((distance).equal?(0))
              break
            end
            min_distance = distance
          end
          ((j += 1) - 1)
        end
        return nearest_pixel
      end
      
      typesig { [ImageData] }
      def convert_mask(mask)
        if ((mask.attr_depth).equal?(1))
          return mask
        end
        palette = PaletteData.new(Array.typed(RGB).new([RGB.new(0, 0, 0), RGB.new(255, 255, 255)]))
        new_mask = ImageData.new(mask.attr_width, mask.attr_height, 1, palette)
        # Find index of black in mask palette
        black_index = 0
        rgbs = mask.get_rgbs
        if (!(rgbs).nil?)
          while (black_index < rgbs.attr_length)
            if ((rgbs[black_index] == palette.attr_colors[0]))
              break
            end
            ((black_index += 1) - 1)
          end
        end
        pixels = Array.typed(::Java::Int).new(mask.attr_width) { 0 }
        y = 0
        while y < mask.attr_height
          mask.get_pixels(0, y, mask.attr_width, pixels, 0)
          i = 0
          while i < pixels.attr_length
            if ((pixels[i]).equal?(black_index))
              pixels[i] = 0
            else
              pixels[i] = 1
            end
            ((i += 1) - 1)
          end
          new_mask.set_pixels(0, y, mask.attr_width, pixels, 0)
          ((y += 1) - 1)
        end
        return new_mask
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def convert_pad(data, width, height, depth, pad, new_pad)
        if ((pad).equal?(new_pad))
          return data
        end
        stride = (width * depth + 7) / 8
        bpl = (stride + (pad - 1)) / pad * pad
        new_bpl = (stride + (new_pad - 1)) / new_pad * new_pad
        new_data = Array.typed(::Java::Byte).new(height * new_bpl) { 0 }
        src_index = 0
        dest_index = 0
        y = 0
        while y < height
          System.arraycopy(data, src_index, new_data, dest_index, stride)
          src_index += bpl
          dest_index += new_bpl
          ((y += 1) - 1)
        end
        return new_data
      end
      
      # Blit operation bits to be OR'ed together to specify the desired operation.
      const_set_lazy(:BLIT_SRC) { 1 }
      const_attr_reader  :BLIT_SRC
      
      # copy source directly, else applies logic operations
      const_set_lazy(:BLIT_ALPHA) { 2 }
      const_attr_reader  :BLIT_ALPHA
      
      # enable alpha blending
      const_set_lazy(:BLIT_DITHER) { 4 }
      const_attr_reader  :BLIT_DITHER
      
      # enable dithering in low color modes
      # 
      # Alpha mode, values 0 - 255 specify global alpha level
      const_set_lazy(:ALPHA_OPAQUE) { 255 }
      const_attr_reader  :ALPHA_OPAQUE
      
      # Fully opaque (ignores any alpha data)
      const_set_lazy(:ALPHA_TRANSPARENT) { 0 }
      const_attr_reader  :ALPHA_TRANSPARENT
      
      # Fully transparent (ignores any alpha data)
      const_set_lazy(:ALPHA_CHANNEL_SEPARATE) { -1 }
      const_attr_reader  :ALPHA_CHANNEL_SEPARATE
      
      # Use alpha channel from separate alphaData
      const_set_lazy(:ALPHA_CHANNEL_SOURCE) { -2 }
      const_attr_reader  :ALPHA_CHANNEL_SOURCE
      
      # Use alpha channel embedded in sourceData
      const_set_lazy(:ALPHA_MASK_UNPACKED) { -3 }
      const_attr_reader  :ALPHA_MASK_UNPACKED
      
      # Use transparency mask formed by bytes in alphaData (non-zero is opaque)
      const_set_lazy(:ALPHA_MASK_PACKED) { -4 }
      const_attr_reader  :ALPHA_MASK_PACKED
      
      # Use transparency mask formed by packed bits in alphaData
      const_set_lazy(:ALPHA_MASK_INDEX) { -5 }
      const_attr_reader  :ALPHA_MASK_INDEX
      
      # Consider source palette indices transparent if in alphaData array
      const_set_lazy(:ALPHA_MASK_RGB) { -6 }
      const_attr_reader  :ALPHA_MASK_RGB
      
      # Consider source RGBs transparent if in RGB888 format alphaData array
      # 
      # Byte and bit order constants.
      const_set_lazy(:LSB_FIRST) { 0 }
      const_attr_reader  :LSB_FIRST
      
      const_set_lazy(:MSB_FIRST) { 1 }
      const_attr_reader  :MSB_FIRST
      
      # Data types (internal)
      # 
      # direct / true color formats with arbitrary masks & shifts
      const_set_lazy(:TYPE_GENERIC_8) { 0 }
      const_attr_reader  :TYPE_GENERIC_8
      
      const_set_lazy(:TYPE_GENERIC_16_MSB) { 1 }
      const_attr_reader  :TYPE_GENERIC_16_MSB
      
      const_set_lazy(:TYPE_GENERIC_16_LSB) { 2 }
      const_attr_reader  :TYPE_GENERIC_16_LSB
      
      const_set_lazy(:TYPE_GENERIC_24) { 3 }
      const_attr_reader  :TYPE_GENERIC_24
      
      const_set_lazy(:TYPE_GENERIC_32_MSB) { 4 }
      const_attr_reader  :TYPE_GENERIC_32_MSB
      
      const_set_lazy(:TYPE_GENERIC_32_LSB) { 5 }
      const_attr_reader  :TYPE_GENERIC_32_LSB
      
      # palette indexed color formats
      const_set_lazy(:TYPE_INDEX_8) { 6 }
      const_attr_reader  :TYPE_INDEX_8
      
      const_set_lazy(:TYPE_INDEX_4) { 7 }
      const_attr_reader  :TYPE_INDEX_4
      
      const_set_lazy(:TYPE_INDEX_2) { 8 }
      const_attr_reader  :TYPE_INDEX_2
      
      const_set_lazy(:TYPE_INDEX_1_MSB) { 9 }
      const_attr_reader  :TYPE_INDEX_1_MSB
      
      const_set_lazy(:TYPE_INDEX_1_LSB) { 10 }
      const_attr_reader  :TYPE_INDEX_1_LSB
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      # Blits a direct palette image into a direct palette image.
      # <p>
      # Note: When the source and destination depth, order and masks
      # are pairwise equal and the blitter operation is BLIT_SRC,
      # the masks are ignored.  Hence when not changing the image
      # data format, 0 may be specified for the masks.
      # </p>
      # 
      # @param op the blitter operation: a combination of BLIT_xxx flags
      # (see BLIT_xxx constants)
      # @param srcData the source byte array containing image data
      # @param srcDepth the source depth: one of 8, 16, 24, 32
      # @param srcStride the source number of bytes per line
      # @param srcOrder the source byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if srcDepth is not 16 or 32
      # @param srcX the top-left x-coord of the source blit region
      # @param srcY the top-left y-coord of the source blit region
      # @param srcWidth the width of the source blit region
      # @param srcHeight the height of the source blit region
      # @param srcRedMask the source red channel mask
      # @param srcGreenMask the source green channel mask
      # @param srcBlueMask the source blue channel mask
      # @param alphaMode the alpha blending or mask mode, may be
      # an integer 0-255 for global alpha; ignored if BLIT_ALPHA
      # not specified in the blitter operations
      # (see ALPHA_MODE_xxx constants)
      # @param alphaData the alpha blending or mask data, varies depending
      # on the value of alphaMode and sometimes ignored
      # @param alphaStride the alpha data number of bytes per line
      # @param alphaX the top-left x-coord of the alpha blit region
      # @param alphaY the top-left y-coord of the alpha blit region
      # @param destData the destination byte array containing image data
      # @param destDepth the destination depth: one of 8, 16, 24, 32
      # @param destStride the destination number of bytes per line
      # @param destOrder the destination byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if destDepth is not 16 or 32
      # @param destX the top-left x-coord of the destination blit region
      # @param destY the top-left y-coord of the destination blit region
      # @param destWidth the width of the destination blit region
      # @param destHeight the height of the destination blit region
      # @param destRedMask the destination red channel mask
      # @param destGreenMask the destination green channel mask
      # @param destBlueMask the destination blue channel mask
      # @param flipX if true the resulting image is flipped along the vertical axis
      # @param flipY if true the resulting image is flipped along the horizontal axis
      def blit(op, src_data, src_depth, src_stride, src_order, src_x, src_y, src_width, src_height, src_red_mask, src_green_mask, src_blue_mask, alpha_mode, alpha_data, alpha_stride, alpha_x, alpha_y, dest_data, dest_depth, dest_stride, dest_order, dest_x, dest_y, dest_width, dest_height, dest_red_mask, dest_green_mask, dest_blue_mask, flip_x, flip_y)
        if ((dest_width <= 0) || (dest_height <= 0) || ((alpha_mode).equal?(ALPHA_TRANSPARENT)))
          return
        end
        # these should be supplied as params later
        src_alpha_mask = 0
        dest_alpha_mask = 0
        # Prepare scaling data **
        dwm1 = dest_width - 1
        sfxi = (!(dwm1).equal?(0)) ? RJava.cast_to_int((((src_width << 16) - 1) / dwm1)) : 0
        dhm1 = dest_height - 1
        sfyi = (!(dhm1).equal?(0)) ? RJava.cast_to_int((((src_height << 16) - 1) / dhm1)) : 0
        # Prepare source-related data **
        sbpp = 0
        stype = 0
        case (src_depth)
        when 8
          sbpp = 1
          stype = TYPE_GENERIC_8
        when 16
          sbpp = 2
          stype = ((src_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_16_MSB : TYPE_GENERIC_16_LSB
        when 24
          sbpp = 3
          stype = TYPE_GENERIC_24
        when 32
          sbpp = 4
          stype = ((src_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_32_MSB : TYPE_GENERIC_32_LSB
        else
          # throw new IllegalArgumentException("Invalid source type");
          return
        end
        spr = src_y * src_stride + src_x * sbpp
        # Prepare destination-related data **
        dbpp = 0
        dtype = 0
        case (dest_depth)
        when 8
          dbpp = 1
          dtype = TYPE_GENERIC_8
        when 16
          dbpp = 2
          dtype = ((dest_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_16_MSB : TYPE_GENERIC_16_LSB
        when 24
          dbpp = 3
          dtype = TYPE_GENERIC_24
        when 32
          dbpp = 4
          dtype = ((dest_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_32_MSB : TYPE_GENERIC_32_LSB
        else
          # throw new IllegalArgumentException("Invalid destination type");
          return
        end
        dpr = ((flip_y) ? dest_y + dhm1 : dest_y) * dest_stride + ((flip_x) ? dest_x + dwm1 : dest_x) * dbpp
        dprxi = (flip_x) ? -dbpp : dbpp
        dpryi = (flip_y) ? -dest_stride : dest_stride
        # Prepare special processing data **
        apr = 0
        if (!((op & BLIT_ALPHA)).equal?(0))
          case (alpha_mode)
          # prescale
          when ALPHA_MASK_UNPACKED, ALPHA_CHANNEL_SEPARATE
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_PACKED
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            alpha_stride <<= 3
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_INDEX
            # throw new IllegalArgumentException("Invalid alpha type");
            return
          when ALPHA_MASK_RGB
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = 0
          when ALPHA_CHANNEL_SOURCE
            apr = 0
          else
            alpha_mode = (alpha_mode << 16) / 255
            apr = 0
          end
        else
          alpha_mode = 0x10000
          apr = 0
        end
        # Blit **
        dp = dpr
        sp = spr
        if (((alpha_mode).equal?(0x10000)) && ((stype).equal?(dtype)) && ((src_red_mask).equal?(dest_red_mask)) && ((src_green_mask).equal?(dest_green_mask)) && ((src_blue_mask).equal?(dest_blue_mask)) && ((src_alpha_mask).equal?(dest_alpha_mask)))
          # Fast blit (straight copy) **
          case (sbpp)
          when 1
            dy = dest_height
            sfy = sfyi
            while dy > 0
              dx = dest_width
              sfx = sfxi
              while dx > 0
                dest_data[dp] = src_data[sp]
                sp += (sfx >> 16)
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
              end
              (dy -= 1)
              sp = spr += (sfy >> 16) * src_stride
              sfy = (sfy & 0xffff) + sfyi
              dp = dpr += dpryi
            end
          when 2
            dy = dest_height
            sfy = sfyi
            while dy > 0
              dx = dest_width
              sfx = sfxi
              while dx > 0
                dest_data[dp] = src_data[sp]
                dest_data[dp + 1] = src_data[sp + 1]
                sp += (sfx >> 16) * 2
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
              end
              (dy -= 1)
              sp = spr += (sfy >> 16) * src_stride
              sfy = (sfy & 0xffff) + sfyi
              dp = dpr += dpryi
            end
          when 3
            dy = dest_height
            sfy = sfyi
            while dy > 0
              dx = dest_width
              sfx = sfxi
              while dx > 0
                dest_data[dp] = src_data[sp]
                dest_data[dp + 1] = src_data[sp + 1]
                dest_data[dp + 2] = src_data[sp + 2]
                sp += (sfx >> 16) * 3
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
              end
              (dy -= 1)
              sp = spr += (sfy >> 16) * src_stride
              sfy = (sfy & 0xffff) + sfyi
              dp = dpr += dpryi
            end
          when 4
            dy = dest_height
            sfy = sfyi
            while dy > 0
              dx = dest_width
              sfx = sfxi
              while dx > 0
                dest_data[dp] = src_data[sp]
                dest_data[dp + 1] = src_data[sp + 1]
                dest_data[dp + 2] = src_data[sp + 2]
                dest_data[dp + 3] = src_data[sp + 3]
                sp += (sfx >> 16) * 4
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
              end
              (dy -= 1)
              sp = spr += (sfy >> 16) * src_stride
              sfy = (sfy & 0xffff) + sfyi
              dp = dpr += dpryi
            end
          end
          return
        end
        # Comprehensive blit (apply transformations) **
        src_red_shift = get_channel_shift(src_red_mask)
        src_reds = ANY_TO_EIGHT[get_channel_width(src_red_mask, src_red_shift)]
        src_green_shift = get_channel_shift(src_green_mask)
        src_greens = ANY_TO_EIGHT[get_channel_width(src_green_mask, src_green_shift)]
        src_blue_shift = get_channel_shift(src_blue_mask)
        src_blues = ANY_TO_EIGHT[get_channel_width(src_blue_mask, src_blue_shift)]
        src_alpha_shift = get_channel_shift(src_alpha_mask)
        src_alphas = ANY_TO_EIGHT[get_channel_width(src_alpha_mask, src_alpha_shift)]
        dest_red_shift = get_channel_shift(dest_red_mask)
        dest_red_width = get_channel_width(dest_red_mask, dest_red_shift)
        dest_reds = ANY_TO_EIGHT[dest_red_width]
        dest_red_pre_shift = 8 - dest_red_width
        dest_green_shift = get_channel_shift(dest_green_mask)
        dest_green_width = get_channel_width(dest_green_mask, dest_green_shift)
        dest_greens = ANY_TO_EIGHT[dest_green_width]
        dest_green_pre_shift = 8 - dest_green_width
        dest_blue_shift = get_channel_shift(dest_blue_mask)
        dest_blue_width = get_channel_width(dest_blue_mask, dest_blue_shift)
        dest_blues = ANY_TO_EIGHT[dest_blue_width]
        dest_blue_pre_shift = 8 - dest_blue_width
        dest_alpha_shift = get_channel_shift(dest_alpha_mask)
        dest_alpha_width = get_channel_width(dest_alpha_mask, dest_alpha_shift)
        dest_alphas = ANY_TO_EIGHT[dest_alpha_width]
        dest_alpha_pre_shift = 8 - dest_alpha_width
        ap = apr
        alpha = alpha_mode
        r = 0
        g = 0
        b = 0
        a = 0
        rq = 0
        gq = 0
        bq = 0
        aq = 0
        dy = dest_height
        sfy = sfyi
        while dy > 0
          dx = dest_width
          sfx = sfxi
          while dx > 0
            # READ NEXT PIXEL **
            case (stype)
            when TYPE_GENERIC_8
              data = src_data[sp] & 0xff
              sp += (sfx >> 16)
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_16_MSB
              data = ((src_data[sp] & 0xff) << 8) | (src_data[sp + 1] & 0xff)
              sp += (sfx >> 16) * 2
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_16_LSB
              data = ((src_data[sp + 1] & 0xff) << 8) | (src_data[sp] & 0xff)
              sp += (sfx >> 16) * 2
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_24
              data = ((((src_data[sp] & 0xff) << 8) | (src_data[sp + 1] & 0xff)) << 8) | (src_data[sp + 2] & 0xff)
              sp += (sfx >> 16) * 3
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_32_MSB
              data = ((((((src_data[sp] & 0xff) << 8) | (src_data[sp + 1] & 0xff)) << 8) | (src_data[sp + 2] & 0xff)) << 8) | (src_data[sp + 3] & 0xff)
              sp += (sfx >> 16) * 4
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_32_LSB
              data = ((((((src_data[sp + 3] & 0xff) << 8) | (src_data[sp + 2] & 0xff)) << 8) | (src_data[sp + 1] & 0xff)) << 8) | (src_data[sp] & 0xff)
              sp += (sfx >> 16) * 4
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            end
            # DO SPECIAL PROCESSING IF REQUIRED **
            case (alpha_mode)
            when ALPHA_CHANNEL_SEPARATE
              alpha = ((alpha_data[ap] & 0xff) << 16) / 255
              ap += (sfx >> 16)
            when ALPHA_CHANNEL_SOURCE
              alpha = (a << 16) / 255
            when ALPHA_MASK_UNPACKED
              alpha = (!(alpha_data[ap]).equal?(0)) ? 0x10000 : 0
              ap += (sfx >> 16)
            when ALPHA_MASK_PACKED
              alpha = (alpha_data[ap >> 3] << ((ap & 7) + 9)) & 0x10000
              ap += (sfx >> 16)
            when ALPHA_MASK_RGB
              alpha = 0x10000
              i = 0
              while i < alpha_data.attr_length
                if (((r).equal?(alpha_data[i])) && ((g).equal?(alpha_data[i + 1])) && ((b).equal?(alpha_data[i + 2])))
                  alpha = 0x0
                  break
                end
                i += 3
              end
            end
            if (!(alpha).equal?(0x10000))
              if ((alpha).equal?(0x0))
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
              case (dtype)
              when TYPE_GENERIC_8
                data = dest_data[dp] & 0xff
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_16_MSB
                data = ((dest_data[dp] & 0xff) << 8) | (dest_data[dp + 1] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_16_LSB
                data = ((dest_data[dp + 1] & 0xff) << 8) | (dest_data[dp] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_24
                data = ((((dest_data[dp] & 0xff) << 8) | (dest_data[dp + 1] & 0xff)) << 8) | (dest_data[dp + 2] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_32_MSB
                data = ((((((dest_data[dp] & 0xff) << 8) | (dest_data[dp + 1] & 0xff)) << 8) | (dest_data[dp + 2] & 0xff)) << 8) | (dest_data[dp + 3] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_32_LSB
                data = ((((((dest_data[dp + 3] & 0xff) << 8) | (dest_data[dp + 2] & 0xff)) << 8) | (dest_data[dp + 1] & 0xff)) << 8) | (dest_data[dp] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              end
              # Perform alpha blending
              a = aq + ((a - aq) * alpha >> 16)
              r = rq + ((r - rq) * alpha >> 16)
              g = gq + ((g - gq) * alpha >> 16)
              b = bq + ((b - bq) * alpha >> 16)
            end
            # WRITE NEXT PIXEL **
            data = (r >> dest_red_pre_shift << dest_red_shift) | (g >> dest_green_pre_shift << dest_green_shift) | (b >> dest_blue_pre_shift << dest_blue_shift) | (a >> dest_alpha_pre_shift << dest_alpha_shift)
            case (dtype)
            when TYPE_GENERIC_8
              dest_data[dp] = data
            when TYPE_GENERIC_16_MSB
              dest_data[dp] = (data >> 8)
              dest_data[dp + 1] = (data & 0xff)
            when TYPE_GENERIC_16_LSB
              dest_data[dp] = (data & 0xff)
              dest_data[dp + 1] = (data >> 8)
            when TYPE_GENERIC_24
              dest_data[dp] = (data >> 16)
              dest_data[dp + 1] = (data >> 8)
              dest_data[dp + 2] = (data & 0xff)
            when TYPE_GENERIC_32_MSB
              dest_data[dp] = (data >> 24)
              dest_data[dp + 1] = (data >> 16)
              dest_data[dp + 2] = (data >> 8)
              dest_data[dp + 3] = (data & 0xff)
            when TYPE_GENERIC_32_LSB
              dest_data[dp] = (data & 0xff)
              dest_data[dp + 1] = (data >> 8)
              dest_data[dp + 2] = (data >> 16)
              dest_data[dp + 3] = (data >> 24)
            end
            (dx -= 1)
            dp += dprxi
            sfx = (sfx & 0xffff) + sfxi
          end
          (dy -= 1)
          sp = spr += (sfy >> 16) * src_stride
          ap = apr += (sfy >> 16) * alpha_stride
          sfy = (sfy & 0xffff) + sfyi
          dp = dpr += dpryi
        end
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Boolean] }
      # Blits an index palette image into an index palette image.
      # <p>
      # Note: The source and destination red, green, and blue
      # arrays may be null if no alpha blending or dither is to be
      # performed.
      # </p>
      # 
      # @param op the blitter operation: a combination of BLIT_xxx flags
      # (see BLIT_xxx constants)
      # @param srcData the source byte array containing image data
      # @param srcDepth the source depth: one of 1, 2, 4, 8
      # @param srcStride the source number of bytes per line
      # @param srcOrder the source byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if srcDepth is not 1
      # @param srcX the top-left x-coord of the source blit region
      # @param srcY the top-left y-coord of the source blit region
      # @param srcWidth the width of the source blit region
      # @param srcHeight the height of the source blit region
      # @param srcReds the source palette red component intensities
      # @param srcGreens the source palette green component intensities
      # @param srcBlues the source palette blue component intensities
      # @param alphaMode the alpha blending or mask mode, may be
      # an integer 0-255 for global alpha; ignored if BLIT_ALPHA
      # not specified in the blitter operations
      # (see ALPHA_MODE_xxx constants)
      # @param alphaData the alpha blending or mask data, varies depending
      # on the value of alphaMode and sometimes ignored
      # @param alphaStride the alpha data number of bytes per line
      # @param alphaX the top-left x-coord of the alpha blit region
      # @param alphaY the top-left y-coord of the alpha blit region
      # @param destData the destination byte array containing image data
      # @param destDepth the destination depth: one of 1, 2, 4, 8
      # @param destStride the destination number of bytes per line
      # @param destOrder the destination byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if destDepth is not 1
      # @param destX the top-left x-coord of the destination blit region
      # @param destY the top-left y-coord of the destination blit region
      # @param destWidth the width of the destination blit region
      # @param destHeight the height of the destination blit region
      # @param destReds the destination palette red component intensities
      # @param destGreens the destination palette green component intensities
      # @param destBlues the destination palette blue component intensities
      # @param flipX if true the resulting image is flipped along the vertical axis
      # @param flipY if true the resulting image is flipped along the horizontal axis
      def blit(op, src_data, src_depth, src_stride, src_order, src_x, src_y, src_width, src_height, src_reds, src_greens, src_blues, alpha_mode, alpha_data, alpha_stride, alpha_x, alpha_y, dest_data, dest_depth, dest_stride, dest_order, dest_x, dest_y, dest_width, dest_height, dest_reds, dest_greens, dest_blues, flip_x, flip_y)
        if ((dest_width <= 0) || (dest_height <= 0) || ((alpha_mode).equal?(ALPHA_TRANSPARENT)))
          return
        end
        # Prepare scaling data **
        dwm1 = dest_width - 1
        sfxi = (!(dwm1).equal?(0)) ? RJava.cast_to_int((((src_width << 16) - 1) / dwm1)) : 0
        dhm1 = dest_height - 1
        sfyi = (!(dhm1).equal?(0)) ? RJava.cast_to_int((((src_height << 16) - 1) / dhm1)) : 0
        # Prepare source-related data **
        stype = 0
        case (src_depth)
        when 8
          stype = TYPE_INDEX_8
        when 4
          src_stride <<= 1
          stype = TYPE_INDEX_4
        when 2
          src_stride <<= 2
          stype = TYPE_INDEX_2
        when 1
          src_stride <<= 3
          stype = ((src_order).equal?(MSB_FIRST)) ? TYPE_INDEX_1_MSB : TYPE_INDEX_1_LSB
        else
          # throw new IllegalArgumentException("Invalid source type");
          return
        end
        spr = src_y * src_stride + src_x
        # Prepare destination-related data **
        dtype = 0
        case (dest_depth)
        when 8
          dtype = TYPE_INDEX_8
        when 4
          dest_stride <<= 1
          dtype = TYPE_INDEX_4
        when 2
          dest_stride <<= 2
          dtype = TYPE_INDEX_2
        when 1
          dest_stride <<= 3
          dtype = ((dest_order).equal?(MSB_FIRST)) ? TYPE_INDEX_1_MSB : TYPE_INDEX_1_LSB
        else
          # throw new IllegalArgumentException("Invalid source type");
          return
        end
        dpr = ((flip_y) ? dest_y + dhm1 : dest_y) * dest_stride + ((flip_x) ? dest_x + dwm1 : dest_x)
        dprxi = (flip_x) ? -1 : 1
        dpryi = (flip_y) ? -dest_stride : dest_stride
        # Prepare special processing data **
        apr = 0
        if (!((op & BLIT_ALPHA)).equal?(0))
          case (alpha_mode)
          # prescale
          when ALPHA_MASK_UNPACKED, ALPHA_CHANNEL_SEPARATE
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_PACKED
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            alpha_stride <<= 3
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_INDEX, ALPHA_MASK_RGB
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = 0
          when ALPHA_CHANNEL_SOURCE
            apr = 0
          else
            alpha_mode = (alpha_mode << 16) / 255
            apr = 0
          end
        else
          alpha_mode = 0x10000
          apr = 0
        end
        dither_enabled = !((op & BLIT_DITHER)).equal?(0)
        # Blit **
        dp = dpr
        sp = spr
        ap = apr
        dest_palette_size = 1 << dest_depth
        if ((!(dest_reds).nil?) && (dest_reds.attr_length < dest_palette_size))
          dest_palette_size = dest_reds.attr_length
        end
        palette_mapping = nil
        is_exact_palette_mapping = true
        case (alpha_mode)
        when 0x10000
          # If the palettes and formats are equivalent use a one-to-one mapping **
          if (((stype).equal?(dtype)) && ((src_reds).equal?(dest_reds)) && ((src_greens).equal?(dest_greens)) && ((src_blues).equal?(dest_blues)))
            palette_mapping = ONE_TO_ONE_MAPPING
            # If palettes have not been supplied, supply a suitable mapping **
          else
            if (((src_reds).nil?) || ((dest_reds).nil?))
              if (src_depth <= dest_depth)
                palette_mapping = ONE_TO_ONE_MAPPING
              else
                palette_mapping = Array.typed(::Java::Byte).new(1 << src_depth) { 0 }
                mask = (0xff << dest_depth) >> 8
                i = 0
                while i < palette_mapping.attr_length
                  palette_mapping[i] = (i & mask)
                  (i += 1)
                end
              end
            end
          end
        when ALPHA_MASK_UNPACKED, ALPHA_MASK_PACKED, ALPHA_MASK_INDEX, ALPHA_MASK_RGB
          # Generate a palette mapping **
          src_palette_size = 1 << src_depth
          palette_mapping = Array.typed(::Java::Byte).new(src_palette_size) { 0 }
          if ((!(src_reds).nil?) && (src_reds.attr_length < src_palette_size))
            src_palette_size = src_reds.attr_length
          end
          i = 0
          r = 0
          g = 0
          b = 0
          index = 0
          while i < src_palette_size
            r = src_reds[i] & 0xff
            g = src_greens[i] & 0xff
            b = src_blues[i] & 0xff
            index = 0
            min_distance = 0x7fffffff
            j = 0
            dr = 0
            dg = 0
            db = 0
            distance = 0
            while j < dest_palette_size
              dr = (dest_reds[j] & 0xff) - r
              dg = (dest_greens[j] & 0xff) - g
              db = (dest_blues[j] & 0xff) - b
              distance = dr * dr + dg * dg + db * db
              if (distance < min_distance)
                index = j
                if ((distance).equal?(0))
                  break
                end
                min_distance = distance
              end
              (j += 1)
            end
            palette_mapping[i] = index
            if (!(min_distance).equal?(0))
              is_exact_palette_mapping = false
            end
            (i += 1)
          end
        end
        if ((!(palette_mapping).nil?) && (is_exact_palette_mapping || !dither_enabled))
          if (((stype).equal?(dtype)) && ((alpha_mode).equal?(0x10000)))
            # Fast blit (copy w/ mapping) **
            case (stype)
            when TYPE_INDEX_8
              dy = dest_height
              sfy = sfyi
              while dy > 0
                dx = dest_width
                sfx = sfxi
                while dx > 0
                  dest_data[dp] = palette_mapping[src_data[sp] & 0xff]
                  sp += (sfx >> 16)
                  (dx -= 1)
                  dp += dprxi
                  sfx = (sfx & 0xffff) + sfxi
                end
                (dy -= 1)
                sp = spr += (sfy >> 16) * src_stride
                sfy = (sfy & 0xffff) + sfyi
                dp = dpr += dpryi
              end
            when TYPE_INDEX_4
              dy = dest_height
              sfy = sfyi
              while dy > 0
                dx = dest_width
                sfx = sfxi
                while dx > 0
                  v = 0
                  if (!((sp & 1)).equal?(0))
                    v = palette_mapping[src_data[sp >> 1] & 0xf]
                  else
                    v = (src_data[sp >> 1] >> 4) & 0xf
                  end
                  sp += (sfx >> 16)
                  if (!((dp & 1)).equal?(0))
                    dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf0) | v)
                  else
                    dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf) | (v << 4))
                  end
                  (dx -= 1)
                  dp += dprxi
                  sfx = (sfx & 0xffff) + sfxi
                end
                (dy -= 1)
                sp = spr += (sfy >> 16) * src_stride
                sfy = (sfy & 0xffff) + sfyi
                dp = dpr += dpryi
              end
            when TYPE_INDEX_2
              dy = dest_height
              sfy = sfyi
              while dy > 0
                dx = dest_width
                sfx = sfxi
                while dx > 0
                  index = palette_mapping[(src_data[sp >> 2] >> (6 - (sp & 3) * 2)) & 0x3]
                  sp += (sfx >> 16)
                  shift = 6 - (dp & 3) * 2
                  dest_data[dp >> 2] = (dest_data[dp >> 2] & ~(0x3 << shift) | (index << shift))
                  (dx -= 1)
                  dp += dprxi
                  sfx = (sfx & 0xffff) + sfxi
                end
                (dy -= 1)
                sp = spr += (sfy >> 16) * src_stride
                sfy = (sfy & 0xffff) + sfyi
                dp = dpr += dpryi
              end
            when TYPE_INDEX_1_MSB
              dy = dest_height
              sfy = sfyi
              while dy > 0
                dx = dest_width
                sfx = sfxi
                while dx > 0
                  index = palette_mapping[(src_data[sp >> 3] >> (7 - (sp & 7))) & 0x1]
                  sp += (sfx >> 16)
                  shift = 7 - (dp & 7)
                  dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (index << shift))
                  (dx -= 1)
                  dp += dprxi
                  sfx = (sfx & 0xffff) + sfxi
                end
                (dy -= 1)
                sp = spr += (sfy >> 16) * src_stride
                sfy = (sfy & 0xffff) + sfyi
                dp = dpr += dpryi
              end
            when TYPE_INDEX_1_LSB
              dy = dest_height
              sfy = sfyi
              while dy > 0
                dx = dest_width
                sfx = sfxi
                while dx > 0
                  index = palette_mapping[(src_data[sp >> 3] >> (sp & 7)) & 0x1]
                  sp += (sfx >> 16)
                  shift = dp & 7
                  dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (index << shift))
                  (dx -= 1)
                  dp += dprxi
                  sfx = (sfx & 0xffff) + sfxi
                end
                (dy -= 1)
                sp = spr += (sfy >> 16) * src_stride
                sfy = (sfy & 0xffff) + sfyi
                dp = dpr += dpryi
              end
            end
          else
            # Convert between indexed modes using mapping and mask **
            dy = dest_height
            sfy = sfyi
            while dy > 0
              dx = dest_width
              sfx = sfxi
              while dx > 0
                index = 0
                # READ NEXT PIXEL **
                case (stype)
                when TYPE_INDEX_8
                  index = src_data[sp] & 0xff
                  sp += (sfx >> 16)
                when TYPE_INDEX_4
                  if (!((sp & 1)).equal?(0))
                    index = src_data[sp >> 1] & 0xf
                  else
                    index = (src_data[sp >> 1] >> 4) & 0xf
                  end
                  sp += (sfx >> 16)
                when TYPE_INDEX_2
                  index = (src_data[sp >> 2] >> (6 - (sp & 3) * 2)) & 0x3
                  sp += (sfx >> 16)
                when TYPE_INDEX_1_MSB
                  index = (src_data[sp >> 3] >> (7 - (sp & 7))) & 0x1
                  sp += (sfx >> 16)
                when TYPE_INDEX_1_LSB
                  index = (src_data[sp >> 3] >> (sp & 7)) & 0x1
                  sp += (sfx >> 16)
                else
                  return
                end
                # APPLY MASK **
                case (alpha_mode)
                when ALPHA_MASK_UNPACKED
                  mask = alpha_data[ap]
                  ap += (sfx >> 16)
                  if ((mask).equal?(0))
                    (dx -= 1)
                    dp += dprxi
                    sfx = (sfx & 0xffff) + sfxi
                    next
                  end
                when ALPHA_MASK_PACKED
                  mask = alpha_data[ap >> 3] & (1 << (ap & 7))
                  ap += (sfx >> 16)
                  if ((mask).equal?(0))
                    (dx -= 1)
                    dp += dprxi
                    sfx = (sfx & 0xffff) + sfxi
                    next
                  end
                when ALPHA_MASK_INDEX
                  i = 0
                  while (i < alpha_data.attr_length)
                    if ((index).equal?((alpha_data[i] & 0xff)))
                      break
                    end
                  end
                  if (i < alpha_data.attr_length)
                    (dx -= 1)
                    dp += dprxi
                    sfx = (sfx & 0xffff) + sfxi
                    next
                  end
                when ALPHA_MASK_RGB
                  r = src_reds[index]
                  g = src_greens[index]
                  b = src_blues[index]
                  i = 0
                  while (i < alpha_data.attr_length)
                    if (((r).equal?(alpha_data[i])) && ((g).equal?(alpha_data[i + 1])) && ((b).equal?(alpha_data[i + 2])))
                      break
                    end
                    i += 3
                  end
                  if (i < alpha_data.attr_length)
                    (dx -= 1)
                    dp += dprxi
                    sfx = (sfx & 0xffff) + sfxi
                    next
                  end
                end
                index = palette_mapping[index] & 0xff
                # WRITE NEXT PIXEL **
                case (dtype)
                when TYPE_INDEX_8
                  dest_data[dp] = index
                when TYPE_INDEX_4
                  if (!((dp & 1)).equal?(0))
                    dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf0) | index)
                  else
                    dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf) | (index << 4))
                  end
                when TYPE_INDEX_2
                  shift = 6 - (dp & 3) * 2
                  dest_data[dp >> 2] = (dest_data[dp >> 2] & ~(0x3 << shift) | (index << shift))
                when TYPE_INDEX_1_MSB
                  shift = 7 - (dp & 7)
                  dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (index << shift))
                when TYPE_INDEX_1_LSB
                  shift = dp & 7
                  dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (index << shift))
                end
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
              end
              (dy -= 1)
              sp = spr += (sfy >> 16) * src_stride
              sfy = (sfy & 0xffff) + sfyi
              dp = dpr += dpryi
            end
          end
          return
        end
        # Comprehensive blit (apply transformations) **
        alpha = alpha_mode
        index = 0
        indexq = 0
        lastindex = 0
        lastr = -1
        lastg = -1
        lastb = -1
        rerr = nil
        gerr = nil
        berr = nil
        if (dither_enabled)
          rerr = Array.typed(::Java::Int).new(dest_width + 2) { 0 }
          gerr = Array.typed(::Java::Int).new(dest_width + 2) { 0 }
          berr = Array.typed(::Java::Int).new(dest_width + 2) { 0 }
        else
          rerr = nil
          gerr = nil
          berr = nil
        end
        dy = dest_height
        sfy = sfyi
        while dy > 0
          lrerr = 0
          lgerr = 0
          lberr = 0
          dx = dest_width
          sfx = sfxi
          while dx > 0
            # READ NEXT PIXEL **
            case (stype)
            when TYPE_INDEX_8
              index = src_data[sp] & 0xff
              sp += (sfx >> 16)
            when TYPE_INDEX_4
              if (!((sp & 1)).equal?(0))
                index = src_data[sp >> 1] & 0xf
              else
                index = (src_data[sp >> 1] >> 4) & 0xf
              end
              sp += (sfx >> 16)
            when TYPE_INDEX_2
              index = (src_data[sp >> 2] >> (6 - (sp & 3) * 2)) & 0x3
              sp += (sfx >> 16)
            when TYPE_INDEX_1_MSB
              index = (src_data[sp >> 3] >> (7 - (sp & 7))) & 0x1
              sp += (sfx >> 16)
            when TYPE_INDEX_1_LSB
              index = (src_data[sp >> 3] >> (sp & 7)) & 0x1
              sp += (sfx >> 16)
            end
            # DO SPECIAL PROCESSING IF REQUIRED **
            r = src_reds[index] & 0xff
            g = src_greens[index] & 0xff
            b = src_blues[index] & 0xff
            case (alpha_mode)
            when ALPHA_CHANNEL_SEPARATE
              alpha = ((alpha_data[ap] & 0xff) << 16) / 255
              ap += (sfx >> 16)
            when ALPHA_MASK_UNPACKED
              alpha = (!(alpha_data[ap]).equal?(0)) ? 0x10000 : 0
              ap += (sfx >> 16)
            when ALPHA_MASK_PACKED
              alpha = (alpha_data[ap >> 3] << ((ap & 7) + 9)) & 0x10000
              ap += (sfx >> 16)
            when ALPHA_MASK_INDEX
              # could speed up using binary search if we sorted the indices
              i = 0
              while (i < alpha_data.attr_length)
                if ((index).equal?((alpha_data[i] & 0xff)))
                  break
                end
              end
              if (i < alpha_data.attr_length)
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
            when ALPHA_MASK_RGB
              i = 0
              while (i < alpha_data.attr_length)
                if (((r).equal?((alpha_data[i] & 0xff))) && ((g).equal?((alpha_data[i + 1] & 0xff))) && ((b).equal?((alpha_data[i + 2] & 0xff))))
                  break
                end
                i += 3
              end
              if (i < alpha_data.attr_length)
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
            end
            if (!(alpha).equal?(0x10000))
              if ((alpha).equal?(0x0))
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
              case (dtype)
              when TYPE_INDEX_8
                indexq = dest_data[dp] & 0xff
              when TYPE_INDEX_4
                if (!((dp & 1)).equal?(0))
                  indexq = dest_data[dp >> 1] & 0xf
                else
                  indexq = (dest_data[dp >> 1] >> 4) & 0xf
                end
              when TYPE_INDEX_2
                indexq = (dest_data[dp >> 2] >> (6 - (dp & 3) * 2)) & 0x3
              when TYPE_INDEX_1_MSB
                indexq = (dest_data[dp >> 3] >> (7 - (dp & 7))) & 0x1
              when TYPE_INDEX_1_LSB
                indexq = (dest_data[dp >> 3] >> (dp & 7)) & 0x1
              end
              # Perform alpha blending
              rq = dest_reds[indexq] & 0xff
              gq = dest_greens[indexq] & 0xff
              bq = dest_blues[indexq] & 0xff
              r = rq + ((r - rq) * alpha >> 16)
              g = gq + ((g - gq) * alpha >> 16)
              b = bq + ((b - bq) * alpha >> 16)
            end
            # MAP COLOR TO THE PALETTE **
            if (dither_enabled)
              # Floyd-Steinberg error diffusion
              r += rerr[dx] >> 4
              if (r < 0)
                r = 0
              else
                if (r > 255)
                  r = 255
                end
              end
              g += gerr[dx] >> 4
              if (g < 0)
                g = 0
              else
                if (g > 255)
                  g = 255
                end
              end
              b += berr[dx] >> 4
              if (b < 0)
                b = 0
              else
                if (b > 255)
                  b = 255
                end
              end
              rerr[dx] = lrerr
              gerr[dx] = lgerr
              berr[dx] = lberr
            end
            if (!(r).equal?(lastr) || !(g).equal?(lastg) || !(b).equal?(lastb))
              # moving the variable declarations out seems to make the JDK JIT happier...
              j = 0
              dr = 0
              dg = 0
              db = 0
              distance = 0
              min_distance = 0x7fffffff
              while j < dest_palette_size
                dr = (dest_reds[j] & 0xff) - r
                dg = (dest_greens[j] & 0xff) - g
                db = (dest_blues[j] & 0xff) - b
                distance = dr * dr + dg * dg + db * db
                if (distance < min_distance)
                  lastindex = j
                  if ((distance).equal?(0))
                    break
                  end
                  min_distance = distance
                end
                (j += 1)
              end
              lastr = r
              lastg = g
              lastb = b
            end
            if (dither_enabled)
              # Floyd-Steinberg error diffusion, cont'd...
              dxm1 = dx - 1
              dxp1 = dx + 1
              acc = 0
              rerr[dxp1] += acc = (lrerr = r - (dest_reds[lastindex] & 0xff)) + lrerr + lrerr
              rerr[dx] += acc += lrerr + lrerr
              rerr[dxm1] += acc + lrerr + lrerr
              gerr[dxp1] += acc = (lgerr = g - (dest_greens[lastindex] & 0xff)) + lgerr + lgerr
              gerr[dx] += acc += lgerr + lgerr
              gerr[dxm1] += acc + lgerr + lgerr
              berr[dxp1] += acc = (lberr = b - (dest_blues[lastindex] & 0xff)) + lberr + lberr
              berr[dx] += acc += lberr + lberr
              berr[dxm1] += acc + lberr + lberr
            end
            # WRITE NEXT PIXEL **
            case (dtype)
            when TYPE_INDEX_8
              dest_data[dp] = lastindex
            when TYPE_INDEX_4
              if (!((dp & 1)).equal?(0))
                dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf0) | lastindex)
              else
                dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf) | (lastindex << 4))
              end
            when TYPE_INDEX_2
              shift = 6 - (dp & 3) * 2
              dest_data[dp >> 2] = (dest_data[dp >> 2] & ~(0x3 << shift) | (lastindex << shift))
            when TYPE_INDEX_1_MSB
              shift = 7 - (dp & 7)
              dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (lastindex << shift))
            when TYPE_INDEX_1_LSB
              shift = dp & 7
              dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (lastindex << shift))
            end
            (dx -= 1)
            dp += dprxi
            sfx = (sfx & 0xffff) + sfxi
          end
          (dy -= 1)
          sp = spr += (sfy >> 16) * src_stride
          ap = apr += (sfy >> 16) * alpha_stride
          sfy = (sfy & 0xffff) + sfyi
          dp = dpr += dpryi
        end
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      # Blits an index palette image into a direct palette image.
      # <p>
      # Note: The source and destination masks and palettes must
      # always be fully specified.
      # </p>
      # 
      # @param op the blitter operation: a combination of BLIT_xxx flags
      # (see BLIT_xxx constants)
      # @param srcData the source byte array containing image data
      # @param srcDepth the source depth: one of 1, 2, 4, 8
      # @param srcStride the source number of bytes per line
      # @param srcOrder the source byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if srcDepth is not 1
      # @param srcX the top-left x-coord of the source blit region
      # @param srcY the top-left y-coord of the source blit region
      # @param srcWidth the width of the source blit region
      # @param srcHeight the height of the source blit region
      # @param srcReds the source palette red component intensities
      # @param srcGreens the source palette green component intensities
      # @param srcBlues the source palette blue component intensities
      # @param alphaMode the alpha blending or mask mode, may be
      # an integer 0-255 for global alpha; ignored if BLIT_ALPHA
      # not specified in the blitter operations
      # (see ALPHA_MODE_xxx constants)
      # @param alphaData the alpha blending or mask data, varies depending
      # on the value of alphaMode and sometimes ignored
      # @param alphaStride the alpha data number of bytes per line
      # @param alphaX the top-left x-coord of the alpha blit region
      # @param alphaY the top-left y-coord of the alpha blit region
      # @param destData the destination byte array containing image data
      # @param destDepth the destination depth: one of 8, 16, 24, 32
      # @param destStride the destination number of bytes per line
      # @param destOrder the destination byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if destDepth is not 16 or 32
      # @param destX the top-left x-coord of the destination blit region
      # @param destY the top-left y-coord of the destination blit region
      # @param destWidth the width of the destination blit region
      # @param destHeight the height of the destination blit region
      # @param destRedMask the destination red channel mask
      # @param destGreenMask the destination green channel mask
      # @param destBlueMask the destination blue channel mask
      # @param flipX if true the resulting image is flipped along the vertical axis
      # @param flipY if true the resulting image is flipped along the horizontal axis
      def blit(op, src_data, src_depth, src_stride, src_order, src_x, src_y, src_width, src_height, src_reds, src_greens, src_blues, alpha_mode, alpha_data, alpha_stride, alpha_x, alpha_y, dest_data, dest_depth, dest_stride, dest_order, dest_x, dest_y, dest_width, dest_height, dest_red_mask, dest_green_mask, dest_blue_mask, flip_x, flip_y)
        if ((dest_width <= 0) || (dest_height <= 0) || ((alpha_mode).equal?(ALPHA_TRANSPARENT)))
          return
        end
        # these should be supplied as params later
        dest_alpha_mask = 0
        # Prepare scaling data **
        dwm1 = dest_width - 1
        sfxi = (!(dwm1).equal?(0)) ? RJava.cast_to_int((((src_width << 16) - 1) / dwm1)) : 0
        dhm1 = dest_height - 1
        sfyi = (!(dhm1).equal?(0)) ? RJava.cast_to_int((((src_height << 16) - 1) / dhm1)) : 0
        # Prepare source-related data **
        stype = 0
        case (src_depth)
        when 8
          stype = TYPE_INDEX_8
        when 4
          src_stride <<= 1
          stype = TYPE_INDEX_4
        when 2
          src_stride <<= 2
          stype = TYPE_INDEX_2
        when 1
          src_stride <<= 3
          stype = ((src_order).equal?(MSB_FIRST)) ? TYPE_INDEX_1_MSB : TYPE_INDEX_1_LSB
        else
          # throw new IllegalArgumentException("Invalid source type");
          return
        end
        spr = src_y * src_stride + src_x
        # Prepare destination-related data **
        dbpp = 0
        dtype = 0
        case (dest_depth)
        when 8
          dbpp = 1
          dtype = TYPE_GENERIC_8
        when 16
          dbpp = 2
          dtype = ((dest_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_16_MSB : TYPE_GENERIC_16_LSB
        when 24
          dbpp = 3
          dtype = TYPE_GENERIC_24
        when 32
          dbpp = 4
          dtype = ((dest_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_32_MSB : TYPE_GENERIC_32_LSB
        else
          # throw new IllegalArgumentException("Invalid destination type");
          return
        end
        dpr = ((flip_y) ? dest_y + dhm1 : dest_y) * dest_stride + ((flip_x) ? dest_x + dwm1 : dest_x) * dbpp
        dprxi = (flip_x) ? -dbpp : dbpp
        dpryi = (flip_y) ? -dest_stride : dest_stride
        # Prepare special processing data **
        apr = 0
        if (!((op & BLIT_ALPHA)).equal?(0))
          case (alpha_mode)
          # prescale
          when ALPHA_MASK_UNPACKED, ALPHA_CHANNEL_SEPARATE
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_PACKED
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            alpha_stride <<= 3
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_INDEX, ALPHA_MASK_RGB
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = 0
          when ALPHA_CHANNEL_SOURCE
            apr = 0
          else
            alpha_mode = (alpha_mode << 16) / 255
            apr = 0
          end
        else
          alpha_mode = 0x10000
          apr = 0
        end
        # Comprehensive blit (apply transformations) **
        dest_red_shift = get_channel_shift(dest_red_mask)
        dest_red_width = get_channel_width(dest_red_mask, dest_red_shift)
        dest_reds = ANY_TO_EIGHT[dest_red_width]
        dest_red_pre_shift = 8 - dest_red_width
        dest_green_shift = get_channel_shift(dest_green_mask)
        dest_green_width = get_channel_width(dest_green_mask, dest_green_shift)
        dest_greens = ANY_TO_EIGHT[dest_green_width]
        dest_green_pre_shift = 8 - dest_green_width
        dest_blue_shift = get_channel_shift(dest_blue_mask)
        dest_blue_width = get_channel_width(dest_blue_mask, dest_blue_shift)
        dest_blues = ANY_TO_EIGHT[dest_blue_width]
        dest_blue_pre_shift = 8 - dest_blue_width
        dest_alpha_shift = get_channel_shift(dest_alpha_mask)
        dest_alpha_width = get_channel_width(dest_alpha_mask, dest_alpha_shift)
        dest_alphas = ANY_TO_EIGHT[dest_alpha_width]
        dest_alpha_pre_shift = 8 - dest_alpha_width
        dp = dpr
        sp = spr
        ap = apr
        alpha = alpha_mode
        r = 0
        g = 0
        b = 0
        a = 0
        index = 0
        rq = 0
        gq = 0
        bq = 0
        aq = 0
        dy = dest_height
        sfy = sfyi
        while dy > 0
          dx = dest_width
          sfx = sfxi
          while dx > 0
            # READ NEXT PIXEL **
            case (stype)
            when TYPE_INDEX_8
              index = src_data[sp] & 0xff
              sp += (sfx >> 16)
            when TYPE_INDEX_4
              if (!((sp & 1)).equal?(0))
                index = src_data[sp >> 1] & 0xf
              else
                index = (src_data[sp >> 1] >> 4) & 0xf
              end
              sp += (sfx >> 16)
            when TYPE_INDEX_2
              index = (src_data[sp >> 2] >> (6 - (sp & 3) * 2)) & 0x3
              sp += (sfx >> 16)
            when TYPE_INDEX_1_MSB
              index = (src_data[sp >> 3] >> (7 - (sp & 7))) & 0x1
              sp += (sfx >> 16)
            when TYPE_INDEX_1_LSB
              index = (src_data[sp >> 3] >> (sp & 7)) & 0x1
              sp += (sfx >> 16)
            end
            # DO SPECIAL PROCESSING IF REQUIRED **
            r = src_reds[index] & 0xff
            g = src_greens[index] & 0xff
            b = src_blues[index] & 0xff
            case (alpha_mode)
            when ALPHA_CHANNEL_SEPARATE
              alpha = ((alpha_data[ap] & 0xff) << 16) / 255
              ap += (sfx >> 16)
            when ALPHA_MASK_UNPACKED
              alpha = (!(alpha_data[ap]).equal?(0)) ? 0x10000 : 0
              ap += (sfx >> 16)
            when ALPHA_MASK_PACKED
              alpha = (alpha_data[ap >> 3] << ((ap & 7) + 9)) & 0x10000
              ap += (sfx >> 16)
            when ALPHA_MASK_INDEX
              # could speed up using binary search if we sorted the indices
              i = 0
              while (i < alpha_data.attr_length)
                if ((index).equal?((alpha_data[i] & 0xff)))
                  break
                end
              end
              if (i < alpha_data.attr_length)
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
            when ALPHA_MASK_RGB
              i = 0
              while (i < alpha_data.attr_length)
                if (((r).equal?((alpha_data[i] & 0xff))) && ((g).equal?((alpha_data[i + 1] & 0xff))) && ((b).equal?((alpha_data[i + 2] & 0xff))))
                  break
                end
                i += 3
              end
              if (i < alpha_data.attr_length)
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
            end
            if (!(alpha).equal?(0x10000))
              if ((alpha).equal?(0x0))
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
              case (dtype)
              when TYPE_GENERIC_8
                data = dest_data[dp] & 0xff
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_16_MSB
                data = ((dest_data[dp] & 0xff) << 8) | (dest_data[dp + 1] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_16_LSB
                data = ((dest_data[dp + 1] & 0xff) << 8) | (dest_data[dp] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_24
                data = ((((dest_data[dp] & 0xff) << 8) | (dest_data[dp + 1] & 0xff)) << 8) | (dest_data[dp + 2] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_32_MSB
                data = ((((((dest_data[dp] & 0xff) << 8) | (dest_data[dp + 1] & 0xff)) << 8) | (dest_data[dp + 2] & 0xff)) << 8) | (dest_data[dp + 3] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              when TYPE_GENERIC_32_LSB
                data = ((((((dest_data[dp + 3] & 0xff) << 8) | (dest_data[dp + 2] & 0xff)) << 8) | (dest_data[dp + 1] & 0xff)) << 8) | (dest_data[dp] & 0xff)
                rq = dest_reds[(data & dest_red_mask) >> dest_red_shift] & 0xff
                gq = dest_greens[(data & dest_green_mask) >> dest_green_shift] & 0xff
                bq = dest_blues[(data & dest_blue_mask) >> dest_blue_shift] & 0xff
                aq = dest_alphas[(data & dest_alpha_mask) >> dest_alpha_shift] & 0xff
              end
              # Perform alpha blending
              a = aq + ((a - aq) * alpha >> 16)
              r = rq + ((r - rq) * alpha >> 16)
              g = gq + ((g - gq) * alpha >> 16)
              b = bq + ((b - bq) * alpha >> 16)
            end
            # WRITE NEXT PIXEL **
            data = (r >> dest_red_pre_shift << dest_red_shift) | (g >> dest_green_pre_shift << dest_green_shift) | (b >> dest_blue_pre_shift << dest_blue_shift) | (a >> dest_alpha_pre_shift << dest_alpha_shift)
            case (dtype)
            when TYPE_GENERIC_8
              dest_data[dp] = data
            when TYPE_GENERIC_16_MSB
              dest_data[dp] = (data >> 8)
              dest_data[dp + 1] = (data & 0xff)
            when TYPE_GENERIC_16_LSB
              dest_data[dp] = (data & 0xff)
              dest_data[dp + 1] = (data >> 8)
            when TYPE_GENERIC_24
              dest_data[dp] = (data >> 16)
              dest_data[dp + 1] = (data >> 8)
              dest_data[dp + 2] = (data & 0xff)
            when TYPE_GENERIC_32_MSB
              dest_data[dp] = (data >> 24)
              dest_data[dp + 1] = (data >> 16)
              dest_data[dp + 2] = (data >> 8)
              dest_data[dp + 3] = (data & 0xff)
            when TYPE_GENERIC_32_LSB
              dest_data[dp] = (data & 0xff)
              dest_data[dp + 1] = (data >> 8)
              dest_data[dp + 2] = (data >> 16)
              dest_data[dp + 3] = (data >> 24)
            end
            (dx -= 1)
            dp += dprxi
            sfx = (sfx & 0xffff) + sfxi
          end
          (dy -= 1)
          sp = spr += (sfy >> 16) * src_stride
          ap = apr += (sfy >> 16) * alpha_stride
          sfy = (sfy & 0xffff) + sfyi
          dp = dpr += dpryi
        end
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Boolean] }
      # Blits a direct palette image into an index palette image.
      # <p>
      # Note: The source and destination masks and palettes must
      # always be fully specified.
      # </p>
      # 
      # @param op the blitter operation: a combination of BLIT_xxx flags
      # (see BLIT_xxx constants)
      # @param srcData the source byte array containing image data
      # @param srcDepth the source depth: one of 8, 16, 24, 32
      # @param srcStride the source number of bytes per line
      # @param srcOrder the source byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if srcDepth is not 16 or 32
      # @param srcX the top-left x-coord of the source blit region
      # @param srcY the top-left y-coord of the source blit region
      # @param srcWidth the width of the source blit region
      # @param srcHeight the height of the source blit region
      # @param srcRedMask the source red channel mask
      # @param srcGreenMask the source green channel mask
      # @param srcBlueMask the source blue channel mask
      # @param alphaMode the alpha blending or mask mode, may be
      # an integer 0-255 for global alpha; ignored if BLIT_ALPHA
      # not specified in the blitter operations
      # (see ALPHA_MODE_xxx constants)
      # @param alphaData the alpha blending or mask data, varies depending
      # on the value of alphaMode and sometimes ignored
      # @param alphaStride the alpha data number of bytes per line
      # @param alphaX the top-left x-coord of the alpha blit region
      # @param alphaY the top-left y-coord of the alpha blit region
      # @param destData the destination byte array containing image data
      # @param destDepth the destination depth: one of 1, 2, 4, 8
      # @param destStride the destination number of bytes per line
      # @param destOrder the destination byte ordering: one of MSB_FIRST or LSB_FIRST;
      # ignored if destDepth is not 1
      # @param destX the top-left x-coord of the destination blit region
      # @param destY the top-left y-coord of the destination blit region
      # @param destWidth the width of the destination blit region
      # @param destHeight the height of the destination blit region
      # @param destReds the destination palette red component intensities
      # @param destGreens the destination palette green component intensities
      # @param destBlues the destination palette blue component intensities
      # @param flipX if true the resulting image is flipped along the vertical axis
      # @param flipY if true the resulting image is flipped along the horizontal axis
      def blit(op, src_data, src_depth, src_stride, src_order, src_x, src_y, src_width, src_height, src_red_mask, src_green_mask, src_blue_mask, alpha_mode, alpha_data, alpha_stride, alpha_x, alpha_y, dest_data, dest_depth, dest_stride, dest_order, dest_x, dest_y, dest_width, dest_height, dest_reds, dest_greens, dest_blues, flip_x, flip_y)
        if ((dest_width <= 0) || (dest_height <= 0) || ((alpha_mode).equal?(ALPHA_TRANSPARENT)))
          return
        end
        # these should be supplied as params later
        src_alpha_mask = 0
        # Prepare scaling data **
        dwm1 = dest_width - 1
        sfxi = (!(dwm1).equal?(0)) ? RJava.cast_to_int((((src_width << 16) - 1) / dwm1)) : 0
        dhm1 = dest_height - 1
        sfyi = (!(dhm1).equal?(0)) ? RJava.cast_to_int((((src_height << 16) - 1) / dhm1)) : 0
        # Prepare source-related data **
        sbpp = 0
        stype = 0
        case (src_depth)
        when 8
          sbpp = 1
          stype = TYPE_GENERIC_8
        when 16
          sbpp = 2
          stype = ((src_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_16_MSB : TYPE_GENERIC_16_LSB
        when 24
          sbpp = 3
          stype = TYPE_GENERIC_24
        when 32
          sbpp = 4
          stype = ((src_order).equal?(MSB_FIRST)) ? TYPE_GENERIC_32_MSB : TYPE_GENERIC_32_LSB
        else
          # throw new IllegalArgumentException("Invalid source type");
          return
        end
        spr = src_y * src_stride + src_x * sbpp
        # Prepare destination-related data **
        dtype = 0
        case (dest_depth)
        when 8
          dtype = TYPE_INDEX_8
        when 4
          dest_stride <<= 1
          dtype = TYPE_INDEX_4
        when 2
          dest_stride <<= 2
          dtype = TYPE_INDEX_2
        when 1
          dest_stride <<= 3
          dtype = ((dest_order).equal?(MSB_FIRST)) ? TYPE_INDEX_1_MSB : TYPE_INDEX_1_LSB
        else
          # throw new IllegalArgumentException("Invalid source type");
          return
        end
        dpr = ((flip_y) ? dest_y + dhm1 : dest_y) * dest_stride + ((flip_x) ? dest_x + dwm1 : dest_x)
        dprxi = (flip_x) ? -1 : 1
        dpryi = (flip_y) ? -dest_stride : dest_stride
        # Prepare special processing data **
        apr = 0
        if (!((op & BLIT_ALPHA)).equal?(0))
          case (alpha_mode)
          # prescale
          when ALPHA_MASK_UNPACKED, ALPHA_CHANNEL_SEPARATE
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_PACKED
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            alpha_stride <<= 3
            apr = alpha_y * alpha_stride + alpha_x
          when ALPHA_MASK_INDEX
            # throw new IllegalArgumentException("Invalid alpha type");
            return
          when ALPHA_MASK_RGB
            if ((alpha_data).nil?)
              alpha_mode = 0x10000
            end
            apr = 0
          when ALPHA_CHANNEL_SOURCE
            apr = 0
          else
            alpha_mode = (alpha_mode << 16) / 255
            apr = 0
          end
        else
          alpha_mode = 0x10000
          apr = 0
        end
        dither_enabled = !((op & BLIT_DITHER)).equal?(0)
        # Comprehensive blit (apply transformations) **
        src_red_shift = get_channel_shift(src_red_mask)
        src_reds = ANY_TO_EIGHT[get_channel_width(src_red_mask, src_red_shift)]
        src_green_shift = get_channel_shift(src_green_mask)
        src_greens = ANY_TO_EIGHT[get_channel_width(src_green_mask, src_green_shift)]
        src_blue_shift = get_channel_shift(src_blue_mask)
        src_blues = ANY_TO_EIGHT[get_channel_width(src_blue_mask, src_blue_shift)]
        src_alpha_shift = get_channel_shift(src_alpha_mask)
        src_alphas = ANY_TO_EIGHT[get_channel_width(src_alpha_mask, src_alpha_shift)]
        dp = dpr
        sp = spr
        ap = apr
        alpha = alpha_mode
        r = 0
        g = 0
        b = 0
        a = 0
        indexq = 0
        lastindex = 0
        lastr = -1
        lastg = -1
        lastb = -1
        rerr = nil
        gerr = nil
        berr = nil
        dest_palette_size = 1 << dest_depth
        if ((!(dest_reds).nil?) && (dest_reds.attr_length < dest_palette_size))
          dest_palette_size = dest_reds.attr_length
        end
        if (dither_enabled)
          rerr = Array.typed(::Java::Int).new(dest_width + 2) { 0 }
          gerr = Array.typed(::Java::Int).new(dest_width + 2) { 0 }
          berr = Array.typed(::Java::Int).new(dest_width + 2) { 0 }
        else
          rerr = nil
          gerr = nil
          berr = nil
        end
        dy = dest_height
        sfy = sfyi
        while dy > 0
          lrerr = 0
          lgerr = 0
          lberr = 0
          dx = dest_width
          sfx = sfxi
          while dx > 0
            # READ NEXT PIXEL **
            case (stype)
            when TYPE_GENERIC_8
              data = src_data[sp] & 0xff
              sp += (sfx >> 16)
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_16_MSB
              data = ((src_data[sp] & 0xff) << 8) | (src_data[sp + 1] & 0xff)
              sp += (sfx >> 16) * 2
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_16_LSB
              data = ((src_data[sp + 1] & 0xff) << 8) | (src_data[sp] & 0xff)
              sp += (sfx >> 16) * 2
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_24
              data = ((((src_data[sp] & 0xff) << 8) | (src_data[sp + 1] & 0xff)) << 8) | (src_data[sp + 2] & 0xff)
              sp += (sfx >> 16) * 3
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_32_MSB
              data = ((((((src_data[sp] & 0xff) << 8) | (src_data[sp + 1] & 0xff)) << 8) | (src_data[sp + 2] & 0xff)) << 8) | (src_data[sp + 3] & 0xff)
              sp += (sfx >> 16) * 4
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            when TYPE_GENERIC_32_LSB
              data = ((((((src_data[sp + 3] & 0xff) << 8) | (src_data[sp + 2] & 0xff)) << 8) | (src_data[sp + 1] & 0xff)) << 8) | (src_data[sp] & 0xff)
              sp += (sfx >> 16) * 4
              r = src_reds[(data & src_red_mask) >> src_red_shift] & 0xff
              g = src_greens[(data & src_green_mask) >> src_green_shift] & 0xff
              b = src_blues[(data & src_blue_mask) >> src_blue_shift] & 0xff
              a = src_alphas[(data & src_alpha_mask) >> src_alpha_shift] & 0xff
            end
            # DO SPECIAL PROCESSING IF REQUIRED **
            case (alpha_mode)
            when ALPHA_CHANNEL_SEPARATE
              alpha = ((alpha_data[ap] & 0xff) << 16) / 255
              ap += (sfx >> 16)
            when ALPHA_CHANNEL_SOURCE
              alpha = (a << 16) / 255
            when ALPHA_MASK_UNPACKED
              alpha = (!(alpha_data[ap]).equal?(0)) ? 0x10000 : 0
              ap += (sfx >> 16)
            when ALPHA_MASK_PACKED
              alpha = (alpha_data[ap >> 3] << ((ap & 7) + 9)) & 0x10000
              ap += (sfx >> 16)
            when ALPHA_MASK_RGB
              alpha = 0x10000
              i = 0
              while i < alpha_data.attr_length
                if (((r).equal?(alpha_data[i])) && ((g).equal?(alpha_data[i + 1])) && ((b).equal?(alpha_data[i + 2])))
                  alpha = 0x0
                  break
                end
                i += 3
              end
            end
            if (!(alpha).equal?(0x10000))
              if ((alpha).equal?(0x0))
                (dx -= 1)
                dp += dprxi
                sfx = (sfx & 0xffff) + sfxi
                next
              end
              case (dtype)
              when TYPE_INDEX_8
                indexq = dest_data[dp] & 0xff
              when TYPE_INDEX_4
                if (!((dp & 1)).equal?(0))
                  indexq = dest_data[dp >> 1] & 0xf
                else
                  indexq = (dest_data[dp >> 1] >> 4) & 0xf
                end
              when TYPE_INDEX_2
                indexq = (dest_data[dp >> 2] >> (6 - (dp & 3) * 2)) & 0x3
              when TYPE_INDEX_1_MSB
                indexq = (dest_data[dp >> 3] >> (7 - (dp & 7))) & 0x1
              when TYPE_INDEX_1_LSB
                indexq = (dest_data[dp >> 3] >> (dp & 7)) & 0x1
              end
              # Perform alpha blending
              rq = dest_reds[indexq] & 0xff
              gq = dest_greens[indexq] & 0xff
              bq = dest_blues[indexq] & 0xff
              r = rq + ((r - rq) * alpha >> 16)
              g = gq + ((g - gq) * alpha >> 16)
              b = bq + ((b - bq) * alpha >> 16)
            end
            # MAP COLOR TO THE PALETTE **
            if (dither_enabled)
              # Floyd-Steinberg error diffusion
              r += rerr[dx] >> 4
              if (r < 0)
                r = 0
              else
                if (r > 255)
                  r = 255
                end
              end
              g += gerr[dx] >> 4
              if (g < 0)
                g = 0
              else
                if (g > 255)
                  g = 255
                end
              end
              b += berr[dx] >> 4
              if (b < 0)
                b = 0
              else
                if (b > 255)
                  b = 255
                end
              end
              rerr[dx] = lrerr
              gerr[dx] = lgerr
              berr[dx] = lberr
            end
            if (!(r).equal?(lastr) || !(g).equal?(lastg) || !(b).equal?(lastb))
              # moving the variable declarations out seems to make the JDK JIT happier...
              j = 0
              dr = 0
              dg = 0
              db = 0
              distance = 0
              min_distance = 0x7fffffff
              while j < dest_palette_size
                dr = (dest_reds[j] & 0xff) - r
                dg = (dest_greens[j] & 0xff) - g
                db = (dest_blues[j] & 0xff) - b
                distance = dr * dr + dg * dg + db * db
                if (distance < min_distance)
                  lastindex = j
                  if ((distance).equal?(0))
                    break
                  end
                  min_distance = distance
                end
                (j += 1)
              end
              lastr = r
              lastg = g
              lastb = b
            end
            if (dither_enabled)
              # Floyd-Steinberg error diffusion, cont'd...
              dxm1 = dx - 1
              dxp1 = dx + 1
              acc = 0
              rerr[dxp1] += acc = (lrerr = r - (dest_reds[lastindex] & 0xff)) + lrerr + lrerr
              rerr[dx] += acc += lrerr + lrerr
              rerr[dxm1] += acc + lrerr + lrerr
              gerr[dxp1] += acc = (lgerr = g - (dest_greens[lastindex] & 0xff)) + lgerr + lgerr
              gerr[dx] += acc += lgerr + lgerr
              gerr[dxm1] += acc + lgerr + lgerr
              berr[dxp1] += acc = (lberr = b - (dest_blues[lastindex] & 0xff)) + lberr + lberr
              berr[dx] += acc += lberr + lberr
              berr[dxm1] += acc + lberr + lberr
            end
            # WRITE NEXT PIXEL **
            case (dtype)
            when TYPE_INDEX_8
              dest_data[dp] = lastindex
            when TYPE_INDEX_4
              if (!((dp & 1)).equal?(0))
                dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf0) | lastindex)
              else
                dest_data[dp >> 1] = ((dest_data[dp >> 1] & 0xf) | (lastindex << 4))
              end
            when TYPE_INDEX_2
              shift = 6 - (dp & 3) * 2
              dest_data[dp >> 2] = (dest_data[dp >> 2] & ~(0x3 << shift) | (lastindex << shift))
            when TYPE_INDEX_1_MSB
              shift = 7 - (dp & 7)
              dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (lastindex << shift))
            when TYPE_INDEX_1_LSB
              shift = dp & 7
              dest_data[dp >> 3] = (dest_data[dp >> 3] & ~(0x1 << shift) | (lastindex << shift))
            end
            (dx -= 1)
            dp += dprxi
            sfx = (sfx & 0xffff) + sfxi
          end
          (dy -= 1)
          sp = spr += (sfy >> 16) * src_stride
          ap = apr += (sfy >> 16) * alpha_stride
          sfy = (sfy & 0xffff) + sfyi
          dp = dpr += dpryi
        end
      end
      
      typesig { [::Java::Int] }
      # Computes the required channel shift from a mask.
      def get_channel_shift(mask)
        if ((mask).equal?(0))
          return 0
        end
        i = 0
        i = 0
        while (((mask & 1)).equal?(0)) && (i < 32)
          mask >>= 1
          (i += 1)
        end
        return i
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Computes the required channel width (depth) from a mask.
      def get_channel_width(mask, shift)
        if ((mask).equal?(0))
          return 0
        end
        i = 0
        mask >>= shift
        i = shift
        while (!((mask & 1)).equal?(0)) && (i < 32)
          mask >>= 1
          (i += 1)
        end
        return i - shift
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # Extracts a field from packed RGB data given a mask for that field.
      def get_channel_field(data, mask)
        shift = get_channel_shift(mask)
        return ANY_TO_EIGHT[get_channel_width(mask, shift)][(data & mask) >> shift]
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, RGB, RGB, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Creates an ImageData containing one band's worth of a gradient filled
      # block.  If <code>vertical</code> is true, the band must be tiled
      # horizontally to fill a region, otherwise it must be tiled vertically.
      # 
      # @param width the width of the region to be filled
      # @param height the height of the region to be filled
      # @param vertical if true sweeps from top to bottom, else
      # sweeps from left to right
      # @param fromRGB the color to start with
      # @param toRGB the color to end with
      # @param redBits the number of significant red bits, 0 for palette modes
      # @param greenBits the number of significant green bits, 0 for palette modes
      # @param blueBits the number of significant blue bits, 0 for palette modes
      # @return the new ImageData
      def create_gradient_band(width, height, vertical, from_rgb, to_rgb, red_bits, green_bits, blue_bits)
        # Gradients are drawn as tiled bands
        band_width = 0
        band_height = 0
        bitmap_depth = 0
        bitmap_data = nil
        palette_data = nil
        # Select an algorithm depending on the depth of the screen
        if (!(red_bits).equal?(0) && !(green_bits).equal?(0) && !(blue_bits).equal?(0))
          palette_data = PaletteData.new(0xff00, 0xff0000, -0x1000000)
          bitmap_depth = 32
          if (red_bits >= 8 && green_bits >= 8 && blue_bits >= 8)
            # Precise color
            steps = 0
            if (vertical)
              band_width = 1
              band_height = height
              steps = band_height > 1 ? band_height - 1 : 1
            else
              band_width = width
              band_height = 1
              steps = band_width > 1 ? band_width - 1 : 1
            end
            bytes_per_line = band_width * 4
            bitmap_data = Array.typed(::Java::Byte).new(band_height * bytes_per_line) { 0 }
            build_precise_gradient_channel(from_rgb.attr_blue, to_rgb.attr_blue, steps, band_width, band_height, vertical, bitmap_data, 0, bytes_per_line)
            build_precise_gradient_channel(from_rgb.attr_green, to_rgb.attr_green, steps, band_width, band_height, vertical, bitmap_data, 1, bytes_per_line)
            build_precise_gradient_channel(from_rgb.attr_red, to_rgb.attr_red, steps, band_width, band_height, vertical, bitmap_data, 2, bytes_per_line)
          else
            # Dithered color
            steps = 0
            if (vertical)
              band_width = (width < 8) ? width : 8
              band_height = height
              steps = band_height > 1 ? band_height - 1 : 1
            else
              band_width = width
              band_height = (height < 8) ? height : 8
              steps = band_width > 1 ? band_width - 1 : 1
            end
            bytes_per_line = band_width * 4
            bitmap_data = Array.typed(::Java::Byte).new(band_height * bytes_per_line) { 0 }
            build_dithered_gradient_channel(from_rgb.attr_blue, to_rgb.attr_blue, steps, band_width, band_height, vertical, bitmap_data, 0, bytes_per_line, blue_bits)
            build_dithered_gradient_channel(from_rgb.attr_green, to_rgb.attr_green, steps, band_width, band_height, vertical, bitmap_data, 1, bytes_per_line, green_bits)
            build_dithered_gradient_channel(from_rgb.attr_red, to_rgb.attr_red, steps, band_width, band_height, vertical, bitmap_data, 2, bytes_per_line, red_bits)
          end
        else
          # Dithered two tone
          palette_data = PaletteData.new(Array.typed(RGB).new([from_rgb, to_rgb]))
          bitmap_depth = 8
          blendi = 0
          if (vertical)
            band_width = (width < 8) ? width : 8
            band_height = height
            blendi = (band_height > 1) ? 0x1040000 / (band_height - 1) + 1 : 1
          else
            band_width = width
            band_height = (height < 8) ? height : 8
            blendi = (band_width > 1) ? 0x1040000 / (band_width - 1) + 1 : 1
          end
          bytes_per_line = (band_width + 3) & -4
          bitmap_data = Array.typed(::Java::Byte).new(band_height * bytes_per_line) { 0 }
          if (vertical)
            dy = 0
            blend = 0
            dp = 0
            while dy < band_height
              dx = 0
              while dx < band_width
                bitmap_data[dp + dx] = (blend + DITHER_MATRIX[dy & 7][dx]) < 0x1000000 ? 0 : 1
                (dx += 1)
              end
              (dy += 1)
              blend += blendi
              dp += bytes_per_line
            end
          else
            dx = 0
            blend = 0
            while dx < band_width
              dy = 0
              dptr = dx
              while dy < band_height
                bitmap_data[dptr] = (blend + DITHER_MATRIX[dy][dx & 7]) < 0x1000000 ? 0 : 1
                (dy += 1)
                dptr += bytes_per_line
              end
              (dx += 1)
              blend += blendi
            end
          end
        end
        return ImageData.new(band_width, band_height, bitmap_depth, palette_data, 4, bitmap_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # Fill in gradated values for a color channel
      def build_precise_gradient_channel(from, to, steps, band_width, band_height, vertical, bitmap_data, dp, bytes_per_line)
        val = from << 16
        inc = ((to << 16) - val) / steps + 1
        if (vertical)
          dy = 0
          while dy < band_height
            bitmap_data[dp] = (val >> 16)
            val += inc
            (dy += 1)
            dp += bytes_per_line
          end
        else
          dx = 0
          while dx < band_width
            bitmap_data[dp] = (val >> 16)
            val += inc
            (dx += 1)
            dp += 4
          end
        end
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # Fill in dithered gradated values for a color channel
      def build_dithered_gradient_channel(from, to, steps, band_width, band_height, vertical, bitmap_data, dp, bytes_per_line, bits)
        mask = 0xff00 >> bits
        val = from << 16
        inc = ((to << 16) - val) / steps + 1
        if (vertical)
          dy = 0
          while dy < band_height
            dx = 0
            dptr = dp
            while dx < band_width
              thresh = DITHER_MATRIX[dy & 7][dx] >> bits
              temp = val + thresh
              if (temp > 0xffffff)
                bitmap_data[dptr] = -1
              else
                bitmap_data[dptr] = ((temp >> 16) & mask)
              end
              (dx += 1)
              dptr += 4
            end
            val += inc
            (dy += 1)
            dp += bytes_per_line
          end
        else
          dx = 0
          while dx < band_width
            dy = 0
            dptr = dp
            while dy < band_height
              thresh = DITHER_MATRIX[dy][dx & 7] >> bits
              temp = val + thresh
              if (temp > 0xffffff)
                bitmap_data[dptr] = -1
              else
                bitmap_data[dptr] = ((temp >> 16) & mask)
              end
              (dy += 1)
              dptr += bytes_per_line
            end
            val += inc
            (dx += 1)
            dp += 4
          end
        end
      end
      
      typesig { [SwtGC, Device, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, RGB, RGB, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Renders a gradient onto a GC.
      # <p>
      # This is a GC helper.
      # </p>
      # 
      # @param gc the GC to render the gradient onto
      # @param device the device the GC belongs to
      # @param x the top-left x coordinate of the region to be filled
      # @param y the top-left y coordinate of the region to be filled
      # @param width the width of the region to be filled
      # @param height the height of the region to be filled
      # @param vertical if true sweeps from top to bottom, else
      # sweeps from left to right
      # @param fromRGB the color to start with
      # @param toRGB the color to end with
      # @param redBits the number of significant red bits, 0 for palette modes
      # @param greenBits the number of significant green bits, 0 for palette modes
      # @param blueBits the number of significant blue bits, 0 for palette modes
      def fill_gradient_rectangle(gc, device, x, y, width, height, vertical, from_rgb, to_rgb, red_bits, green_bits, blue_bits)
        # Create the bitmap and tile it
        band = create_gradient_band(width, height, vertical, from_rgb, to_rgb, red_bits, green_bits, blue_bits)
        image = Image.new(device, band)
        if (((band.attr_width).equal?(1)) || ((band.attr_height).equal?(1)))
          gc.draw_image(image, 0, 0, band.attr_width, band.attr_height, x, y, width, height)
        else
          if (vertical)
            dx = 0
            while dx < width
              blit_width = width - dx
              if (blit_width > band.attr_width)
                blit_width = band.attr_width
              end
              gc.draw_image(image, 0, 0, blit_width, band.attr_height, dx + x, y, blit_width, band.attr_height)
              dx += band.attr_width
            end
          else
            dy = 0
            while dy < height
              blit_height = height - dy
              if (blit_height > band.attr_height)
                blit_height = band.attr_height
              end
              gc.draw_image(image, 0, 0, band.attr_width, blit_height, x, dy + y, band.attr_width, blit_height)
              dy += band.attr_height
            end
          end
        end
        image.dispose
      end
    }
    
    private
    alias_method :initialize__image_data, :initialize
  end
  
end
