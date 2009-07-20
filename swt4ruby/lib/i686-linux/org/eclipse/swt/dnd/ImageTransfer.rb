require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module ImageTransferImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :Converter
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # The class <code>ImageTransfer</code> provides a platform specific mechanism
  # for converting an Image represented as a java <code>ImageData</code> to a
  # platform specific representation of the data and vice versa.
  # 
  # <p>An example of a java <code>ImageData</code> is shown below:</p>
  # 
  # <code><pre>
  # Image image = new Image(display, "C:\temp\img1.gif");
  # ImageData imgData = image.getImageData();
  # </code></pre>
  # 
  # @see Transfer
  # 
  # @since 3.4
  class ImageTransfer < ImageTransferImports.const_get :ByteArrayTransfer
    include_class_members ImageTransferImports
    
    class_module.module_eval {
      
      def _instance
        defined?(@@_instance) ? @@_instance : @@_instance= ImageTransfer.new
      end
      alias_method :attr__instance, :_instance
      
      def _instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :_instance=
      
      const_set_lazy(:JPEG) { "image/jpge" }
      const_attr_reader  :JPEG
      
      # $NON-NLS-1$
      const_set_lazy(:JPEG_ID) { register_type(JPEG) }
      const_attr_reader  :JPEG_ID
      
      const_set_lazy(:PNG) { "image/png" }
      const_attr_reader  :PNG
      
      # $NON-NLS-1$
      const_set_lazy(:PNG_ID) { register_type(PNG) }
      const_attr_reader  :PNG_ID
      
      const_set_lazy(:BMP) { "image/bmp" }
      const_attr_reader  :BMP
      
      # $NON-NLS-1$
      const_set_lazy(:BMP_ID) { register_type(BMP) }
      const_attr_reader  :BMP_ID
      
      const_set_lazy(:EPS) { "image/eps" }
      const_attr_reader  :EPS
      
      # $NON-NLS-1$
      const_set_lazy(:EPS_ID) { register_type(EPS) }
      const_attr_reader  :EPS_ID
      
      const_set_lazy(:PCX) { "image/pcx" }
      const_attr_reader  :PCX
      
      # $NON-NLS-1$
      const_set_lazy(:PCX_ID) { register_type(PCX) }
      const_attr_reader  :PCX_ID
      
      const_set_lazy(:PPM) { "image/ppm" }
      const_attr_reader  :PPM
      
      # $NON-NLS-1$
      const_set_lazy(:PPM_ID) { register_type(PPM) }
      const_attr_reader  :PPM_ID
      
      const_set_lazy(:RGB) { "image/ppm" }
      const_attr_reader  :RGB
      
      # $NON-NLS-1$
      const_set_lazy(:RGB_ID) { register_type(RGB) }
      const_attr_reader  :RGB_ID
      
      const_set_lazy(:TGA) { "image/tga" }
      const_attr_reader  :TGA
      
      # $NON-NLS-1$
      const_set_lazy(:TGA_ID) { register_type(TGA) }
      const_attr_reader  :TGA_ID
      
      const_set_lazy(:XBM) { "image/xbm" }
      const_attr_reader  :XBM
      
      # $NON-NLS-1$
      const_set_lazy(:XBM_ID) { register_type(XBM) }
      const_attr_reader  :XBM_ID
      
      const_set_lazy(:XPM) { "image/xpm" }
      const_attr_reader  :XPM
      
      # $NON-NLS-1$
      const_set_lazy(:XPM_ID) { register_type(XPM) }
      const_attr_reader  :XPM_ID
      
      const_set_lazy(:XV) { "image/xv" }
      const_attr_reader  :XV
      
      # $NON-NLS-1$
      const_set_lazy(:XV_ID) { register_type(XV) }
      const_attr_reader  :XV_ID
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    class_module.module_eval {
      typesig { [] }
      # Returns the singleton instance of the ImageTransfer class.
      # 
      # @return the singleton instance of the ImageTransfer class
      def get_instance
        return self.attr__instance
      end
    }
    
    typesig { [Object, TransferData] }
    # This implementation of <code>javaToNative</code> converts an ImageData object represented
    # by java <code>ImageData</code> to a platform specific representation.
    # 
    # @param object a java <code>ImageData</code> containing the ImageData to be converted
    # @param transferData an empty <code>TransferData</code> object that will
    # be filled in on return with the platform specific format of the data
    # 
    # @see Transfer#nativeToJava
    def java_to_native(object, transfer_data)
      if (!check_image(object) || !is_supported_type(transfer_data))
        DND.error(DND::ERROR_INVALID_DATA)
      end
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        return
      end
      img_data = object
      if ((img_data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      image = Image.new(Display.get_current, img_data)
      # long
      pixmap = image.attr_pixmap
      width = img_data.attr_width
      height = img_data.attr_height
      # long
      pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, width, height)
      if ((pixbuf).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # long
      colormap = OS.gdk_colormap_get_system
      OS.gdk_pixbuf_get_from_drawable(pixbuf, pixmap, colormap, 0, 0, 0, 0, width, height)
      type_str = ""
      if ((transfer_data.attr_type).equal?(JPEG_ID))
        type_str = "jpeg"
      end
      if ((transfer_data.attr_type).equal?(PNG_ID))
        type_str = "png"
      end
      if ((transfer_data.attr_type).equal?(BMP_ID))
        type_str = "bmp"
      end
      if ((transfer_data.attr_type).equal?(EPS_ID))
        type_str = "eps"
      end
      if ((transfer_data.attr_type).equal?(PCX_ID))
        type_str = "pcx"
      end
      if ((transfer_data.attr_type).equal?(PPM_ID))
        type_str = "ppm"
      end
      if ((transfer_data.attr_type).equal?(RGB_ID))
        type_str = "rgb"
      end
      if ((transfer_data.attr_type).equal?(TGA_ID))
        type_str = "tga"
      end
      if ((transfer_data.attr_type).equal?(XBM_ID))
        type_str = "xbm"
      end
      if ((transfer_data.attr_type).equal?(XPM_ID))
        type_str = "xpm"
      end
      if ((transfer_data.attr_type).equal?(XV_ID))
        type_str = "xv"
      end
      type = Converter.wcs_to_mbcs(nil, type_str, true)
      # long
      # long
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      len = Array.typed(::Java::Int).new(1) { 0 }
      if ((type).nil?)
        return
      end
      OS.gdk_pixbuf_save_to_buffer(pixbuf, buffer, len, type, nil, nil)
      OS.g_object_unref(pixbuf)
      image.dispose
      transfer_data.attr_p_value = buffer[0]
      transfer_data.attr_length = (len[0] + 3) / 4 * 4
      transfer_data.attr_result = 1
      transfer_data.attr_format = 32
    end
    
    typesig { [TransferData] }
    # This implementation of <code>nativeToJava</code> converts a platform specific
    # representation of an image to java <code>ImageData</code>.
    # 
    # @param transferData the platform specific representation of the data to be converted
    # @return a java <code>ImageData</code> of the image if the conversion was successful;
    # otherwise null
    # 
    # @see Transfer#javaToNative
    def native_to_java(transfer_data)
      img_data = nil
      if (transfer_data.attr_length > 0)
        # long
        loader = OS.gdk_pixbuf_loader_new
        OS.gdk_pixbuf_loader_write(loader, transfer_data.attr_p_value, transfer_data.attr_length, nil)
        OS.gdk_pixbuf_loader_close(loader, nil)
        # long
        pixbuf = OS.gdk_pixbuf_loader_get_pixbuf(loader)
        if (!(pixbuf).equal?(0))
          OS.g_object_ref(pixbuf)
          # long
          # long
          pixmap_return = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, nil, 0)
          # long
          handle = pixmap_return[0]
          if ((handle).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.g_object_unref(loader)
          img = Image.gtk_new(Display.get_current, SWT::BITMAP, handle, 0)
          img_data = img.get_image_data
          img.dispose
        end
      end
      return img_data
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([JPEG_ID, PNG_ID, BMP_ID, EPS_ID, PCX_ID, PPM_ID, RGB_ID, TGA_ID, XBM_ID, XPM_ID, XV_ID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([JPEG, PNG, BMP, EPS, PCX, PPM, RGB, TGA, XBM, XPM, XV])
    end
    
    typesig { [Object] }
    def check_image(object)
      if ((object).nil? || !(object.is_a?(ImageData)))
        return false
      end
      return true
    end
    
    typesig { [Object] }
    def validate(object)
      return check_image(object)
    end
    
    private
    alias_method :initialize__image_transfer, :initialize
  end
  
end
