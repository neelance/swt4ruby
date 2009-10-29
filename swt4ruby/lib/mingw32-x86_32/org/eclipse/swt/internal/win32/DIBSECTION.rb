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
  module DIBSECTIONImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DIBSECTION < DIBSECTIONImports.const_get :BITMAP
    include_class_members DIBSECTIONImports
    
    # @field accessor=dsBmih.biSize
    attr_accessor :bi_size
    alias_method :attr_bi_size, :bi_size
    undef_method :bi_size
    alias_method :attr_bi_size=, :bi_size=
    undef_method :bi_size=
    
    # @field accessor=dsBmih.biWidth
    attr_accessor :bi_width
    alias_method :attr_bi_width, :bi_width
    undef_method :bi_width
    alias_method :attr_bi_width=, :bi_width=
    undef_method :bi_width=
    
    # @field accessor=dsBmih.biHeight
    attr_accessor :bi_height
    alias_method :attr_bi_height, :bi_height
    undef_method :bi_height
    alias_method :attr_bi_height=, :bi_height=
    undef_method :bi_height=
    
    # @field accessor=dsBmih.biPlanes
    attr_accessor :bi_planes
    alias_method :attr_bi_planes, :bi_planes
    undef_method :bi_planes
    alias_method :attr_bi_planes=, :bi_planes=
    undef_method :bi_planes=
    
    # @field accessor=dsBmih.biBitCount
    attr_accessor :bi_bit_count
    alias_method :attr_bi_bit_count, :bi_bit_count
    undef_method :bi_bit_count
    alias_method :attr_bi_bit_count=, :bi_bit_count=
    undef_method :bi_bit_count=
    
    # @field accessor=dsBmih.biCompression
    attr_accessor :bi_compression
    alias_method :attr_bi_compression, :bi_compression
    undef_method :bi_compression
    alias_method :attr_bi_compression=, :bi_compression=
    undef_method :bi_compression=
    
    # @field accessor=dsBmih.biSizeImage
    attr_accessor :bi_size_image
    alias_method :attr_bi_size_image, :bi_size_image
    undef_method :bi_size_image
    alias_method :attr_bi_size_image=, :bi_size_image=
    undef_method :bi_size_image=
    
    # @field accessor=dsBmih.biXPelsPerMeter
    attr_accessor :bi_xpels_per_meter
    alias_method :attr_bi_xpels_per_meter, :bi_xpels_per_meter
    undef_method :bi_xpels_per_meter
    alias_method :attr_bi_xpels_per_meter=, :bi_xpels_per_meter=
    undef_method :bi_xpels_per_meter=
    
    # @field accessor=dsBmih.biYPelsPerMeter
    attr_accessor :bi_ypels_per_meter
    alias_method :attr_bi_ypels_per_meter, :bi_ypels_per_meter
    undef_method :bi_ypels_per_meter
    alias_method :attr_bi_ypels_per_meter=, :bi_ypels_per_meter=
    undef_method :bi_ypels_per_meter=
    
    # @field accessor=dsBmih.biClrUsed
    attr_accessor :bi_clr_used
    alias_method :attr_bi_clr_used, :bi_clr_used
    undef_method :bi_clr_used
    alias_method :attr_bi_clr_used=, :bi_clr_used=
    undef_method :bi_clr_used=
    
    # @field accessor=dsBmih.biClrImportant
    attr_accessor :bi_clr_important
    alias_method :attr_bi_clr_important, :bi_clr_important
    undef_method :bi_clr_important
    alias_method :attr_bi_clr_important=, :bi_clr_important=
    undef_method :bi_clr_important=
    
    # @field accessor=dsBitfields[0]
    attr_accessor :ds_bitfields0
    alias_method :attr_ds_bitfields0, :ds_bitfields0
    undef_method :ds_bitfields0
    alias_method :attr_ds_bitfields0=, :ds_bitfields0=
    undef_method :ds_bitfields0=
    
    # @field accessor=dsBitfields[1]
    attr_accessor :ds_bitfields1
    alias_method :attr_ds_bitfields1, :ds_bitfields1
    undef_method :ds_bitfields1
    alias_method :attr_ds_bitfields1=, :ds_bitfields1=
    undef_method :ds_bitfields1=
    
    # @field accessor=dsBitfields[2]
    attr_accessor :ds_bitfields2
    alias_method :attr_ds_bitfields2, :ds_bitfields2
    undef_method :ds_bitfields2
    alias_method :attr_ds_bitfields2=, :ds_bitfields2=
    undef_method :ds_bitfields2=
    
    # @field cast=(HANDLE)
    # long
    attr_accessor :dsh_section
    alias_method :attr_dsh_section, :dsh_section
    undef_method :dsh_section
    alias_method :attr_dsh_section=, :dsh_section=
    undef_method :dsh_section=
    
    attr_accessor :ds_offset
    alias_method :attr_ds_offset, :ds_offset
    undef_method :ds_offset
    alias_method :attr_ds_offset=, :ds_offset=
    undef_method :ds_offset=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._dibsection_sizeof }
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
      @ds_bitfields0 = 0
      @ds_bitfields1 = 0
      @ds_bitfields2 = 0
      @dsh_section = 0
      @ds_offset = 0
      super()
    end
    
    private
    alias_method :initialize__dibsection, :initialize
  end
  
end
