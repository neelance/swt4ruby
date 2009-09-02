require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module ImageLoaderListenerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with the incremental loading of image data.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to an image loader using the
  # <code>addImageLoaderListener</code> method and removed using
  # the <code>removeImageLoaderListener</code> method. When
  # image data is either partially or completely loaded, this
  # method will be invoked.
  # </p>
  # 
  # @see ImageLoader
  # @see ImageLoaderEvent
  module ImageLoaderListener
    include_class_members ImageLoaderListenerImports
    include SWTEventListener
    
    typesig { [ImageLoaderEvent] }
    # Sent when image data is either partially or completely loaded.
    # <p>
    # The timing of when this method is called varies depending on
    # the format of the image being loaded.
    # </p>
    # 
    # @param e an event containing information about the image loading operation
    def image_data_loaded(e)
      raise NotImplementedError
    end
  end
  
end
