require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gdip
  module BitmapDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gdip
    }
  end
  
  class BitmapData 
    include_class_members BitmapDataImports
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :stride
    alias_method :attr_stride, :stride
    undef_method :stride
    alias_method :attr_stride=, :stride=
    undef_method :stride=
    
    attr_accessor :pixel_format
    alias_method :attr_pixel_format, :pixel_format
    undef_method :pixel_format
    alias_method :attr_pixel_format=, :pixel_format=
    undef_method :pixel_format=
    
    # long
    attr_accessor :scan0
    alias_method :attr_scan0, :scan0
    undef_method :scan0
    alias_method :attr_scan0=, :scan0=
    undef_method :scan0=
    
    # long
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    typesig { [] }
    def initialize
      @width = 0
      @height = 0
      @stride = 0
      @pixel_format = 0
      @scan0 = 0
      @reserved = 0
    end
    
    private
    alias_method :initialize__bitmap_data, :initialize
  end
  
end
