require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module JPEGScanHeaderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  class JPEGScanHeader < JPEGScanHeaderImports.const_get :JPEGVariableSizeSegment
    include_class_members JPEGScanHeaderImports
    
    attr_accessor :component_parameters
    alias_method :attr_component_parameters, :component_parameters
    undef_method :component_parameters
    alias_method :attr_component_parameters=, :component_parameters=
    undef_method :component_parameters=
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      @component_parameters = nil
      super(reference)
    end
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      @component_parameters = nil
      super(byte_stream)
      initialize_component_parameters
    end
    
    typesig { [] }
    def get_approx_bit_position_high
      return self.attr_reference[(2 * get_number_of_image_components) + 7] >> 4
    end
    
    typesig { [] }
    def get_approx_bit_position_low
      return self.attr_reference[(2 * get_number_of_image_components) + 7] & 0xf
    end
    
    typesig { [] }
    def get_end_of_spectral_selection
      return self.attr_reference[(2 * get_number_of_image_components) + 6]
    end
    
    typesig { [] }
    def get_number_of_image_components
      return self.attr_reference[4]
    end
    
    typesig { [] }
    def get_start_of_spectral_selection
      return self.attr_reference[(2 * get_number_of_image_components) + 5]
    end
    
    typesig { [] }
    # Used when decoding.
    def initialize_component_parameters
      comp_count = get_number_of_image_components
      @component_parameters = Array.typed(Array.typed(::Java::Int)).new(0) { nil }
      i = 0
      while i < comp_count
        ofs = 5 + i * 2
        cid = self.attr_reference[ofs] & 0xff
        dc = (self.attr_reference[ofs + 1] & 0xff) >> 4
        ac = self.attr_reference[ofs + 1] & 0xf
        if (@component_parameters.attr_length <= cid)
          new_params = Array.typed(Array.typed(::Java::Int)).new(cid + 1) { nil }
          System.arraycopy(@component_parameters, 0, new_params, 0, @component_parameters.attr_length)
          @component_parameters = new_params
        end
        @component_parameters[cid] = Array.typed(::Java::Int).new([dc, ac])
        i += 1
      end
    end
    
    typesig { [] }
    # Used when encoding.
    def initialize_contents
      comp_count = get_number_of_image_components
      comp_spec_params = @component_parameters
      if ((comp_count).equal?(0) || !(comp_count).equal?(comp_spec_params.attr_length))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      i = 0
      while i < comp_count
        ofs = i * 2 + 5
        comp_params = comp_spec_params[i]
        self.attr_reference[ofs] = (i + 1)
        self.attr_reference[ofs + 1] = (comp_params[0] * 16 + comp_params[1])
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    def set_end_of_spectral_selection(an_integer)
      self.attr_reference[(2 * get_number_of_image_components) + 6] = an_integer
    end
    
    typesig { [::Java::Int] }
    def set_number_of_image_components(an_integer)
      self.attr_reference[4] = (an_integer & 0xff)
    end
    
    typesig { [::Java::Int] }
    def set_start_of_spectral_selection(an_integer)
      self.attr_reference[(2 * get_number_of_image_components) + 5] = an_integer
    end
    
    typesig { [] }
    def signature
      return JPEGFileFormat::SOS
    end
    
    typesig { [] }
    def verify_progressive_scan
      start = get_start_of_spectral_selection
      end_ = get_end_of_spectral_selection
      low = get_approx_bit_position_low
      high = get_approx_bit_position_high
      count = get_number_of_image_components
      if (((start).equal?(0) && (end_).equal?(0)) || (start <= end_ && end_ <= 63))
        if (low <= 13 && high <= 13 && ((high).equal?(0) || (high).equal?(low + 1)))
          return (start).equal?(0) || (start > 0 && (count).equal?(1))
        end
      end
      return false
    end
    
    typesig { [] }
    def is_acprogressive_scan
      return !(get_start_of_spectral_selection).equal?(0) && !(get_end_of_spectral_selection).equal?(0)
    end
    
    typesig { [] }
    def is_dcprogressive_scan
      return (get_start_of_spectral_selection).equal?(0) && (get_end_of_spectral_selection).equal?(0)
    end
    
    typesig { [] }
    def is_first_scan
      return (get_approx_bit_position_high).equal?(0)
    end
    
    private
    alias_method :initialize__jpegscan_header, :initialize
  end
  
end
