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
  module ImageLoaderEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventObject
    }
  end
  
  # Instances of this class are sent as a result of the incremental
  # loading of image data.
  # <p>
  # <b>Notes:</b>
  # </p><ul>
  # <li>The number of events which will be sent when loading images
  # is not constant. It varies by image type, and for JPEG images it
  # varies from image to image.</li>
  # <li>For image sources which contain multiple images, the
  # <code>endOfImage</code> flag in the event will be set to true
  # after each individual image is loaded.</li>
  # </ul>
  # 
  # @see ImageLoader
  # @see ImageLoaderListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ImageLoaderEvent < ImageLoaderEventImports.const_get :SWTEventObject
    include_class_members ImageLoaderEventImports
    
    # if the <code>endOfImage</code> flag is false, then this is a
    # partially complete copy of the current <code>ImageData</code>,
    # otherwise this is a completely loaded <code>ImageData</code>
    attr_accessor :image_data
    alias_method :attr_image_data, :image_data
    undef_method :image_data
    alias_method :attr_image_data=, :image_data=
    undef_method :image_data=
    
    # the zero-based count of image data increments -- this is
    # equivalent to the number of events that have been generated
    # while loading a particular image
    attr_accessor :increment_count
    alias_method :attr_increment_count, :increment_count
    undef_method :increment_count
    alias_method :attr_increment_count=, :increment_count=
    undef_method :increment_count=
    
    # If this flag is true, then the current image data has been
    # completely loaded, otherwise the image data is only partially
    # loaded, and further ImageLoader events will occur unless an
    # exception is thrown
    attr_accessor :end_of_image
    alias_method :attr_end_of_image, :end_of_image
    undef_method :end_of_image
    alias_method :attr_end_of_image=, :end_of_image=
    undef_method :end_of_image=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257284738325558065 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [ImageLoader, ImageData, ::Java::Int, ::Java::Boolean] }
    # Constructs a new instance of this class given the event source and
    # the values to store in its fields.
    # 
    # @param source the ImageLoader that was loading when the event occurred
    # @param imageData the image data for the event
    # @param incrementCount the image data increment for the event
    # @param endOfImage the end of image flag for the event
    def initialize(source, image_data, increment_count, end_of_image)
      @image_data = nil
      @increment_count = 0
      @end_of_image = false
      super(source)
      @image_data = image_data
      @increment_count = increment_count
      @end_of_image = end_of_image
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      return "ImageLoaderEvent {source=" + RJava.cast_to_string(self.attr_source) + " imageData=" + RJava.cast_to_string(@image_data) + " incrementCount=" + RJava.cast_to_string(@increment_count) + " endOfImage=" + RJava.cast_to_string(@end_of_image) + "}" # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$ //$NON-NLS-5$
    end
    
    private
    alias_method :initialize__image_loader_event, :initialize
  end
  
end
