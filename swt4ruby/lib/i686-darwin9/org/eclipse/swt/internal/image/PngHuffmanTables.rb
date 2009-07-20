require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module PngHuffmanTablesImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
    }
  end
  
  class PngHuffmanTables 
    include_class_members PngHuffmanTablesImports
    
    attr_accessor :literal_table
    alias_method :attr_literal_table, :literal_table
    undef_method :literal_table
    alias_method :attr_literal_table=, :literal_table=
    undef_method :literal_table=
    
    attr_accessor :distance_table
    alias_method :attr_distance_table, :distance_table
    undef_method :distance_table
    alias_method :attr_distance_table=, :distance_table=
    undef_method :distance_table=
    
    class_module.module_eval {
      
      def fixed_literal_table
        defined?(@@fixed_literal_table) ? @@fixed_literal_table : @@fixed_literal_table= nil
      end
      alias_method :attr_fixed_literal_table, :fixed_literal_table
      
      def fixed_literal_table=(value)
        @@fixed_literal_table = value
      end
      alias_method :attr_fixed_literal_table=, :fixed_literal_table=
      
      
      def fixed_distance_table
        defined?(@@fixed_distance_table) ? @@fixed_distance_table : @@fixed_distance_table= nil
      end
      alias_method :attr_fixed_distance_table, :fixed_distance_table
      
      def fixed_distance_table=(value)
        @@fixed_distance_table = value
      end
      alias_method :attr_fixed_distance_table=, :fixed_distance_table=
      
      const_set_lazy(:LiteralTableSize) { 288 }
      const_attr_reader  :LiteralTableSize
      
      const_set_lazy(:FixedLiteralLengths) { Array.typed(::Java::Int).new([8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8, 8, 8, 8, 8, 8, 8, ]) }
      const_attr_reader  :FixedLiteralLengths
      
      const_set_lazy(:DistanceTableSize) { 32 }
      const_attr_reader  :DistanceTableSize
      
      const_set_lazy(:FixedDistanceLengths) { Array.typed(::Java::Int).new([5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, ]) }
      const_attr_reader  :FixedDistanceLengths
      
      const_set_lazy(:LengthCodeTableSize) { 19 }
      const_attr_reader  :LengthCodeTableSize
      
      const_set_lazy(:LengthCodeOrder) { Array.typed(::Java::Int).new([16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15]) }
      const_attr_reader  :LengthCodeOrder
      
      typesig { [PngDecodingDataStream] }
      def get_dynamic_tables(stream)
        return PngHuffmanTables.new(stream)
      end
      
      typesig { [] }
      def get_fixed_tables
        return PngHuffmanTables.new
      end
    }
    
    typesig { [] }
    def get_fixed_literal_table
      if ((self.attr_fixed_literal_table).nil?)
        self.attr_fixed_literal_table = PngHuffmanTable.new(FixedLiteralLengths)
      end
      return self.attr_fixed_literal_table
    end
    
    typesig { [] }
    def get_fixed_distance_table
      if ((self.attr_fixed_distance_table).nil?)
        self.attr_fixed_distance_table = PngHuffmanTable.new(FixedDistanceLengths)
      end
      return self.attr_fixed_distance_table
    end
    
    typesig { [] }
    def initialize
      @literal_table = nil
      @distance_table = nil
      @literal_table = get_fixed_literal_table
      @distance_table = get_fixed_distance_table
    end
    
    typesig { [PngDecodingDataStream] }
    def initialize(stream)
      @literal_table = nil
      @distance_table = nil
      literals = PngLzBlockReader::FIRST_LENGTH_CODE + stream.get_next_idat_bits(5)
      distances = PngLzBlockReader::FIRST_DISTANCE_CODE + stream.get_next_idat_bits(5)
      code_length_codes = PngLzBlockReader::FIRST_CODE_LENGTH_CODE + stream.get_next_idat_bits(4)
      if (code_length_codes > PngLzBlockReader::LAST_CODE_LENGTH_CODE)
        stream.error
      end
      # Tricky, tricky, tricky. The length codes are stored in
      # a very odd order. (For the order, see the definition of
      # the static field lengthCodeOrder.) Also, the data may
      # not contain values for all the codes. It may just contain
      # values for the first X number of codes. The table should
      # be of size <LengthCodeTableSize> regardless of the number
      # of values actually given in the table.
      length_codes = Array.typed(::Java::Int).new(LengthCodeTableSize) { 0 }
      i = 0
      while i < code_length_codes
        length_codes[LengthCodeOrder[i]] = stream.get_next_idat_bits(3)
        i += 1
      end
      code_lengths_table = PngHuffmanTable.new(length_codes)
      literal_lengths = read_lengths(stream, literals, code_lengths_table, LiteralTableSize)
      distance_lengths = read_lengths(stream, distances, code_lengths_table, DistanceTableSize)
      @literal_table = PngHuffmanTable.new(literal_lengths)
      @distance_table = PngHuffmanTable.new(distance_lengths)
    end
    
    typesig { [PngDecodingDataStream, ::Java::Int, PngHuffmanTable, ::Java::Int] }
    def read_lengths(stream, num_lengths, lengths_table, table_size)
      lengths = Array.typed(::Java::Int).new(table_size) { 0 }
      index = 0
      while index < num_lengths
        value = lengths_table.get_next_value(stream)
        if (value < 16)
          # Literal value
          lengths[index] = value
          index += 1
        else
          if ((value).equal?(16))
            # Repeat the previous code 3-6 times.
            count = stream.get_next_idat_bits(2) + 3
            i = 0
            while i < count
              lengths[index] = lengths[index - 1]
              index += 1
              i += 1
            end
          else
            if ((value).equal?(17))
              # Repeat 0 3-10 times.
              count = stream.get_next_idat_bits(3) + 3
              i = 0
              while i < count
                lengths[index] = 0
                index += 1
                i += 1
              end
            else
              if ((value).equal?(18))
                # Repeat 0 11-138 times.
                count = stream.get_next_idat_bits(7) + 11
                i = 0
                while i < count
                  lengths[index] = 0
                  index += 1
                  i += 1
                end
              else
                stream.error
              end
            end
          end
        end
      end
      return lengths
    end
    
    typesig { [PngDecodingDataStream] }
    def get_next_literal_value(stream)
      return @literal_table.get_next_value(stream)
    end
    
    typesig { [PngDecodingDataStream] }
    def get_next_distance_value(stream)
      return @distance_table.get_next_value(stream)
    end
    
    private
    alias_method :initialize__png_huffman_tables, :initialize
  end
  
end
