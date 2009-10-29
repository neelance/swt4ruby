require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module TIFFFileFormatImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  # Baseline TIFF decoder revision 6.0
  # Extension T4-encoding CCITT T.4 1D
  class TIFFFileFormat < TIFFFileFormatImports.const_get :FileFormat
    include_class_members TIFFFileFormatImports
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        header = Array.typed(::Java::Byte).new(4) { 0 }
        stream.read(header)
        stream.unread(header)
        if (!(header[0]).equal?(header[1]))
          return false
        end
        if (!((header[0]).equal?(0x49) && (header[2]).equal?(42) && (header[3]).equal?(0)) && !((header[0]).equal?(0x4d) && (header[2]).equal?(0) && (header[3]).equal?(42)))
          return false
        end
        return true
      rescue JavaException => e
        return false
      end
    end
    
    typesig { [] }
    def load_from_byte_stream
      header = Array.typed(::Java::Byte).new(8) { 0 }
      is_little_endian = false
      images = Array.typed(ImageData).new(0) { nil }
      file = TIFFRandomFileAccess.new(self.attr_input_stream)
      begin
        file.read(header)
        if (!(header[0]).equal?(header[1]))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        if (!((header[0]).equal?(0x49) && (header[2]).equal?(42) && (header[3]).equal?(0)) && !((header[0]).equal?(0x4d) && (header[2]).equal?(0) && (header[3]).equal?(42)))
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        is_little_endian = (header[0]).equal?(0x49)
        offset = is_little_endian ? (header[4] & 0xff) | ((header[5] & 0xff) << 8) | ((header[6] & 0xff) << 16) | ((header[7] & 0xff) << 24) : (header[7] & 0xff) | ((header[6] & 0xff) << 8) | ((header[5] & 0xff) << 16) | ((header[4] & 0xff) << 24)
        file.seek(offset)
        directory = TIFFDirectory.new(file, is_little_endian, self.attr_loader)
        image = directory.read
        # A baseline reader is only expected to read the first directory
        images = Array.typed(ImageData).new([image])
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      return images
    end
    
    typesig { [ImageLoader] }
    def unload_into_byte_stream(loader)
      # We do not currently support writing multi-page tiff,
      # so we use the first image data in the loader's array.
      image = loader.attr_data[0]
      directory = TIFFDirectory.new(image)
      begin
        directory.write_to_stream(self.attr_output_stream)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__tifffile_format, :initialize
  end
  
end
