require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
# Outhink - support for typeFileURL
module Org::Eclipse::Swt::Dnd
  module ImageTransferImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Carbon
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
      
      const_set_lazy(:PICT) { "PICT" }
      const_attr_reader  :PICT
      
      # $NON-NLS-1$
      const_set_lazy(:TIFF) { "TIFF" }
      const_attr_reader  :TIFF
      
      # $NON-NLS-1$
      const_set_lazy(:PICTID) { register_type(PICT) }
      const_attr_reader  :PICTID
      
      const_set_lazy(:TIFFID) { register_type(TIFF) }
      const_attr_reader  :TIFFID
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
      transfer_data.attr_result = -1
      img_data = object
      image = Image.new(Display.get_current, img_data)
      handle = image.attr_handle
      width = OS._cgimage_get_width(handle)
      height = OS._cgimage_get_height(handle)
      alpha_info = OS._cgimage_get_alpha_info(handle)
      bpr = OS._cgimage_get_bytes_per_row(handle)
      rect = Rect.new
      rect.attr_left = 0
      rect.attr_top = 0
      rect.attr_right = RJava.cast_to_short(width)
      rect.attr_bottom = RJava.cast_to_short(height)
      g_world = Array.typed(::Java::Int).new(1) { 0 }
      format = OS.attr_k24rgbpixel_format
      if (!(alpha_info).equal?(OS.attr_k_cgimage_alpha_none_skip_first))
        format = OS.attr_k32argbpixel_format
      end
      OS._new_gworld_from_ptr(g_world, format, rect, 0, 0, 0, image.attr_data, bpr)
      cur_port = Array.typed(::Java::Int).new(1) { 0 }
      cur_gworld = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_gworld(cur_port, cur_gworld)
      OS._set_gworld(g_world[0], cur_gworld[0])
      pict_handle = OS._open_picture(rect)
      port_bit_map = OS._get_port_bit_map_for_copy_bits(g_world[0])
      OS._copy_bits(port_bit_map, port_bit_map, rect, rect, RJava.cast_to_short(OS.attr_src_copy), 0)
      OS._close_picture
      OS._set_gworld(cur_port[0], cur_gworld[0])
      OS._dispose_gworld(g_world[0])
      length = OS._get_handle_size(pict_handle)
      OS._hlock(pict_handle)
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(buffer, pict_handle, 4)
      pict_data = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove(pict_data, buffer[0], length)
      OS._hunlock(pict_handle)
      OS._kill_picture(pict_handle)
      image.dispose
      transfer_data.attr_data = Array.typed(Array.typed(::Java::Byte)).new([pict_data])
      transfer_data.attr_result = OS.attr_no_err
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_data).nil?)
        return nil
      end
      if ((transfer_data.attr_data.attr_length).equal?(0))
        return nil
      end
      data_arr = transfer_data.attr_data[0]
      size = data_arr.attr_length
      pict_ptr = OS._new_ptr(size)
      OS.memmove(pict_ptr, data_arr, size)
      data_provider = OS._cgdata_provider_create_with_data(0, pict_ptr, size, 0)
      if (!(data_provider).equal?(0))
        pict_data_ref = OS._qdpict_create_with_provider(data_provider)
        # get bounds for the image
        rect = CGRect.new
        OS._qdpict_get_bounds(pict_data_ref, rect)
        width = RJava.cast_to_int(rect.attr_width)
        height = RJava.cast_to_int(rect.attr_height)
        # Create the image
        bpr = width * 4
        data_size = height * bpr
        data = OS._new_ptr(data_size)
        if ((data).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        provider = OS._cgdata_provider_create_with_data(0, data, data_size, 0)
        if ((provider).equal?(0))
          OS._dispose_ptr(data)
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        colorspace = OS._cgcolor_space_create_device_rgb
        if ((colorspace).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        handle = OS._cgimage_create(width, height, 8, 32, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first, provider, nil, true, 0)
        OS._cgdata_provider_release(provider)
        if ((handle).equal?(0))
          OS._dispose_ptr(data)
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        bpc = OS._cgimage_get_bits_per_component(handle)
        context = OS._cgbitmap_context_create(data, width, height, bpc, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first)
        if ((context).equal?(0))
          OS._cgimage_release(handle)
          OS._dispose_ptr(data)
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        status = OS._qdpict_draw_to_cgcontext(context, rect, pict_data_ref)
        img_data = nil
        if ((status).equal?(0))
          image = Image.carbon_new(Display.get_current, SWT::BITMAP, handle, data)
          img_data = image.get_image_data
          image.dispose
        end
        OS._cgcontext_release(context)
        OS._qdpict_release(pict_data_ref)
        return img_data
      end
      return nil
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([PICTID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([PICT])
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
