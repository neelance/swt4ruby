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
  module JPEGHuffmanTableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  # JPEGHuffmanTable class actually represents two types of object:
  # 1) A DHT (Define Huffman Tables) segment, which may represent
  # as many as 4 Huffman tables. In this case, the tables are
  # stored in the allTables array.
  # 2) A single Huffman table. In this case, the allTables array
  # will be null.
  # The 'reference' field is stored in both types of object, but
  # 'initialize' is only called if the object represents a DHT.
  class JPEGHuffmanTable < JPEGHuffmanTableImports.const_get :JPEGVariableSizeSegment
    include_class_members JPEGHuffmanTableImports
    
    attr_accessor :all_tables
    alias_method :attr_all_tables, :all_tables
    undef_method :all_tables
    alias_method :attr_all_tables=, :all_tables=
    undef_method :all_tables=
    
    attr_accessor :table_class
    alias_method :attr_table_class, :table_class
    undef_method :table_class
    alias_method :attr_table_class=, :table_class=
    undef_method :table_class=
    
    attr_accessor :table_identifier
    alias_method :attr_table_identifier, :table_identifier
    undef_method :table_identifier
    alias_method :attr_table_identifier=, :table_identifier=
    undef_method :table_identifier=
    
    attr_accessor :dh_max_codes
    alias_method :attr_dh_max_codes, :dh_max_codes
    undef_method :dh_max_codes
    alias_method :attr_dh_max_codes=, :dh_max_codes=
    undef_method :dh_max_codes=
    
    attr_accessor :dh_min_codes
    alias_method :attr_dh_min_codes, :dh_min_codes
    undef_method :dh_min_codes
    alias_method :attr_dh_min_codes=, :dh_min_codes=
    undef_method :dh_min_codes=
    
    attr_accessor :dh_val_ptrs
    alias_method :attr_dh_val_ptrs, :dh_val_ptrs
    undef_method :dh_val_ptrs
    alias_method :attr_dh_val_ptrs=, :dh_val_ptrs=
    undef_method :dh_val_ptrs=
    
    attr_accessor :dh_values
    alias_method :attr_dh_values, :dh_values
    undef_method :dh_values
    alias_method :attr_dh_values=, :dh_values=
    undef_method :dh_values=
    
    attr_accessor :eh_codes
    alias_method :attr_eh_codes, :eh_codes
    undef_method :eh_codes
    alias_method :attr_eh_codes=, :eh_codes=
    undef_method :eh_codes=
    
    attr_accessor :eh_code_lengths
    alias_method :attr_eh_code_lengths, :eh_code_lengths
    undef_method :eh_code_lengths
    alias_method :attr_eh_code_lengths=, :eh_code_lengths=
    undef_method :eh_code_lengths=
    
    class_module.module_eval {
      
      def dcluminance_table
        defined?(@@dcluminance_table) ? @@dcluminance_table : @@dcluminance_table= Array.typed(::Java::Byte).new([255, 196, 0, 31, 0, 0, 1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
      end
      alias_method :attr_dcluminance_table, :dcluminance_table
      
      def dcluminance_table=(value)
        @@dcluminance_table = value
      end
      alias_method :attr_dcluminance_table=, :dcluminance_table=
      
      
      def dcchrominance_table
        defined?(@@dcchrominance_table) ? @@dcchrominance_table : @@dcchrominance_table= Array.typed(::Java::Byte).new([255, 196, 0, 31, 1, 0, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11])
      end
      alias_method :attr_dcchrominance_table, :dcchrominance_table
      
      def dcchrominance_table=(value)
        @@dcchrominance_table = value
      end
      alias_method :attr_dcchrominance_table=, :dcchrominance_table=
      
      
      def acluminance_table
        defined?(@@acluminance_table) ? @@acluminance_table : @@acluminance_table= Array.typed(::Java::Byte).new([255, 196, 0, 181, 16, 0, 2, 1, 3, 3, 2, 4, 3, 5, 5, 4, 4, 0, 0, 1, 125, 1, 2, 3, 0, 4, 17, 5, 18, 33, 49, 65, 6, 19, 81, 97, 7, 34, 113, 20, 50, 129, 145, 161, 8, 35, 66, 177, 193, 21, 82, 209, 240, 36, 51, 98, 114, 130, 9, 10, 22, 23, 24, 25, 26, 37, 38, 39, 40, 41, 42, 52, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, 131, 132, 133, 134, 135, 136, 137, 138, 146, 147, 148, 149, 150, 151, 152, 153, 154, 162, 163, 164, 165, 166, 167, 168, 169, 170, 178, 179, 180, 181, 182, 183, 184, 185, 186, 194, 195, 196, 197, 198, 199, 200, 201, 202, 210, 211, 212, 213, 214, 215, 216, 217, 218, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250])
      end
      alias_method :attr_acluminance_table, :acluminance_table
      
      def acluminance_table=(value)
        @@acluminance_table = value
      end
      alias_method :attr_acluminance_table=, :acluminance_table=
      
      
      def acchrominance_table
        defined?(@@acchrominance_table) ? @@acchrominance_table : @@acchrominance_table= Array.typed(::Java::Byte).new([255, 196, 0, 181, 17, 0, 2, 1, 2, 4, 4, 3, 4, 7, 5, 4, 4, 0, 1, 2, 119, 0, 1, 2, 3, 17, 4, 5, 33, 49, 6, 18, 65, 81, 7, 97, 113, 19, 34, 50, 129, 8, 20, 66, 145, 161, 177, 193, 9, 35, 51, 82, 240, 21, 98, 114, 209, 10, 22, 36, 52, 225, 37, 241, 23, 24, 25, 26, 38, 39, 40, 41, 42, 53, 54, 55, 56, 57, 58, 67, 68, 69, 70, 71, 72, 73, 74, 83, 84, 85, 86, 87, 88, 89, 90, 99, 100, 101, 102, 103, 104, 105, 106, 115, 116, 117, 118, 119, 120, 121, 122, 130, 131, 132, 133, 134, 135, 136, 137, 138, 146, 147, 148, 149, 150, 151, 152, 153, 154, 162, 163, 164, 165, 166, 167, 168, 169, 170, 178, 179, 180, 181, 182, 183, 184, 185, 186, 194, 195, 196, 197, 198, 199, 200, 201, 202, 210, 211, 212, 213, 214, 215, 216, 217, 218, 226, 227, 228, 229, 230, 231, 232, 233, 234, 242, 243, 244, 245, 246, 247, 248, 249, 250])
      end
      alias_method :attr_acchrominance_table, :acchrominance_table
      
      def acchrominance_table=(value)
        @@acchrominance_table = value
      end
      alias_method :attr_acchrominance_table=, :acchrominance_table=
    }
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      @all_tables = nil
      @table_class = 0
      @table_identifier = 0
      @dh_max_codes = nil
      @dh_min_codes = nil
      @dh_val_ptrs = nil
      @dh_values = nil
      @eh_codes = nil
      @eh_code_lengths = nil
      super(reference)
    end
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      @all_tables = nil
      @table_class = 0
      @table_identifier = 0
      @dh_max_codes = nil
      @dh_min_codes = nil
      @dh_val_ptrs = nil
      @dh_values = nil
      @eh_codes = nil
      @eh_code_lengths = nil
      super(byte_stream)
      initialize_
    end
    
    typesig { [] }
    def get_all_tables
      return @all_tables
    end
    
    class_module.module_eval {
      typesig { [] }
      def get_default_acchrominance_table
        result = JPEGHuffmanTable.new(self.attr_acchrominance_table)
        result.initialize_
        return result
      end
      
      typesig { [] }
      def get_default_acluminance_table
        result = JPEGHuffmanTable.new(self.attr_acluminance_table)
        result.initialize_
        return result
      end
      
      typesig { [] }
      def get_default_dcchrominance_table
        result = JPEGHuffmanTable.new(self.attr_dcchrominance_table)
        result.initialize_
        return result
      end
      
      typesig { [] }
      def get_default_dcluminance_table
        result = JPEGHuffmanTable.new(self.attr_dcluminance_table)
        result.initialize_
        return result
      end
    }
    
    typesig { [] }
    def get_dh_max_codes
      return @dh_max_codes
    end
    
    typesig { [] }
    def get_dh_min_codes
      return @dh_min_codes
    end
    
    typesig { [] }
    def get_dh_val_ptrs
      return @dh_val_ptrs
    end
    
    typesig { [] }
    def get_dh_values
      return @dh_values
    end
    
    typesig { [] }
    def get_table_class
      return @table_class
    end
    
    typesig { [] }
    def get_table_identifier
      return @table_identifier
    end
    
    typesig { [] }
    def initialize_
      total_length = get_segment_length - 2
      ofs = 4
      bits = Array.typed(::Java::Int).new(16) { 0 }
      huff_tables = Array.typed(JPEGHuffmanTable).new(8) { nil } # maximum is 4 AC + 4 DC
      huff_table_count = 0
      while (total_length > 0)
        tc = (self.attr_reference[ofs] & 0xff) >> 4 # table class: AC (1) or DC (0)
        tid = self.attr_reference[ofs] & 0xf # table id: 0-1 baseline, 0-3 prog/ext
        ((ofs += 1) - 1)
        # Read the 16 count bytes and add them together to get the table size.
        count = 0
        i = 0
        while i < bits.attr_length
          b_count = self.attr_reference[ofs + i] & 0xff
          bits[i] = b_count
          count += b_count
          ((i += 1) - 1)
        end
        ofs += 16
        total_length -= 17
        # Read the table.
        huff_vals = Array.typed(::Java::Int).new(count) { 0 }
        i_ = 0
        while i_ < count
          huff_vals[i_] = self.attr_reference[ofs + i_] & 0xff
          ((i_ += 1) - 1)
        end
        ofs += count
        total_length -= count
        # Calculate the lengths.
        huff_code_lengths = Array.typed(::Java::Int).new(50) { 0 } # start with 50 and increment as needed
        huff_code_lengths_index = 0
        i__ = 0
        while i__ < 16
          j = 0
          while j < bits[i__]
            if (huff_code_lengths_index >= huff_code_lengths.attr_length)
              new_huff_code_lengths = Array.typed(::Java::Int).new(huff_code_lengths.attr_length + 50) { 0 }
              System.arraycopy(huff_code_lengths, 0, new_huff_code_lengths, 0, huff_code_lengths.attr_length)
              huff_code_lengths = new_huff_code_lengths
            end
            huff_code_lengths[huff_code_lengths_index] = i__ + 1
            ((huff_code_lengths_index += 1) - 1)
            ((j += 1) - 1)
          end
          ((i__ += 1) - 1)
        end
        # Truncate huffCodeLengths to the correct size.
        if (huff_code_lengths_index < huff_code_lengths.attr_length)
          new_huff_code_lengths = Array.typed(::Java::Int).new(huff_code_lengths_index) { 0 }
          System.arraycopy(huff_code_lengths, 0, new_huff_code_lengths, 0, huff_code_lengths_index)
          huff_code_lengths = new_huff_code_lengths
        end
        # Calculate the Huffman codes.
        huff_codes = Array.typed(::Java::Int).new(50) { 0 } # start with 50 and increment as needed
        huff_codes_index = 0
        k = 1
        code = 0
        si = huff_code_lengths[0]
        p = 0
        while (p < huff_code_lengths_index)
          while ((p < huff_code_lengths_index) && ((huff_code_lengths[p]).equal?(si)))
            if (huff_codes_index >= huff_codes.attr_length)
              new_huff_codes = Array.typed(::Java::Int).new(huff_codes.attr_length + 50) { 0 }
              System.arraycopy(huff_codes, 0, new_huff_codes, 0, huff_codes.attr_length)
              huff_codes = new_huff_codes
            end
            huff_codes[huff_codes_index] = code
            ((huff_codes_index += 1) - 1)
            ((code += 1) - 1)
            ((p += 1) - 1)
          end
          code *= 2
          ((si += 1) - 1)
        end
        # Truncate huffCodes to the correct size.
        if (huff_codes_index < huff_codes.attr_length)
          new_huff_codes = Array.typed(::Java::Int).new(huff_codes_index) { 0 }
          System.arraycopy(huff_codes, 0, new_huff_codes, 0, huff_codes_index)
          huff_codes = new_huff_codes
        end
        # Calculate the maximum and minimum codes
        k = 0
        max_codes = Array.typed(::Java::Int).new(16) { 0 }
        min_codes = Array.typed(::Java::Int).new(16) { 0 }
        val_ptrs = Array.typed(::Java::Int).new(16) { 0 }
        i___ = 0
        while i___ < 16
          b_size = bits[i___]
          if ((b_size).equal?(0))
            max_codes[i___] = -1
          else
            val_ptrs[i___] = k
            min_codes[i___] = huff_codes[k]
            k += b_size
            max_codes[i___] = huff_codes[k - 1]
          end
          ((i___ += 1) - 1)
        end
        # Calculate the eHuffman codes and lengths.
        e_huff_codes = Array.typed(::Java::Int).new(256) { 0 }
        e_huff_size = Array.typed(::Java::Byte).new(256) { 0 }
        i____ = 0
        while i____ < huff_codes_index
          e_huff_codes[huff_vals[i____]] = huff_codes[i____]
          e_huff_size[huff_vals[i____]] = huff_code_lengths[i____]
          ((i____ += 1) - 1)
        end
        # Create the new JPEGHuffmanTable and add it to the allTables array.
        dht_table = JPEGHuffmanTable.new(self.attr_reference)
        dht_table.attr_table_class = tc
        dht_table.attr_table_identifier = tid
        dht_table.attr_dh_values = huff_vals
        dht_table.attr_dh_min_codes = min_codes
        dht_table.attr_dh_max_codes = max_codes
        dht_table.attr_dh_val_ptrs = val_ptrs
        dht_table.attr_eh_codes = e_huff_codes
        dht_table.attr_eh_code_lengths = e_huff_size
        huff_tables[huff_table_count] = dht_table
        ((huff_table_count += 1) - 1)
      end
      @all_tables = Array.typed(JPEGHuffmanTable).new(huff_table_count) { nil }
      System.arraycopy(huff_tables, 0, @all_tables, 0, huff_table_count)
    end
    
    typesig { [] }
    def signature
      return JPEGFileFormat::DHT
    end
    
    private
    alias_method :initialize__jpeghuffman_table, :initialize
  end
  
end
