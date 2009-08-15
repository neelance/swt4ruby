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
  module JPEGFrameHeaderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
    }
  end
  
  class JPEGFrameHeader < JPEGFrameHeaderImports.const_get :JPEGVariableSizeSegment
    include_class_members JPEGFrameHeaderImports
    
    attr_accessor :max_vfactor
    alias_method :attr_max_vfactor, :max_vfactor
    undef_method :max_vfactor
    alias_method :attr_max_vfactor=, :max_vfactor=
    undef_method :max_vfactor=
    
    attr_accessor :max_hfactor
    alias_method :attr_max_hfactor, :max_hfactor
    undef_method :max_hfactor
    alias_method :attr_max_hfactor=, :max_hfactor=
    undef_method :max_hfactor=
    
    attr_accessor :component_identifiers
    alias_method :attr_component_identifiers, :component_identifiers
    undef_method :component_identifiers
    alias_method :attr_component_identifiers=, :component_identifiers=
    undef_method :component_identifiers=
    
    attr_accessor :component_parameters
    alias_method :attr_component_parameters, :component_parameters
    undef_method :component_parameters
    alias_method :attr_component_parameters=, :component_parameters=
    undef_method :component_parameters=
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      @max_vfactor = 0
      @max_hfactor = 0
      @component_identifiers = nil
      @component_parameters = nil
      super(reference)
    end
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      @max_vfactor = 0
      @max_hfactor = 0
      @component_identifiers = nil
      @component_parameters = nil
      super(byte_stream)
      initialize_component_parameters
    end
    
    typesig { [] }
    def get_sample_precision
      return self.attr_reference[4] & 0xff
    end
    
    typesig { [] }
    def get_number_of_lines
      return (self.attr_reference[5] & 0xff) << 8 | (self.attr_reference[6] & 0xff)
    end
    
    typesig { [] }
    def get_samples_per_line
      return (self.attr_reference[7] & 0xff) << 8 | (self.attr_reference[8] & 0xff)
    end
    
    typesig { [] }
    def get_number_of_image_components
      return self.attr_reference[9] & 0xff
    end
    
    typesig { [::Java::Int] }
    def set_sample_precision(precision)
      self.attr_reference[4] = (precision & 0xff)
    end
    
    typesig { [::Java::Int] }
    def set_number_of_lines(an_integer)
      self.attr_reference[5] = ((an_integer & 0xff00) >> 8)
      self.attr_reference[6] = (an_integer & 0xff)
    end
    
    typesig { [::Java::Int] }
    def set_samples_per_line(samples)
      self.attr_reference[7] = ((samples & 0xff00) >> 8)
      self.attr_reference[8] = (samples & 0xff)
    end
    
    typesig { [::Java::Int] }
    def set_number_of_image_components(an_integer)
      self.attr_reference[9] = (an_integer & 0xff)
    end
    
    typesig { [] }
    def get_max_hfactor
      return @max_hfactor
    end
    
    typesig { [] }
    def get_max_vfactor
      return @max_vfactor
    end
    
    typesig { [::Java::Int] }
    def set_max_hfactor(an_integer)
      @max_hfactor = an_integer
    end
    
    typesig { [::Java::Int] }
    def set_max_vfactor(an_integer)
      @max_vfactor = an_integer
    end
    
    typesig { [] }
    # Used when decoding.
    def initialize_component_parameters
      nf = get_number_of_image_components
      @component_identifiers = Array.typed(::Java::Int).new(nf) { 0 }
      comp_spec_params = Array.typed(Array.typed(::Java::Int)).new(0) { nil }
      hmax = 1
      vmax = 1
      i = 0
      while i < nf
        ofs = i * 3 + 10
        ci = self.attr_reference[ofs] & 0xff
        @component_identifiers[i] = ci
        hi = (self.attr_reference[ofs + 1] & 0xff) >> 4
        vi = self.attr_reference[ofs + 1] & 0xf
        tqi = self.attr_reference[ofs + 2] & 0xff
        if (hi > hmax)
          hmax = hi
        end
        if (vi > vmax)
          vmax = vi
        end
        comp_param = Array.typed(::Java::Int).new(5) { 0 }
        comp_param[0] = tqi
        comp_param[1] = hi
        comp_param[2] = vi
        if (comp_spec_params.attr_length <= ci)
          new_params = Array.typed(Array.typed(::Java::Int)).new(ci + 1) { nil }
          System.arraycopy(comp_spec_params, 0, new_params, 0, comp_spec_params.attr_length)
          comp_spec_params = new_params
        end
        comp_spec_params[ci] = comp_param
        i += 1
      end
      x = get_samples_per_line
      y = get_number_of_lines
      multiples = Array.typed(::Java::Int).new([8, 16, 24, 32])
      i_ = 0
      while i_ < nf
        comp_param = comp_spec_params[@component_identifiers[i_]]
        hi = comp_param[1]
        vi = comp_param[2]
        comp_width = (x * hi + hmax - 1) / hmax
        comp_height = (y * vi + vmax - 1) / vmax
        ds_width = round_up_to_multiple(comp_width, multiples[hi - 1])
        ds_height = round_up_to_multiple(comp_height, multiples[vi - 1])
        comp_param[3] = ds_width
        comp_param[4] = ds_height
        i_ += 1
      end
      set_max_hfactor(hmax)
      set_max_vfactor(vmax)
      @component_parameters = comp_spec_params
    end
    
    typesig { [] }
    # Used when encoding.
    def initialize_contents
      nf = get_number_of_image_components
      if ((nf).equal?(0) || !(nf).equal?(@component_parameters.attr_length))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      hmax = 0
      vmax = 0
      comp_spec_params = @component_parameters
      i = 0
      while i < nf
        ofs = i * 3 + 10
        comp_param = comp_spec_params[@component_identifiers[i]]
        hi = comp_param[1]
        vi = comp_param[2]
        if (hi * vi > 4)
          SWT.error(SWT::ERROR_INVALID_IMAGE)
        end
        self.attr_reference[ofs] = (i + 1)
        self.attr_reference[ofs + 1] = (hi * 16 + vi)
        self.attr_reference[ofs + 2] = (comp_param[0])
        if (hi > hmax)
          hmax = hi
        end
        if (vi > vmax)
          vmax = vi
        end
        i += 1
      end
      x = get_samples_per_line
      y = get_number_of_lines
      multiples = Array.typed(::Java::Int).new([8, 16, 24, 32])
      i_ = 0
      while i_ < nf
        comp_param = comp_spec_params[@component_identifiers[i_]]
        hi = comp_param[1]
        vi = comp_param[2]
        comp_width = (x * hi + hmax - 1) / hmax
        comp_height = (y * vi + vmax - 1) / vmax
        ds_width = round_up_to_multiple(comp_width, multiples[hi - 1])
        ds_height = round_up_to_multiple(comp_height, multiples[vi - 1])
        comp_param[3] = ds_width
        comp_param[4] = ds_height
        i_ += 1
      end
      set_max_hfactor(hmax)
      set_max_vfactor(vmax)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def round_up_to_multiple(an_integer, m_integer)
      a = an_integer + m_integer - 1
      return a - (a % m_integer)
    end
    
    typesig { [] }
    # Verify the information contained in the receiver is correct.
    # Answer true if the header contains a valid marker. Otherwise,
    # answer false. Valid Start Of Frame markers are:
    # SOF_0  - Baseline DCT, Huffman coding
    # SOF_1  - Extended sequential DCT, Huffman coding
    # SOF_2  - Progressive DCT, Huffman coding
    # SOF_3  - Lossless (sequential), Huffman coding
    # SOF_5  - Differential sequential, Huffman coding
    # SOF_6  - Differential progressive, Huffman coding
    # SOF_7  - Differential lossless, Huffman coding
    # SOF_9  - Extended sequential DCT, arithmetic coding
    # SOF_10 - Progressive DCT, arithmetic coding
    # SOF_11 - Lossless (sequential), arithmetic coding
    # SOF_13 - Differential sequential, arithmetic coding
    # SOF_14 - Differential progressive, arithmetic coding
    # SOF_15 - Differential lossless, arithmetic coding
    def verify
      marker = get_segment_marker
      return (marker >= JPEGFileFormat::SOF0 && marker <= JPEGFileFormat::SOF3) || (marker >= JPEGFileFormat::SOF5 && marker <= JPEGFileFormat::SOF7) || (marker >= JPEGFileFormat::SOF9 && marker <= JPEGFileFormat::SOF11) || (marker >= JPEGFileFormat::SOF13 && marker <= JPEGFileFormat::SOF15)
    end
    
    typesig { [] }
    def is_progressive
      marker = get_segment_marker
      return (marker).equal?(JPEGFileFormat::SOF2) || (marker).equal?(JPEGFileFormat::SOF6) || (marker).equal?(JPEGFileFormat::SOF10) || (marker).equal?(JPEGFileFormat::SOF14)
    end
    
    typesig { [] }
    def is_arithmetic_coding
      return get_segment_marker >= JPEGFileFormat::SOF9
    end
    
    private
    alias_method :initialize__jpegframe_header, :initialize
  end
  
end
