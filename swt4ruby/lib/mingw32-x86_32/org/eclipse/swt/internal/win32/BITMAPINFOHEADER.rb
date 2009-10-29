require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module BITMAPINFOHEADERImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class BITMAPINFOHEADER 
    include_class_members BITMAPINFOHEADERImports
    
    attr_accessor :bi_size
    alias_method :attr_bi_size, :bi_size
    undef_method :bi_size
    alias_method :attr_bi_size=, :bi_size=
    undef_method :bi_size=
    
    attr_accessor :bi_width
    alias_method :attr_bi_width, :bi_width
    undef_method :bi_width
    alias_method :attr_bi_width=, :bi_width=
    undef_method :bi_width=
    
    attr_accessor :bi_height
    alias_method :attr_bi_height, :bi_height
    undef_method :bi_height
    alias_method :attr_bi_height=, :bi_height=
    undef_method :bi_height=
    
    attr_accessor :bi_planes
    alias_method :attr_bi_planes, :bi_planes
    undef_method :bi_planes
    alias_method :attr_bi_planes=, :bi_planes=
    undef_method :bi_planes=
    
    attr_accessor :bi_bit_count
    alias_method :attr_bi_bit_count, :bi_bit_count
    undef_method :bi_bit_count
    alias_method :attr_bi_bit_count=, :bi_bit_count=
    undef_method :bi_bit_count=
    
    attr_accessor :bi_compression
    alias_method :attr_bi_compression, :bi_compression
    undef_method :bi_compression
    alias_method :attr_bi_compression=, :bi_compression=
    undef_method :bi_compression=
    
    attr_accessor :bi_size_image
    alias_method :attr_bi_size_image, :bi_size_image
    undef_method :bi_size_image
    alias_method :attr_bi_size_image=, :bi_size_image=
    undef_method :bi_size_image=
    
    attr_accessor :bi_xpels_per_meter
    alias_method :attr_bi_xpels_per_meter, :bi_xpels_per_meter
    undef_method :bi_xpels_per_meter
    alias_method :attr_bi_xpels_per_meter=, :bi_xpels_per_meter=
    undef_method :bi_xpels_per_meter=
    
    attr_accessor :bi_ypels_per_meter
    alias_method :attr_bi_ypels_per_meter, :bi_ypels_per_meter
    undef_method :bi_ypels_per_meter
    alias_method :attr_bi_ypels_per_meter=, :bi_ypels_per_meter=
    undef_method :bi_ypels_per_meter=
    
    attr_accessor :bi_clr_used
    alias_method :attr_bi_clr_used, :bi_clr_used
    undef_method :bi_clr_used
    alias_method :attr_bi_clr_used=, :bi_clr_used=
    undef_method :bi_clr_used=
    
    attr_accessor :bi_clr_important
    alias_method :attr_bi_clr_important, :bi_clr_important
    undef_method :bi_clr_important
    alias_method :attr_bi_clr_important=, :bi_clr_important=
    undef_method :bi_clr_important=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._bitmapinfoheader_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @bi_size = 0
      @bi_width = 0
      @bi_height = 0
      @bi_planes = 0
      @bi_bit_count = 0
      @bi_compression = 0
      @bi_size_image = 0
      @bi_xpels_per_meter = 0
      @bi_ypels_per_meter = 0
      @bi_clr_used = 0
      @bi_clr_important = 0
    end
    
    private
    alias_method :initialize__bitmapinfoheader, :initialize
  end
  
end
