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
  module ImageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
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
    overload_protected {
      include Drawable
    }
    
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
    # 
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    # specifies the transparent pixel
    attr_accessor :transparent_pixel
    alias_method :attr_transparent_pixel, :transparent_pixel
    undef_method :transparent_pixel
    alias_method :attr_transparent_pixel=, :transparent_pixel=
    undef_method :transparent_pixel=
    
    attr_accessor :transparent_color
    alias_method :attr_transparent_color, :transparent_color
    undef_method :transparent_color
    alias_method :attr_transparent_color=, :transparent_color=
    undef_method :transparent_color=
    
    # the GC which is drawing on the image
    attr_accessor :mem_gc
    alias_method :attr_mem_gc, :mem_gc
    undef_method :mem_gc
    alias_method :attr_mem_gc=, :mem_gc=
    undef_method :mem_gc=
    
    # the alpha data for the image
    attr_accessor :alpha_data
    alias_method :attr_alpha_data, :alpha_data
    undef_method :alpha_data
    alias_method :attr_alpha_data=, :alpha_data=
    undef_method :alpha_data=
    
    # the global alpha value to be used for every pixel
    attr_accessor :alpha
    alias_method :attr_alpha, :alpha
    undef_method :alpha
    alias_method :attr_alpha=, :alpha=
    undef_method :alpha=
    
    # the image data used to create this image if it is a
    # icon. Used only in WinCE
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # width of the image
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # height of the image
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    class_module.module_eval {
      # specifies the default scanline padding
      const_set_lazy(:DEFAULT_SCANLINE_PAD) { 4 }
      const_attr_reader  :DEFAULT_SCANLINE_PAD
    }
    
    typesig { [Device] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize(device)
      @type = 0
      @handle = 0
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
      @alpha = -1
      @width = -1
      @height = -1
      device = self.attr_device
      if ((src_image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (src_image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rect = src_image.get_bounds
      @type = src_image.attr_type
      case (flag)
      when SWT::IMAGE_COPY
        case (@type)
        when SWT::BITMAP
          # Get the HDC for the device
          # long
          h_dc = device.internal_new__gc(nil)
          # Copy the bitmap
          # long
          hdc_source = OS._create_compatible_dc(h_dc)
          # long
          hdc_dest = OS._create_compatible_dc(h_dc)
          # long
          h_old_src = OS._select_object(hdc_source, src_image.attr_handle)
          bm = BITMAP.new
          OS._get_object(src_image.attr_handle, BITMAP.attr_sizeof, bm)
          @handle = OS._create_compatible_bitmap(hdc_source, rect.attr_width, !(bm.attr_bm_bits).equal?(0) ? -rect.attr_height : rect.attr_height)
          if ((@handle).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          h_old_dest = OS._select_object(hdc_dest, @handle)
          OS._bit_blt(hdc_dest, 0, 0, rect.attr_width, rect.attr_height, hdc_source, 0, 0, OS::SRCCOPY)
          OS._select_object(hdc_source, h_old_src)
          OS._select_object(hdc_dest, h_old_dest)
          OS._delete_dc(hdc_source)
          OS._delete_dc(hdc_dest)
          # Release the HDC for the device
          device.internal_dispose__gc(h_dc, nil)
          @transparent_pixel = src_image.attr_transparent_pixel
          @alpha = src_image.attr_alpha
          if (!(src_image.attr_alpha_data).nil?)
            @alpha_data = Array.typed(::Java::Byte).new(src_image.attr_alpha_data.attr_length) { 0 }
            System.arraycopy(src_image.attr_alpha_data, 0, @alpha_data, 0, @alpha_data.attr_length)
          end
        when SWT::ICON
          if (OS::IsWinCE)
            init(src_image.attr_data)
          else
            @handle = OS._copy_image(src_image.attr_handle, OS::IMAGE_ICON, rect.attr_width, rect.attr_height, 0)
            if ((@handle).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
          end
        else
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
      when SWT::IMAGE_DISABLE
        data = src_image.get_image_data
        palette = data.attr_palette
        rgbs = Array.typed(RGB).new(3) { nil }
        rgbs[0] = device.get_system_color(SWT::COLOR_BLACK).get_rgb
        rgbs[1] = device.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW).get_rgb
        rgbs[2] = device.get_system_color(SWT::COLOR_WIDGET_BACKGROUND).get_rgb
        new_data = ImageData.new(rect.attr_width, rect.attr_height, 8, PaletteData.new(rgbs))
        new_data.attr_alpha = data.attr_alpha
        new_data.attr_alpha_data = data.attr_alpha_data
        new_data.attr_mask_data = data.attr_mask_data
        new_data.attr_mask_pad = data.attr_mask_pad
        if (!(data.attr_transparent_pixel).equal?(-1))
          new_data.attr_transparent_pixel = 0
        end
        # Convert the pixels.
        scanline = Array.typed(::Java::Int).new(rect.attr_width) { 0 }
        mask_scanline = nil
        mask = nil
        if (!(data.attr_mask_data).nil?)
          mask = data.get_transparency_mask
        end
        if (!(mask).nil?)
          mask_scanline = Array.typed(::Java::Int).new(rect.attr_width) { 0 }
        end
        red_mask = palette.attr_red_mask
        green_mask = palette.attr_green_mask
        blue_mask = palette.attr_blue_mask
        red_shift = palette.attr_red_shift
        green_shift = palette.attr_green_shift
        blue_shift = palette.attr_blue_shift
        y = 0
        while y < rect.attr_height
          offset = y * new_data.attr_bytes_per_line
          data.get_pixels(0, y, rect.attr_width, scanline, 0)
          if (!(mask).nil?)
            mask.get_pixels(0, y, rect.attr_width, mask_scanline, 0)
          end
          x = 0
          while x < rect.attr_width
            pixel = scanline[x]
            if (!((!(data.attr_transparent_pixel).equal?(-1) && (pixel).equal?(data.attr_transparent_pixel)) || (!(mask).nil? && (mask_scanline[x]).equal?(0))))
              red = 0
              green = 0
              blue = 0
              if (palette.attr_is_direct)
                red = pixel & red_mask
                red = (red_shift < 0) ? red >> -red_shift : red << red_shift
                green = pixel & green_mask
                green = (green_shift < 0) ? green >> -green_shift : green << green_shift
                blue = pixel & blue_mask
                blue = (blue_shift < 0) ? blue >> -blue_shift : blue << blue_shift
              else
                red = palette.attr_colors[pixel].attr_red
                green = palette.attr_colors[pixel].attr_green
                blue = palette.attr_colors[pixel].attr_blue
              end
              intensity = red * red + green * green + blue * blue
              if (intensity < 98304)
                new_data.attr_data[offset] = 1
              else
                new_data.attr_data[offset] = 2
              end
            end
            offset += 1
            x += 1
          end
          y += 1
        end
        init(new_data)
      when SWT::IMAGE_GRAY
        data = src_image.get_image_data
        palette = data.attr_palette
        new_data = data
        if (!palette.attr_is_direct)
          # Convert the palette entries to gray.
          rgbs = palette.get_rgbs
          i = 0
          while i < rgbs.attr_length
            if (!(data.attr_transparent_pixel).equal?(i))
              color = rgbs[i]
              red = color.attr_red
              green = color.attr_green
              blue = color.attr_blue
              intensity = (red + red + green + green + green + green + green + blue) >> 3
              color.attr_red = color.attr_green = color.attr_blue = intensity
            end
            i += 1
          end
          new_data.attr_palette = PaletteData.new(rgbs)
        else
          # Create a 8 bit depth image data with a gray palette.
          rgbs = Array.typed(RGB).new(256) { nil }
          i = 0
          while i < rgbs.attr_length
            rgbs[i] = RGB.new(i, i, i)
            i += 1
          end
          new_data = ImageData.new(rect.attr_width, rect.attr_height, 8, PaletteData.new(rgbs))
          new_data.attr_alpha = data.attr_alpha
          new_data.attr_alpha_data = data.attr_alpha_data
          new_data.attr_mask_data = data.attr_mask_data
          new_data.attr_mask_pad = data.attr_mask_pad
          if (!(data.attr_transparent_pixel).equal?(-1))
            new_data.attr_transparent_pixel = 254
          end
          # Convert the pixels.
          scanline = Array.typed(::Java::Int).new(rect.attr_width) { 0 }
          red_mask = palette.attr_red_mask
          green_mask = palette.attr_green_mask
          blue_mask = palette.attr_blue_mask
          red_shift = palette.attr_red_shift
          green_shift = palette.attr_green_shift
          blue_shift = palette.attr_blue_shift
          y = 0
          while y < rect.attr_height
            offset = y * new_data.attr_bytes_per_line
            data.get_pixels(0, y, rect.attr_width, scanline, 0)
            x = 0
            while x < rect.attr_width
              pixel = scanline[x]
              if (!(pixel).equal?(data.attr_transparent_pixel))
                red = pixel & red_mask
                red = (red_shift < 0) ? red >> -red_shift : red << red_shift
                green = pixel & green_mask
                green = (green_shift < 0) ? green >> -green_shift : green << green_shift
                blue = pixel & blue_mask
                blue = (blue_shift < 0) ? blue >> -blue_shift : blue << blue_shift
                intensity = (red + red + green + green + green + green + green + blue) >> 3
                if ((new_data.attr_transparent_pixel).equal?(intensity))
                  intensity = 255
                end
                new_data.attr_data[offset] = intensity
              else
                new_data.attr_data[offset] = 254
              end
              offset += 1
              x += 1
            end
            y += 1
          end
        end
        init(new_data)
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
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
      init(self.attr_device, self, source, mask)
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
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
      @transparent_pixel = 0
      @transparent_color = 0
      @mem_gc = nil
      @alpha_data = nil
      @alpha = 0
      @data = nil
      @width = 0
      @height = 0
      super(device)
      @transparent_pixel = -1
      @transparent_color = -1
      @alpha = -1
      @width = -1
      @height = -1
      if ((filename).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init_native(filename)
      if ((@handle).equal?(0))
        init(ImageData.new(filename))
      end
      init
    end
    
    typesig { [String] }
    def init_native(filename)
      gdip = true
      begin
        self.attr_device.check_gdip
      rescue SWTException => e
        gdip = false
      end
      # Bug in GDI+.  For some reason, Bitmap.LockBits() segment faults
      # when loading GIF files in 64-bit Windows.  The fix is to not use
      # GDI+ image loading in this case.
      if (gdip && (OS::PTR_SIZEOF).equal?(8) && filename.to_lower_case.ends_with(".gif"))
        gdip = false
      end
      if (gdip)
        length_ = filename.length
        chars = CharArray.new(length_ + 1)
        filename.get_chars(0, length_, chars, 0)
        # long
        bitmap = Gdip._bitmap_new(chars, false)
        if (!(bitmap).equal?(0))
          error_ = SWT::ERROR_NO_HANDLES
          status = Gdip._image_get_last_status(bitmap)
          if ((status).equal?(0))
            if (filename.to_lower_case.ends_with(".ico"))
              @type = SWT::ICON
              # long
              # long
              hicon = Array.typed(::Java::Int).new(1) { 0 }
              status = Gdip._bitmap_get_hicon(bitmap, hicon)
              @handle = hicon[0]
            else
              @type = SWT::BITMAP
              width = Gdip._image_get_width(bitmap)
              height = Gdip._image_get_height(bitmap)
              pixel_format = Gdip._image_get_pixel_format(bitmap)
              case (pixel_format)
              # These will loose either precision or transparency
              when Gdip::PixelFormat16bppRGB555, Gdip::PixelFormat16bppRGB565
                @handle = create_dib(width, height, 16)
              when Gdip::PixelFormat24bppRGB
                @handle = create_dib(width, height, 24)
              when Gdip::PixelFormat32bppRGB, Gdip::PixelFormat16bppGrayScale, Gdip::PixelFormat48bppRGB, Gdip::PixelFormat32bppPARGB, Gdip::PixelFormat64bppARGB, Gdip::PixelFormat64bppPARGB
                @handle = create_dib(width, height, 32)
              end
              if (!(@handle).equal?(0))
                # This performs better than getting the bits with Bitmap.LockBits(),
                # but it cannot be used when there is transparency.
                # 
                # long
                h_dc = self.attr_device.internal_new__gc(nil)
                # long
                src_hdc = OS._create_compatible_dc(h_dc)
                # long
                old_src_bitmap = OS._select_object(src_hdc, @handle)
                # long
                graphics = Gdip._graphics_new(src_hdc)
                if (!(graphics).equal?(0))
                  rect = Rect.new
                  rect.attr_width = width
                  rect.attr_height = height
                  status = Gdip._graphics_draw_image(graphics, bitmap, rect, 0, 0, width, height, Gdip::UnitPixel, 0, 0, 0)
                  if (!(status).equal?(0))
                    error_ = SWT::ERROR_INVALID_IMAGE
                    OS._delete_object(@handle)
                    @handle = 0
                  end
                  Gdip._graphics_delete(graphics)
                end
                OS._select_object(src_hdc, old_src_bitmap)
                OS._delete_dc(src_hdc)
                self.attr_device.internal_dispose__gc(h_dc, nil)
              else
                # long
                locked_bitmap_data = Gdip._bitmap_data_new
                if (!(locked_bitmap_data).equal?(0))
                  status = Gdip._bitmap_lock_bits(bitmap, 0, 0, pixel_format, locked_bitmap_data)
                  if ((status).equal?(0))
                    bitmap_data = BitmapData.new
                    Gdip._move_memory(bitmap_data, locked_bitmap_data)
                    stride = bitmap_data.attr_stride
                    # long
                    pixels = bitmap_data.attr_scan0
                    depth = 0
                    scanline_pad = 4
                    transparent_pixel = -1
                    case (bitmap_data.attr_pixel_format)
                    when Gdip::PixelFormat1bppIndexed
                      depth = 1
                    when Gdip::PixelFormat4bppIndexed
                      depth = 4
                    when Gdip::PixelFormat8bppIndexed
                      depth = 8
                    when Gdip::PixelFormat16bppARGB1555, Gdip::PixelFormat16bppRGB555, Gdip::PixelFormat16bppRGB565
                      depth = 16
                    when Gdip::PixelFormat24bppRGB
                      depth = 24
                    when Gdip::PixelFormat32bppRGB, Gdip::PixelFormat32bppARGB
                      depth = 32
                    end
                    if (!(depth).equal?(0))
                      palette_data = nil
                      case (bitmap_data.attr_pixel_format)
                      when Gdip::PixelFormat1bppIndexed, Gdip::PixelFormat4bppIndexed, Gdip::PixelFormat8bppIndexed
                        palette_size = Gdip._image_get_palette_size(bitmap)
                        # long
                        h_heap = OS._get_process_heap
                        # long
                        palette = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, palette_size)
                        if ((palette).equal?(0))
                          SWT.error(SWT::ERROR_NO_HANDLES)
                        end
                        Gdip._image_get_palette(bitmap, palette, palette_size)
                        color_palette = ColorPalette.new
                        Gdip._move_memory(color_palette, palette, ColorPalette.attr_sizeof)
                        entries = Array.typed(::Java::Int).new(color_palette.attr_count) { 0 }
                        OS._move_memory(entries, palette + 8, entries.attr_length * 4)
                        OS._heap_free(h_heap, 0, palette)
                        rgbs = Array.typed(RGB).new(color_palette.attr_count) { nil }
                        palette_data = PaletteData.new(rgbs)
                        i = 0
                        while i < entries.attr_length
                          if ((((entries[i] >> 24) & 0xff)).equal?(0) && !((color_palette.attr_flags & Gdip::PaletteFlagsHasAlpha)).equal?(0))
                            transparent_pixel = i
                          end
                          rgbs[i] = RGB.new(((entries[i] & 0xff0000) >> 16), ((entries[i] & 0xff00) >> 8), ((entries[i] & 0xff) >> 0))
                          i += 1
                        end
                      when Gdip::PixelFormat16bppARGB1555, Gdip::PixelFormat16bppRGB555
                        palette_data = PaletteData.new(0x7c00, 0x3e0, 0x1f)
                      when Gdip::PixelFormat16bppRGB565
                        palette_data = PaletteData.new(0xf800, 0x7e0, 0x1f)
                      when Gdip::PixelFormat24bppRGB
                        palette_data = PaletteData.new(0xff, 0xff00, 0xff0000)
                      when Gdip::PixelFormat32bppRGB, Gdip::PixelFormat32bppARGB
                        palette_data = PaletteData.new(0xff00, 0xff0000, -0x1000000)
                      end
                      data = Array.typed(::Java::Byte).new(stride * height) { 0 }
                      alpha_data = nil
                      OS._move_memory(data, pixels, data.attr_length)
                      case (bitmap_data.attr_pixel_format)
                      when Gdip::PixelFormat16bppARGB1555
                        alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
                        i = 1
                        j = 0
                        while i < data.attr_length
                          alpha_data[j] = (!((data[i] & 0x80)).equal?(0) ? 255 : 0)
                          i += 2
                          j += 1
                        end
                      when Gdip::PixelFormat32bppARGB
                        alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
                        i = 3
                        j = 0
                        while i < data.attr_length
                          alpha_data[j] = data[i]
                          i += 4
                          j += 1
                        end
                      end
                      img = ImageData.new(width, height, depth, palette_data, scanline_pad, data)
                      img.attr_transparent_pixel = transparent_pixel
                      img.attr_alpha_data = alpha_data
                      init(img)
                    end
                    Gdip._bitmap_unlock_bits(bitmap, locked_bitmap_data)
                  else
                    error_ = SWT::ERROR_INVALID_IMAGE
                  end
                  Gdip._bitmap_data_delete(locked_bitmap_data)
                end
              end
            end
          end
          Gdip._bitmap_delete(bitmap)
          if ((status).equal?(0))
            if ((@handle).equal?(0))
              SWT.error(error_)
            end
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Create a DIB from a DDB without using GetDIBits. Note that
    # the DDB should not be selected into a HDC.
    # 
    # long
    # long
    # long
    def create_dibfrom_ddb(h_dc, h_bitmap, width, height)
      # Determine the DDB depth
      bits = OS._get_device_caps(h_dc, OS::BITSPIXEL)
      planes = OS._get_device_caps(h_dc, OS::PLANES)
      depth = bits * planes
      # Determine the DIB palette
      is_direct = depth > 8
      rgbs = nil
      if (!is_direct)
        num_colors = 1 << depth
        log_palette = Array.typed(::Java::Byte).new(4 * num_colors) { 0 }
        OS._get_palette_entries(self.attr_device.attr_h_palette, 0, num_colors, log_palette)
        rgbs = Array.typed(RGB).new(num_colors) { nil }
        i = 0
        while i < num_colors
          rgbs[i] = RGB.new(log_palette[i] & 0xff, log_palette[i + 1] & 0xff, log_palette[i + 2] & 0xff)
          i += 1
        end
      end
      use_bitfields = OS::IsWinCE && ((depth).equal?(16) || (depth).equal?(32))
      bmi_header = BITMAPINFOHEADER.new
      bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
      bmi_header.attr_bi_width = width
      bmi_header.attr_bi_height = -height
      bmi_header.attr_bi_planes = 1
      bmi_header.attr_bi_bit_count = RJava.cast_to_short(depth)
      if (use_bitfields)
        bmi_header.attr_bi_compression = OS::BI_BITFIELDS
      else
        bmi_header.attr_bi_compression = OS::BI_RGB
      end
      bmi = nil
      if (is_direct)
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + (use_bitfields ? 12 : 0)) { 0 }
      else
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + rgbs.attr_length * 4) { 0 }
      end
      OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
      # Set the rgb colors into the bitmap info
      offset = BITMAPINFOHEADER.attr_sizeof
      if (is_direct)
        if (use_bitfields)
          red_mask = 0
          green_mask = 0
          blue_mask = 0
          case (depth)
          when 16
            red_mask = 0x7c00
            green_mask = 0x3e0
            blue_mask = 0x1f
            # little endian
            bmi[offset] = ((red_mask & 0xff) >> 0)
            bmi[offset + 1] = ((red_mask & 0xff00) >> 8)
            bmi[offset + 2] = ((red_mask & 0xff0000) >> 16)
            bmi[offset + 3] = ((red_mask & -0x1000000) >> 24)
            bmi[offset + 4] = ((green_mask & 0xff) >> 0)
            bmi[offset + 5] = ((green_mask & 0xff00) >> 8)
            bmi[offset + 6] = ((green_mask & 0xff0000) >> 16)
            bmi[offset + 7] = ((green_mask & -0x1000000) >> 24)
            bmi[offset + 8] = ((blue_mask & 0xff) >> 0)
            bmi[offset + 9] = ((blue_mask & 0xff00) >> 8)
            bmi[offset + 10] = ((blue_mask & 0xff0000) >> 16)
            bmi[offset + 11] = ((blue_mask & -0x1000000) >> 24)
          when 32
            red_mask = 0xff00
            green_mask = 0xff0000
            blue_mask = -0x1000000
            # big endian
            bmi[offset] = ((red_mask & -0x1000000) >> 24)
            bmi[offset + 1] = ((red_mask & 0xff0000) >> 16)
            bmi[offset + 2] = ((red_mask & 0xff00) >> 8)
            bmi[offset + 3] = ((red_mask & 0xff) >> 0)
            bmi[offset + 4] = ((green_mask & -0x1000000) >> 24)
            bmi[offset + 5] = ((green_mask & 0xff0000) >> 16)
            bmi[offset + 6] = ((green_mask & 0xff00) >> 8)
            bmi[offset + 7] = ((green_mask & 0xff) >> 0)
            bmi[offset + 8] = ((blue_mask & -0x1000000) >> 24)
            bmi[offset + 9] = ((blue_mask & 0xff0000) >> 16)
            bmi[offset + 10] = ((blue_mask & 0xff00) >> 8)
            bmi[offset + 11] = ((blue_mask & 0xff) >> 0)
          else
            SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
          end
        end
      else
        j = 0
        while j < rgbs.attr_length
          bmi[offset] = rgbs[j].attr_blue
          bmi[offset + 1] = rgbs[j].attr_green
          bmi[offset + 2] = rgbs[j].attr_red
          bmi[offset + 3] = 0
          offset += 4
          j += 1
        end
      end
      # long
      # long
      p_bits = Array.typed(::Java::Int).new(1) { 0 }
      # long
      h_dib = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
      if ((h_dib).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # Bitblt DDB into DIB
      # long
      hdc_source = OS._create_compatible_dc(h_dc)
      # long
      hdc_dest = OS._create_compatible_dc(h_dc)
      # long
      h_old_src = OS._select_object(hdc_source, h_bitmap)
      # long
      h_old_dest = OS._select_object(hdc_dest, h_dib)
      OS._bit_blt(hdc_dest, 0, 0, width, height, hdc_source, 0, 0, OS::SRCCOPY)
      OS._select_object(hdc_source, h_old_src)
      OS._select_object(hdc_dest, h_old_dest)
      OS._delete_dc(hdc_source)
      OS._delete_dc(hdc_dest)
      return h_dib
    end
    
    typesig { [] }
    # long
    def create_gdip_image
      case (@type)
      when SWT::BITMAP
        if (!(@alpha).equal?(-1) || !(@alpha_data).nil? || !(@transparent_pixel).equal?(-1))
          bm = BITMAP.new
          OS._get_object(@handle, BITMAP.attr_sizeof, bm)
          img_width = bm.attr_bm_width
          img_height = bm.attr_bm_height
          # long
          h_dc = self.attr_device.internal_new__gc(nil)
          # long
          src_hdc = OS._create_compatible_dc(h_dc)
          # long
          old_src_bitmap = OS._select_object(src_hdc, @handle)
          # long
          mem_hdc = OS._create_compatible_dc(h_dc)
          # long
          mem_dib = create_dib(img_width, img_height, 32)
          if ((mem_dib).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
          dib_bm = BITMAP.new
          OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
          size_in_bytes = dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height
          OS._bit_blt(mem_hdc, 0, 0, img_width, img_height, src_hdc, 0, 0, OS::SRCCOPY)
          red = 0
          green = 0
          blue = 0
          if (!(@transparent_pixel).equal?(-1))
            if (bm.attr_bm_bits_pixel <= 8)
              color = Array.typed(::Java::Byte).new(4) { 0 }
              OS._get_dibcolor_table(src_hdc, @transparent_pixel, 1, color)
              blue = color[0]
              green = color[1]
              red = color[2]
            else
              case (bm.attr_bm_bits_pixel)
              when 16
                blue_mask = 0x1f
                blue_shift = ImageData.get_channel_shift(blue_mask)
                blues = ImageData::ANY_TO_EIGHT[ImageData.get_channel_width(blue_mask, blue_shift)]
                blue = blues[(@transparent_pixel & blue_mask) >> blue_shift]
                green_mask = 0x3e0
                green_shift = ImageData.get_channel_shift(green_mask)
                greens = ImageData::ANY_TO_EIGHT[ImageData.get_channel_width(green_mask, green_shift)]
                green = greens[(@transparent_pixel & green_mask) >> green_shift]
                red_mask = 0x7c00
                red_shift = ImageData.get_channel_shift(red_mask)
                reds = ImageData::ANY_TO_EIGHT[ImageData.get_channel_width(red_mask, red_shift)]
                red = reds[(@transparent_pixel & red_mask) >> red_shift]
              when 24
                blue = ((@transparent_pixel & 0xff0000) >> 16)
                green = ((@transparent_pixel & 0xff00) >> 8)
                red = (@transparent_pixel & 0xff)
              when 32
                blue = ((@transparent_pixel & -0x1000000) >> 24)
                green = ((@transparent_pixel & 0xff0000) >> 16)
                red = ((@transparent_pixel & 0xff00) >> 8)
              end
            end
          end
          OS._select_object(src_hdc, old_src_bitmap)
          OS._select_object(mem_hdc, old_mem_bitmap)
          OS._delete_object(src_hdc)
          OS._delete_object(mem_hdc)
          src_data = Array.typed(::Java::Byte).new(size_in_bytes) { 0 }
          OS._move_memory(src_data, dib_bm.attr_bm_bits, size_in_bytes)
          OS._delete_object(mem_dib)
          self.attr_device.internal_dispose__gc(h_dc, nil)
          if (!(@alpha).equal?(-1))
            y = 0
            dp = 0
            while y < img_height
              x = 0
              while x < img_width
                src_data[dp + 3] = @alpha
                dp += 4
                (x += 1)
              end
              (y += 1)
            end
          else
            if (!(@alpha_data).nil?)
              y = 0
              dp = 0
              ap = 0
              while y < img_height
                x = 0
                while x < img_width
                  src_data[dp + 3] = @alpha_data[((ap += 1) - 1)]
                  dp += 4
                  (x += 1)
                end
                (y += 1)
              end
            else
              if (!(@transparent_pixel).equal?(-1))
                y = 0
                dp = 0
                while y < img_height
                  x = 0
                  while x < img_width
                    if ((src_data[dp]).equal?(blue) && (src_data[dp + 1]).equal?(green) && (src_data[dp + 2]).equal?(red))
                      src_data[dp + 3] = 0
                    else
                      src_data[dp + 3] = 0xff
                    end
                    dp += 4
                    (x += 1)
                  end
                  (y += 1)
                end
              end
            end
          end
          # long
          h_heap = OS._get_process_heap
          # long
          pixels = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, src_data.attr_length)
          if ((pixels).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS._move_memory(pixels, src_data, size_in_bytes)
          # long
          return Array.typed(::Java::Int).new([Gdip._bitmap_new(img_width, img_height, dib_bm.attr_bm_width_bytes, Gdip::PixelFormat32bppARGB, pixels), pixels])
        end
        # long
        return Array.typed(::Java::Int).new([Gdip._bitmap_new(@handle, 0), 0])
      when SWT::ICON
        # Bug in GDI+. Creating a new GDI+ Bitmap from a HICON segment faults
        # when the icon width is bigger than the icon height.  The fix is to
        # detect this and create a PixelFormat32bppARGB image instead.
        icon_info = ICONINFO.new
        if (OS::IsWinCE)
          _get_icon_info(self, icon_info)
        else
          OS._get_icon_info(@handle, icon_info)
        end
        # long
        h_bitmap = icon_info.attr_hbm_color
        if ((h_bitmap).equal?(0))
          h_bitmap = icon_info.attr_hbm_mask
        end
        bm = BITMAP.new
        OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
        img_width = bm.attr_bm_width
        img_height = (h_bitmap).equal?(icon_info.attr_hbm_mask) ? bm.attr_bm_height / 2 : bm.attr_bm_height
        # long
        img = 0
        pixels = 0
        # Bug in GDI+.  Bitmap_new() segments fault if the image width
        # is greater than the image height.
        # 
        # Note that it also fails to generated an appropriate alpha
        # channel when the icon depth is 32.
        if (img_width > img_height || (bm.attr_bm_bits_pixel).equal?(32))
          # long
          h_dc = self.attr_device.internal_new__gc(nil)
          # long
          src_hdc = OS._create_compatible_dc(h_dc)
          # long
          old_src_bitmap = OS._select_object(src_hdc, h_bitmap)
          # long
          mem_hdc = OS._create_compatible_dc(h_dc)
          # long
          mem_dib = create_dib(img_width, img_height, 32)
          if ((mem_dib).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
          dib_bm = BITMAP.new
          OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
          OS._bit_blt(mem_hdc, 0, 0, img_width, img_height, src_hdc, 0, (h_bitmap).equal?(icon_info.attr_hbm_mask) ? img_height : 0, OS::SRCCOPY)
          OS._select_object(mem_hdc, old_mem_bitmap)
          OS._delete_object(mem_hdc)
          src_data = Array.typed(::Java::Byte).new(dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height) { 0 }
          OS._move_memory(src_data, dib_bm.attr_bm_bits, src_data.attr_length)
          OS._delete_object(mem_dib)
          OS._select_object(src_hdc, icon_info.attr_hbm_mask)
          y = 0
          dp = 3
          while y < img_height
            x = 0
            while x < img_width
              if ((src_data[dp]).equal?(0))
                if (!(OS._get_pixel(src_hdc, x, y)).equal?(0))
                  src_data[dp] = 0
                else
                  src_data[dp] = 0xff
                end
              end
              dp += 4
              (x += 1)
            end
            (y += 1)
          end
          OS._select_object(src_hdc, old_src_bitmap)
          OS._delete_object(src_hdc)
          self.attr_device.internal_dispose__gc(h_dc, nil)
          # long
          h_heap = OS._get_process_heap
          pixels = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, src_data.attr_length)
          if ((pixels).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS._move_memory(pixels, src_data, src_data.attr_length)
          img = Gdip._bitmap_new(img_width, img_height, dib_bm.attr_bm_width_bytes, Gdip::PixelFormat32bppARGB, pixels)
        else
          img = Gdip._bitmap_new(@handle)
        end
        if (!(icon_info.attr_hbm_color).equal?(0))
          OS._delete_object(icon_info.attr_hbm_color)
        end
        if (!(icon_info.attr_hbm_mask).equal?(0))
          OS._delete_object(icon_info.attr_hbm_mask)
        end
        # long
        return Array.typed(::Java::Int).new([img, pixels])
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      return nil
    end
    
    typesig { [] }
    def destroy
      if (!(@mem_gc).nil?)
        @mem_gc.dispose
      end
      if ((@type).equal?(SWT::ICON))
        if (OS::IsWinCE)
          @data = nil
        end
        OS._destroy_icon(@handle)
      else
        OS._delete_object(@handle)
      end
      @handle = 0
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
    def ==(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(Image)))
        return false
      end
      image = object
      return (self.attr_device).equal?(image.attr_device) && (@handle).equal?(image.attr_handle)
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
      # Get the HDC for the device
      # long
      h_dc = self.attr_device.internal_new__gc(nil)
      # Compute the background color
      bm = BITMAP.new
      OS._get_object(@handle, BITMAP.attr_sizeof, bm)
      # long
      hdc_mem = OS._create_compatible_dc(h_dc)
      # long
      h_old_object = OS._select_object(hdc_mem, @handle)
      red = 0
      green = 0
      blue = 0
      if (bm.attr_bm_bits_pixel <= 8)
        if (OS::IsWinCE)
          p_bits = Array.typed(::Java::Byte).new(1) { 0 }
          OS._move_memory(p_bits, bm.attr_bm_bits, 1)
          old_value = p_bits[0]
          mask = (0xff << (8 - bm.attr_bm_bits_pixel)) & 0xff
          p_bits[0] = ((@transparent_pixel << (8 - bm.attr_bm_bits_pixel)) | (p_bits[0] & ~mask))
          OS._move_memory(bm.attr_bm_bits, p_bits, 1)
          color = OS._get_pixel(hdc_mem, 0, 0)
          p_bits[0] = old_value
          OS._move_memory(bm.attr_bm_bits, p_bits, 1)
          blue = (color & 0xff0000) >> 16
          green = (color & 0xff00) >> 8
          red = color & 0xff
        else
          color = Array.typed(::Java::Byte).new(4) { 0 }
          OS._get_dibcolor_table(hdc_mem, @transparent_pixel, 1, color)
          blue = color[0] & 0xff
          green = color[1] & 0xff
          red = color[2] & 0xff
        end
      else
        case (bm.attr_bm_bits_pixel)
        when 16
          blue = (@transparent_pixel & 0x1f) << 3
          green = (@transparent_pixel & 0x3e0) >> 2
          red = (@transparent_pixel & 0x7c00) >> 7
        when 24
          blue = (@transparent_pixel & 0xff0000) >> 16
          green = (@transparent_pixel & 0xff00) >> 8
          red = @transparent_pixel & 0xff
        when 32
          blue = (@transparent_pixel & -0x1000000) >> 24
          green = (@transparent_pixel & 0xff0000) >> 16
          red = (@transparent_pixel & 0xff00) >> 8
        else
          return nil
        end
      end
      OS._select_object(hdc_mem, h_old_object)
      OS._delete_dc(hdc_mem)
      # Release the HDC for the device
      self.attr_device.internal_dispose__gc(h_dc, nil)
      return Color.win32_new(self.attr_device, (blue << 16) | (green << 8) | red)
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
      case (@type)
      when SWT::BITMAP
        bm = BITMAP.new
        OS._get_object(@handle, BITMAP.attr_sizeof, bm)
        return Rectangle.new(0, 0, @width = bm.attr_bm_width, @height = bm.attr_bm_height)
      when SWT::ICON
        if (OS::IsWinCE)
          return Rectangle.new(0, 0, @width = @data.attr_width, @height = @data.attr_height)
        else
          info = ICONINFO.new
          OS._get_icon_info(@handle, info)
          # long
          h_bitmap = info.attr_hbm_color
          if ((h_bitmap).equal?(0))
            h_bitmap = info.attr_hbm_mask
          end
          self.attr_bm = BITMAP.new
          OS._get_object(h_bitmap, BITMAP.attr_sizeof, self.attr_bm)
          if ((h_bitmap).equal?(info.attr_hbm_mask))
            self.attr_bm.attr_bm_height /= 2
          end
          if (!(info.attr_hbm_color).equal?(0))
            OS._delete_object(info.attr_hbm_color)
          end
          if (!(info.attr_hbm_mask).equal?(0))
            OS._delete_object(info.attr_hbm_mask)
          end
          return Rectangle.new(0, 0, @width = self.attr_bm.attr_bm_width, @height = self.attr_bm.attr_bm_height)
        end
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
        return nil
      end
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
      bm = nil
      depth = 0
      width = 0
      height = 0
      case (@type)
      when SWT::ICON
        if (OS::IsWinCE)
          return @data
        end
        info = ICONINFO.new
        if (OS::IsWinCE)
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
        end
        OS._get_icon_info(@handle, info)
        # Get the basic BITMAP information
        # long
        h_bitmap = info.attr_hbm_color
        if ((h_bitmap).equal?(0))
          h_bitmap = info.attr_hbm_mask
        end
        bm = BITMAP.new
        OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
        depth = bm.attr_bm_planes * bm.attr_bm_bits_pixel
        width = bm.attr_bm_width
        if ((h_bitmap).equal?(info.attr_hbm_mask))
          bm.attr_bm_height /= 2
        end
        height = bm.attr_bm_height
        num_colors = 0
        if (depth <= 8)
          num_colors = 1 << depth
        end
        # Create the BITMAPINFO
        bmi_header = BITMAPINFOHEADER.new
        bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header.attr_bi_width = width
        bmi_header.attr_bi_height = -height
        bmi_header.attr_bi_planes = 1
        bmi_header.attr_bi_bit_count = RJava.cast_to_short(depth)
        bmi_header.attr_bi_compression = OS::BI_RGB
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + num_colors * 4) { 0 }
        OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        # Get the HDC for the device
        # long
        h_dc = self.attr_device.internal_new__gc(nil)
        # Create the DC and select the bitmap
        # long
        h_bitmap_dc = OS._create_compatible_dc(h_dc)
        # long
        h_old_bitmap = OS._select_object(h_bitmap_dc, h_bitmap)
        # Select the palette if necessary
        # long
        old_palette = 0
        if (depth <= 8)
          # long
          h_palette = self.attr_device.attr_h_palette
          if (!(h_palette).equal?(0))
            old_palette = OS._select_palette(h_bitmap_dc, h_palette, false)
            OS._realize_palette(h_bitmap_dc)
          end
        end
        # Find the size of the image and allocate data
        image_size = 0
        # Call with null lpBits to get the image size
        if (OS::IsWinCE)
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
        end
        OS._get_dibits(h_bitmap_dc, h_bitmap, 0, height, 0, bmi, OS::DIB_RGB_COLORS)
        OS._move_memory(bmi_header, bmi, BITMAPINFOHEADER.attr_sizeof)
        image_size = bmi_header.attr_bi_size_image
        data = Array.typed(::Java::Byte).new(image_size) { 0 }
        # Get the bitmap data
        # long
        h_heap = OS._get_process_heap
        # long
        lpv_bits = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, image_size)
        if ((lpv_bits).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        if (OS::IsWinCE)
          SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
        end
        OS._get_dibits(h_bitmap_dc, h_bitmap, 0, height, lpv_bits, bmi, OS::DIB_RGB_COLORS)
        OS._move_memory(data, lpv_bits, image_size)
        # Calculate the palette
        palette = nil
        if (depth <= 8)
          rgbs = Array.typed(RGB).new(num_colors) { nil }
          src_index = 40
          i = 0
          while i < num_colors
            rgbs[i] = RGB.new(bmi[src_index + 2] & 0xff, bmi[src_index + 1] & 0xff, bmi[src_index] & 0xff)
            src_index += 4
            i += 1
          end
          palette = PaletteData.new(rgbs)
        else
          if ((depth).equal?(16))
            palette = PaletteData.new(0x7c00, 0x3e0, 0x1f)
          else
            if ((depth).equal?(24))
              palette = PaletteData.new(0xff, 0xff00, 0xff0000)
            else
              if ((depth).equal?(32))
                palette = PaletteData.new(0xff00, 0xff0000, -0x1000000)
              else
                SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
              end
            end
          end
        end
        # Do the mask
        mask_data = nil
        if ((info.attr_hbm_color).equal?(0))
          # Do the bottom half of the mask
          mask_data = Array.typed(::Java::Byte).new(image_size) { 0 }
          if (OS::IsWinCE)
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
          OS._get_dibits(h_bitmap_dc, h_bitmap, height, height, lpv_bits, bmi, OS::DIB_RGB_COLORS)
          OS._move_memory(mask_data, lpv_bits, image_size)
        else
          # Do the entire mask
          # Create the BITMAPINFO
          bmi_header = BITMAPINFOHEADER.new
          bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
          bmi_header.attr_bi_width = width
          bmi_header.attr_bi_height = -height
          bmi_header.attr_bi_planes = 1
          bmi_header.attr_bi_bit_count = 1
          bmi_header.attr_bi_compression = OS::BI_RGB
          bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + 8) { 0 }
          OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
          # First color black, second color white
          offset = BITMAPINFOHEADER.attr_sizeof
          bmi[offset + 4] = bmi[offset + 5] = bmi[offset + 6] = 0xff
          bmi[offset + 7] = 0
          OS._select_object(h_bitmap_dc, info.attr_hbm_mask)
          # Call with null lpBits to get the image size
          if (OS::IsWinCE)
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
          OS._get_dibits(h_bitmap_dc, info.attr_hbm_mask, 0, height, 0, bmi, OS::DIB_RGB_COLORS)
          OS._move_memory(bmi_header, bmi, BITMAPINFOHEADER.attr_sizeof)
          image_size = bmi_header.attr_bi_size_image
          mask_data = Array.typed(::Java::Byte).new(image_size) { 0 }
          # long
          lpv_mask_bits = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, image_size)
          if ((lpv_mask_bits).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          if (OS::IsWinCE)
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
          OS._get_dibits(h_bitmap_dc, info.attr_hbm_mask, 0, height, lpv_mask_bits, bmi, OS::DIB_RGB_COLORS)
          OS._move_memory(mask_data, lpv_mask_bits, image_size)
          OS._heap_free(h_heap, 0, lpv_mask_bits)
          # Loop to invert the mask
          i = 0
          while i < mask_data.attr_length
            mask_data[i] ^= -1
            i += 1
          end
          # Make sure mask scanlinePad is 2
          mask_pad = 0
          bpl = image_size / height
          mask_pad = 1
          while mask_pad < 128
            calc_bpl = (((width + 7) / 8) + (mask_pad - 1)) / mask_pad * mask_pad
            if ((calc_bpl).equal?(bpl))
              break
            end
            mask_pad += 1
          end
          mask_data = ImageData.convert_pad(mask_data, width, height, 1, mask_pad, 2)
        end
        # Clean up
        OS._heap_free(h_heap, 0, lpv_bits)
        OS._select_object(h_bitmap_dc, h_old_bitmap)
        if (!(old_palette).equal?(0))
          OS._select_palette(h_bitmap_dc, old_palette, false)
          OS._realize_palette(h_bitmap_dc)
        end
        OS._delete_dc(h_bitmap_dc)
        # Release the HDC for the device
        self.attr_device.internal_dispose__gc(h_dc, nil)
        if (!(info.attr_hbm_color).equal?(0))
          OS._delete_object(info.attr_hbm_color)
        end
        if (!(info.attr_hbm_mask).equal?(0))
          OS._delete_object(info.attr_hbm_mask)
        end
        # Construct and return the ImageData
        image_data = ImageData.new(width, height, depth, palette, 4, data)
        image_data.attr_mask_data = mask_data
        image_data.attr_mask_pad = 2
        return image_data
      when SWT::BITMAP
        # Get the basic BITMAP information
        bm = BITMAP.new
        OS._get_object(@handle, BITMAP.attr_sizeof, bm)
        depth = bm.attr_bm_planes * bm.attr_bm_bits_pixel
        width = bm.attr_bm_width
        height = bm.attr_bm_height
        # Find out whether this is a DIB or a DDB.
        is_dib = (!(bm.attr_bm_bits).equal?(0))
        # Get the HDC for the device
        # long
        h_dc = self.attr_device.internal_new__gc(nil)
        # Feature in WinCE.  GetDIBits is not available in WinCE.  The
        # workaround is to create a temporary DIB from the DDB and use
        # the bmBits field of DIBSECTION to retrieve the image data.
        # 
        # long
        handle = @handle
        if (OS::IsWinCE)
          if (!is_dib)
            must_restore = false
            if (!(@mem_gc).nil? && !@mem_gc.is_disposed)
              @mem_gc.flush
              must_restore = true
              data = @mem_gc.attr_data
              if (!(data.attr_h_null_bitmap).equal?(0))
                OS._select_object(@mem_gc.attr_handle, data.attr_h_null_bitmap)
                data.attr_h_null_bitmap = 0
              end
            end
            handle = create_dibfrom_ddb(h_dc, @handle, width, height)
            if (must_restore)
              # long
              h_old_bitmap = OS._select_object(@mem_gc.attr_handle, @handle)
              @mem_gc.attr_data.attr_h_null_bitmap = h_old_bitmap
            end
            is_dib = true
          end
        end
        dib = nil
        if (is_dib)
          dib = DIBSECTION.new
          OS._get_object(handle, DIBSECTION.attr_sizeof, dib)
        end
        # Calculate number of colors
        num_colors = 0
        if (depth <= 8)
          if (is_dib)
            num_colors = dib.attr_bi_clr_used
          else
            num_colors = 1 << depth
          end
        end
        # Create the BITMAPINFO
        bmi = nil
        bmi_header = nil
        if (!is_dib)
          bmi_header = BITMAPINFOHEADER.new
          bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
          bmi_header.attr_bi_width = width
          bmi_header.attr_bi_height = -height
          bmi_header.attr_bi_planes = 1
          bmi_header.attr_bi_bit_count = RJava.cast_to_short(depth)
          bmi_header.attr_bi_compression = OS::BI_RGB
          bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + num_colors * 4) { 0 }
          OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        end
        # Create the DC and select the bitmap
        # long
        h_bitmap_dc = OS._create_compatible_dc(h_dc)
        # long
        h_old_bitmap = OS._select_object(h_bitmap_dc, handle)
        # Select the palette if necessary
        # long
        old_palette = 0
        if (!is_dib && depth <= 8)
          # long
          h_palette = self.attr_device.attr_h_palette
          if (!(h_palette).equal?(0))
            old_palette = OS._select_palette(h_bitmap_dc, h_palette, false)
            OS._realize_palette(h_bitmap_dc)
          end
        end
        # Find the size of the image and allocate data
        image_size = 0
        if (is_dib)
          image_size = dib.attr_bi_size_image
        else
          # Call with null lpBits to get the image size
          if (OS::IsWinCE)
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
          OS._get_dibits(h_bitmap_dc, handle, 0, height, 0, bmi, OS::DIB_RGB_COLORS)
          OS._move_memory(bmi_header, bmi, BITMAPINFOHEADER.attr_sizeof)
          image_size = bmi_header.attr_bi_size_image
        end
        data = Array.typed(::Java::Byte).new(image_size) { 0 }
        # Get the bitmap data
        if (is_dib)
          if (OS::IsWinCE && !(@handle).equal?(handle))
            # get image data from the temporary DIB
            OS._move_memory(data, dib.attr_bm_bits, image_size)
          else
            OS._move_memory(data, bm.attr_bm_bits, image_size)
          end
        else
          # long
          h_heap = OS._get_process_heap
          # long
          lpv_bits = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, image_size)
          if ((lpv_bits).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          if (OS::IsWinCE)
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
          OS._get_dibits(h_bitmap_dc, handle, 0, height, lpv_bits, bmi, OS::DIB_RGB_COLORS)
          OS._move_memory(data, lpv_bits, image_size)
          OS._heap_free(h_heap, 0, lpv_bits)
        end
        # Calculate the palette
        palette = nil
        if (depth <= 8)
          rgbs = Array.typed(RGB).new(num_colors) { nil }
          if (is_dib)
            if (OS::IsWinCE)
              # Feature on WinCE.  GetDIBColorTable is not supported.
              # The workaround is to set a pixel to the desired
              # palette index and use getPixel to get the corresponding
              # RGB value.
              red = 0
              green = 0
              blue = 0
              p_bits = Array.typed(::Java::Byte).new(1) { 0 }
              OS._move_memory(p_bits, bm.attr_bm_bits, 1)
              old_value = p_bits[0]
              mask = (0xff << (8 - bm.attr_bm_bits_pixel)) & 0xff
              i = 0
              while i < num_colors
                p_bits[0] = ((i << (8 - bm.attr_bm_bits_pixel)) | (p_bits[0] & ~mask))
                OS._move_memory(bm.attr_bm_bits, p_bits, 1)
                color = OS._get_pixel(h_bitmap_dc, 0, 0)
                blue = (color & 0xff0000) >> 16
                green = (color & 0xff00) >> 8
                red = color & 0xff
                rgbs[i] = RGB.new(red, green, blue)
                i += 1
              end
              p_bits[0] = old_value
              OS._move_memory(bm.attr_bm_bits, p_bits, 1)
            else
              colors = Array.typed(::Java::Byte).new(num_colors * 4) { 0 }
              OS._get_dibcolor_table(h_bitmap_dc, 0, num_colors, colors)
              color_index = 0
              i = 0
              while i < rgbs.attr_length
                rgbs[i] = RGB.new(colors[color_index + 2] & 0xff, colors[color_index + 1] & 0xff, colors[color_index] & 0xff)
                color_index += 4
                i += 1
              end
            end
          else
            src_index = BITMAPINFOHEADER.attr_sizeof
            i = 0
            while i < num_colors
              rgbs[i] = RGB.new(bmi[src_index + 2] & 0xff, bmi[src_index + 1] & 0xff, bmi[src_index] & 0xff)
              src_index += 4
              i += 1
            end
          end
          palette = PaletteData.new(rgbs)
        else
          if ((depth).equal?(16))
            palette = PaletteData.new(0x7c00, 0x3e0, 0x1f)
          else
            if ((depth).equal?(24))
              palette = PaletteData.new(0xff, 0xff00, 0xff0000)
            else
              if ((depth).equal?(32))
                palette = PaletteData.new(0xff00, 0xff0000, -0x1000000)
              else
                SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
              end
            end
          end
        end
        # Clean up
        OS._select_object(h_bitmap_dc, h_old_bitmap)
        if (!(old_palette).equal?(0))
          OS._select_palette(h_bitmap_dc, old_palette, false)
          OS._realize_palette(h_bitmap_dc)
        end
        if (OS::IsWinCE)
          if (!(handle).equal?(@handle))
            # free temporary DIB
            OS._delete_object(handle)
          end
        end
        OS._delete_dc(h_bitmap_dc)
        # Release the HDC for the device
        self.attr_device.internal_dispose__gc(h_dc, nil)
        # Construct and return the ImageData
        image_data = ImageData.new(width, height, depth, palette, 4, data)
        image_data.attr_transparent_pixel = @transparent_pixel
        image_data.attr_alpha = @alpha
        if ((@alpha).equal?(-1) && !(@alpha_data).nil?)
          image_data.attr_alpha_data = Array.typed(::Java::Byte).new(@alpha_data.attr_length) { 0 }
          System.arraycopy(@alpha_data, 0, image_data.attr_alpha_data, 0, @alpha_data.attr_length)
        end
        return image_data
      else
        SWT.error(SWT::ERROR_INVALID_IMAGE)
        return nil
      end
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
      # 64
      return RJava.cast_to_int(@handle)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def init(width, height)
      if (width <= 0 || height <= 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @type = SWT::BITMAP
      # long
      h_dc = self.attr_device.internal_new__gc(nil)
      @handle = OS._create_compatible_bitmap(h_dc, width, height)
      # Feature in Windows.  CreateCompatibleBitmap() may fail
      # for large images.  The fix is to create a DIB section
      # in that case.
      if ((@handle).equal?(0))
        bits = OS._get_device_caps(h_dc, OS::BITSPIXEL)
        planes = OS._get_device_caps(h_dc, OS::PLANES)
        depth = bits * planes
        if (depth < 16)
          depth = 16
        end
        @handle = create_dib(width, height, depth)
      end
      if (!(@handle).equal?(0))
        # long
        mem_dc = OS._create_compatible_dc(h_dc)
        # long
        h_old_bitmap = OS._select_object(mem_dc, @handle)
        OS._pat_blt(mem_dc, 0, 0, width, height, OS::PATCOPY)
        OS._select_object(mem_dc, h_old_bitmap)
        OS._delete_dc(mem_dc)
      end
      self.attr_device.internal_dispose__gc(h_dc, nil)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES, nil, self.attr_device.get_last_error)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def create_dib(width, height, depth)
        bmi_header = BITMAPINFOHEADER.new
        bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header.attr_bi_width = width
        bmi_header.attr_bi_height = -height
        bmi_header.attr_bi_planes = 1
        bmi_header.attr_bi_bit_count = RJava.cast_to_short(depth)
        if (OS::IsWinCE)
          bmi_header.attr_bi_compression = OS::BI_BITFIELDS
        else
          bmi_header.attr_bi_compression = OS::BI_RGB
        end
        bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + (OS::IsWinCE ? 12 : 0)) { 0 }
        OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        # Set the rgb colors into the bitmap info
        if (OS::IsWinCE)
          red_mask = 0xff00
          green_mask = 0xff0000
          blue_mask = -0x1000000
          # big endian
          offset = BITMAPINFOHEADER.attr_sizeof
          bmi[offset] = ((red_mask & -0x1000000) >> 24)
          bmi[offset + 1] = ((red_mask & 0xff0000) >> 16)
          bmi[offset + 2] = ((red_mask & 0xff00) >> 8)
          bmi[offset + 3] = ((red_mask & 0xff) >> 0)
          bmi[offset + 4] = ((green_mask & -0x1000000) >> 24)
          bmi[offset + 5] = ((green_mask & 0xff0000) >> 16)
          bmi[offset + 6] = ((green_mask & 0xff00) >> 8)
          bmi[offset + 7] = ((green_mask & 0xff) >> 0)
          bmi[offset + 8] = ((blue_mask & -0x1000000) >> 24)
          bmi[offset + 9] = ((blue_mask & 0xff0000) >> 16)
          bmi[offset + 10] = ((blue_mask & 0xff00) >> 8)
          bmi[offset + 11] = ((blue_mask & 0xff) >> 0)
        end
        # long
        # long
        p_bits = Array.typed(::Java::Int).new(1) { 0 }
        return OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
      end
      
      typesig { [Image, ICONINFO] }
      # Feature in WinCE.  GetIconInfo is not available in WinCE.
      # The workaround is to cache the object ImageData for images
      # of type SWT.ICON. The bitmaps hbmMask and hbmColor can then
      # be reconstructed by using our version of getIconInfo.
      # This function takes an ICONINFO object and sets the fields
      # hbmMask and hbmColor with the corresponding bitmaps it has
      # created.
      # Note.  These bitmaps must be freed - as they would have to be
      # if the regular GetIconInfo had been used.
      def _get_icon_info(image, info)
        # long
        result = init(image.attr_device, nil, image.attr_data)
        info.attr_hbm_color = result[0]
        info.attr_hbm_mask = result[1]
      end
      
      typesig { [Device, Image, ImageData] }
      # long
      def init(device, image, i)
        # BUG in Windows 98:
        # A monochrome DIBSection will display as solid black
        # on Windows 98 machines, even though it contains the
        # correct data. The fix is to convert 1-bit ImageData
        # into 4-bit ImageData before creating the image.
        # 
        # Windows does not support 2-bit images. Convert to 4-bit image.
        if ((OS::IsWin95 && (i.attr_depth).equal?(1) && !(i.get_transparency_type).equal?(SWT::TRANSPARENCY_MASK)) || (i.attr_depth).equal?(2))
          img = ImageData.new(i.attr_width, i.attr_height, 4, i.attr_palette)
          ImageData.blit(ImageData::BLIT_SRC, i.attr_data, i.attr_depth, i.attr_bytes_per_line, i.get_byte_order, 0, 0, i.attr_width, i.attr_height, nil, nil, nil, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, img.attr_data, img.attr_depth, img.attr_bytes_per_line, i.get_byte_order, 0, 0, img.attr_width, img.attr_height, nil, nil, nil, false, false)
          img.attr_transparent_pixel = i.attr_transparent_pixel
          img.attr_mask_pad = i.attr_mask_pad
          img.attr_mask_data = i.attr_mask_data
          img.attr_alpha = i.attr_alpha
          img.attr_alpha_data = i.attr_alpha_data
          i = img
        end
        # Windows supports 16-bit mask of (0x7C00, 0x3E0, 0x1F),
        # 24-bit mask of (0xFF0000, 0xFF00, 0xFF) and 32-bit mask
        # (0x00FF0000, 0x0000FF00, 0x000000FF) as documented in
        # MSDN BITMAPINFOHEADER.  Make sure the image is
        # Windows-supported.
        # 
        # 
        # Note on WinCE.  CreateDIBSection requires the biCompression
        # field of the BITMAPINFOHEADER to be set to BI_BITFIELDS for
        # 16 and 32 bit direct images (see MSDN for CreateDIBSection).
        # In this case, the color mask can be set to any value.  For
        # consistency, it is set to the same mask used by non WinCE
        # platforms in BI_RGB mode.
        if (i.attr_palette.attr_is_direct)
          palette = i.attr_palette
          red_mask = palette.attr_red_mask
          green_mask = palette.attr_green_mask
          blue_mask = palette.attr_blue_mask
          new_depth = i.attr_depth
          new_order = ImageData::MSB_FIRST
          new_palette = nil
          case (i.attr_depth)
          when 8
            new_depth = 16
            new_order = ImageData::LSB_FIRST
            new_palette = PaletteData.new(0x7c00, 0x3e0, 0x1f)
          when 16
            new_order = ImageData::LSB_FIRST
            if (!((red_mask).equal?(0x7c00) && (green_mask).equal?(0x3e0) && (blue_mask).equal?(0x1f)))
              new_palette = PaletteData.new(0x7c00, 0x3e0, 0x1f)
            end
          when 24
            if (!((red_mask).equal?(0xff) && (green_mask).equal?(0xff00) && (blue_mask).equal?(0xff0000)))
              new_palette = PaletteData.new(0xff, 0xff00, 0xff0000)
            end
          when 32
            if (!((red_mask).equal?(0xff00) && (green_mask).equal?(0xff0000) && (blue_mask).equal?(-0x1000000)))
              new_palette = PaletteData.new(0xff00, 0xff0000, -0x1000000)
            end
          else
            SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
          end
          if (!(new_palette).nil?)
            img = ImageData.new(i.attr_width, i.attr_height, new_depth, new_palette)
            ImageData.blit(ImageData::BLIT_SRC, i.attr_data, i.attr_depth, i.attr_bytes_per_line, i.get_byte_order, 0, 0, i.attr_width, i.attr_height, red_mask, green_mask, blue_mask, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, img.attr_data, img.attr_depth, img.attr_bytes_per_line, new_order, 0, 0, img.attr_width, img.attr_height, new_palette.attr_red_mask, new_palette.attr_green_mask, new_palette.attr_blue_mask, false, false)
            if (!(i.attr_transparent_pixel).equal?(-1))
              img.attr_transparent_pixel = new_palette.get_pixel(palette.get_rgb(i.attr_transparent_pixel))
            end
            img.attr_mask_pad = i.attr_mask_pad
            img.attr_mask_data = i.attr_mask_data
            img.attr_alpha = i.attr_alpha
            img.attr_alpha_data = i.attr_alpha_data
            i = img
          end
        end
        # Construct bitmap info header by hand
        rgbs = i.attr_palette.get_rgbs
        use_bitfields = OS::IsWinCE && ((i.attr_depth).equal?(16) || (i.attr_depth).equal?(32))
        bmi_header = BITMAPINFOHEADER.new
        bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
        bmi_header.attr_bi_width = i.attr_width
        bmi_header.attr_bi_height = -i.attr_height
        bmi_header.attr_bi_planes = 1
        bmi_header.attr_bi_bit_count = RJava.cast_to_short(i.attr_depth)
        if (use_bitfields)
          bmi_header.attr_bi_compression = OS::BI_BITFIELDS
        else
          bmi_header.attr_bi_compression = OS::BI_RGB
        end
        bmi_header.attr_bi_clr_used = (rgbs).nil? ? 0 : rgbs.attr_length
        bmi = nil
        if (i.attr_palette.attr_is_direct)
          bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + (use_bitfields ? 12 : 0)) { 0 }
        else
          bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + rgbs.attr_length * 4) { 0 }
        end
        OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
        # Set the rgb colors into the bitmap info
        offset = BITMAPINFOHEADER.attr_sizeof
        if (i.attr_palette.attr_is_direct)
          if (use_bitfields)
            palette = i.attr_palette
            red_mask = palette.attr_red_mask
            green_mask = palette.attr_green_mask
            blue_mask = palette.attr_blue_mask
            # The color masks must be written based on the
            # endianness of the ImageData.
            if ((i.get_byte_order).equal?(ImageData::LSB_FIRST))
              bmi[offset] = ((red_mask & 0xff) >> 0)
              bmi[offset + 1] = ((red_mask & 0xff00) >> 8)
              bmi[offset + 2] = ((red_mask & 0xff0000) >> 16)
              bmi[offset + 3] = ((red_mask & -0x1000000) >> 24)
              bmi[offset + 4] = ((green_mask & 0xff) >> 0)
              bmi[offset + 5] = ((green_mask & 0xff00) >> 8)
              bmi[offset + 6] = ((green_mask & 0xff0000) >> 16)
              bmi[offset + 7] = ((green_mask & -0x1000000) >> 24)
              bmi[offset + 8] = ((blue_mask & 0xff) >> 0)
              bmi[offset + 9] = ((blue_mask & 0xff00) >> 8)
              bmi[offset + 10] = ((blue_mask & 0xff0000) >> 16)
              bmi[offset + 11] = ((blue_mask & -0x1000000) >> 24)
            else
              bmi[offset] = ((red_mask & -0x1000000) >> 24)
              bmi[offset + 1] = ((red_mask & 0xff0000) >> 16)
              bmi[offset + 2] = ((red_mask & 0xff00) >> 8)
              bmi[offset + 3] = ((red_mask & 0xff) >> 0)
              bmi[offset + 4] = ((green_mask & -0x1000000) >> 24)
              bmi[offset + 5] = ((green_mask & 0xff0000) >> 16)
              bmi[offset + 6] = ((green_mask & 0xff00) >> 8)
              bmi[offset + 7] = ((green_mask & 0xff) >> 0)
              bmi[offset + 8] = ((blue_mask & -0x1000000) >> 24)
              bmi[offset + 9] = ((blue_mask & 0xff0000) >> 16)
              bmi[offset + 10] = ((blue_mask & 0xff00) >> 8)
              bmi[offset + 11] = ((blue_mask & 0xff) >> 0)
            end
          end
        else
          j = 0
          while j < rgbs.attr_length
            bmi[offset] = rgbs[j].attr_blue
            bmi[offset + 1] = rgbs[j].attr_green
            bmi[offset + 2] = rgbs[j].attr_red
            bmi[offset + 3] = 0
            offset += 4
            j += 1
          end
        end
        # long
        # long
        p_bits = Array.typed(::Java::Int).new(1) { 0 }
        # long
        h_dib = OS._create_dibsection(0, bmi, OS::DIB_RGB_COLORS, p_bits, 0, 0)
        if ((h_dib).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # In case of a scanline pad other than 4, do the work to convert it
        data = i.attr_data
        if (!(i.attr_scanline_pad).equal?(4) && (!(i.attr_bytes_per_line % 4).equal?(0)))
          data = ImageData.convert_pad(data, i.attr_width, i.attr_height, i.attr_depth, i.attr_scanline_pad, 4)
        end
        OS._move_memory(p_bits[0], data, data.attr_length)
        # long
        result = nil
        if ((i.get_transparency_type).equal?(SWT::TRANSPARENCY_MASK))
          # Get the HDC for the device
          # long
          h_dc = device.internal_new__gc(nil)
          # Create the color bitmap
          # long
          hdc_src = OS._create_compatible_dc(h_dc)
          OS._select_object(hdc_src, h_dib)
          # long
          h_bitmap = OS._create_compatible_bitmap(h_dc, i.attr_width, i.attr_height)
          if ((h_bitmap).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          hdc_dest = OS._create_compatible_dc(h_dc)
          OS._select_object(hdc_dest, h_bitmap)
          OS._bit_blt(hdc_dest, 0, 0, i.attr_width, i.attr_height, hdc_src, 0, 0, OS::SRCCOPY)
          # Release the HDC for the device
          device.internal_dispose__gc(h_dc, nil)
          # Create the mask. Windows requires icon masks to have a scanline pad of 2.
          mask_data = ImageData.convert_pad(i.attr_mask_data, i.attr_width, i.attr_height, 1, i.attr_mask_pad, 2)
          # long
          h_mask = OS._create_bitmap(i.attr_width, i.attr_height, 1, 1, mask_data)
          if ((h_mask).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS._select_object(hdc_src, h_mask)
          OS._pat_blt(hdc_src, 0, 0, i.attr_width, i.attr_height, OS::DSTINVERT)
          OS._delete_dc(hdc_src)
          OS._delete_dc(hdc_dest)
          OS._delete_object(h_dib)
          if ((image).nil?)
            # long
            result = Array.typed(::Java::Int).new([h_bitmap, h_mask])
          else
            # Create the icon
            info = ICONINFO.new
            info.attr_f_icon = true
            info.attr_hbm_color = h_bitmap
            info.attr_hbm_mask = h_mask
            # long
            h_icon = OS._create_icon_indirect(info)
            if ((h_icon).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            OS._delete_object(h_bitmap)
            OS._delete_object(h_mask)
            image.attr_handle = h_icon
            image.attr_type = SWT::ICON
            if (OS::IsWinCE)
              image.attr_data = i
            end
          end
        else
          if ((image).nil?)
            # long
            result = Array.typed(::Java::Int).new([h_dib])
          else
            image.attr_handle = h_dib
            image.attr_type = SWT::BITMAP
            image.attr_transparent_pixel = i.attr_transparent_pixel
            if ((image.attr_transparent_pixel).equal?(-1))
              image.attr_alpha = i.attr_alpha
              if ((i.attr_alpha).equal?(-1) && !(i.attr_alpha_data).nil?)
                length_ = i.attr_alpha_data.attr_length
                image.attr_alpha_data = Array.typed(::Java::Byte).new(length_) { 0 }
                System.arraycopy(i.attr_alpha_data, 0, image.attr_alpha_data, 0, length_)
              end
            end
          end
        end
        return result
      end
      
      typesig { [Device, Image, ImageData, ImageData] }
      # long
      def init(device, image, source, mask)
        # Create a temporary image and locate the black pixel
        image_data = nil
        black_index = 0
        if (source.attr_palette.attr_is_direct)
          image_data = ImageData.new(source.attr_width, source.attr_height, source.attr_depth, source.attr_palette)
        else
          black = RGB.new(0, 0, 0)
          rgbs = source.get_rgbs
          if (!(source.attr_transparent_pixel).equal?(-1))
            # The source had transparency, so we can use the transparent pixel
            # for black.
            new_rgbs = Array.typed(RGB).new(rgbs.attr_length) { nil }
            System.arraycopy(rgbs, 0, new_rgbs, 0, rgbs.attr_length)
            if (source.attr_transparent_pixel >= new_rgbs.attr_length)
              # Grow the palette with black
              rgbs = Array.typed(RGB).new(source.attr_transparent_pixel + 1) { nil }
              System.arraycopy(new_rgbs, 0, rgbs, 0, new_rgbs.attr_length)
              i = new_rgbs.attr_length
              while i <= source.attr_transparent_pixel
                rgbs[i] = RGB.new(0, 0, 0)
                i += 1
              end
            else
              new_rgbs[source.attr_transparent_pixel] = black
              rgbs = new_rgbs
            end
            black_index = source.attr_transparent_pixel
            image_data = ImageData.new(source.attr_width, source.attr_height, source.attr_depth, PaletteData.new(rgbs))
          else
            while (black_index < rgbs.attr_length)
              if ((rgbs[black_index] == black))
                break
              end
              black_index += 1
            end
            if ((black_index).equal?(rgbs.attr_length))
              # We didn't find black in the palette, and there is no transparent
              # pixel we can use.
              if ((1 << source.attr_depth) > rgbs.attr_length)
                # We can grow the palette and add black
                new_rgbs = Array.typed(RGB).new(rgbs.attr_length + 1) { nil }
                System.arraycopy(rgbs, 0, new_rgbs, 0, rgbs.attr_length)
                new_rgbs[rgbs.attr_length] = black
                rgbs = new_rgbs
              else
                # No room to grow the palette
                black_index = -1
              end
            end
            image_data = ImageData.new(source.attr_width, source.attr_height, source.attr_depth, PaletteData.new(rgbs))
          end
        end
        if ((black_index).equal?(-1))
          # There was no black in the palette, so just copy the data over
          System.arraycopy(source.attr_data, 0, image_data.attr_data, 0, image_data.attr_data.attr_length)
        else
          # Modify the source image to contain black wherever the mask is 0
          image_pixels = Array.typed(::Java::Int).new(image_data.attr_width) { 0 }
          mask_pixels = Array.typed(::Java::Int).new(mask.attr_width) { 0 }
          y = 0
          while y < image_data.attr_height
            source.get_pixels(0, y, image_data.attr_width, image_pixels, 0)
            mask.get_pixels(0, y, mask.attr_width, mask_pixels, 0)
            i = 0
            while i < image_pixels.attr_length
              if ((mask_pixels[i]).equal?(0))
                image_pixels[i] = black_index
              end
              i += 1
            end
            image_data.set_pixels(0, y, source.attr_width, image_pixels, 0)
            y += 1
          end
        end
        image_data.attr_mask_pad = mask.attr_scanline_pad
        image_data.attr_mask_data = mask.attr_data
        return init(device, image, image_data)
      end
    }
    
    typesig { [ImageData] }
    def init(i)
      if ((i).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(self.attr_device, self, i)
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
    # 
    # long
    def internal_new__gc(data)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # Create a new GC that can draw into the image.
      # Only supported for bitmaps.
      if (!(@type).equal?(SWT::BITMAP) || !(@mem_gc).nil?)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # Create a compatible HDC for the device
      # long
      h_dc = self.attr_device.internal_new__gc(nil)
      # long
      image_dc = OS._create_compatible_dc(h_dc)
      self.attr_device.internal_dispose__gc(h_dc, nil)
      if ((image_dc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(data).nil?)
        # Set the GCData fields
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (!((data.attr_style & mask)).equal?(0))
          data.attr_layout = !((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? OS::LAYOUT_RTL : 0
        else
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self.attr_device
        data.attr_image = self
        data.attr_font = self.attr_device.attr_system_font
      end
      return image_dc
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
    # 
    # long
    def internal_dispose__gc(h_dc, data)
      OS._delete_dc(h_dc)
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
      # Note.  Not implemented on WinCE.
      if (OS::IsWinCE)
        return
      end
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
      @transparent_color = -1
      # Get the HDC for the device
      # long
      h_dc = self.attr_device.internal_new__gc(nil)
      # Change the background color in the image
      bm = BITMAP.new
      OS._get_object(@handle, BITMAP.attr_sizeof, bm)
      # long
      hdc_mem = OS._create_compatible_dc(h_dc)
      OS._select_object(hdc_mem, @handle)
      max_colors = 1 << bm.attr_bm_bits_pixel
      colors = Array.typed(::Java::Byte).new(max_colors * 4) { 0 }
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      num_colors = OS._get_dibcolor_table(hdc_mem, 0, max_colors, colors)
      offset = @transparent_pixel * 4
      colors[offset] = color.get_blue
      colors[offset + 1] = color.get_green
      colors[offset + 2] = color.get_red
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      OS._set_dibcolor_table(hdc_mem, 0, num_colors, colors)
      OS._delete_dc(hdc_mem)
      # Release the HDC for the device
      self.attr_device.internal_dispose__gc(h_dc, nil)
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
      return "Image {" + RJava.cast_to_string(@handle) + "}"
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int, ::Java::Int] }
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
      # @return a new image object containing the specified device, type and handle
      # 
      # long
      def win32_new(device, type, handle)
        image = Image.new(device)
        image.attr_type = type
        image.attr_handle = handle
        return image
      end
    }
    
    private
    alias_method :initialize__image, :initialize
  end
  
end
