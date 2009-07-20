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
  module ImageLoaderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
      include_const ::Java::Util, :Vector
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  # Instances of this class are used to load images from,
  # and save images to, a file or stream.
  # <p>
  # Currently supported image formats are:
  # </p><ul>
  # <li>BMP (Windows or OS/2 Bitmap)</li>
  # <li>ICO (Windows Icon)</li>
  # <li>JPEG</li>
  # <li>GIF</li>
  # <li>PNG</li>
  # <li>TIFF</li>
  # </ul>
  # <code>ImageLoaders</code> can be used to:
  # <ul>
  # <li>load/save single images in all formats</li>
  # <li>load/save multiple images (GIF/ICO/TIFF)</li>
  # <li>load/save animated GIF images</li>
  # <li>load interlaced GIF/PNG images</li>
  # <li>load progressive JPEG images</li>
  # </ul>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ImageAnalyzer</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ImageLoader 
    include_class_members ImageLoaderImports
    
    # the array of ImageData objects in this ImageLoader.
    # This array is read in when the load method is called,
    # and it is written out when the save method is called
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # the width of the logical screen on which the images
    # reside, in pixels (this corresponds to the GIF89a
    # Logical Screen Width value)
    attr_accessor :logical_screen_width
    alias_method :attr_logical_screen_width, :logical_screen_width
    undef_method :logical_screen_width
    alias_method :attr_logical_screen_width=, :logical_screen_width=
    undef_method :logical_screen_width=
    
    # the height of the logical screen on which the images
    # reside, in pixels (this corresponds to the GIF89a
    # Logical Screen Height value)
    attr_accessor :logical_screen_height
    alias_method :attr_logical_screen_height, :logical_screen_height
    undef_method :logical_screen_height
    alias_method :attr_logical_screen_height=, :logical_screen_height=
    undef_method :logical_screen_height=
    
    # the background pixel for the logical screen (this
    # corresponds to the GIF89a Background Color Index value).
    # The default is -1 which means 'unspecified background'
    attr_accessor :background_pixel
    alias_method :attr_background_pixel, :background_pixel
    undef_method :background_pixel
    alias_method :attr_background_pixel=, :background_pixel=
    undef_method :background_pixel=
    
    # the number of times to repeat the display of a sequence
    # of animated images (this corresponds to the commonly-used
    # GIF application extension for "NETSCAPE 2.0 01").
    # The default is 1. A value of 0 means 'display repeatedly'
    attr_accessor :repeat_count
    alias_method :attr_repeat_count, :repeat_count
    undef_method :repeat_count
    alias_method :attr_repeat_count=, :repeat_count=
    undef_method :repeat_count=
    
    # the set of ImageLoader event listeners, created on demand
    attr_accessor :image_loader_listeners
    alias_method :attr_image_loader_listeners, :image_loader_listeners
    undef_method :image_loader_listeners
    alias_method :attr_image_loader_listeners=, :image_loader_listeners=
    undef_method :image_loader_listeners=
    
    typesig { [] }
    # Construct a new empty ImageLoader.
    def initialize
      @data = nil
      @logical_screen_width = 0
      @logical_screen_height = 0
      @background_pixel = 0
      @repeat_count = 0
      @image_loader_listeners = nil
      reset
    end
    
    typesig { [] }
    # Resets the fields of the ImageLoader, except for the
    # <code>imageLoaderListeners</code> field.
    def reset
      @data = nil
      @logical_screen_width = 0
      @logical_screen_height = 0
      @background_pixel = -1
      @repeat_count = 1
    end
    
    typesig { [InputStream] }
    # Loads an array of <code>ImageData</code> objects from the
    # specified input stream. Throws an error if either an error
    # occurs while loading the images, or if the images are not
    # of a supported type. Returns the loaded image data array.
    # 
    # @param stream the input stream to load the images from
    # @return an array of <code>ImageData</code> objects loaded from the specified input stream
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the stream is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while reading from the stream</li>
    # <li>ERROR_INVALID_IMAGE - if the image stream contains invalid data</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image stream contains an unrecognized format</li>
    # </ul>
    def load(stream)
      if ((stream).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      reset
      @data = FileFormat.load(stream, self)
      return @data
    end
    
    typesig { [String] }
    # Loads an array of <code>ImageData</code> objects from the
    # file with the specified name. Throws an error if either
    # an error occurs while loading the images, or if the images are
    # not of a supported type. Returns the loaded image data array.
    # 
    # @param filename the name of the file to load the images from
    # @return an array of <code>ImageData</code> objects loaded from the specified file
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the file name is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while reading from the file</li>
    # <li>ERROR_INVALID_IMAGE - if the image file contains invalid data</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image file contains an unrecognized format</li>
    # </ul>
    def load(filename)
      if ((filename).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      stream = nil
      begin
        stream = Compatibility.new_file_input_stream(filename)
        return load(stream)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      ensure
        begin
          if (!(stream).nil?)
            stream.close
          end
        rescue IOException => e
          # Ignore error
        end
      end
      return nil
    end
    
    typesig { [OutputStream, ::Java::Int] }
    # Saves the image data in this ImageLoader to the specified stream.
    # The format parameter can have one of the following values:
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
    # 
    # @param stream the output stream to write the images to
    # @param format the format to write the images in
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the stream is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while writing to the stream</li>
    # <li>ERROR_INVALID_IMAGE - if the image data contains invalid data</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image data cannot be saved to the requested format</li>
    # </ul>
    def save(stream, format)
      if ((stream).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      FileFormat.save(stream, format, self)
    end
    
    typesig { [String, ::Java::Int] }
    # Saves the image data in this ImageLoader to a file with the specified name.
    # The format parameter can have one of the following values:
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
    # 
    # @param filename the name of the file to write the images to
    # @param format the format to write the images in
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the file name is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_IO - if an IO error occurs while writing to the file</li>
    # <li>ERROR_INVALID_IMAGE - if the image data contains invalid data</li>
    # <li>ERROR_UNSUPPORTED_FORMAT - if the image data cannot be saved to the requested format</li>
    # </ul>
    def save(filename, format)
      if ((filename).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      stream = nil
      begin
        stream = Compatibility.new_file_output_stream(filename)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      save(stream, format)
      begin
        stream.close
      rescue IOException => e
      end
    end
    
    typesig { [ImageLoaderListener] }
    # Adds the listener to the collection of listeners who will be
    # notified when image data is either partially or completely loaded.
    # <p>
    # An ImageLoaderListener should be added before invoking
    # one of the receiver's load methods. The listener's
    # <code>imageDataLoaded</code> method is called when image
    # data has been partially loaded, as is supported by interlaced
    # GIF/PNG or progressive JPEG images.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @see ImageLoaderListener
    # @see ImageLoaderEvent
    def add_image_loader_listener(listener)
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@image_loader_listeners).nil?)
        @image_loader_listeners = Vector.new
      end
      @image_loader_listeners.add_element(listener)
    end
    
    typesig { [ImageLoaderListener] }
    # Removes the listener from the collection of listeners who will be
    # notified when image data is either partially or completely loaded.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # 
    # @see #addImageLoaderListener(ImageLoaderListener)
    def remove_image_loader_listener(listener)
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@image_loader_listeners).nil?)
        return
      end
      @image_loader_listeners.remove_element(listener)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver has image loader
    # listeners, and <code>false</code> otherwise.
    # 
    # @return <code>true</code> if there are <code>ImageLoaderListener</code>s, and <code>false</code> otherwise
    # 
    # @see #addImageLoaderListener(ImageLoaderListener)
    # @see #removeImageLoaderListener(ImageLoaderListener)
    def has_listeners
      return !(@image_loader_listeners).nil? && @image_loader_listeners.size > 0
    end
    
    typesig { [ImageLoaderEvent] }
    # Notifies all image loader listeners that an image loader event
    # has occurred. Pass the specified event object to each listener.
    # 
    # @param event the <code>ImageLoaderEvent</code> to send to each <code>ImageLoaderListener</code>
    def notify_listeners(event)
      if (!has_listeners)
        return
      end
      size_ = @image_loader_listeners.size
      i = 0
      while i < size_
        listener = @image_loader_listeners.element_at(i)
        listener.image_data_loaded(event)
        i += 1
      end
    end
    
    private
    alias_method :initialize__image_loader, :initialize
  end
  
end
