require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module DEVMODEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DEVMODE 
    include_class_members DEVMODEImports
    
    attr_accessor :dm_spec_version
    alias_method :attr_dm_spec_version, :dm_spec_version
    undef_method :dm_spec_version
    alias_method :attr_dm_spec_version=, :dm_spec_version=
    undef_method :dm_spec_version=
    
    attr_accessor :dm_driver_version
    alias_method :attr_dm_driver_version, :dm_driver_version
    undef_method :dm_driver_version
    alias_method :attr_dm_driver_version=, :dm_driver_version=
    undef_method :dm_driver_version=
    
    attr_accessor :dm_size
    alias_method :attr_dm_size, :dm_size
    undef_method :dm_size
    alias_method :attr_dm_size=, :dm_size=
    undef_method :dm_size=
    
    attr_accessor :dm_driver_extra
    alias_method :attr_dm_driver_extra, :dm_driver_extra
    undef_method :dm_driver_extra
    alias_method :attr_dm_driver_extra=, :dm_driver_extra=
    undef_method :dm_driver_extra=
    
    attr_accessor :dm_fields
    alias_method :attr_dm_fields, :dm_fields
    undef_method :dm_fields
    alias_method :attr_dm_fields=, :dm_fields=
    undef_method :dm_fields=
    
    attr_accessor :dm_orientation
    alias_method :attr_dm_orientation, :dm_orientation
    undef_method :dm_orientation
    alias_method :attr_dm_orientation=, :dm_orientation=
    undef_method :dm_orientation=
    
    attr_accessor :dm_paper_size
    alias_method :attr_dm_paper_size, :dm_paper_size
    undef_method :dm_paper_size
    alias_method :attr_dm_paper_size=, :dm_paper_size=
    undef_method :dm_paper_size=
    
    attr_accessor :dm_paper_length
    alias_method :attr_dm_paper_length, :dm_paper_length
    undef_method :dm_paper_length
    alias_method :attr_dm_paper_length=, :dm_paper_length=
    undef_method :dm_paper_length=
    
    attr_accessor :dm_paper_width
    alias_method :attr_dm_paper_width, :dm_paper_width
    undef_method :dm_paper_width
    alias_method :attr_dm_paper_width=, :dm_paper_width=
    undef_method :dm_paper_width=
    
    attr_accessor :dm_scale
    alias_method :attr_dm_scale, :dm_scale
    undef_method :dm_scale
    alias_method :attr_dm_scale=, :dm_scale=
    undef_method :dm_scale=
    
    attr_accessor :dm_copies
    alias_method :attr_dm_copies, :dm_copies
    undef_method :dm_copies
    alias_method :attr_dm_copies=, :dm_copies=
    undef_method :dm_copies=
    
    attr_accessor :dm_default_source
    alias_method :attr_dm_default_source, :dm_default_source
    undef_method :dm_default_source
    alias_method :attr_dm_default_source=, :dm_default_source=
    undef_method :dm_default_source=
    
    attr_accessor :dm_print_quality
    alias_method :attr_dm_print_quality, :dm_print_quality
    undef_method :dm_print_quality
    alias_method :attr_dm_print_quality=, :dm_print_quality=
    undef_method :dm_print_quality=
    
    attr_accessor :dm_color
    alias_method :attr_dm_color, :dm_color
    undef_method :dm_color
    alias_method :attr_dm_color=, :dm_color=
    undef_method :dm_color=
    
    attr_accessor :dm_duplex
    alias_method :attr_dm_duplex, :dm_duplex
    undef_method :dm_duplex
    alias_method :attr_dm_duplex=, :dm_duplex=
    undef_method :dm_duplex=
    
    attr_accessor :dm_yresolution
    alias_method :attr_dm_yresolution, :dm_yresolution
    undef_method :dm_yresolution
    alias_method :attr_dm_yresolution=, :dm_yresolution=
    undef_method :dm_yresolution=
    
    attr_accessor :dm_ttoption
    alias_method :attr_dm_ttoption, :dm_ttoption
    undef_method :dm_ttoption
    alias_method :attr_dm_ttoption=, :dm_ttoption=
    undef_method :dm_ttoption=
    
    attr_accessor :dm_collate
    alias_method :attr_dm_collate, :dm_collate
    undef_method :dm_collate
    alias_method :attr_dm_collate=, :dm_collate=
    undef_method :dm_collate=
    
    attr_accessor :dm_log_pixels
    alias_method :attr_dm_log_pixels, :dm_log_pixels
    undef_method :dm_log_pixels
    alias_method :attr_dm_log_pixels=, :dm_log_pixels=
    undef_method :dm_log_pixels=
    
    attr_accessor :dm_bits_per_pel
    alias_method :attr_dm_bits_per_pel, :dm_bits_per_pel
    undef_method :dm_bits_per_pel
    alias_method :attr_dm_bits_per_pel=, :dm_bits_per_pel=
    undef_method :dm_bits_per_pel=
    
    attr_accessor :dm_pels_width
    alias_method :attr_dm_pels_width, :dm_pels_width
    undef_method :dm_pels_width
    alias_method :attr_dm_pels_width=, :dm_pels_width=
    undef_method :dm_pels_width=
    
    attr_accessor :dm_pels_height
    alias_method :attr_dm_pels_height, :dm_pels_height
    undef_method :dm_pels_height
    alias_method :attr_dm_pels_height=, :dm_pels_height=
    undef_method :dm_pels_height=
    
    attr_accessor :dm_nup
    alias_method :attr_dm_nup, :dm_nup
    undef_method :dm_nup
    alias_method :attr_dm_nup=, :dm_nup=
    undef_method :dm_nup=
    
    attr_accessor :dm_display_frequency
    alias_method :attr_dm_display_frequency, :dm_display_frequency
    undef_method :dm_display_frequency
    alias_method :attr_dm_display_frequency=, :dm_display_frequency=
    undef_method :dm_display_frequency=
    
    attr_accessor :dm_icmmethod
    alias_method :attr_dm_icmmethod, :dm_icmmethod
    undef_method :dm_icmmethod
    alias_method :attr_dm_icmmethod=, :dm_icmmethod=
    undef_method :dm_icmmethod=
    
    attr_accessor :dm_icmintent
    alias_method :attr_dm_icmintent, :dm_icmintent
    undef_method :dm_icmintent
    alias_method :attr_dm_icmintent=, :dm_icmintent=
    undef_method :dm_icmintent=
    
    attr_accessor :dm_media_type
    alias_method :attr_dm_media_type, :dm_media_type
    undef_method :dm_media_type
    alias_method :attr_dm_media_type=, :dm_media_type=
    undef_method :dm_media_type=
    
    attr_accessor :dm_dither_type
    alias_method :attr_dm_dither_type, :dm_dither_type
    undef_method :dm_dither_type
    alias_method :attr_dm_dither_type=, :dm_dither_type=
    undef_method :dm_dither_type=
    
    attr_accessor :dm_reserved1
    alias_method :attr_dm_reserved1, :dm_reserved1
    undef_method :dm_reserved1
    alias_method :attr_dm_reserved1=, :dm_reserved1=
    undef_method :dm_reserved1=
    
    attr_accessor :dm_reserved2
    alias_method :attr_dm_reserved2, :dm_reserved2
    undef_method :dm_reserved2
    alias_method :attr_dm_reserved2=, :dm_reserved2=
    undef_method :dm_reserved2=
    
    attr_accessor :dm_panning_width
    alias_method :attr_dm_panning_width, :dm_panning_width
    undef_method :dm_panning_width
    alias_method :attr_dm_panning_width=, :dm_panning_width=
    undef_method :dm_panning_width=
    
    attr_accessor :dm_panning_height
    alias_method :attr_dm_panning_height, :dm_panning_height
    undef_method :dm_panning_height
    alias_method :attr_dm_panning_height=, :dm_panning_height=
    undef_method :dm_panning_height=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? OS._devmodew_sizeof : OS._devmodea_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dm_spec_version = 0
      @dm_driver_version = 0
      @dm_size = 0
      @dm_driver_extra = 0
      @dm_fields = 0
      @dm_orientation = 0
      @dm_paper_size = 0
      @dm_paper_length = 0
      @dm_paper_width = 0
      @dm_scale = 0
      @dm_copies = 0
      @dm_default_source = 0
      @dm_print_quality = 0
      @dm_color = 0
      @dm_duplex = 0
      @dm_yresolution = 0
      @dm_ttoption = 0
      @dm_collate = 0
      @dm_log_pixels = 0
      @dm_bits_per_pel = 0
      @dm_pels_width = 0
      @dm_pels_height = 0
      @dm_nup = 0
      @dm_display_frequency = 0
      @dm_icmmethod = 0
      @dm_icmintent = 0
      @dm_media_type = 0
      @dm_dither_type = 0
      @dm_reserved1 = 0
      @dm_reserved2 = 0
      @dm_panning_width = 0
      @dm_panning_height = 0
    end
    
    private
    alias_method :initialize__devmode, :initialize
  end
  
end
