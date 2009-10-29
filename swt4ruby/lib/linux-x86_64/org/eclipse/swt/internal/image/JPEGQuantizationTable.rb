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
  module JPEGQuantizationTableImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
    }
  end
  
  class JPEGQuantizationTable < JPEGQuantizationTableImports.const_get :JPEGVariableSizeSegment
    include_class_members JPEGQuantizationTableImports
    
    class_module.module_eval {
      
      def default_luminance_qtable
        defined?(@@default_luminance_qtable) ? @@default_luminance_qtable : @@default_luminance_qtable= Array.typed(::Java::Byte).new([255, 219, 0, 67, 0, 16, 11, 10, 16, 24, 40, 51, 61, 12, 12, 14, 19, 26, 58, 60, 55, 14, 13, 16, 24, 40, 57, 69, 56, 14, 17, 22, 29, 51, 87, 80, 62, 18, 22, 37, 56, 68, 109, 103, 77, 24, 35, 55, 64, 81, 104, 113, 92, 49, 64, 78, 87, 103, 121, 120, 101, 72, 92, 95, 98, 112, 100, 103, 99])
      end
      alias_method :attr_default_luminance_qtable, :default_luminance_qtable
      
      def default_luminance_qtable=(value)
        @@default_luminance_qtable = value
      end
      alias_method :attr_default_luminance_qtable=, :default_luminance_qtable=
      
      
      def default_chrominance_qtable
        defined?(@@default_chrominance_qtable) ? @@default_chrominance_qtable : @@default_chrominance_qtable= Array.typed(::Java::Byte).new([255, 219, 0, 67, 1, 17, 18, 24, 47, 99, 99, 99, 99, 18, 21, 26, 66, 99, 99, 99, 99, 24, 26, 56, 99, 99, 99, 99, 99, 47, 66, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99, 99])
      end
      alias_method :attr_default_chrominance_qtable, :default_chrominance_qtable
      
      def default_chrominance_qtable=(value)
        @@default_chrominance_qtable = value
      end
      alias_method :attr_default_chrominance_qtable=, :default_chrominance_qtable=
    }
    
    typesig { [Array.typed(::Java::Byte)] }
    def initialize(reference)
      super(reference)
    end
    
    typesig { [LEDataInputStream] }
    def initialize(byte_stream)
      super(byte_stream)
    end
    
    class_module.module_eval {
      typesig { [] }
      def default_chrominance_table
        data = Array.typed(::Java::Byte).new(self.attr_default_chrominance_qtable.attr_length) { 0 }
        System.arraycopy(self.attr_default_chrominance_qtable, 0, data, 0, data.attr_length)
        return JPEGQuantizationTable.new(data)
      end
      
      typesig { [] }
      def default_luminance_table
        data = Array.typed(::Java::Byte).new(self.attr_default_luminance_qtable.attr_length) { 0 }
        System.arraycopy(self.attr_default_luminance_qtable, 0, data, 0, data.attr_length)
        return JPEGQuantizationTable.new(data)
      end
    }
    
    typesig { [] }
    def get_quantization_tables_keys
      keys = Array.typed(::Java::Int).new(4) { 0 }
      keys_index = 0
      total_length = get_segment_length - 2
      ofs = 4
      while (total_length > 64)
        tq = self.attr_reference[ofs] & 0xf
        pq = (self.attr_reference[ofs] & 0xff) >> 4
        if ((pq).equal?(0))
          ofs += 65
          total_length -= 65
        else
          ofs += 129
          total_length -= 129
        end
        if (keys_index >= keys.attr_length)
          new_keys = Array.typed(::Java::Int).new(keys.attr_length + 4) { 0 }
          System.arraycopy(keys, 0, new_keys, 0, keys.attr_length)
          keys = new_keys
        end
        keys[keys_index] = tq
        keys_index += 1
      end
      new_keys = Array.typed(::Java::Int).new(keys_index) { 0 }
      System.arraycopy(keys, 0, new_keys, 0, keys_index)
      return new_keys
    end
    
    typesig { [] }
    def get_quantization_tables_values
      values = Array.typed(Array.typed(::Java::Int)).new(4) { nil }
      values_index = 0
      total_length = get_segment_length - 2
      ofs = 4
      while (total_length > 64)
        qk = Array.typed(::Java::Int).new(64) { 0 }
        pq = (self.attr_reference[ofs] & 0xff) >> 4
        if ((pq).equal?(0))
          i = 0
          while i < qk.attr_length
            qk[i] = self.attr_reference[ofs + i + 1] & 0xff
            i += 1
          end
          ofs += 65
          total_length -= 65
        else
          i = 0
          while i < qk.attr_length
            idx = (i - 1) * 2
            qk[i] = (self.attr_reference[ofs + idx + 1] & 0xff) * 256 + (self.attr_reference[ofs + idx + 2] & 0xff)
            i += 1
          end
          ofs += 129
          total_length -= 129
        end
        if (values_index >= values.attr_length)
          new_values = Array.typed(Array.typed(::Java::Int)).new(values.attr_length + 4) { nil }
          System.arraycopy(values, 0, new_values, 0, values.attr_length)
          values = new_values
        end
        values[values_index] = qk
        values_index += 1
      end
      new_values = Array.typed(Array.typed(::Java::Int)).new(values_index) { nil }
      System.arraycopy(values, 0, new_values, 0, values_index)
      return new_values
    end
    
    typesig { [::Java::Int] }
    def scale_by(quality_factor)
      q_factor = quality_factor
      if (q_factor <= 0)
        q_factor = 1
      end
      if (q_factor > 100)
        q_factor = 100
      end
      if (q_factor < 50)
        q_factor = 5000 / q_factor
      else
        q_factor = 200 - (q_factor * 2)
      end
      total_length = get_segment_length - 2
      ofs = 4
      while (total_length > 64)
        # int tq = reference[ofs] & 0xFF;
        pq = (self.attr_reference[ofs] & 0xff) >> 4
        if ((pq).equal?(0))
          i = ofs + 1
          while i <= ofs + 64
            temp = ((self.attr_reference[i] & 0xff) * q_factor + 50) / 100
            if (temp <= 0)
              temp = 1
            end
            if (temp > 255)
              temp = 255
            end
            self.attr_reference[i] = temp
            i += 1
          end
          ofs += 65
          total_length -= 65
        else
          i = ofs + 1
          while i <= ofs + 128
            temp = (((self.attr_reference[i] & 0xff) * 256 + (self.attr_reference[i + 1] & 0xff)) * q_factor + 50) / 100
            if (temp <= 0)
              temp = 1
            end
            if (temp > 32767)
              temp = 32767
            end
            self.attr_reference[i] = (temp >> 8)
            self.attr_reference[i + 1] = (temp & 0xff)
            i += 2
          end
          ofs += 129
          total_length -= 129
        end
      end
    end
    
    typesig { [] }
    def signature
      return JPEGFileFormat::DQT
    end
    
    private
    alias_method :initialize__jpegquantization_table, :initialize
  end
  
end
