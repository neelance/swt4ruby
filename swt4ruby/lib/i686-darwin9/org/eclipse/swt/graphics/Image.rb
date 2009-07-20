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
  module ImageImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt
      include ::Java::Io
    }
  end
  
  # Instances of this class are graphics which have been prepared
  # for display on a specific device. That is, they are ready
  # to paint using methods such as <code>GC.drawImage()</code>
  # and display on widgets with, for example, <code>Button.setImage()</code>.
  # <p>
  # If loaded from a file format that supports it, an
  # <code>Image</code> may have transparency, meaning that certain
  # pixels are specified as being transparent when drawn. Examples
  # of file formats that support transparency are GIF and PNG.
  # </p><p>
  # There are two primary ways to use <code>Images</code>.
  # The first is to load a graphic file from disk and create an
  # <code>Image</code> from it. This is done using an <code>Image</code>
  # constructor, for example:
  # <pre>
  # Image i = new Image(device, "C:\\graphic.bmp");
  # </pre>
  # A graphic file may contain a color table specifying which
  # colors the image was intended to possess. In the above example,
  # these colors will be mapped to the closest available color in
  # SWT. It is possible to get more control over the mapping of
  # colors as the image is being created, using code of the form:
  # <pre>
  # ImageData data = new ImageData("C:\\graphic.bmp");
  # RGB[] rgbs = data.getRGBs();
  # // At this point, rgbs contains specifications of all
  # // the colors contained within this image. You may
  # // allocate as many of these colors as you wish by
  # // using the Color constructor Color(RGB), then
  # // create the image:
  # Image i = new Image(device, data);
  # </pre>
  # <p>
  # Applications which require even greater control over the image
  # loading process should use the support provided in class
  # <code>ImageLoader</code>.
  # </p><p>
  # Application code must explicitly invoke the <code>Image.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # 
  # @see Color
  # @see ImageData
  # @see ImageLoader
  # @see <a href="http://www.eclipse.org/swt/snippets/#image">Image snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: GraphicsExample, ImageAnalyzer</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Image < ImageImports.const_get :Resource
    include_class_members ImageImports
    include Drawable
    
    # specifies whether the receiver is a bitmap or an icon
    # (one of <code>SWT.BITMAP</code>, <code>SWT.ICON</code>)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # the handle to the OS image resource
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
    
    # The data to the OS image resource.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # specifies the transparent pixel
    attr_accessor :transparent_pixel
    alias_method :attr_transparent_pixel, :transparent_pixel
    undef_method :transparent_pixel
    alias_method :attr_transparent_pixel=, :transparent_pixel=
    undef_method :transparent_pixel=
    
    # The GC the image is currently selected in.
    attr_accessor :mem_gc
    alias_method :attr_mem_gc, :mem_gc
    undef_method :mem_gc
    alias_method :attr_mem_gc=, :mem_gc=
    undef_method :mem_gc=
    
    # The alpha data of the image.
    attr_accessor :alpha_data
    alias_method :attr_alpha_data, :alpha_data
    undef_method :alpha_data
    alias_method :attr_alpha_data=, :alpha_data=
    undef_method :alpha_data=
    
    # The global alpha value to be used for every pixel.
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
    # The width of the image.
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # The height of the image.
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    class_module.module_eval {
      # Specifies the default scanline padding.
      const_set_lazy(:DEFAULT_SCANLINE_PAD) { 4 }
      const_attr_reader  :DEFAULT_SCANLINE_PAD
    }
    
    typesig { [Device] }
    def initialize(device)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
    end
    
    typesig { [Device, ::Java::Int, ::Java::Int] }
    # Constructs an empty instance of this class with the
    # specified width and height. The result may be drawn upon
    # by creating a GC and using any of its drawing operations,
    # as shown in the following example:
    # <pre>
    # Image i = new Image(device, width, height);
    # GC gc = new GC(i);
    # gc.drawRectangle(0, 0, 50, 50);
    # gc.dispose();
    # </pre>
    # <p>
    # Note: Some platforms may have a limitation on the size
    # of image that can be created (size depends on width, height,
    # and depth). For example, Windows 95, 98, and ME do not allow
    # images larger than 16M.
    # </p>
    # 
    # @param device the device on which to create the image
    # @param width the width of the new image
    # @param height the height of the new image
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_INVALID_ARGUMENT - if either the width or height is negative or zero</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, width, height)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      init(width, height)
      init
    end
    
    typesig { [Device, Image, ::Java::Int] }
    # Constructs a new instance of this class based on the
    # provided image, with an appearance that varies depending
    # on the value of the flag. The possible flag values are:
    # <dl>
    # <dt><b>{@link SWT#IMAGE_COPY}</b></dt>
    # <dd>the result is an identical copy of srcImage</dd>
    # <dt><b>{@link SWT#IMAGE_DISABLE}</b></dt>
    # <dd>the result is a copy of srcImage which has a <em>disabled</em> look</dd>
    # <dt><b>{@link SWT#IMAGE_GRAY}</b></dt>
    # <dd>the result is a copy of srcImage which has a <em>gray scale</em> look</dd>
    # </dl>
    # 
    # @param device the device on which to create the image
    # @param srcImage the image to use as the source
    # @param flag the style, either <code>IMAGE_COPY</code>, <code>IMAGE_DISABLE</code> or <code>IMAGE_GRAY</code>
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if srcImage is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the flag is not one of <code>IMAGE_COPY</code>, <code>IMAGE_DISABLE</code> or <code>IMAGE_GRAY</code></li>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_INVALID_IMAGE - if the image is not a bitmap or an icon, or is otherwise in an invalid state</li>
    # <li>ERROR_UNSUPPORTED_DEPTH - if the depth of the image is not supported</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, src_image, flag)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      if ((src_image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (src_image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      case (flag)
      when SWT::IMAGE_COPY, SWT::IMAGE_DISABLE, SWT::IMAGE_GRAY
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      device = self.attr_device
      @type = src_image.attr_type
      # Get source image size
      width = OS._cgimage_get_width(src_image.attr_handle)
      height = OS._cgimage_get_height(src_image.attr_handle)
      bpr = OS._cgimage_get_bytes_per_row(src_image.attr_handle)
      bpc = OS._cgimage_get_bits_per_component(src_image.attr_handle)
      bpp = OS._cgimage_get_bits_per_pixel(src_image.attr_handle)
      colorspace = OS._cgimage_get_color_space(src_image.attr_handle)
      alpha_info = OS.attr_k_cgimage_alpha_none_skip_first
      # Copy transparent pixel and alpha data when necessary
      alpha_info = OS._cgimage_get_alpha_info(src_image.attr_handle)
      @transparent_pixel = src_image.attr_transparent_pixel
      @alpha = src_image.attr_alpha
      if (!(src_image.attr_alpha_data).nil?)
        @alpha_data = Array.typed(::Java::Byte).new(src_image.attr_alpha_data.attr_length) { 0 }
        System.arraycopy(src_image.attr_alpha_data, 0, @alpha_data, 0, @alpha_data.attr_length)
      end
      # Create the image
      data_size = height * bpr
      @data = OS._new_ptr(data_size)
      if ((@data).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      provider = OS._cgdata_provider_create_with_data(0, @data, data_size, device.attr_release_proc)
      if ((provider).equal?(0))
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @handle = OS._cgimage_create(width, height, bpc, bpp, bpr, colorspace, alpha_info, provider, nil, true, 0)
      OS._cgdata_provider_release(provider)
      if ((@handle).equal?(0))
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.memmove(@data, src_image.attr_data, data_size)
      if (!(flag).equal?(SWT::IMAGE_COPY))
        # Apply transformation
        case (flag)
        when SWT::IMAGE_DISABLE
          zero_color = device.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
          zero_rgb = zero_color.get_rgb
          zero_red = zero_rgb.attr_red
          zero_green = zero_rgb.attr_green
          zero_blue = zero_rgb.attr_blue
          one_color = device.get_system_color(SWT::COLOR_WIDGET_BACKGROUND)
          one_rgb = one_color.get_rgb
          one_red = one_rgb.attr_red
          one_green = one_rgb.attr_green
          one_blue = one_rgb.attr_blue
          line = Array.typed(::Java::Byte).new(bpr) { 0 }
          y = 0
          while y < height
            OS.memmove(line, @data + (y * bpr), bpr)
            offset = 0
            x = 0
            while x < width
              red = line[offset + 1] & 0xff
              green = line[offset + 2] & 0xff
              blue = line[offset + 3] & 0xff
              intensity = red * red + green * green + blue * blue
              if (intensity < 98304)
                line[offset + 1] = zero_red
                line[offset + 2] = zero_green
                line[offset + 3] = zero_blue
              else
                line[offset + 1] = one_red
                line[offset + 2] = one_green
                line[offset + 3] = one_blue
              end
              offset += 4
              ((x += 1) - 1)
            end
            OS.memmove(@data + (y * bpr), line, bpr)
            ((y += 1) - 1)
          end
        when SWT::IMAGE_GRAY
          line = Array.typed(::Java::Byte).new(bpr) { 0 }
          y = 0
          while y < height
            OS.memmove(line, @data + (y * bpr), bpr)
            offset = 0
            x = 0
            while x < width
              red = line[offset + 1] & 0xff
              green = line[offset + 2] & 0xff
              blue = line[offset + 3] & 0xff
              intensity = ((red + red + green + green + green + green + green + blue) >> 3)
              line[offset + 1] = line[offset + 2] = line[offset + 3] = intensity
              offset += 4
              ((x += 1) - 1)
            end
            OS.memmove(@data + (y * bpr), line, bpr)
            ((y += 1) - 1)
          end
        end
      end
      init
    end
    
    typesig { [Device, Rectangle] }
    # Constructs an empty instance of this class with the
    # width and height of the specified rectangle. The result
    # may be drawn upon by creating a GC and using any of its
    # drawing operations, as shown in the following example:
    # <pre>
    # Image i = new Image(device, boundsRectangle);
    # GC gc = new GC(i);
    # gc.drawRectangle(0, 0, 50, 50);
    # gc.dispose();
    # </pre>
    # <p>
    # Note: Some platforms may have a limitation on the size
    # of image that can be created (size depends on width, height,
    # and depth). For example, Windows 95, 98, and ME do not allow
    # images larger than 16M.
    # </p>
    # 
    # @param device the device on which to create the image
    # @param bounds a rectangle specifying the image's width and height (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the bounds rectangle is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if either the rectangle's width or height is negative</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, bounds)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(bounds.attr_width, bounds.attr_height)
      init
    end
    
    typesig { [Device, ImageData] }
    # Constructs an instance of this class from the given
    # <code>ImageData</code>.
    # 
    # @param device the device on which to create the image
    # @param data the image data to create the image from (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the image data is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_UNSUPPORTED_DEPTH - if the depth of the ImageData is not supported</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, data)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      init(data)
      init
    end
    
    typesig { [Device, ImageData, ImageData] }
    # Constructs an instance of this class, whose type is
    # <code>SWT.ICON</code>, from the two given <code>ImageData</code>
    # objects. The two images must be the same size. Pixel transparency
    # in either image will be ignored.
    # <p>
    # The mask image should contain white wherever the icon is to be visible,
    # and black wherever the icon is to be transparent. In addition,
    # the source image should contain black wherever the icon is to be
    # transparent.
    # </p>
    # 
    # @param device the device on which to create the icon
    # @param source the color data for the icon
    # @param mask the mask data for the icon
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if either the source or mask is null </li>
    # <li>ERROR_INVALID_ARGUMENT - if source and mask are different sizes</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, source, mask)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      if ((source).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((mask).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(source.attr_width).equal?(mask.attr_width) || !(source.attr_height).equal?(mask.attr_height))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      mask = ImageData.convert_mask(mask)
      image = ImageData.new(source.attr_width, source.attr_height, source.attr_depth, source.attr_palette, source.attr_scanline_pad, source.attr_data)
      image.attr_mask_pad = mask.attr_scanline_pad
      image.attr_mask_data = mask.attr_data
      init(image)
      init
    end
    
    typesig { [Device, InputStream] }
    # Constructs an instance of this class by loading its representation
    # from the specified input stream. Throws an error if an error
    # occurs while loading the image, or if the result is an image
    # of an unsupported type.  Application code is still responsible
    # for closing the input stream.
    # <p>
    # This constructor is provided for convenience when loading a single
    # image only. If the stream contains multiple images, only the first
    # one will be loaded. To load multiple images, use
    # <code>ImageLoader.load()</code>.
    # </p><p>
    # This constructor may be used to load a resource as follows:
    # </p>
    # <pre>
    # static Image loadImage (Display display, Class clazz, String string) {
    # InputStream stream = clazz.getResourceAsStream (string);
    # if (stream == null) return null;
    # Image image = null;
    # try {
    # image = new Image (display, stream);
    # } catch (SWTException ex) {
    # } finally {
    # try {
    # stream.close ();
    # } catch (IOException ex) {}
    # }
    # return image;
    # }
    # </pre>
    # 
    # @param device the device on which to create the image
    # @param stream the input stream to load the image from
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the stream is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while reading from the stream</li>
    # <li>ERROR_INVALID_IMAGE - if the image stream contains invalid data </li>
    # <li>ERROR_UNSUPPORTED_DEPTH - if the image stream describes an image with an unsupported depth</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image stream contains an unrecognized format</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, stream)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      init(ImageData.new(stream))
      init
    end
    
    typesig { [Device, String] }
    # Constructs an instance of this class by loading its representation
    # from the file with the specified name. Throws an error if an error
    # occurs while loading the image, or if the result is an image
    # of an unsupported type.
    # <p>
    # This constructor is provided for convenience when loading
    # a single image only. If the specified file contains
    # multiple images, only the first one will be used.
    # 
    # @param device the device on which to create the image
    # @param filename the name of the file to load the image from
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the file name is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while reading from the file</li>
    # <li>ERROR_INVALID_IMAGE - if the image file contains invalid data </li>
    # <li>ERROR_UNSUPPORTED_DEPTH - if the image file describes an image with an unsupported depth</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image file contains an unrecognized format</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for image creation</li>
    # </ul>
    def initialize(device, filename)
      @type = 0
      @handle = 0
      @data = 0
      @transparent_pixel = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @alpha = -1
      @width = -1
      @height = -1
      init(ImageData.new(filename))
      init
    end
    
    typesig { [] }
    def create_alpha
      if ((@transparent_pixel).equal?(-1) && (@alpha).equal?(-1) && (@alpha_data).nil?)
        return
      end
      height = OS._cgimage_get_height(@handle)
      bpr = OS._cgimage_get_bytes_per_row(@handle)
      data_size = height * bpr
      src_data = Array.typed(::Java::Byte).new(data_size) { 0 }
      OS.memmove(src_data, @data, data_size)
      if (!(@transparent_pixel).equal?(-1))
        i = 0
        while i < data_size
          pixel = ((src_data[i + 1] & 0xff) << 16) | ((src_data[i + 2] & 0xff) << 8) | (src_data[i + 3] & 0xff)
          src_data[i] = ((pixel).equal?(@transparent_pixel) ? 0 : 0xff)
          i += 4
        end
      else
        if (!(@alpha).equal?(-1))
          a = @alpha
          i = 0
          while i < data_size
            src_data[i] = a
            i += 4
          end
        else
          width = OS._cgimage_get_width(@handle)
          offset = 0
          alpha_offset = 0
          y = 0
          while y < height
            x = 0
            while x < width
              src_data[offset] = @alpha_data[alpha_offset]
              offset += 4
              alpha_offset += 1
              ((x += 1) - 1)
            end
            ((y += 1) - 1)
          end
        end
      end
      OS.memmove(@data, src_data, data_size)
    end
    
    typesig { [] }
    def destroy
      if (!(@mem_gc).nil?)
        @mem_gc.dispose
      end
      OS._cgimage_release(@handle)
      @data = @handle = 0
      @mem_gc = nil
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
      if (!(object.is_a?(Image)))
        return false
      end
      image = object
      return (self.attr_device).equal?(image.attr_device) && (@handle).equal?(image.attr_handle) && (@transparent_pixel).equal?(image.attr_transparent_pixel)
    end
    
    typesig { [] }
    # Returns the color to which to map the transparent pixel, or null if
    # the receiver has no transparent pixel.
    # <p>
    # There are certain uses of Images that do not support transparency
    # (for example, setting an image into a button or label). In these cases,
    # it may be desired to simulate transparency by using the background
    # color of the widget to paint the transparent pixels of the image.
    # Use this method to check which color will be used in these cases
    # in place of transparency. This value may be set with setBackground().
    # <p>
    # 
    # @return the background color of the image, or null if there is no transparency in the image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_background
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@transparent_pixel).equal?(-1))
        return nil
      end
      red = (@transparent_pixel >> 16) & 0xff
      green = (@transparent_pixel >> 8) & 0xff
      blue = (@transparent_pixel >> 0) & 0xff
      return Color.carbon_new(self.attr_device, Array.typed(::Java::Float).new([red / 255, green / 255, blue / 255, 1]))
    end
    
    typesig { [] }
    # Returns the bounds of the receiver. The rectangle will always
    # have x and y values of 0, and the width and height of the
    # image.
    # 
    # @return a rectangle specifying the image's bounds
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_INVALID_IMAGE - if the image is not a bitmap or an icon</li>
    # </ul>
    def get_bounds
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(@width).equal?(-1) && !(@height).equal?(-1))
        return Rectangle.new(0, 0, @width, @height)
      end
      return Rectangle.new(0, 0, @width = OS._cgimage_get_width(@handle), @height = OS._cgimage_get_height(@handle))
    end
    
    typesig { [] }
    # Returns an <code>ImageData</code> based on the receiver
    # Modifications made to this <code>ImageData</code> will not
    # affect the Image.
    # 
    # @return an <code>ImageData</code> containing the image's data and attributes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_INVALID_IMAGE - if the image is not a bitmap or an icon</li>
    # </ul>
    # 
    # @see ImageData
    def get_image_data
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      width = OS._cgimage_get_width(@handle)
      height = OS._cgimage_get_height(@handle)
      bpr = OS._cgimage_get_bytes_per_row(@handle)
      bpp = OS._cgimage_get_bits_per_pixel(@handle)
      data_size = height * bpr
      src_data = Array.typed(::Java::Byte).new(data_size) { 0 }
      OS.memmove(src_data, @data, data_size)
      palette = PaletteData.new(0xff0000, 0xff00, 0xff)
      data = ImageData.new(width, height, bpp, palette)
      data.attr_data = src_data
      data.attr_bytes_per_line = bpr
      data.attr_transparent_pixel = @transparent_pixel
      if ((@transparent_pixel).equal?(-1) && (@type).equal?(SWT::ICON))
        # Get the icon mask data
        mask_pad = 2
        mask_bpl = (((width + 7) / 8) + (mask_pad - 1)) / mask_pad * mask_pad
        mask_data = Array.typed(::Java::Byte).new(height * mask_bpl) { 0 }
        offset = 0
        mask_offset = 0
        y = 0
        while y < height
          x = 0
          while x < width
            if (!(src_data[offset]).equal?(0))
              mask_data[mask_offset + (x >> 3)] |= (1 << (7 - (x & 0x7)))
            else
              mask_data[mask_offset + (x >> 3)] &= ~(1 << (7 - (x & 0x7)))
            end
            offset += 4
            ((x += 1) - 1)
          end
          mask_offset += mask_bpl
          ((y += 1) - 1)
        end
        data.attr_mask_data = mask_data
        data.attr_mask_pad = mask_pad
      end
      i = 0
      while i < src_data.attr_length
        src_data[i] = 0
        i += 4
      end
      data.attr_alpha = @alpha
      if ((@alpha).equal?(-1) && !(@alpha_data).nil?)
        data.attr_alpha_data = Array.typed(::Java::Byte).new(@alpha_data.attr_length) { 0 }
        System.arraycopy(@alpha_data, 0, data.attr_alpha_data, 0, @alpha_data.attr_length)
      end
      return data
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new image.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Image</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param device the device on which to allocate the color
      # @param type the type of the image (<code>SWT.BITMAP</code> or <code>SWT.ICON</code>)
      # @param handle the OS handle for the image
      # @param data the OS data for the image
      # 
      # @private
      def carbon_new(device, type, handle, data)
        image = Image.new(device)
        image.attr_type = type
        image.attr_handle = handle
        image.attr_data = data
        return image
      end
    }
    
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
      return @handle
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def init(width, height)
      if (width <= 0 || height <= 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @type = SWT::BITMAP
      # Create the image
      bpr = width * 4
      data_size = height * bpr
      @data = OS._new_ptr(data_size)
      if ((@data).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      provider = OS._cgdata_provider_create_with_data(0, @data, data_size, self.attr_device.attr_release_proc)
      if ((provider).equal?(0))
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      colorspace = self.attr_device.attr_colorspace
      @handle = OS._cgimage_create(width, height, 8, 32, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first, provider, nil, true, 0)
      OS._cgdata_provider_release(provider)
      if ((@handle).equal?(0))
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # Fill the image with white
      bpc = OS._cgimage_get_bits_per_component(@handle)
      context = OS._cgbitmap_context_create(@data, width, height, bpc, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first)
      if ((context).equal?(0))
        OS._cgimage_release(@handle)
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      rect = CGRect.new
      rect.attr_width = width
      rect.attr_height = height
      OS._cgcontext_set_rgbfill_color(context, 1, 1, 1, 1)
      OS._cgcontext_fill_rect(context, rect)
      OS._cgcontext_release(context)
    end
    
    typesig { [ImageData] }
    def init(image)
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      width = image.attr_width
      height = image.attr_height
      palette = image.attr_palette
      if (!((((image.attr_depth).equal?(1) || (image.attr_depth).equal?(2) || (image.attr_depth).equal?(4) || (image.attr_depth).equal?(8)) && !palette.attr_is_direct) || (((image.attr_depth).equal?(8)) || ((image.attr_depth).equal?(16) || (image.attr_depth).equal?(24) || (image.attr_depth).equal?(32)) && palette.attr_is_direct)))
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      # Create the image
      data_size = width * height * 4
      @data = OS._new_ptr(data_size)
      if ((@data).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      provider = OS._cgdata_provider_create_with_data(0, @data, data_size, self.attr_device.attr_release_proc)
      if ((provider).equal?(0))
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      colorspace = self.attr_device.attr_colorspace
      transparency = image.get_transparency_type
      alpha_info = (transparency).equal?(SWT::TRANSPARENCY_NONE) && (image.attr_alpha).equal?(-1) ? OS.attr_k_cgimage_alpha_none_skip_first : OS.attr_k_cgimage_alpha_first
      @handle = OS._cgimage_create(width, height, 8, 32, width * 4, colorspace, alpha_info, provider, nil, true, 0)
      OS._cgdata_provider_release(provider)
      if ((@handle).equal?(0))
        OS._dispose_ptr(@data)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # Initialize data
      bpr = width * 4
      buffer = Array.typed(::Java::Byte).new(data_size) { 0 }
      if (palette.attr_is_direct)
        ImageData.blit(ImageData::BLIT_SRC, image.attr_data, image.attr_depth, image.attr_bytes_per_line, image.get_byte_order, 0, 0, width, height, palette.attr_red_mask, palette.attr_green_mask, palette.attr_blue_mask, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, buffer, 32, bpr, ImageData::MSB_FIRST, 0, 0, width, height, 0xff0000, 0xff00, 0xff, false, false)
      else
        rgbs = palette.get_rgbs
        length = rgbs.attr_length
        src_reds = Array.typed(::Java::Byte).new(length) { 0 }
        src_greens = Array.typed(::Java::Byte).new(length) { 0 }
        src_blues = Array.typed(::Java::Byte).new(length) { 0 }
        i = 0
        while i < rgbs.attr_length
          rgb = rgbs[i]
          if ((rgb).nil?)
            ((i += 1) - 1)
            next
          end
          src_reds[i] = rgb.attr_red
          src_greens[i] = rgb.attr_green
          src_blues[i] = rgb.attr_blue
          ((i += 1) - 1)
        end
        ImageData.blit(ImageData::BLIT_SRC, image.attr_data, image.attr_depth, image.attr_bytes_per_line, image.get_byte_order, 0, 0, width, height, src_reds, src_greens, src_blues, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, buffer, 32, bpr, ImageData::MSB_FIRST, 0, 0, width, height, 0xff0000, 0xff00, 0xff, false, false)
      end
      # Initialize transparency
      if ((transparency).equal?(SWT::TRANSPARENCY_MASK) || !(image.attr_transparent_pixel).equal?(-1))
        @type = !(image.attr_transparent_pixel).equal?(-1) ? SWT::BITMAP : SWT::ICON
        if (!(image.attr_transparent_pixel).equal?(-1))
          trans_red = 0
          trans_green = 0
          trans_blue = 0
          if (palette.attr_is_direct)
            rgb = palette.get_rgb(image.attr_transparent_pixel)
            trans_red = rgb.attr_red
            trans_green = rgb.attr_green
            trans_blue = rgb.attr_blue
          else
            rgbs = palette.get_rgbs
            if (image.attr_transparent_pixel < rgbs.attr_length)
              rgb = rgbs[image.attr_transparent_pixel]
              trans_red = rgb.attr_red
              trans_green = rgb.attr_green
              trans_blue = rgb.attr_blue
            end
          end
          @transparent_pixel = trans_red << 16 | trans_green << 8 | trans_blue
        end
        mask_image = image.get_transparency_mask
        mask_data = mask_image.attr_data
        mask_bpl = mask_image.attr_bytes_per_line
        offset = 0
        mask_offset = 0
        y = 0
        while y < height
          x = 0
          while x < width
            buffer[offset] = !(((mask_data[mask_offset + (x >> 3)]) & (1 << (7 - (x & 0x7))))).equal?(0) ? 0xff : 0
            offset += 4
            ((x += 1) - 1)
          end
          mask_offset += mask_bpl
          ((y += 1) - 1)
        end
      else
        @type = SWT::BITMAP
        if (!(image.attr_alpha).equal?(-1))
          @alpha = image.attr_alpha
          a = @alpha
          data_index = 0
          while data_index < buffer.attr_length
            buffer[data_index] = a
            data_index += 4
          end
        else
          if (!(image.attr_alpha_data).nil?)
            @alpha_data = Array.typed(::Java::Byte).new(image.attr_alpha_data.attr_length) { 0 }
            System.arraycopy(image.attr_alpha_data, 0, @alpha_data, 0, @alpha_data.attr_length)
            offset = 0
            alpha_offset = 0
            y = 0
            while y < height
              x = 0
              while x < width
                buffer[offset] = @alpha_data[alpha_offset]
                offset += 4
                alpha_offset += 1
                ((x += 1) - 1)
              end
              ((y += 1) - 1)
            end
          end
        end
      end
      OS.memmove(@data, buffer, data_size)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Image</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    def internal_new__gc(data)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(@type).equal?(SWT::BITMAP) || !(@mem_gc).nil?)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      width = OS._cgimage_get_width(@handle)
      height = OS._cgimage_get_height(@handle)
      bpc = OS._cgimage_get_bits_per_component(@handle)
      bpr = OS._cgimage_get_bytes_per_row(@handle)
      colorspace = OS._cgimage_get_color_space(@handle)
      context = OS._cgbitmap_context_create(@data, width, height, bpc, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first)
      if ((context).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._cgcontext_scale_ctm(context, 1, -1)
      OS._cgcontext_translate_ctm(context, 0, -height)
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self.attr_device
        data.attr_background = Device::COLOR_WHITE.attr_handle
        data.attr_foreground = Device::COLOR_BLACK.attr_handle
        data.attr_font = self.attr_device.attr_system_font
        data.attr_image = self
      end
      return context
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Image</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    def internal_dispose__gc(context, data)
      OS._cgcontext_release(context)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the image has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the image.
    # When an image has been disposed, it is an error to
    # invoke any other method using the image.
    # 
    # @return <code>true</code> when the image is disposed and <code>false</code> otherwise
    def is_disposed
      return (@handle).equal?(0)
    end
    
    typesig { [Color] }
    # Sets the color to which to map the transparent pixel.
    # <p>
    # There are certain uses of <code>Images</code> that do not support
    # transparency (for example, setting an image into a button or label).
    # In these cases, it may be desired to simulate transparency by using
    # the background color of the widget to paint the transparent pixels
    # of the image. This method specifies the color that will be used in
    # these cases. For example:
    # <pre>
    # Button b = new Button();
    # image.setBackground(b.getBackground());
    # b.setImage(image);
    # </pre>
    # </p><p>
    # The image may be modified by this operation (in effect, the
    # transparent regions may be filled with the supplied color).  Hence
    # this operation is not reversible and it is not legal to call
    # this function twice or with a null argument.
    # </p><p>
    # This method has no effect if the receiver does not have a transparent
    # pixel value.
    # </p>
    # 
    # @param color the color to use when a transparent pixel is specified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the color is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the color has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_background(color)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((color).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@transparent_pixel).equal?(-1))
        return
      end
      red = ((@transparent_pixel >> 16) & 0xff)
      green = ((@transparent_pixel >> 8) & 0xff)
      blue = ((@transparent_pixel >> 0) & 0xff)
      new_red = (RJava.cast_to_int((color.attr_handle[0] * 255)) & 0xff)
      new_green = (RJava.cast_to_int((color.attr_handle[1] * 255)) & 0xff)
      new_blue = (RJava.cast_to_int((color.attr_handle[2] * 255)) & 0xff)
      height = OS._cgimage_get_height(@handle)
      bpl = OS._cgimage_get_bytes_per_row(@handle)
      line = Array.typed(::Java::Byte).new(bpl) { 0 }
      i = 0
      offset = 0
      while i < height
        OS.memmove(line, @data + offset, bpl)
        j = 0
        while j < line.attr_length
          if ((line[j + 1]).equal?(red) && (line[j + 2]).equal?(green) && (line[j + 3]).equal?(blue))
            line[j + 1] = new_red
            line[j + 2] = new_green
            line[j + 3] = new_blue
          end
          j += 4
        end
        OS.memmove(@data + offset, line, bpl)
        ((i += 1) - 1)
        offset += bpl
      end
      @transparent_pixel = (new_red & 0xff) << 16 | (new_green & 0xff) << 8 | (new_blue & 0xff)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "Image {*DISPOSED*}"
      end
      return "Image {" + (@handle).to_s + "}"
    end
    
    private
    alias_method :initialize__image, :initialize
  end
  
end
