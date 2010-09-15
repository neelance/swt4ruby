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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cairo
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # The handle to the OS pixmap resource.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # int
    attr_accessor :pixmap
    alias_method :attr_pixmap, :pixmap
    undef_method :pixmap
    alias_method :attr_pixmap=, :pixmap=
    undef_method :pixmap=
    
    # The handle to the OS mask resource.
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # int
    attr_accessor :mask
    alias_method :attr_mask, :mask
    undef_method :mask
    alias_method :attr_mask=, :mask=
    undef_method :mask=
    
    # int
    attr_accessor :surface
    alias_method :attr_surface, :surface
    undef_method :surface
    alias_method :attr_surface=, :surface=
    undef_method :surface=
    
    attr_accessor :surface_data
    alias_method :attr_surface_data, :surface_data
    undef_method :surface_data
    alias_method :attr_surface_data=, :surface_data=
    undef_method :surface_data=
    
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(src_image.attr_pixmap, w, h)
      width = w[0]
      height = h[0]
      # Copy the mask
      if (((src_image.attr_type).equal?(SWT::ICON) && !(src_image.attr_mask).equal?(0)) || !(src_image.attr_transparent_pixel).equal?(-1))
        # Generate the mask if necessary.
        if (!(src_image.attr_transparent_pixel).equal?(-1))
          src_image.create_mask
        end
        # int
        mask = OS.gdk_pixmap_new(0, width, height, 1)
        if ((mask).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # int
        gdk_gc = OS.gdk_gc_new(mask)
        if ((gdk_gc).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS.gdk_draw_drawable(mask, gdk_gc, src_image.attr_mask, 0, 0, 0, 0, width, height)
        OS.g_object_unref(gdk_gc)
        @mask = mask
        # Destroy the image mask if the there is a GC created on the image
        if (!(src_image.attr_transparent_pixel).equal?(-1) && !(src_image.attr_mem_gc).nil?)
          src_image.destroy_mask
        end
      end
      # Copy transparent pixel and alpha data
      if (!(flag).equal?(SWT::IMAGE_DISABLE))
        @transparent_pixel = src_image.attr_transparent_pixel
      end
      @alpha = src_image.attr_alpha
      if (!(src_image.attr_alpha_data).nil?)
        @alpha_data = Array.typed(::Java::Byte).new(src_image.attr_alpha_data.attr_length) { 0 }
        System.arraycopy(src_image.attr_alpha_data, 0, @alpha_data, 0, @alpha_data.attr_length)
      end
      create_alpha_mask(width, height)
      # Create the new pixmap
      # int
      pixmap = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, -1)
      if ((pixmap).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # int
      gdk_gc = OS.gdk_gc_new(pixmap)
      if ((gdk_gc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @pixmap = pixmap
      if ((flag).equal?(SWT::IMAGE_COPY))
        OS.gdk_draw_drawable(pixmap, gdk_gc, src_image.attr_pixmap, 0, 0, 0, 0, width, height)
        OS.g_object_unref(gdk_gc)
      else
        # Retrieve the source pixmap data
        # int
        pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, width, height)
        if ((pixbuf).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # int
        colormap = OS.gdk_colormap_get_system
        OS.gdk_pixbuf_get_from_drawable(pixbuf, src_image.attr_pixmap, colormap, 0, 0, 0, 0, width, height)
        stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
        # int
        pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
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
          line = Array.typed(::Java::Byte).new(stride) { 0 }
          y = 0
          while y < height
            OS.memmove___org_eclipse_swt_graphics_image_1(line, pixels + (y * stride), stride)
            x = 0
            while x < width
              offset = x * 3
              red = line[offset] & 0xff
              green = line[offset + 1] & 0xff
              blue = line[offset + 2] & 0xff
              intensity = red * red + green * green + blue * blue
              if (intensity < 98304)
                line[offset] = zero_red
                line[offset + 1] = zero_green
                line[offset + 2] = zero_blue
              else
                line[offset] = one_red
                line[offset + 1] = one_green
                line[offset + 2] = one_blue
              end
              x += 1
            end
            OS.memmove___org_eclipse_swt_graphics_image_3(pixels + (y * stride), line, stride)
            y += 1
          end
        when SWT::IMAGE_GRAY
          line = Array.typed(::Java::Byte).new(stride) { 0 }
          y = 0
          while y < height
            OS.memmove___org_eclipse_swt_graphics_image_5(line, pixels + (y * stride), stride)
            x = 0
            while x < width
              offset = x * 3
              red = line[offset] & 0xff
              green = line[offset + 1] & 0xff
              blue = line[offset + 2] & 0xff
              intensity = ((red + red + green + green + green + green + green + blue) >> 3)
              line[offset] = line[offset + 1] = line[offset + 2] = intensity
              x += 1
            end
            OS.memmove___org_eclipse_swt_graphics_image_7(pixels + (y * stride), line, stride)
            y += 1
          end
        end
        # Copy data back to destination pixmap
        OS.gdk_pixbuf_render_to_drawable(pixbuf, pixmap, gdk_gc, 0, 0, 0, 0, width, height, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
        # Free resources
        OS.g_object_unref(pixbuf)
        OS.g_object_unref(gdk_gc)
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      @pixmap = 0
      @mask = 0
      @surface = 0
      @surface_data = 0
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
      if ((filename).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init_native(filename)
      if ((@pixmap).equal?(0))
        init(ImageData.new(filename))
      end
      init
    end
    
    typesig { [String] }
    def init_native(filename)
      begin
        length_ = filename.length
        chars = CharArray.new(length_)
        filename.get_chars(0, length_, chars, 0)
        buffer = Converter.wcs_to_mbcs(nil, chars, true)
        # int
        pixbuf = OS.gdk_pixbuf_new_from_file(buffer, nil)
        if (!(pixbuf).equal?(0))
          has_alpha = OS.gdk_pixbuf_get_has_alpha(pixbuf)
          if (has_alpha)
            # Bug in GTK. Depending on the image (seems to affect images that have
            # some degree of transparency all over the image), gdk_pixbuff_render_pixmap_and_mask()
            # will return a corrupt pixmap. To avoid this, read in and store the alpha channel data
            # for the image and then set it to 0xFF to prevent any possible corruption from
            # gdk_pixbuff_render_pixmap_and_mask().
            width = OS.gdk_pixbuf_get_width(pixbuf)
            height = OS.gdk_pixbuf_get_height(pixbuf)
            stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
            # int
            pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
            line = Array.typed(::Java::Byte).new(stride) { 0 }
            @alpha_data = Array.typed(::Java::Byte).new(width * height) { 0 }
            y = 0
            while y < height
              OS.memmove___org_eclipse_swt_graphics_image_9(line, pixels + (y * stride), stride)
              x = 0
              while x < width
                @alpha_data[y * width + x] = line[x * 4 + 3]
                line[x * 4 + 3] = 0xff
                x += 1
              end
              OS.memmove___org_eclipse_swt_graphics_image_11(pixels + (y * stride), line, stride)
              y += 1
            end
            create_alpha_mask(width, height)
          end
          # int
          # int
          pixmap_return = Array.typed(::Java::Long).new(1) { 0 }
          OS.gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, nil, 0)
          @type = SWT::BITMAP
          @pixmap = pixmap_return[0]
          if ((@pixmap).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.g_object_unref(pixbuf)
        end
      rescue SWTException => e
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def create_alpha_mask(width, height)
      if (self.attr_device.attr_use_xrender && (!(@alpha).equal?(-1) || !(@alpha_data).nil?))
        @mask = OS.gdk_pixmap_new(0, !(@alpha).equal?(-1) ? 1 : width, !(@alpha).equal?(-1) ? 1 : height, 8)
        if ((@mask).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # int
        gc = OS.gdk_gc_new(@mask)
        if (!(@alpha).equal?(-1))
          color = GdkColor.new
          color.attr_pixel = (@alpha & 0xff) << 8 | (@alpha & 0xff)
          OS.gdk_gc_set_foreground(gc, color)
          OS.gdk_draw_rectangle(@mask, gc, 1, 0, 0, 1, 1)
        else
          # int
          image_ptr = OS.gdk_drawable_get_image(@mask, 0, 0, width, height)
          if ((image_ptr).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          gdk_image = GdkImage.new
          OS.memmove___org_eclipse_swt_graphics_image_13(gdk_image, image_ptr)
          if ((gdk_image.attr_bpl).equal?(width))
            OS.memmove___org_eclipse_swt_graphics_image_15(gdk_image.attr_mem, @alpha_data, @alpha_data.attr_length)
          else
            line = Array.typed(::Java::Byte).new(gdk_image.attr_bpl) { 0 }
            y = 0
            while y < height
              System.arraycopy(@alpha_data, width * y, line, 0, width)
              OS.memmove___org_eclipse_swt_graphics_image_17(gdk_image.attr_mem + (gdk_image.attr_bpl * y), line, gdk_image.attr_bpl)
              y += 1
            end
          end
          OS.gdk_draw_image(@mask, gc, image_ptr, 0, 0, 0, 0, width, height)
          OS.g_object_unref(image_ptr)
        end
        OS.g_object_unref(gc)
      end
    end
    
    typesig { [] }
    # Create the receiver's mask if necessary.
    def create_mask
      if (!(@mask).equal?(0))
        return
      end
      @mask = create_mask(get_image_data, false)
      if ((@mask).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
    end
    
    typesig { [ImageData, ::Java::Boolean] }
    # int
    def create_mask(image, copy)
      mask = image.get_transparency_mask
      data = mask.attr_data
      mask_data = copy ? Array.typed(::Java::Byte).new(data.attr_length) { 0 } : data
      i = 0
      while i < mask_data.attr_length
        s = data[i]
        mask_data[i] = (((s & 0x80) >> 7) | ((s & 0x40) >> 5) | ((s & 0x20) >> 3) | ((s & 0x10) >> 1) | ((s & 0x8) << 1) | ((s & 0x4) << 3) | ((s & 0x2) << 5) | ((s & 0x1) << 7))
        i += 1
      end
      mask_data = ImageData.convert_pad(mask_data, mask.attr_width, mask.attr_height, mask.attr_depth, mask.attr_scanline_pad, 1)
      return OS.gdk_bitmap_create_from_data(0, mask_data, mask.attr_width, mask.attr_height)
    end
    
    typesig { [] }
    def create_surface
      if (!(@surface).equal?(0))
        return
      end
      # Generate the mask if necessary.
      if (!(@transparent_pixel).equal?(-1))
        create_mask
      end
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(@pixmap, w, h)
      width = w[0]
      height = h[0]
      if (!(@mask).equal?(0) || !(@alpha).equal?(-1) || !(@alpha_data).nil?)
        # int
        pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, width, height)
        if ((pixbuf).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # int
        colormap = OS.gdk_colormap_get_system
        OS.gdk_pixbuf_get_from_drawable(pixbuf, @pixmap, colormap, 0, 0, 0, 0, width, height)
        stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
        # int
        pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
        line = Array.typed(::Java::Byte).new(stride) { 0 }
        if (!(@mask).equal?(0) && (OS.gdk_drawable_get_depth(@mask)).equal?(1))
          # int
          mask_pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, width, height)
          if ((mask_pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(mask_pixbuf, @mask, 0, 0, 0, 0, 0, width, height)
          mask_stride = OS.gdk_pixbuf_get_rowstride(mask_pixbuf)
          # int
          mask_pixels = OS.gdk_pixbuf_get_pixels(mask_pixbuf)
          mask_line = Array.typed(::Java::Byte).new(mask_stride) { 0 }
          # int
          offset = pixels
          mask_offset = mask_pixels
          y = 0
          while y < height
            OS.memmove___org_eclipse_swt_graphics_image_19(line, offset, stride)
            OS.memmove___org_eclipse_swt_graphics_image_21(mask_line, mask_offset, mask_stride)
            x = 0
            offset1 = 0
            while x < width
              if ((mask_line[x * 3]).equal?(0))
                line[offset1 + 0] = line[offset1 + 1] = line[offset1 + 2] = line[offset1 + 3] = 0
              end
              temp = line[offset1]
              line[offset1] = line[offset1 + 2]
              line[offset1 + 2] = temp
              x += 1
              offset1 += 4
            end
            OS.memmove___org_eclipse_swt_graphics_image_23(offset, line, stride)
            offset += stride
            mask_offset += mask_stride
            y += 1
          end
          OS.g_object_unref(mask_pixbuf)
        else
          if (!(@alpha).equal?(-1))
            # int
            offset = pixels
            y = 0
            while y < height
              OS.memmove___org_eclipse_swt_graphics_image_25(line, offset, stride)
              x = 0
              offset1 = 0
              while x < width
                line[offset1 + 3] = @alpha
                # pre-multiplied alpha
                r = ((line[offset1 + 0] & 0xff) * @alpha) + 128
                r = (r + (r >> 8)) >> 8
                g = ((line[offset1 + 1] & 0xff) * @alpha) + 128
                g = (g + (g >> 8)) >> 8
                b = ((line[offset1 + 2] & 0xff) * @alpha) + 128
                b = (b + (b >> 8)) >> 8
                line[offset1 + 0] = b
                line[offset1 + 1] = g
                line[offset1 + 2] = r
                x += 1
                offset1 += 4
              end
              OS.memmove___org_eclipse_swt_graphics_image_27(offset, line, stride)
              offset += stride
              y += 1
            end
          else
            if (!(@alpha_data).nil?)
              # int
              offset = pixels
              y = 0
              while y < h[0]
                OS.memmove___org_eclipse_swt_graphics_image_29(line, offset, stride)
                x = 0
                offset1 = 0
                while x < width
                  alpha = @alpha_data[y * w[0] + x] & 0xff
                  line[offset1 + 3] = alpha
                  # pre-multiplied alpha
                  r = ((line[offset1 + 0] & 0xff) * alpha) + 128
                  r = (r + (r >> 8)) >> 8
                  g = ((line[offset1 + 1] & 0xff) * alpha) + 128
                  g = (g + (g >> 8)) >> 8
                  b = ((line[offset1 + 2] & 0xff) * alpha) + 128
                  b = (b + (b >> 8)) >> 8
                  line[offset1 + 0] = b
                  line[offset1 + 1] = g
                  line[offset1 + 2] = r
                  x += 1
                  offset1 += 4
                end
                OS.memmove___org_eclipse_swt_graphics_image_31(offset, line, stride)
                offset += stride
                y += 1
              end
            else
              # int
              offset = pixels
              y = 0
              while y < h[0]
                OS.memmove___org_eclipse_swt_graphics_image_33(line, offset, stride)
                x = 0
                offset1 = 0
                while x < width
                  line[offset1 + 3] = 0xff
                  temp = line[offset1]
                  line[offset1] = line[offset1 + 2]
                  line[offset1 + 2] = temp
                  x += 1
                  offset1 += 4
                end
                OS.memmove___org_eclipse_swt_graphics_image_35(offset, line, stride)
                offset += stride
                y += 1
              end
            end
          end
        end
        @surface_data = OS.g_malloc(stride * height)
        OS.memmove___org_eclipse_swt_graphics_image_37(@surface_data, pixels, stride * height)
        @surface = SwtCairo.cairo_image_surface_create_for_data(@surface_data, SwtCairo::CAIRO_FORMAT_ARGB32, width, height, stride)
        OS.g_object_unref(pixbuf)
      else
        # int
        x_display = OS._gdk_display
        # int
        x_drawable = OS._gdk_pixmap_xid(@pixmap)
        # int
        x_visual = OS.gdk_x11_visual_get_xvisual(OS.gdk_visual_get_system)
        @surface = SwtCairo.cairo_xlib_surface_create(x_display, x_drawable, x_visual, width, height)
      end
      # Destroy the image mask if the there is a GC created on the image
      if (!(@transparent_pixel).equal?(-1) && !(@mem_gc).nil?)
        destroy_mask
      end
    end
    
    typesig { [] }
    # Destroy the receiver's mask if it exists.
    def destroy_mask
      if ((@mask).equal?(0))
        return
      end
      OS.g_object_unref(@mask)
      @mask = 0
    end
    
    typesig { [] }
    def destroy
      if (!(@mem_gc).nil?)
        @mem_gc.dispose
      end
      if (!(@pixmap).equal?(0))
        OS.g_object_unref(@pixmap)
      end
      if (!(@mask).equal?(0))
        OS.g_object_unref(@mask)
      end
      if (!(@surface).equal?(0))
        SwtCairo.cairo_surface_destroy(@surface)
      end
      if (!(@surface_data).equal?(0))
        OS.g_free(@surface_data)
      end
      @surface_data = @surface = @pixmap = @mask = 0
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
      return (self.attr_device).equal?(image.attr_device) && (@pixmap).equal?(image.attr_pixmap)
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
      # NOT DONE
      return nil
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
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(@pixmap, w, h)
      return Rectangle.new(0, 0, @width = w[0], @height = h[0])
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
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(@pixmap, w, h)
      width = w[0]
      height = h[0]
      # int
      pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, width, height)
      if ((pixbuf).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # int
      colormap = OS.gdk_colormap_get_system
      OS.gdk_pixbuf_get_from_drawable(pixbuf, @pixmap, colormap, 0, 0, 0, 0, width, height)
      stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
      # int
      pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
      src_data = Array.typed(::Java::Byte).new(stride * height) { 0 }
      OS.memmove___org_eclipse_swt_graphics_image_39(src_data, pixels, src_data.attr_length)
      OS.g_object_unref(pixbuf)
      palette = PaletteData.new(0xff0000, 0xff00, 0xff)
      data = ImageData.new(width, height, 24, palette, 4, src_data)
      data.attr_bytes_per_line = stride
      if ((@transparent_pixel).equal?(-1) && (@type).equal?(SWT::ICON) && !(@mask).equal?(0))
        # Get the icon mask data
        # int
        gdk_image_ptr = OS.gdk_drawable_get_image(@mask, 0, 0, width, height)
        if ((gdk_image_ptr).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        gdk_image = GdkImage.new
        OS.memmove___org_eclipse_swt_graphics_image_41(gdk_image, gdk_image_ptr)
        mask_data = Array.typed(::Java::Byte).new(gdk_image.attr_bpl * gdk_image.attr_height) { 0 }
        OS.memmove___org_eclipse_swt_graphics_image_43(mask_data, gdk_image.attr_mem, mask_data.attr_length)
        OS.g_object_unref(gdk_image_ptr)
        mask_pad = 0
        mask_pad = 1
        while mask_pad < 128
          bpl = (((width + 7) / 8) + (mask_pad - 1)) / mask_pad * mask_pad
          if ((gdk_image.attr_bpl).equal?(bpl))
            break
          end
          mask_pad += 1
        end
        # Make mask scanline pad equals to 2
        data.attr_mask_pad = 2
        mask_data = ImageData.convert_pad(mask_data, width, height, 1, mask_pad, data.attr_mask_pad)
        # Bit swap the mask data if necessary
        if ((gdk_image.attr_byte_order).equal?(OS::GDK_LSB_FIRST))
          i = 0
          while i < mask_data.attr_length
            b = mask_data[i]
            mask_data[i] = (((b & 0x1) << 7) | ((b & 0x2) << 5) | ((b & 0x4) << 3) | ((b & 0x8) << 1) | ((b & 0x10) >> 1) | ((b & 0x20) >> 3) | ((b & 0x40) >> 5) | ((b & 0x80) >> 7))
            i += 1
          end
        end
        data.attr_mask_data = mask_data
      end
      data.attr_transparent_pixel = @transparent_pixel
      data.attr_alpha = @alpha
      if ((@alpha).equal?(-1) && !(@alpha_data).nil?)
        data.attr_alpha_data = Array.typed(::Java::Byte).new(@alpha_data.attr_length) { 0 }
        System.arraycopy(@alpha_data, 0, data.attr_alpha_data, 0, @alpha_data.attr_length)
      end
      return data
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int, ::Java::Long, ::Java::Long] }
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
      # @param pixmap the OS handle for the image
      # @param mask the OS handle for the image mask
      # 
      # @private
      # 
      # int
      # int
      def gtk_new(device, type, pixmap, mask)
        image = Image.new(device)
        image.attr_type = type
        image.attr_pixmap = pixmap
        image.attr_mask = mask
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
      # 64
      return RJava.cast_to_int(@pixmap)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def init(width, height)
      if (width <= 0 || height <= 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @type = SWT::BITMAP
      # Create the pixmap
      @pixmap = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, -1)
      if ((@pixmap).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # Fill the bitmap with white
      white = GdkColor.new
      white.attr_red = RJava.cast_to_short(0xffff)
      white.attr_green = RJava.cast_to_short(0xffff)
      white.attr_blue = RJava.cast_to_short(0xffff)
      # int
      colormap = OS.gdk_colormap_get_system
      OS.gdk_colormap_alloc_color(colormap, white, true, true)
      # int
      gdk_gc = OS.gdk_gc_new(@pixmap)
      OS.gdk_gc_set_foreground(gdk_gc, white)
      OS.gdk_draw_rectangle(@pixmap, gdk_gc, 1, 0, 0, width, height)
      OS.g_object_unref(gdk_gc)
      OS.gdk_colormap_free_colors(colormap, white, 1)
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
      # int
      pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, width, height)
      if ((pixbuf).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
      # int
      data = OS.gdk_pixbuf_get_pixels(pixbuf)
      buffer = image.attr_data
      if (!palette.attr_is_direct || !(image.attr_depth).equal?(24) || !(stride).equal?(image.attr_bytes_per_line) || !(palette.attr_red_mask).equal?(0xff0000) || !(palette.attr_green_mask).equal?(0xff00) || !(palette.attr_blue_mask).equal?(0xff))
        buffer = Array.typed(::Java::Byte).new(stride * height) { 0 }
        if (palette.attr_is_direct)
          ImageData.blit(ImageData::BLIT_SRC, image.attr_data, image.attr_depth, image.attr_bytes_per_line, image.get_byte_order, 0, 0, width, height, palette.attr_red_mask, palette.attr_green_mask, palette.attr_blue_mask, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, buffer, 24, stride, ImageData::MSB_FIRST, 0, 0, width, height, 0xff0000, 0xff00, 0xff, false, false)
        else
          rgbs = palette.get_rgbs
          length_ = rgbs.attr_length
          src_reds = Array.typed(::Java::Byte).new(length_) { 0 }
          src_greens = Array.typed(::Java::Byte).new(length_) { 0 }
          src_blues = Array.typed(::Java::Byte).new(length_) { 0 }
          i = 0
          while i < rgbs.attr_length
            rgb = rgbs[i]
            if ((rgb).nil?)
              i += 1
              next
            end
            src_reds[i] = rgb.attr_red
            src_greens[i] = rgb.attr_green
            src_blues[i] = rgb.attr_blue
            i += 1
          end
          ImageData.blit(ImageData::BLIT_SRC, image.attr_data, image.attr_depth, image.attr_bytes_per_line, image.get_byte_order, 0, 0, width, height, src_reds, src_greens, src_blues, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, buffer, 24, stride, ImageData::MSB_FIRST, 0, 0, width, height, 0xff0000, 0xff00, 0xff, false, false)
        end
      end
      OS.memmove___org_eclipse_swt_graphics_image_45(data, buffer, stride * height)
      # int
      pixmap = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, -1)
      if ((pixmap).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # int
      gdk_gc = OS.gdk_gc_new(pixmap)
      if ((gdk_gc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gdk_pixbuf_render_to_drawable(pixbuf, pixmap, gdk_gc, 0, 0, 0, 0, width, height, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
      OS.g_object_unref(gdk_gc)
      OS.g_object_unref(pixbuf)
      is_icon = (image.get_transparency_type).equal?(SWT::TRANSPARENCY_MASK)
      if (is_icon || !(image.attr_transparent_pixel).equal?(-1))
        if (!(image.attr_transparent_pixel).equal?(-1))
          rgb = nil
          if (palette.attr_is_direct)
            rgb = palette.get_rgb(image.attr_transparent_pixel)
          else
            if (image.attr_transparent_pixel < palette.attr_colors.attr_length)
              rgb = palette.get_rgb(image.attr_transparent_pixel)
            end
          end
          if (!(rgb).nil?)
            @transparent_pixel = rgb.attr_red << 16 | rgb.attr_green << 8 | rgb.attr_blue
          end
        end
        # int
        mask = create_mask(image, is_icon)
        if ((mask).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @mask = mask
        if (is_icon)
          @type = SWT::ICON
        else
          @type = SWT::BITMAP
        end
      else
        @type = SWT::BITMAP
        @mask = 0
        @alpha = image.attr_alpha
        if ((image.attr_alpha).equal?(-1) && !(image.attr_alpha_data).nil?)
          @alpha_data = Array.typed(::Java::Byte).new(image.attr_alpha_data.attr_length) { 0 }
          System.arraycopy(image.attr_alpha_data, 0, @alpha_data, 0, @alpha_data.attr_length)
        end
        create_alpha_mask(width, height)
      end
      @pixmap = pixmap
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
    # int
    def internal_new__gc(data)
      if ((@pixmap).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(@type).equal?(SWT::BITMAP) || !(@mem_gc).nil?)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # int
      gdk_gc = OS.gdk_gc_new(@pixmap)
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= SWT::LEFT_TO_RIGHT
        else
          if (!((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
            data.attr_style |= SWT::MIRRORED
          end
        end
        data.attr_device = self.attr_device
        data.attr_drawable = @pixmap
        data.attr_background = self.attr_device.attr_color_white.attr_handle
        data.attr_foreground = self.attr_device.attr_color_black.attr_handle
        data.attr_font = self.attr_device.attr_system_font
        data.attr_image = self
      end
      return gdk_gc
    end
    
    typesig { [::Java::Long, SwtGCData] }
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
    # int
    def internal_dispose__gc(gdk_gc, data)
      OS.g_object_unref(gdk_gc)
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
      return (@pixmap).equal?(0)
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
      # NOT DONE
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
      return "Image {" + RJava.cast_to_string(@pixmap) + "}"
    end
    
    private
    alias_method :initialize__image, :initialize
  end
  
end
