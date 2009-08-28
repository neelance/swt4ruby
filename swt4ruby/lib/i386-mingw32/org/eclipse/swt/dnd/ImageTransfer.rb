require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module ImageTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
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
      
      const_set_lazy(:CF_DIB) { "CF_DIB" }
      const_attr_reader  :CF_DIB
      
      # $NON-NLS-1$
      const_set_lazy(:CF_DIBID) { COM::CF_DIB }
      const_attr_reader  :CF_DIBID
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
      img_data = object
      if ((img_data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      image_size = img_data.attr_data.attr_length
      image_height = img_data.attr_height
      bytes_per_line = img_data.attr_bytes_per_line
      bmi_header = BITMAPINFOHEADER.new
      bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
      bmi_header.attr_bi_size_image = image_size
      bmi_header.attr_bi_width = img_data.attr_width
      bmi_header.attr_bi_height = image_height
      bmi_header.attr_bi_planes = 1
      bmi_header.attr_bi_bit_count = RJava.cast_to_short(img_data.attr_depth)
      bmi_header.attr_bi_compression = OS::DIB_RGB_COLORS
      color_size = 0
      if (bmi_header.attr_bi_bit_count <= 8)
        color_size += (1 << bmi_header.attr_bi_bit_count) * 4
      end
      bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + color_size) { 0 }
      OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
      rgbs = img_data.attr_palette.get_rgbs
      if (!(rgbs).nil? && color_size > 0)
        offset = BITMAPINFOHEADER.attr_sizeof
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
      new_ptr = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, BITMAPINFOHEADER.attr_sizeof + color_size + image_size)
      OS._move_memory(new_ptr, bmi, bmi.attr_length)
      # long
      p_bit_dest = new_ptr + BITMAPINFOHEADER.attr_sizeof + color_size
      if (image_height <= 0)
        OS._move_memory(p_bit_dest, img_data.attr_data, image_size)
      else
        offset = 0
        p_bit_dest += bytes_per_line * (image_height - 1)
        scanline = Array.typed(::Java::Byte).new(bytes_per_line) { 0 }
        i = 0
        while i < image_height
          System.arraycopy(img_data.attr_data, offset, scanline, 0, bytes_per_line)
          OS._move_memory(p_bit_dest, scanline, bytes_per_line)
          offset += bytes_per_line
          p_bit_dest -= bytes_per_line
          i += 1
        end
      end
      transfer_data.attr_stgmedium = STGMEDIUM.new
      transfer_data.attr_stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_stgmedium.attr_union_field = new_ptr
      transfer_data.attr_stgmedium.attr_p_unk_for_release = 0
      transfer_data.attr_result = COM::S_OK
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
      if (!is_supported_type(transfer_data) || (transfer_data.attr_p_idata_object).equal?(0))
        return nil
      end
      data_object = IDataObject.new(transfer_data.attr_p_idata_object)
      data_object._add_ref
      formatetc = FORMATETC.new
      formatetc.attr_cf_format = COM::CF_DIB
      formatetc.attr_ptd = 0
      formatetc.attr_dw_aspect = COM::DVASPECT_CONTENT
      formatetc.attr_lindex = -1
      formatetc.attr_tymed = COM::TYMED_HGLOBAL
      stgmedium = STGMEDIUM.new
      stgmedium.attr_tymed = COM::TYMED_HGLOBAL
      transfer_data.attr_result = data_object._get_data(formatetc, stgmedium)
      if (!(transfer_data.attr_result).equal?(COM::S_OK))
        return nil
      end
      # long
      h_mem = stgmedium.attr_union_field
      data_object._release
      begin
        # long
        ptr = OS._global_lock(h_mem)
        if ((ptr).equal?(0))
          return nil
        end
        begin
          bmi_header = BITMAPINFOHEADER.new
          OS._move_memory(bmi_header, ptr, BITMAPINFOHEADER.attr_sizeof)
          # long
          # long
          p_bits = Array.typed(::Java::Int).new(1) { 0 }
          # long
          mem_dib = OS._create_dibsection(0, ptr, OS::DIB_RGB_COLORS, p_bits, 0, 0)
          if ((mem_dib).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          bits = ptr + bmi_header.attr_bi_size
          if (bmi_header.attr_bi_bit_count <= 8)
            bits += (1 << bmi_header.attr_bi_bit_count) * 4
          else
            if ((bmi_header.attr_bi_compression).equal?(OS::BI_BITFIELDS))
              bits += 12
            end
          end
          if (bmi_header.attr_bi_height < 0)
            OS._move_memory(p_bits[0], bits, bmi_header.attr_bi_size_image)
          else
            dib = DIBSECTION.new
            OS._get_object(mem_dib, DIBSECTION.attr_sizeof, dib)
            bi_height = dib.attr_bi_height
            scanline = dib.attr_bi_size_image / bi_height
            # long
            p_dest_bits = p_bits[0]
            # long
            p_source_bits = bits + scanline * (bi_height - 1)
            i = 0
            while i < bi_height
              OS._move_memory(p_dest_bits, p_source_bits, scanline)
              p_dest_bits += scanline
              p_source_bits -= scanline
              i += 1
            end
          end
          image = Image.win32_new(nil, SWT::BITMAP, mem_dib)
          data = image.get_image_data
          OS._delete_object(mem_dib)
          image.dispose
          return data
        ensure
          OS._global_unlock(h_mem)
        end
      ensure
        OS._global_free(h_mem)
      end
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([CF_DIBID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([CF_DIB])
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
