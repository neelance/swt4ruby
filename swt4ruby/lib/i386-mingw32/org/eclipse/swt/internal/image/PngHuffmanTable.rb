require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module PngHuffmanTableImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class PngHuffmanTable 
    include_class_members PngHuffmanTableImports
    
    attr_accessor :code_length_info
    alias_method :attr_code_length_info, :code_length_info
    undef_method :code_length_info
    alias_method :attr_code_length_info=, :code_length_info=
    undef_method :code_length_info=
    
    attr_accessor :code_values
    alias_method :attr_code_values, :code_values
    undef_method :code_values
    alias_method :attr_code_values=, :code_values=
    undef_method :code_values=
    
    class_module.module_eval {
      const_set_lazy(:MAX_CODE_LENGTH) { 15 }
      const_attr_reader  :MAX_CODE_LENGTH
      
      const_set_lazy(:BAD_CODE) { 0xfffffff }
      const_attr_reader  :BAD_CODE
      
      const_set_lazy(:Incs) { Array.typed(::Java::Int).new([1391376, 463792, 198768, 86961, 33936, 13776, 4592, 1968, 861, 336, 112, 48, 21, 7, 3, 1]) }
      const_attr_reader  :Incs
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def initialize(lengths)
      @code_length_info = nil
      @code_values = nil
      initialize_(lengths)
      generate_table(lengths)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def initialize_(lengths)
      @code_values = Array.typed(::Java::Int).new(lengths.attr_length) { 0 }
      i = 0
      while i < @code_values.attr_length
        @code_values[i] = i
        i += 1
      end
      # minCodesByLength[n] : The smallest Huffman code of length n + 1.
      # maxCodesByLength[n] : The largest Huffman code of length n + 1.
      # indexesByLength[n] : Index into the values array. First value with a code of length n + 1.
      @code_length_info = Array.typed(CodeLengthInfo).new(MAX_CODE_LENGTH) { nil }
      i_ = 0
      while i_ < MAX_CODE_LENGTH
        @code_length_info[i_] = CodeLengthInfo.new
        @code_length_info[i_].attr_length = i_
        @code_length_info[i_].attr_base_index = 0
        @code_length_info[i_].attr_min = BAD_CODE
        @code_length_info[i_].attr_max = -1
        i_ += 1
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def generate_table(lengths)
      # Sort the values using shellsort. Primary key is code size. Secondary key is value.
      code_values_temp = 0
      k = 0
      while k < 16
        h = Incs[k]
        i = h
        while i < lengths.attr_length
          v = lengths[i]
          code_values_temp = @code_values[i]
          j = i
          while (j >= h && (lengths[j - h] > v || ((lengths[j - h]).equal?(v) && @code_values[j - h] > code_values_temp)))
            lengths[j] = lengths[j - h]
            @code_values[j] = @code_values[j - h]
            j -= h
          end
          lengths[j] = v
          @code_values[j] = code_values_temp
          i += 1
        end
        k += 1
      end
      # These values in these arrays correspond to the elements of the
      # "values" array. The Huffman code for codeValues[N] is codes[N]
      # and the length of the code is lengths[N].
      codes = Array.typed(::Java::Int).new(lengths.attr_length) { 0 }
      last_length = 0
      code = 0
      i = 0
      while i < lengths.attr_length
        while (!(last_length).equal?(lengths[i]))
          last_length += 1
          code <<= 1
        end
        if (!(last_length).equal?(0))
          codes[i] = code
          code += 1
        end
        i += 1
      end
      last = 0
      i_ = 0
      while i_ < lengths.attr_length
        if (!(last).equal?(lengths[i_]))
          last = lengths[i_]
          @code_length_info[last - 1].attr_base_index = i_
          @code_length_info[last - 1].attr_min = codes[i_]
        end
        if (!(last).equal?(0))
          @code_length_info[last - 1].attr_max = codes[i_]
        end
        i_ += 1
      end
    end
    
    typesig { [PngDecodingDataStream] }
    def get_next_value(stream)
      code = stream.get_next_idat_bit
      codelength = 0
      # Here we are taking advantage of the fact that 1 bits are used as
      # a prefix to the longer codeValues.
      while (codelength < MAX_CODE_LENGTH && code > @code_length_info[codelength].attr_max)
        code = ((code << 1) | stream.get_next_idat_bit)
        codelength += 1
      end
      if (codelength >= MAX_CODE_LENGTH)
        stream.error
      end
      # Now we have a Huffman code of length (codelength + 1) that
      # is somewhere in the range
      # minCodesByLength[codelength]..maxCodesByLength[codelength].
      # This code is the (offset + 1)'th code of (codelength + 1);
      offset = code - @code_length_info[codelength].attr_min
      # indexesByLength[codelength] is the first code of length (codelength + 1)
      # so now we can look up the value for the Huffman code in the table.
      index = @code_length_info[codelength].attr_base_index + offset
      return @code_values[index]
    end
    
    class_module.module_eval {
      const_set_lazy(:CodeLengthInfo) { Class.new do
        include_class_members PngHuffmanTable
        
        attr_accessor :length
        alias_method :attr_length, :length
        undef_method :length
        alias_method :attr_length=, :length=
        undef_method :length=
        
        attr_accessor :max
        alias_method :attr_max, :max
        undef_method :max
        alias_method :attr_max=, :max=
        undef_method :max=
        
        attr_accessor :min
        alias_method :attr_min, :min
        undef_method :min
        alias_method :attr_min=, :min=
        undef_method :min=
        
        attr_accessor :base_index
        alias_method :attr_base_index, :base_index
        undef_method :base_index
        alias_method :attr_base_index=, :base_index=
        undef_method :base_index=
        
        typesig { [] }
        def initialize
          @length = 0
          @max = 0
          @min = 0
          @base_index = 0
        end
        
        private
        alias_method :initialize__code_length_info, :initialize
      end }
    }
    
    private
    alias_method :initialize__png_huffman_table, :initialize
  end
  
end
