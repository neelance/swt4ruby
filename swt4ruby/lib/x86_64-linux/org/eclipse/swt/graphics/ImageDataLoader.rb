require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module ImageDataLoaderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  # Internal class that separates ImageData from ImageLoader
  # to allow removal of ImageLoader from the toolkit.
  class ImageDataLoader 
    include_class_members ImageDataLoaderImports
    
    class_module.module_eval {
      typesig { [InputStream] }
      def load(stream)
        return ImageLoader.new.load(stream)
      end
      
      typesig { [String] }
      def load(filename)
        return ImageLoader.new.load(filename)
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__image_data_loader, :initialize
  end
  
end
