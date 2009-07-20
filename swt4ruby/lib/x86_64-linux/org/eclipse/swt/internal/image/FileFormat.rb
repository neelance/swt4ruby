require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module FileFormatImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Abstract factory class for loading/unloading images from files or streams
  # in various image file formats.
  class FileFormat 
    include_class_members FileFormatImports
    
    class_module.module_eval {
      const_set_lazy(:FORMAT_PACKAGE) { "org.eclipse.swt.internal.image" }
      const_attr_reader  :FORMAT_PACKAGE
      
      # $NON-NLS-1$
      const_set_lazy(:FORMAT_SUFFIX) { "FileFormat" }
      const_attr_reader  :FORMAT_SUFFIX
      
      # $NON-NLS-1$
      const_set_lazy(:FORMATS) { Array.typed(String).new(["WinBMP", "WinBMP", "GIF", "WinICO", "JPEG", "PNG", "TIFF", "OS2BMP"]) }
      const_attr_reader  :FORMATS
    }
    
    # $NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$//$NON-NLS-5$ //$NON-NLS-6$//$NON-NLS-7$//$NON-NLS-8$
    attr_accessor :input_stream
    alias_method :attr_input_stream, :input_stream
    undef_method :input_stream
    alias_method :attr_input_stream=, :input_stream=
    undef_method :input_stream=
    
    attr_accessor :output_stream
    alias_method :attr_output_stream, :output_stream
    undef_method :output_stream
    alias_method :attr_output_stream=, :output_stream=
    undef_method :output_stream=
    
    attr_accessor :loader
    alias_method :attr_loader, :loader
    undef_method :loader
    alias_method :attr_loader=, :loader=
    undef_method :loader=
    
    attr_accessor :compression
    alias_method :attr_compression, :compression
    undef_method :compression
    alias_method :attr_compression=, :compression=
    undef_method :compression=
    
    typesig { [LEDataInputStream] }
    # Return whether or not the specified input stream
    # represents a supported file format.
    def is_file_format(stream)
      raise NotImplementedError
    end
    
    typesig { [] }
    def load_from_byte_stream
      raise NotImplementedError
    end
    
    typesig { [LEDataInputStream] }
    # Read the specified input stream, and return the
    # device independent image array represented by the stream.
    def load_from_stream(stream)
      begin
        @input_stream = stream
        return load_from_byte_stream
      rescue Exception => e
        if (e.is_a?(IOException))
          SWT.error(SWT::ERROR_IO, e)
        else
          SWT.error(SWT::ERROR_INVALID_IMAGE, e)
        end
        return nil
      end
    end
    
    class_module.module_eval {
      typesig { [InputStream, ImageLoader] }
      # Read the specified input stream using the specified loader, and
      # return the device independent image array represented by the stream.
      def load(is, loader)
        file_format = nil
        stream = LEDataInputStream.new(is)
        is_supported = false
        i = 1
        while i < FORMATS.attr_length
          if (!(FORMATS[i]).nil?)
            begin
              clazz = Class.for_name(FORMAT_PACKAGE + (Character.new(?..ord)).to_s + (FORMATS[i]).to_s + FORMAT_SUFFIX)
              file_format = clazz.new_instance
              if (file_format.is_file_format(stream))
                is_supported = true
                break
              end
            rescue ClassNotFoundException => e
              FORMATS[i] = nil
            rescue Exception => e
            end
          end
          ((i += 1) - 1)
        end
        if (!is_supported)
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        file_format.attr_loader = loader
        return file_format.load_from_stream(stream)
      end
      
      typesig { [OutputStream, ::Java::Int, ImageLoader] }
      # Write the device independent image array stored in the specified loader
      # to the specified output stream using the specified file format.
      def save(os, format, loader)
        if (format < 0 || format >= FORMATS.attr_length)
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        if ((FORMATS[format]).nil?)
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        if ((loader.attr_data).nil? || loader.attr_data.attr_length < 1)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        stream = LEDataOutputStream.new(os)
        file_format = nil
        begin
          clazz = Class.for_name(FORMAT_PACKAGE + (Character.new(?..ord)).to_s + (FORMATS[format]).to_s + FORMAT_SUFFIX)
          file_format = clazz.new_instance
        rescue Exception => e
          SWT.error(SWT::ERROR_UNSUPPORTED_FORMAT)
        end
        if ((format).equal?(SWT::IMAGE_BMP_RLE))
          case (loader.attr_data[0].attr_depth)
          when 8
            file_format.attr_compression = 1
          when 4
            file_format.attr_compression = 2
          end
        end
        file_format.unload_into_stream(loader, stream)
      end
    }
    
    typesig { [ImageLoader] }
    def unload_into_byte_stream(loader)
      raise NotImplementedError
    end
    
    typesig { [ImageLoader, LEDataOutputStream] }
    # Write the device independent image array stored in the specified loader
    # to the specified output stream.
    def unload_into_stream(loader, stream)
      begin
        @output_stream = stream
        unload_into_byte_stream(loader)
        @output_stream.flush
      rescue Exception => e
        begin
          @output_stream.flush
        rescue Exception => f
        end
        SWT.error(SWT::ERROR_IO, e)
      end
    end
    
    typesig { [] }
    def initialize
      @input_stream = nil
      @output_stream = nil
      @loader = nil
      @compression = 0
    end
    
    private
    alias_method :initialize__file_format, :initialize
  end
  
end
