require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module BITMAPImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class BITMAP 
    include_class_members BITMAPImports
    
    attr_accessor :bm_type
    alias_method :attr_bm_type, :bm_type
    undef_method :bm_type
    alias_method :attr_bm_type=, :bm_type=
    undef_method :bm_type=
    
    attr_accessor :bm_width
    alias_method :attr_bm_width, :bm_width
    undef_method :bm_width
    alias_method :attr_bm_width=, :bm_width=
    undef_method :bm_width=
    
    attr_accessor :bm_height
    alias_method :attr_bm_height, :bm_height
    undef_method :bm_height
    alias_method :attr_bm_height=, :bm_height=
    undef_method :bm_height=
    
    attr_accessor :bm_width_bytes
    alias_method :attr_bm_width_bytes, :bm_width_bytes
    undef_method :bm_width_bytes
    alias_method :attr_bm_width_bytes=, :bm_width_bytes=
    undef_method :bm_width_bytes=
    
    attr_accessor :bm_planes
    alias_method :attr_bm_planes, :bm_planes
    undef_method :bm_planes
    alias_method :attr_bm_planes=, :bm_planes=
    undef_method :bm_planes=
    
    attr_accessor :bm_bits_pixel
    alias_method :attr_bm_bits_pixel, :bm_bits_pixel
    undef_method :bm_bits_pixel
    alias_method :attr_bm_bits_pixel=, :bm_bits_pixel=
    undef_method :bm_bits_pixel=
    
    # @field cast=(LPVOID)
    # long
    attr_accessor :bm_bits
    alias_method :attr_bm_bits, :bm_bits
    undef_method :bm_bits
    alias_method :attr_bm_bits=, :bm_bits=
    undef_method :bm_bits=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._bitmap_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @bm_type = 0
      @bm_width = 0
      @bm_height = 0
      @bm_width_bytes = 0
      @bm_planes = 0
      @bm_bits_pixel = 0
      @bm_bits = 0
    end
    
    private
    alias_method :initialize__bitmap, :initialize
  end
  
end
