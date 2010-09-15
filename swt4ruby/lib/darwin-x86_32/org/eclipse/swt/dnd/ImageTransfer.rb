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
  module ImageTransferImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
      
      def __instance
        defined?(@@_instance) ? @@_instance : @@_instance= ImageTransfer.new
      end
      alias_method :attr__instance, :__instance
      
      def __instance=(value)
        @@_instance = value
      end
      alias_method :attr__instance=, :__instance=
      
      const_set_lazy(:TIFF) { OS::NSTIFFPboardType.get_string }
      const_attr_reader  :TIFF
      
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
      img_data = object
      image = Image.new(Display.get_current, img_data)
      handle = image.attr_handle
      transfer_data.attr_data = handle._tiffrepresentation
      image.dispose
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
      data = transfer_data.attr_data
      if ((data.length).equal?(0))
        return nil
      end
      ns_image = NSImage.new.alloc
      ns_image.init_with_data(data)
      # TODO: Image representation wrong???
      image = Image.cocoa_new(Display.get_current, SWT::BITMAP, ns_image)
      image_data = image.get_image_data
      image.dispose
      return image_data
    end
    
    typesig { [] }
    def get_type_ids
      return Array.typed(::Java::Int).new([TIFFID])
    end
    
    typesig { [] }
    def get_type_names
      return Array.typed(String).new([TIFF])
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
