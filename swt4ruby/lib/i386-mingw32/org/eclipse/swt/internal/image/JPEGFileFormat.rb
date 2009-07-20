require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved.  This source file is made available under the terms contained in the README file
# accompanying this program.  The README file should be located in the about_files directory of the
# plug-in that contains this source file.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Image
  module JPEGFileFormatImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Java::Io
    }
  end
  
  class JPEGFileFormat < JPEGFileFormatImports.const_get :FileFormat
    include_class_members JPEGFileFormatImports
    
    attr_accessor :restart_interval
    alias_method :attr_restart_interval, :restart_interval
    undef_method :restart_interval
    alias_method :attr_restart_interval=, :restart_interval=
    undef_method :restart_interval=
    
    attr_accessor :frame_header
    alias_method :attr_frame_header, :frame_header
    undef_method :frame_header
    alias_method :attr_frame_header=, :frame_header=
    undef_method :frame_header=
    
    attr_accessor :image_width
    alias_method :attr_image_width, :image_width
    undef_method :image_width
    alias_method :attr_image_width=, :image_width=
    undef_method :image_width=
    
    attr_accessor :image_height
    alias_method :attr_image_height, :image_height
    undef_method :image_height
    alias_method :attr_image_height=, :image_height=
    undef_method :image_height=
    
    attr_accessor :interleaved_mcu_cols
    alias_method :attr_interleaved_mcu_cols, :interleaved_mcu_cols
    undef_method :interleaved_mcu_cols
    alias_method :attr_interleaved_mcu_cols=, :interleaved_mcu_cols=
    undef_method :interleaved_mcu_cols=
    
    attr_accessor :interleaved_mcu_rows
    alias_method :attr_interleaved_mcu_rows, :interleaved_mcu_rows
    undef_method :interleaved_mcu_rows
    alias_method :attr_interleaved_mcu_rows=, :interleaved_mcu_rows=
    undef_method :interleaved_mcu_rows=
    
    attr_accessor :max_v
    alias_method :attr_max_v, :max_v
    undef_method :max_v
    alias_method :attr_max_v=, :max_v=
    undef_method :max_v=
    
    attr_accessor :max_h
    alias_method :attr_max_h, :max_h
    undef_method :max_h
    alias_method :attr_max_h=, :max_h=
    undef_method :max_h=
    
    attr_accessor :progressive
    alias_method :attr_progressive, :progressive
    undef_method :progressive
    alias_method :attr_progressive=, :progressive=
    undef_method :progressive=
    
    attr_accessor :sample_precision
    alias_method :attr_sample_precision, :sample_precision
    undef_method :sample_precision
    alias_method :attr_sample_precision=, :sample_precision=
    undef_method :sample_precision=
    
    attr_accessor :n_components
    alias_method :attr_n_components, :n_components
    undef_method :n_components
    alias_method :attr_n_components=, :n_components=
    undef_method :n_components=
    
    attr_accessor :frame_components
    alias_method :attr_frame_components, :frame_components
    undef_method :frame_components
    alias_method :attr_frame_components=, :frame_components=
    undef_method :frame_components=
    
    attr_accessor :component_ids
    alias_method :attr_component_ids, :component_ids
    undef_method :component_ids
    alias_method :attr_component_ids=, :component_ids=
    undef_method :component_ids=
    
    attr_accessor :image_components
    alias_method :attr_image_components, :image_components
    undef_method :image_components
    alias_method :attr_image_components=, :image_components=
    undef_method :image_components=
    
    attr_accessor :data_unit
    alias_method :attr_data_unit, :data_unit
    undef_method :data_unit
    alias_method :attr_data_unit=, :data_unit=
    undef_method :data_unit=
    
    attr_accessor :data_units
    alias_method :attr_data_units, :data_units
    undef_method :data_units
    alias_method :attr_data_units=, :data_units=
    undef_method :data_units=
    
    attr_accessor :preceding_dcs
    alias_method :attr_preceding_dcs, :preceding_dcs
    undef_method :preceding_dcs
    alias_method :attr_preceding_dcs=, :preceding_dcs=
    undef_method :preceding_dcs=
    
    attr_accessor :scan_header
    alias_method :attr_scan_header, :scan_header
    undef_method :scan_header
    alias_method :attr_scan_header=, :scan_header=
    undef_method :scan_header=
    
    attr_accessor :data_buffer
    alias_method :attr_data_buffer, :data_buffer
    undef_method :data_buffer
    alias_method :attr_data_buffer=, :data_buffer=
    undef_method :data_buffer=
    
    attr_accessor :current_bit_count
    alias_method :attr_current_bit_count, :current_bit_count
    undef_method :current_bit_count
    alias_method :attr_current_bit_count=, :current_bit_count=
    undef_method :current_bit_count=
    
    attr_accessor :buffer_current_position
    alias_method :attr_buffer_current_position, :buffer_current_position
    undef_method :buffer_current_position
    alias_method :attr_buffer_current_position=, :buffer_current_position=
    undef_method :buffer_current_position=
    
    attr_accessor :restarts_to_go
    alias_method :attr_restarts_to_go, :restarts_to_go
    undef_method :restarts_to_go
    alias_method :attr_restarts_to_go=, :restarts_to_go=
    undef_method :restarts_to_go=
    
    attr_accessor :next_restart_number
    alias_method :attr_next_restart_number, :next_restart_number
    undef_method :next_restart_number
    alias_method :attr_next_restart_number=, :next_restart_number=
    undef_method :next_restart_number=
    
    attr_accessor :ac_huffman_tables
    alias_method :attr_ac_huffman_tables, :ac_huffman_tables
    undef_method :ac_huffman_tables
    alias_method :attr_ac_huffman_tables=, :ac_huffman_tables=
    undef_method :ac_huffman_tables=
    
    attr_accessor :dc_huffman_tables
    alias_method :attr_dc_huffman_tables, :dc_huffman_tables
    undef_method :dc_huffman_tables
    alias_method :attr_dc_huffman_tables=, :dc_huffman_tables=
    undef_method :dc_huffman_tables=
    
    attr_accessor :quantization_tables
    alias_method :attr_quantization_tables, :quantization_tables
    undef_method :quantization_tables
    alias_method :attr_quantization_tables=, :quantization_tables=
    undef_method :quantization_tables=
    
    attr_accessor :current_byte
    alias_method :attr_current_byte, :current_byte
    undef_method :current_byte
    alias_method :attr_current_byte=, :current_byte=
    undef_method :current_byte=
    
    attr_accessor :encoder_qfactor
    alias_method :attr_encoder_qfactor, :encoder_qfactor
    undef_method :encoder_qfactor
    alias_method :attr_encoder_qfactor=, :encoder_qfactor=
    undef_method :encoder_qfactor=
    
    attr_accessor :eobrun
    alias_method :attr_eobrun, :eobrun
    undef_method :eobrun
    alias_method :attr_eobrun=, :eobrun=
    undef_method :eobrun=
    
    class_module.module_eval {
      # JPEGConstants
      const_set_lazy(:DCTSIZE) { 8 }
      const_attr_reader  :DCTSIZE
      
      const_set_lazy(:DCTSIZESQR) { 64 }
      const_attr_reader  :DCTSIZESQR
      
      # JPEGFixedPointConstants
      const_set_lazy(:FIX_0_899976223) { 7373 }
      const_attr_reader  :FIX_0_899976223
      
      const_set_lazy(:FIX_1_961570560) { 16069 }
      const_attr_reader  :FIX_1_961570560
      
      const_set_lazy(:FIX_2_053119869) { 16819 }
      const_attr_reader  :FIX_2_053119869
      
      const_set_lazy(:FIX_0_298631336) { 2446 }
      const_attr_reader  :FIX_0_298631336
      
      const_set_lazy(:FIX_1_847759065) { 15137 }
      const_attr_reader  :FIX_1_847759065
      
      const_set_lazy(:FIX_1_175875602) { 9633 }
      const_attr_reader  :FIX_1_175875602
      
      const_set_lazy(:FIX_3_072711026) { 25172 }
      const_attr_reader  :FIX_3_072711026
      
      const_set_lazy(:FIX_0_765366865) { 6270 }
      const_attr_reader  :FIX_0_765366865
      
      const_set_lazy(:FIX_2_562915447) { 20995 }
      const_attr_reader  :FIX_2_562915447
      
      const_set_lazy(:FIX_0_541196100) { 4433 }
      const_attr_reader  :FIX_0_541196100
      
      const_set_lazy(:FIX_0_390180644) { 3196 }
      const_attr_reader  :FIX_0_390180644
      
      const_set_lazy(:FIX_1_501321110) { 12299 }
      const_attr_reader  :FIX_1_501321110
      
      # JPEGMarkerCodes
      const_set_lazy(:APP0) { 0xffe0 }
      const_attr_reader  :APP0
      
      const_set_lazy(:APP15) { 0xffef }
      const_attr_reader  :APP15
      
      const_set_lazy(:COM) { 0xfffe }
      const_attr_reader  :COM
      
      const_set_lazy(:DAC) { 0xffcc }
      const_attr_reader  :DAC
      
      const_set_lazy(:DHP) { 0xffde }
      const_attr_reader  :DHP
      
      const_set_lazy(:DHT) { 0xffc4 }
      const_attr_reader  :DHT
      
      const_set_lazy(:DNL) { 0xffdc }
      const_attr_reader  :DNL
      
      const_set_lazy(:DRI) { 0xffdd }
      const_attr_reader  :DRI
      
      const_set_lazy(:DQT) { 0xffdb }
      const_attr_reader  :DQT
      
      const_set_lazy(:EOI) { 0xffd9 }
      const_attr_reader  :EOI
      
      const_set_lazy(:EXP) { 0xffdf }
      const_attr_reader  :EXP
      
      const_set_lazy(:JPG) { 0xffc8 }
      const_attr_reader  :JPG
      
      const_set_lazy(:JPG0) { 0xfff0 }
      const_attr_reader  :JPG0
      
      const_set_lazy(:JPG13) { 0xfffd }
      const_attr_reader  :JPG13
      
      const_set_lazy(:RST0) { 0xffd0 }
      const_attr_reader  :RST0
      
      const_set_lazy(:RST1) { 0xffd1 }
      const_attr_reader  :RST1
      
      const_set_lazy(:RST2) { 0xffd2 }
      const_attr_reader  :RST2
      
      const_set_lazy(:RST3) { 0xffd3 }
      const_attr_reader  :RST3
      
      const_set_lazy(:RST4) { 0xffd4 }
      const_attr_reader  :RST4
      
      const_set_lazy(:RST5) { 0xffd5 }
      const_attr_reader  :RST5
      
      const_set_lazy(:RST6) { 0xffd6 }
      const_attr_reader  :RST6
      
      const_set_lazy(:RST7) { 0xffd7 }
      const_attr_reader  :RST7
      
      const_set_lazy(:SOF0) { 0xffc0 }
      const_attr_reader  :SOF0
      
      const_set_lazy(:SOF1) { 0xffc1 }
      const_attr_reader  :SOF1
      
      const_set_lazy(:SOF2) { 0xffc2 }
      const_attr_reader  :SOF2
      
      const_set_lazy(:SOF3) { 0xffc3 }
      const_attr_reader  :SOF3
      
      const_set_lazy(:SOF5) { 0xffc5 }
      const_attr_reader  :SOF5
      
      const_set_lazy(:SOF6) { 0xffc6 }
      const_attr_reader  :SOF6
      
      const_set_lazy(:SOF7) { 0xffc7 }
      const_attr_reader  :SOF7
      
      const_set_lazy(:SOF9) { 0xffc9 }
      const_attr_reader  :SOF9
      
      const_set_lazy(:SOF10) { 0xffca }
      const_attr_reader  :SOF10
      
      const_set_lazy(:SOF11) { 0xffcb }
      const_attr_reader  :SOF11
      
      const_set_lazy(:SOF13) { 0xffcd }
      const_attr_reader  :SOF13
      
      const_set_lazy(:SOF14) { 0xffce }
      const_attr_reader  :SOF14
      
      const_set_lazy(:SOF15) { 0xffcf }
      const_attr_reader  :SOF15
      
      const_set_lazy(:SOI) { 0xffd8 }
      const_attr_reader  :SOI
      
      const_set_lazy(:SOS) { 0xffda }
      const_attr_reader  :SOS
      
      const_set_lazy(:TEM) { 0xff01 }
      const_attr_reader  :TEM
      
      # JPEGFrameComponentParameterConstants
      const_set_lazy(:TQI) { 0 }
      const_attr_reader  :TQI
      
      const_set_lazy(:HI) { 1 }
      const_attr_reader  :HI
      
      const_set_lazy(:VI) { 2 }
      const_attr_reader  :VI
      
      const_set_lazy(:CW) { 3 }
      const_attr_reader  :CW
      
      const_set_lazy(:CH) { 4 }
      const_attr_reader  :CH
      
      # JPEGScanComponentParameterConstants
      const_set_lazy(:DC) { 0 }
      const_attr_reader  :DC
      
      const_set_lazy(:AC) { 1 }
      const_attr_reader  :AC
      
      # JFIF Component Constants
      const_set_lazy(:ID_Y) { 1 - 1 }
      const_attr_reader  :ID_Y
      
      const_set_lazy(:ID_CB) { 2 - 1 }
      const_attr_reader  :ID_CB
      
      const_set_lazy(:ID_CR) { 3 - 1 }
      const_attr_reader  :ID_CR
      
      const_set_lazy(:RGB16) { Array.typed(RGB).new([RGB.new(0, 0, 0), RGB.new(0x80, 0, 0), RGB.new(0, 0x80, 0), RGB.new(0x80, 0x80, 0), RGB.new(0, 0, 0x80), RGB.new(0x80, 0, 0x80), RGB.new(0, 0x80, 0x80), RGB.new(0xc0, 0xc0, 0xc0), RGB.new(0x80, 0x80, 0x80), RGB.new(0xff, 0, 0), RGB.new(0, 0xff, 0), RGB.new(0xff, 0xff, 0), RGB.new(0, 0, 0xff), RGB.new(0xff, 0, 0xff), RGB.new(0, 0xff, 0xff), RGB.new(0xff, 0xff, 0xff), ]) }
      const_attr_reader  :RGB16
      
      const_set_lazy(:ExtendTest) { Array.typed(::Java::Int).new([0, 1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144]) }
      const_attr_reader  :ExtendTest
      
      const_set_lazy(:ExtendOffset) { Array.typed(::Java::Int).new([0, -1, -3, -7, -15, -31, -63, -127, -255, -511, -1023, -2047, -4095, -8191, -16383, -32767, -65535, -131071, -262143]) }
      const_attr_reader  :ExtendOffset
      
      const_set_lazy(:ZigZag8x8) { Array.typed(::Java::Int).new([0, 1, 8, 16, 9, 2, 3, 10, 17, 24, 32, 25, 18, 11, 4, 5, 12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13, 6, 7, 14, 21, 28, 35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51, 58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63]) }
      const_attr_reader  :ZigZag8x8
      
      when_class_loaded do
        # Initialize RGB-YCbCr Tables
        r_ytable = Array.typed(::Java::Int).new(256) { 0 }
        g_ytable = Array.typed(::Java::Int).new(256) { 0 }
        b_ytable = Array.typed(::Java::Int).new(256) { 0 }
        r_cb_table = Array.typed(::Java::Int).new(256) { 0 }
        g_cb_table = Array.typed(::Java::Int).new(256) { 0 }
        b_cb_table = Array.typed(::Java::Int).new(256) { 0 }
        g_cr_table = Array.typed(::Java::Int).new(256) { 0 }
        b_cr_table = Array.typed(::Java::Int).new(256) { 0 }
        i = 0
        while i < 256
          r_ytable[i] = i * 19595
          g_ytable[i] = i * 38470
          b_ytable[i] = i * 7471 + 32768
          r_cb_table[i] = i * -11059
          g_cb_table[i] = i * -21709
          b_cb_table[i] = i * 32768 + 8388608
          g_cr_table[i] = i * -27439
          b_cr_table[i] = i * -5329
          i += 1
        end
        const_set :RYTable, r_ytable
        const_set :GYTable, g_ytable
        const_set :BYTable, b_ytable
        const_set :RCbTable, r_cb_table
        const_set :GCbTable, g_cb_table
        const_set :BCbTable, b_cb_table
        const_set :RCrTable, b_cb_table
        const_set :GCrTable, g_cr_table
        const_set :BCrTable, b_cr_table
        # Initialize YCbCr-RGB Tables
        cr_rtable = Array.typed(::Java::Int).new(256) { 0 }
        cb_btable = Array.typed(::Java::Int).new(256) { 0 }
        cr_gtable = Array.typed(::Java::Int).new(256) { 0 }
        cb_gtable = Array.typed(::Java::Int).new(256) { 0 }
        i_ = 0
        while i_ < 256
          x2 = 2 * i_ - 255
          cr_rtable[i_] = (45941 * x2 + 32768) >> 16
          cb_btable[i_] = (58065 * x2 + 32768) >> 16
          cr_gtable[i_] = -23401 * x2
          cb_gtable[i_] = -11277 * x2 + 32768
          i_ += 1
        end
        const_set :CrRTable, cr_rtable
        const_set :CbBTable, cb_btable
        const_set :CrGTable, cr_gtable
        const_set :CbGTable, cb_gtable
        # Initialize BitCount Table
        n_bits = 1
        power2 = 2
        n_bits_table = Array.typed(::Java::Int).new(2048) { 0 }
        n_bits_table[0] = 0
        i__ = 1
        while i__ < n_bits_table.attr_length
          if (!(i__ < power2))
            n_bits += 1
            power2 *= 2
          end
          n_bits_table[i__] = n_bits
          i__ += 1
        end
        const_set :NBitsTable, n_bits_table
      end
    }
    
    typesig { [ImageData, Array.typed(::Java::Byte), Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
    def compress(image, data_ycomp, data_cb_comp, data_cr_comp)
      src_width = image.attr_width
      src_height = image.attr_height
      vh_factor = @max_v * @max_h
      frame_component = nil
      @image_components = Array.typed(::Java::Byte).new(@n_components) { 0 }
      i = 0
      while i < @n_components
        frame_component = @frame_components[@component_ids[i]]
        @image_components[i] = Array.typed(::Java::Byte).new(frame_component[CW] * frame_component[CH]) { 0 }
        i += 1
      end
      frame_component = @frame_components[@component_ids[ID_Y]]
      y_pos = 0
      while y_pos < src_height
        src_ofs = y_pos * src_width
        dst_ofs = y_pos * frame_component[CW]
        System.arraycopy(data_ycomp, src_ofs, @image_components[ID_Y], dst_ofs, src_width)
        y_pos += 1
      end
      frame_component = @frame_components[@component_ids[ID_CB]]
      y_pos_ = 0
      while y_pos_ < src_height / @max_v
        dest_row_index = y_pos_ * frame_component[CW]
        x_pos = 0
        while x_pos < src_width / @max_h
          sum = 0
          iv = 0
          while iv < @max_v
            src_index = (y_pos_ * @max_v + iv) * src_width + (x_pos * @max_h)
            ih = 0
            while ih < @max_h
              sum += data_cb_comp[src_index + ih] & 0xff
              ih += 1
            end
            iv += 1
          end
          @image_components[ID_CB][dest_row_index + x_pos] = (sum / vh_factor)
          x_pos += 1
        end
        y_pos_ += 1
      end
      frame_component = @frame_components[@component_ids[ID_CR]]
      y_pos__ = 0
      while y_pos__ < src_height / @max_v
        dest_row_index = y_pos__ * frame_component[CW]
        x_pos = 0
        while x_pos < src_width / @max_h
          sum = 0
          iv = 0
          while iv < @max_v
            src_index = (y_pos__ * @max_v + iv) * src_width + (x_pos * @max_h)
            ih = 0
            while ih < @max_h
              sum += data_cr_comp[src_index + ih] & 0xff
              ih += 1
            end
            iv += 1
          end
          @image_components[ID_CR][dest_row_index + x_pos] = (sum / vh_factor)
          x_pos += 1
        end
        y_pos__ += 1
      end
      i_comp = 0
      while i_comp < @n_components
        image_component = @image_components[i_comp]
        frame_component = @frame_components[@component_ids[i_comp]]
        h_factor = frame_component[HI]
        v_factor = frame_component[VI]
        component_width = frame_component[CW]
        component_height = frame_component[CH]
        compressed_width = src_width / (@max_h / h_factor)
        compressed_height = src_height / (@max_v / v_factor)
        if (compressed_width < component_width)
          delta = component_width - compressed_width
          y_pos___ = 0
          while y_pos___ < compressed_height
            dst_ofs = ((y_pos___ + 1) * component_width - delta)
            data_value = image_component[(dst_ofs > 0) ? dst_ofs - 1 : 0] & 0xff
            i_ = 0
            while i_ < delta
              image_component[dst_ofs + i_] = data_value
              i_ += 1
            end
            y_pos___ += 1
          end
        end
        if (compressed_height < component_height)
          src_ofs = (compressed_height > 0) ? (compressed_height - 1) * component_width : 1
          y_pos___ = (compressed_height > 0) ? compressed_height : 1
          while y_pos___ <= component_height
            dst_ofs = (y_pos___ - 1) * component_width
            System.arraycopy(image_component, src_ofs, image_component, dst_ofs, component_width)
            y_pos___ += 1
          end
        end
        i_comp += 1
      end
    end
    
    typesig { [ImageData] }
    def convert4_bit_rgbto_ycb_cr(image)
      rgbs = image.get_rgbs
      palette_size = rgbs.attr_length
      y_comp = Array.typed(::Java::Byte).new(palette_size) { 0 }
      cb_comp = Array.typed(::Java::Byte).new(palette_size) { 0 }
      cr_comp = Array.typed(::Java::Byte).new(palette_size) { 0 }
      src_width = image.attr_width
      src_height = image.attr_height
      i = 0
      while i < palette_size
        color = rgbs[i]
        r = color.attr_red
        g = color.attr_green
        b = color.attr_blue
        n = RYTable[r] + GYTable[g] + BYTable[b]
        y_comp[i] = (n >> 16)
        if ((n < 0) && (!((n & 0xffff)).equal?(0)))
          y_comp[i] -= 1
        end
        n = RCbTable[r] + GCbTable[g] + BCbTable[b]
        cb_comp[i] = (n >> 16)
        if ((n < 0) && (!((n & 0xffff)).equal?(0)))
          cb_comp[i] -= 1
        end
        n = RCrTable[r] + GCrTable[g] + BCrTable[b]
        cr_comp[i] = (n >> 16)
        if ((n < 0) && (!((n & 0xffff)).equal?(0)))
          cr_comp[i] -= 1
        end
        i += 1
      end
      b_size = src_width * src_height
      data_ycomp = Array.typed(::Java::Byte).new(b_size) { 0 }
      data_cb_comp = Array.typed(::Java::Byte).new(b_size) { 0 }
      data_cr_comp = Array.typed(::Java::Byte).new(b_size) { 0 }
      orig_data = image.attr_data
      bytes_per_line = image.attr_bytes_per_line
      max_scanline_byte = src_width >> 1
      y_pos = 0
      while y_pos < src_height
        x_pos = 0
        while x_pos < max_scanline_byte
          src_index = y_pos * bytes_per_line + x_pos
          dst_index = y_pos * src_width + (x_pos * 2)
          value2 = orig_data[src_index] & 0xff
          value1 = value2 >> 4
          value2 &= 0xf
          data_ycomp[dst_index] = y_comp[value1]
          data_cb_comp[dst_index] = cb_comp[value1]
          data_cr_comp[dst_index] = cr_comp[value1]
          data_ycomp[dst_index + 1] = y_comp[value2]
          data_cb_comp[dst_index + 1] = cb_comp[value2]
          data_cr_comp[dst_index + 1] = cr_comp[value2]
          x_pos += 1
        end
        y_pos += 1
      end
      compress(image, data_ycomp, data_cb_comp, data_cr_comp)
    end
    
    typesig { [ImageData] }
    def convert8_bit_rgbto_ycb_cr(image)
      rgbs = image.get_rgbs
      palette_size = rgbs.attr_length
      y_comp = Array.typed(::Java::Byte).new(palette_size) { 0 }
      cb_comp = Array.typed(::Java::Byte).new(palette_size) { 0 }
      cr_comp = Array.typed(::Java::Byte).new(palette_size) { 0 }
      src_width = image.attr_width
      src_height = image.attr_height
      i = 0
      while i < palette_size
        color = rgbs[i]
        r = color.attr_red
        g = color.attr_green
        b = color.attr_blue
        n = RYTable[r] + GYTable[g] + BYTable[b]
        y_comp[i] = (n >> 16)
        if ((n < 0) && (!((n & 0xffff)).equal?(0)))
          y_comp[i] -= 1
        end
        n = RCbTable[r] + GCbTable[g] + BCbTable[b]
        cb_comp[i] = (n >> 16)
        if ((n < 0) && (!((n & 0xffff)).equal?(0)))
          cb_comp[i] -= 1
        end
        n = RCrTable[r] + GCrTable[g] + BCrTable[b]
        cr_comp[i] = (n >> 16)
        if ((n < 0) && (!((n & 0xffff)).equal?(0)))
          cr_comp[i] -= 1
        end
        i += 1
      end
      dst_width = image.attr_width
      dst_height = src_height
      stride = ((src_width + 3) >> 2) << 2
      b_size = dst_width * dst_height
      data_ycomp = Array.typed(::Java::Byte).new(b_size) { 0 }
      data_cb_comp = Array.typed(::Java::Byte).new(b_size) { 0 }
      data_cr_comp = Array.typed(::Java::Byte).new(b_size) { 0 }
      orig_data = image.attr_data
      y_pos = 0
      while y_pos < src_height
        src_row_index = y_pos * stride
        dst_row_index = y_pos * dst_width
        x_pos = 0
        while x_pos < src_width
          value = orig_data[src_row_index + x_pos] & 0xff
          dst_index = dst_row_index + x_pos
          data_ycomp[dst_index] = y_comp[value]
          data_cb_comp[dst_index] = cb_comp[value]
          data_cr_comp[dst_index] = cr_comp[value]
          x_pos += 1
        end
        y_pos += 1
      end
      compress(image, data_ycomp, data_cb_comp, data_cr_comp)
    end
    
    typesig { [] }
    def convert_cmykto_rgb
      # Unsupported CMYK format. Answer an empty byte array.
      return Array.typed(::Java::Byte).new(0) { 0 }
    end
    
    typesig { [ImageData] }
    def convert_image_to_ycb_cr(image)
      case (image.attr_depth)
      when 4
        convert4_bit_rgbto_ycb_cr(image)
        return
      when 8
        convert8_bit_rgbto_ycb_cr(image)
        return
      when 16, 24, 32
        convert_multi_rgbto_ycb_cr(image)
        return
      else
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      return
    end
    
    typesig { [ImageData] }
    def convert_multi_rgbto_ycb_cr(image)
      src_width = image.attr_width
      src_height = image.attr_height
      b_size = src_width * src_height
      data_ycomp = Array.typed(::Java::Byte).new(b_size) { 0 }
      data_cb_comp = Array.typed(::Java::Byte).new(b_size) { 0 }
      data_cr_comp = Array.typed(::Java::Byte).new(b_size) { 0 }
      palette = image.attr_palette
      buffer = Array.typed(::Java::Int).new(src_width) { 0 }
      if (palette.attr_is_direct)
        red_mask = palette.attr_red_mask
        green_mask = palette.attr_green_mask
        blue_mask = palette.attr_blue_mask
        red_shift = palette.attr_red_shift
        green_shift = palette.attr_green_shift
        blue_shift = palette.attr_blue_shift
        y_pos = 0
        while y_pos < src_height
          image.get_pixels(0, y_pos, src_width, buffer, 0)
          dst_row_index = y_pos * src_width
          x_pos = 0
          while x_pos < src_width
            pixel = buffer[x_pos]
            dst_data_index = dst_row_index + x_pos
            r = pixel & red_mask
            r = (red_shift < 0) ? r >> -red_shift : r << red_shift
            g = pixel & green_mask
            g = (green_shift < 0) ? g >> -green_shift : g << green_shift
            b = pixel & blue_mask
            b = (blue_shift < 0) ? b >> -blue_shift : b << blue_shift
            data_ycomp[dst_data_index] = ((RYTable[r] + GYTable[g] + BYTable[b]) >> 16)
            data_cb_comp[dst_data_index] = ((RCbTable[r] + GCbTable[g] + BCbTable[b]) >> 16)
            data_cr_comp[dst_data_index] = ((RCrTable[r] + GCrTable[g] + BCrTable[b]) >> 16)
            x_pos += 1
          end
          y_pos += 1
        end
      else
        y_pos = 0
        while y_pos < src_height
          image.get_pixels(0, y_pos, src_width, buffer, 0)
          dst_row_index = y_pos * src_width
          x_pos = 0
          while x_pos < src_width
            pixel = buffer[x_pos]
            dst_data_index = dst_row_index + x_pos
            rgb = palette.get_rgb(pixel)
            r = rgb.attr_red
            g = rgb.attr_green
            b = rgb.attr_blue
            data_ycomp[dst_data_index] = ((RYTable[r] + GYTable[g] + BYTable[b]) >> 16)
            data_cb_comp[dst_data_index] = ((RCbTable[r] + GCbTable[g] + BCbTable[b]) >> 16)
            data_cr_comp[dst_data_index] = ((RCrTable[r] + GCrTable[g] + BCrTable[b]) >> 16)
            x_pos += 1
          end
          y_pos += 1
        end
      end
      compress(image, data_ycomp, data_cb_comp, data_cr_comp)
    end
    
    typesig { [] }
    def convert_yto_rgb
      comp_width = @frame_components[@component_ids[ID_Y]][CW]
      bytes_per_line = (((@image_width * 8 + 7) / 8) + 3) / 4 * 4
      data = Array.typed(::Java::Byte).new(bytes_per_line * @image_height) { 0 }
      y_comp = @image_components[ID_Y]
      dest_index = 0
      i = 0
      while i < @image_height
        src_index = i * comp_width
        j = 0
        while j < bytes_per_line
          y = y_comp[src_index] & 0xff
          if (y < 0)
            y = 0
          else
            if (y > 255)
              y = 255
            end
          end
          if (j >= @image_width)
            y = 0
          end
          data[dest_index] = y
          src_index += 1
          dest_index += 1
          j += 1
        end
        i += 1
      end
      return data
    end
    
    typesig { [] }
    def convert_ycb_cr_to_rgb
      # Convert existing image components into an RGB format.
      # YCbCr is defined per CCIR 601-1, except that Cb and Cr are
      # normalized to the range 0..MAXJSAMPLE rather than -0.5 .. 0.5.
      # The conversion equations to be implemented are therefore
      # R = Y                + 1.40200 * Cr
      # G = Y - 0.34414 * Cb - 0.71414 * Cr
      # B = Y + 1.77200 * Cb
      # where Cb and Cr represent the incoming values less MAXJSAMPLE/2.
      # (These numbers are derived from TIFF 6.0 section 21, dated 3-June-92.)
      # 
      # To avoid floating-point arithmetic, we represent the fractional constants
      # as integers scaled up by 2^16 (about 4 digits precision); we have to divide
      # the products by 2^16, with appropriate rounding, to get the correct answer.
      # Notice that Y, being an integral input, does not contribute any fraction
      # so it need not participate in the rounding.
      # 
      # For even more speed, we avoid doing any multiplications in the inner loop
      # by precalculating the constants times Cb and Cr for all possible values.
      # For 8-bit JSAMPLEs this is very reasonable (only 256 entries per table);
      # for 12-bit samples it is still acceptable.  It's not very reasonable for
      # 16-bit samples, but if you want lossless storage you shouldn't be changing
      # colorspace anyway.
      # The Cr=>R and Cb=>B values can be rounded to integers in advance; the
      # values for the G calculation are left scaled up, since we must add them
      # together before rounding.
      b_size = @image_width * @image_height * @n_components
      rgb_data = Array.typed(::Java::Byte).new(b_size) { 0 }
      dest_index = 0
      expand_image_components
      y_comp = @image_components[ID_Y]
      cb_comp = @image_components[ID_CB]
      cr_comp = @image_components[ID_CR]
      comp_width = @frame_components[@component_ids[ID_Y]][CW]
      v = 0
      while v < @image_height
        src_index = v * comp_width
        i = 0
        while i < @image_width
          y = y_comp[src_index] & 0xff
          cb = cb_comp[src_index] & 0xff
          cr = cr_comp[src_index] & 0xff
          r = y + CrRTable[cr]
          g = y + ((CbGTable[cb] + CrGTable[cr]) >> 16)
          b = y + CbBTable[cb]
          if (r < 0)
            r = 0
          else
            if (r > 255)
              r = 255
            end
          end
          if (g < 0)
            g = 0
          else
            if (g > 255)
              g = 255
            end
          end
          if (b < 0)
            b = 0
          else
            if (b > 255)
              b = 255
            end
          end
          rgb_data[dest_index] = b
          rgb_data[dest_index + 1] = g
          rgb_data[dest_index + 2] = r
          dest_index += 3
          src_index += 1
          i += 1
        end
        v += 1
      end
      return rgb_data
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def decode_accoefficients(data_unit, i_comp)
      s_params = @scan_header.attr_component_parameters[@component_ids[i_comp]]
      ac_table = @ac_huffman_tables[s_params[AC]]
      k = 1
      while (k < 64)
        rs = decode_using_table(ac_table)
        r = rs >> 4
        s = rs & 0xf
        if ((s).equal?(0))
          if ((r).equal?(15))
            k += 16
          else
            break
          end
        else
          k += r
          bits = receive(s)
          data_unit[ZigZag8x8[k]] = extend_by(bits, s)
          k += 1
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def decode_acfirst_coefficients(data_unit, i_comp, start, end_, approx_bit)
      if (@eobrun > 0)
        @eobrun -= 1
        return
      end
      s_params = @scan_header.attr_component_parameters[@component_ids[i_comp]]
      ac_table = @ac_huffman_tables[s_params[AC]]
      k = start
      while (k <= end_)
        rs = decode_using_table(ac_table)
        r = rs >> 4
        s = rs & 0xf
        if ((s).equal?(0))
          if ((r).equal?(15))
            k += 16
          else
            @eobrun = (1 << r) + receive(r) - 1
            break
          end
        else
          k += r
          bits = receive(s)
          data_unit[ZigZag8x8[k]] = extend_by(bits, s) << approx_bit
          k += 1
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def decode_acrefine_coefficients(data_unit, i_comp, start, end_, approx_bit)
      s_params = @scan_header.attr_component_parameters[@component_ids[i_comp]]
      ac_table = @ac_huffman_tables[s_params[AC]]
      k = start
      while (k <= end_)
        if (@eobrun > 0)
          while (k <= end_)
            zz_index = ZigZag8x8[k]
            if (!(data_unit[zz_index]).equal?(0))
              data_unit[zz_index] = refine_ac(data_unit[zz_index], approx_bit)
            end
            k += 1
          end
          @eobrun -= 1
        else
          rs = decode_using_table(ac_table)
          r = rs >> 4
          s = rs & 0xf
          if ((s).equal?(0))
            if ((r).equal?(15))
              zeros = 0
              while (zeros < 16 && k <= end_)
                zz_index = ZigZag8x8[k]
                if (!(data_unit[zz_index]).equal?(0))
                  data_unit[zz_index] = refine_ac(data_unit[zz_index], approx_bit)
                else
                  zeros += 1
                end
                k += 1
              end
            else
              @eobrun = (1 << r) + receive(r)
            end
          else
            bit = receive(s)
            zeros = 0
            zz_index = ZigZag8x8[k]
            while ((zeros < r || !(data_unit[zz_index]).equal?(0)) && k <= end_)
              if (!(data_unit[zz_index]).equal?(0))
                data_unit[zz_index] = refine_ac(data_unit[zz_index], approx_bit)
              else
                zeros += 1
              end
              k += 1
              zz_index = ZigZag8x8[k]
            end
            if (!(bit).equal?(0))
              data_unit[zz_index] = 1 << approx_bit
            else
              data_unit[zz_index] = -1 << approx_bit
            end
            k += 1
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def refine_ac(ac, approx_bit)
      if (ac > 0)
        bit = next_bit
        if (!(bit).equal?(0))
          ac += 1 << approx_bit
        end
      else
        if (ac < 0)
          bit = next_bit
          if (!(bit).equal?(0))
            ac += -1 << approx_bit
          end
        end
      end
      return ac
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Boolean, ::Java::Int] }
    def decode_dccoefficient(data_unit, i_comp, first, approx_bit)
      s_params = @scan_header.attr_component_parameters[@component_ids[i_comp]]
      dc_table = @dc_huffman_tables[s_params[DC]]
      last_dc = 0
      if (@progressive && !first)
        bit = next_bit
        last_dc = data_unit[0] + (bit << approx_bit)
      else
        last_dc = @preceding_dcs[i_comp]
        n_bits = decode_using_table(dc_table)
        if (!(n_bits).equal?(0))
          bits = receive(n_bits)
          diff = extend_by(bits, n_bits)
          last_dc += diff
          @preceding_dcs[i_comp] = last_dc
        end
        if (@progressive)
          last_dc = last_dc << approx_bit
        end
      end
      data_unit[0] = last_dc
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def dequantize(data_unit, i_comp)
      q_table = @quantization_tables[@frame_components[@component_ids[i_comp]][TQI]]
      i = 0
      while i < data_unit.attr_length
        zz_index = ZigZag8x8[i]
        data_unit[zz_index] = data_unit[zz_index] * q_table[i]
        i += 1
      end
    end
    
    typesig { [] }
    def decode_image_components
      if ((@n_components).equal?(3))
        # compIds 1, 2, 3
        return convert_ycb_cr_to_rgb
      end
      # if (nComponents == 3) { // compIds 1, 4, 5
      # Unsupported CMYK format.
      # return convertYIQToRGB();
      # }
      if ((@n_components).equal?(4))
        return convert_cmykto_rgb
      end
      return convert_yto_rgb
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
    def decode_mcuat_xand_y(xmcu, ymcu, n_components_in_scan, first, start, end_, approx_bit)
      i_comp = 0
      while i_comp < n_components_in_scan
        scan_component = i_comp
        while ((@scan_header.attr_component_parameters[@component_ids[scan_component]]).nil?)
          scan_component += 1
        end
        frame_component = @frame_components[@component_ids[scan_component]]
        hi = frame_component[HI]
        vi = frame_component[VI]
        if ((n_components_in_scan).equal?(1))
          hi = 1
          vi = 1
        end
        comp_width = frame_component[CW]
        ivi = 0
        while ivi < vi
          ihi = 0
          while ihi < hi
            if (@progressive)
              # Progressive: First scan - create a new data unit.
              # Subsequent scans - refine the existing data unit.
              index = (ymcu * vi + ivi) * comp_width + xmcu * hi + ihi
              @data_unit = @data_units[scan_component][index]
              if ((@data_unit).nil?)
                @data_unit = Array.typed(::Java::Int).new(64) { 0 }
                @data_units[scan_component][index] = @data_unit
              end
            else
              # Sequential: Clear and reuse the data unit buffer.
              i = 0
              while i < @data_unit.attr_length
                @data_unit[i] = 0
                i += 1
              end
            end
            if (!@progressive || @scan_header.is_dcprogressive_scan)
              decode_dccoefficient(@data_unit, scan_component, first, approx_bit)
            end
            if (!@progressive)
              decode_accoefficients(@data_unit, scan_component)
            else
              if (@scan_header.is_acprogressive_scan)
                if (first)
                  decode_acfirst_coefficients(@data_unit, scan_component, start, end_, approx_bit)
                else
                  decode_acrefine_coefficients(@data_unit, scan_component, start, end_, approx_bit)
                end
              end
              if (self.attr_loader.has_listeners)
                # Dequantization, IDCT, up-sampling and color conversion
                # are done on a copy of the coefficient data in order to
                # display the image incrementally.
                temp = @data_unit
                @data_unit = Array.typed(::Java::Int).new(64) { 0 }
                System.arraycopy(temp, 0, @data_unit, 0, 64)
              end
            end
            if (!@progressive || (@progressive && self.attr_loader.has_listeners))
              dequantize(@data_unit, scan_component)
              inverse_dct(@data_unit)
              store_data(@data_unit, scan_component, xmcu, ymcu, hi, ihi, vi, ivi)
            end
            ihi += 1
          end
          ivi += 1
        end
        i_comp += 1
      end
    end
    
    typesig { [] }
    def decode_scan
      if (@progressive && !@scan_header.verify_progressive_scan)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      n_components_in_scan = @scan_header.get_number_of_image_components
      mcu_rows_in_scan = @interleaved_mcu_rows
      mcus_per_row = @interleaved_mcu_cols
      if ((n_components_in_scan).equal?(1))
        # Non-interleaved.
        scan_component = 0
        while ((@scan_header.attr_component_parameters[@component_ids[scan_component]]).nil?)
          scan_component += 1
        end
        frame_component = @frame_components[@component_ids[scan_component]]
        hi = frame_component[HI]
        vi = frame_component[VI]
        mcu_width = DCTSIZE * @max_h / hi
        mcu_height = DCTSIZE * @max_v / vi
        mcus_per_row = (@image_width + mcu_width - 1) / mcu_width
        mcu_rows_in_scan = (@image_height + mcu_height - 1) / mcu_height
      end
      first = @scan_header.is_first_scan
      start = @scan_header.get_start_of_spectral_selection
      end_ = @scan_header.get_end_of_spectral_selection
      approx_bit = @scan_header.get_approx_bit_position_low
      @restarts_to_go = @restart_interval
      @next_restart_number = 0
      ymcu = 0
      while ymcu < mcu_rows_in_scan
        xmcu = 0
        while xmcu < mcus_per_row
          if (!(@restart_interval).equal?(0))
            if ((@restarts_to_go).equal?(0))
              process_restart_interval
            end
            @restarts_to_go -= 1
          end
          decode_mcuat_xand_y(xmcu, ymcu, n_components_in_scan, first, start, end_, approx_bit)
          xmcu += 1
        end
        ymcu += 1
      end
    end
    
    typesig { [JPEGHuffmanTable] }
    def decode_using_table(huffman_table)
      i = 0
      max_codes = huffman_table.get_dh_max_codes
      min_codes = huffman_table.get_dh_min_codes
      val_ptrs = huffman_table.get_dh_val_ptrs
      huff_vals = huffman_table.get_dh_values
      code = next_bit
      while (code > max_codes[i])
        code = code * 2 + next_bit
        i += 1
      end
      j = val_ptrs[i] + code - min_codes[i]
      return huff_vals[j]
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def emit(huff_code, n_bits)
      if ((n_bits).equal?(0))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      power2m1 = Array.typed(::Java::Int).new([1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131125])
      code = (huff_code & power2m1[n_bits - 1]) << (24 - n_bits - @current_bit_count)
      code_buffer = Array.typed(::Java::Byte).new(4) { 0 }
      code_buffer[0] = (code & 0xff)
      code_buffer[1] = ((code >> 8) & 0xff)
      code_buffer[2] = ((code >> 16) & 0xff)
      code_buffer[3] = ((code >> 24) & 0xff)
      abs = n_bits - (8 - @current_bit_count)
      if (abs < 0)
        abs = -abs
      end
      if ((abs >> 3) > 0)
        @current_byte += code_buffer[2]
        emit_byte(@current_byte)
        emit_byte(code_buffer[1])
        @current_byte = code_buffer[0]
        @current_bit_count += n_bits - 16
      else
        @current_bit_count += n_bits
        if (@current_bit_count >= 8)
          @current_byte += code_buffer[2]
          emit_byte(@current_byte)
          @current_byte = code_buffer[1]
          @current_bit_count -= 8
        else
          @current_byte += code_buffer[2]
        end
      end
    end
    
    typesig { [::Java::Byte] }
    def emit_byte(byte_value)
      if (@buffer_current_position >= 512)
        reset_output_buffer
      end
      @data_buffer[@buffer_current_position] = byte_value
      @buffer_current_position += 1
      if ((byte_value).equal?(-1))
        emit_byte(0)
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def encode_accoefficients(data_unit, i_comp)
      s_params = @scan_header.attr_component_parameters[i_comp]
      ac_table = @ac_huffman_tables[s_params[AC]]
      eh_codes = ac_table.attr_eh_codes
      eh_sizes = ac_table.attr_eh_code_lengths
      r = 0
      k = 1
      while (k < 64)
        k += 1
        ac_value = data_unit[ZigZag8x8[k - 1]]
        if ((ac_value).equal?(0))
          if ((k).equal?(64))
            emit(eh_codes[0], eh_sizes[0] & 0xff)
          else
            r += 1
          end
        else
          while (r > 15)
            emit(eh_codes[0xf0], eh_sizes[0xf0] & 0xff)
            r -= 16
          end
          if (ac_value < 0)
            abs_acvalue = ac_value
            if (abs_acvalue < 0)
              abs_acvalue = -abs_acvalue
            end
            n_bits = NBitsTable[abs_acvalue]
            rs = r * 16 + n_bits
            emit(eh_codes[rs], eh_sizes[rs] & 0xff)
            emit(0xffffff - abs_acvalue, n_bits)
          else
            n_bits = NBitsTable[ac_value]
            rs = r * 16 + n_bits
            emit(eh_codes[rs], eh_sizes[rs] & 0xff)
            emit(ac_value, n_bits)
          end
          r = 0
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def encode_dccoefficients(data_unit, i_comp)
      s_params = @scan_header.attr_component_parameters[i_comp]
      dc_table = @dc_huffman_tables[s_params[DC]]
      last_dc = @preceding_dcs[i_comp]
      dc_value = data_unit[0]
      diff = dc_value - last_dc
      @preceding_dcs[i_comp] = dc_value
      if (diff < 0)
        abs_diff = 0 - diff
        n_bits = NBitsTable[abs_diff]
        emit(dc_table.attr_eh_codes[n_bits], dc_table.attr_eh_code_lengths[n_bits])
        emit(0xffffff - abs_diff, n_bits)
      else
        n_bits = NBitsTable[diff]
        emit(dc_table.attr_eh_codes[n_bits], dc_table.attr_eh_code_lengths[n_bits])
        if (!(n_bits).equal?(0))
          emit(diff, n_bits)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def encode_mcuat_xand_y(xmcu, ymcu)
      n_components_in_scan = @scan_header.get_number_of_image_components
      @data_unit = Array.typed(::Java::Int).new(64) { 0 }
      i_comp = 0
      while i_comp < n_components_in_scan
        frame_component = @frame_components[@component_ids[i_comp]]
        hi = frame_component[HI]
        vi = frame_component[VI]
        ivi = 0
        while ivi < vi
          ihi = 0
          while ihi < hi
            extract_data(@data_unit, i_comp, xmcu, ymcu, ihi, ivi)
            forward_dct(@data_unit)
            quantize_data(@data_unit, i_comp)
            encode_dccoefficients(@data_unit, i_comp)
            encode_accoefficients(@data_unit, i_comp)
            ihi += 1
          end
          ivi += 1
        end
        i_comp += 1
      end
    end
    
    typesig { [] }
    def encode_scan
      ymcu = 0
      while ymcu < @interleaved_mcu_rows
        xmcu = 0
        while xmcu < @interleaved_mcu_cols
          encode_mcuat_xand_y(xmcu, ymcu)
          xmcu += 1
        end
        ymcu += 1
      end
      if (!(@current_bit_count).equal?(0))
        emit_byte(@current_byte)
      end
      reset_output_buffer
    end
    
    typesig { [] }
    def expand_image_components
      i_comp = 0
      while i_comp < @n_components
        frame_component = @frame_components[@component_ids[i_comp]]
        hi = frame_component[HI]
        vi = frame_component[VI]
        up_h = @max_h / hi
        up_v = @max_v / vi
        if ((up_h * up_v) > 1)
          component = @image_components[i_comp]
          comp_width = frame_component[CW]
          comp_height = frame_component[CH]
          up_comp_width = comp_width * up_h
          up_comp_height = comp_height * up_v
          src = ImageData.new(comp_width, comp_height, 8, PaletteData.new(RGB16), 4, component)
          dest = src.scaled_to(up_comp_width, up_comp_height)
          @image_components[i_comp] = dest.attr_data
        end
        i_comp += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def extend_by(diff, t)
      if (diff < ExtendTest[t])
        return diff + ExtendOffset[t]
      else
        return diff
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def extract_data(data_unit, i_comp, xmcu, ymcu, ihi, ivi)
      comp_image = @image_components[i_comp]
      frame_component = @frame_components[@component_ids[i_comp]]
      hi = frame_component[HI]
      vi = frame_component[VI]
      comp_width = frame_component[CW]
      src_index = ((ymcu * vi + ivi) * comp_width * DCTSIZE) + ((xmcu * hi + ihi) * DCTSIZE)
      dest_index = 0
      i = 0
      while i < DCTSIZE
        col = 0
        while col < DCTSIZE
          data_unit[dest_index] = (comp_image[src_index + col] & 0xff) - 128
          dest_index += 1
          col += 1
        end
        src_index += comp_width
        i += 1
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def forward_dct(data_unit)
      row = 0
      while row < 8
        r_index = row * DCTSIZE
        tmp0 = data_unit[r_index] + data_unit[r_index + 7]
        tmp7 = data_unit[r_index] - data_unit[r_index + 7]
        tmp1 = data_unit[r_index + 1] + data_unit[r_index + 6]
        tmp6 = data_unit[r_index + 1] - data_unit[r_index + 6]
        tmp2 = data_unit[r_index + 2] + data_unit[r_index + 5]
        tmp5 = data_unit[r_index + 2] - data_unit[r_index + 5]
        tmp3 = data_unit[r_index + 3] + data_unit[r_index + 4]
        tmp4 = data_unit[r_index + 3] - data_unit[r_index + 4]
        # Even part per LL&M figure 1 --- note that published figure
        # is faulty; rotator 'sqrt(2)*c1' should be 'sqrt(2)*c6'.
        tmp10 = tmp0 + tmp3
        tmp13 = tmp0 - tmp3
        tmp11 = tmp1 + tmp2
        tmp12 = tmp1 - tmp2
        data_unit[r_index] = (tmp10 + tmp11) * 4
        data_unit[r_index + 4] = (tmp10 - tmp11) * 4
        z1 = (tmp12 + tmp13) * FIX_0_541196100
        n = z1 + (tmp13 * FIX_0_765366865) + 1024
        data_unit[r_index + 2] = n >> 11
        if ((n < 0) && (!((n & 0x7ff)).equal?(0)))
          data_unit[r_index + 2] -= 1
        end
        n = z1 + (tmp12 * (0 - FIX_1_847759065)) + 1024
        data_unit[r_index + 6] = n >> 11
        if ((n < 0) && (!((n & 0x7ff)).equal?(0)))
          data_unit[r_index + 6] -= 1
        end
        # Odd part per figure 8 --- note paper omits factor of sqrt(2).
        # cK represents cos(K*pi/16).
        # i0..i3 in the paper are tmp4..tmp7 here.
        z1 = tmp4 + tmp7
        z2 = tmp5 + tmp6
        z3 = tmp4 + tmp6
        z4 = tmp5 + tmp7
        z5 = (z3 + z4) * FIX_1_175875602 # sqrt(2) * c3
        tmp4 *= FIX_0_298631336 # sqrt(2) * (-c1+c3+c5-c7)
        tmp5 *= FIX_2_053119869 # sqrt(2) * ( c1+c3-c5+c7)
        tmp6 *= FIX_3_072711026 # sqrt(2) * ( c1+c3+c5-c7)
        tmp7 *= FIX_1_501321110 # sqrt(2) * ( c1+c3-c5-c7)
        z1 *= 0 - FIX_0_899976223 # sqrt(2) * (c7-c3)
        z2 *= 0 - FIX_2_562915447 # sqrt(2) * (-c1-c3)
        z3 *= 0 - FIX_1_961570560 # sqrt(2) * (-c3-c5)
        z4 *= 0 - FIX_0_390180644 # sqrt(2) * (c5-c3)
        z3 += z5
        z4 += z5
        n = tmp4 + z1 + z3 + 1024
        data_unit[r_index + 7] = n >> 11
        if ((n < 0) && (!((n & 0x7ff)).equal?(0)))
          data_unit[r_index + 7] -= 1
        end
        n = tmp5 + z2 + z4 + 1024
        data_unit[r_index + 5] = n >> 11
        if ((n < 0) && (!((n & 0x7ff)).equal?(0)))
          data_unit[r_index + 5] -= 1
        end
        n = tmp6 + z2 + z3 + 1024
        data_unit[r_index + 3] = n >> 11
        if ((n < 0) && (!((n & 0x7ff)).equal?(0)))
          data_unit[r_index + 3] -= 1
        end
        n = tmp7 + z1 + z4 + 1024
        data_unit[r_index + 1] = n >> 11
        if ((n < 0) && (!((n & 0x7ff)).equal?(0)))
          data_unit[r_index + 1] -= 1
        end
        row += 1
      end
      # Pass 2: process columns.
      # Note that we must descale the results by a factor of 8 == 2**3,
      # and also undo the PASS1_BITS scaling.
      col = 0
      while col < 8
        c0 = col
        c1 = col + 8
        c2 = col + 16
        c3 = col + 24
        c4 = col + 32
        c5 = col + 40
        c6 = col + 48
        c7 = col + 56
        tmp0 = data_unit[c0] + data_unit[c7]
        tmp7 = data_unit[c0] - data_unit[c7]
        tmp1 = data_unit[c1] + data_unit[c6]
        tmp6 = data_unit[c1] - data_unit[c6]
        tmp2 = data_unit[c2] + data_unit[c5]
        tmp5 = data_unit[c2] - data_unit[c5]
        tmp3 = data_unit[c3] + data_unit[c4]
        tmp4 = data_unit[c3] - data_unit[c4]
        # Even part per LL&M figure 1 --- note that published figure
        # is faulty; rotator 'sqrt(2)*c1' should be 'sqrt(2)*c6'.
        tmp10 = tmp0 + tmp3
        tmp13 = tmp0 - tmp3
        tmp11 = tmp1 + tmp2
        tmp12 = tmp1 - tmp2
        n = tmp10 + tmp11 + 16
        data_unit[c0] = n >> 5
        if ((n < 0) && (!((n & 0x1f)).equal?(0)))
          data_unit[c0] -= 1
        end
        n = tmp10 - tmp11 + 16
        data_unit[c4] = n >> 5
        if ((n < 0) && (!((n & 0x1f)).equal?(0)))
          data_unit[c4] -= 1
        end
        z1 = (tmp12 + tmp13) * FIX_0_541196100
        n = z1 + (tmp13 * FIX_0_765366865) + 131072
        data_unit[c2] = n >> 18
        if ((n < 0) && (!((n & 0x3ffff)).equal?(0)))
          data_unit[c2] -= 1
        end
        n = z1 + (tmp12 * (0 - FIX_1_847759065)) + 131072
        data_unit[c6] = n >> 18
        if ((n < 0) && (!((n & 0x3ffff)).equal?(0)))
          data_unit[c6] -= 1
        end
        # Odd part per figure 8 --- note paper omits factor of sqrt(2).
        # cK represents cos(K*pi/16).
        # i0..i3 in the paper are tmp4..tmp7 here.
        z1 = tmp4 + tmp7
        z2 = tmp5 + tmp6
        z3 = tmp4 + tmp6
        z4 = tmp5 + tmp7
        z5 = (z3 + z4) * FIX_1_175875602 # sqrt(2) * c3
        tmp4 *= FIX_0_298631336 # sqrt(2) * (-c1+c3+c5-c7)
        tmp5 *= FIX_2_053119869 # sqrt(2) * ( c1+c3-c5+c7)
        tmp6 *= FIX_3_072711026 # sqrt(2) * ( c1+c3+c5-c7)
        tmp7 *= FIX_1_501321110 # sqrt(2) * ( c1+c3-c5-c7)
        z1 *= 0 - FIX_0_899976223 # sqrt(2) * (c7-c3)
        z2 *= 0 - FIX_2_562915447 # sqrt(2) * (-c1-c3)
        z3 *= 0 - FIX_1_961570560 # sqrt(2) * (-c3-c5)
        z4 *= 0 - FIX_0_390180644 # sqrt(2) * (c5-c3)
        z3 += z5
        z4 += z5
        n = tmp4 + z1 + z3 + 131072
        data_unit[c7] = n >> 18
        if ((n < 0) && (!((n & 0x3ffff)).equal?(0)))
          data_unit[c7] -= 1
        end
        n = tmp5 + z2 + z4 + 131072
        data_unit[c5] = n >> 18
        if ((n < 0) && (!((n & 0x3ffff)).equal?(0)))
          data_unit[c5] -= 1
        end
        n = tmp6 + z2 + z3 + 131072
        data_unit[c3] = n >> 18
        if ((n < 0) && (!((n & 0x3ffff)).equal?(0)))
          data_unit[c3] -= 1
        end
        n = tmp7 + z1 + z4 + 131072
        data_unit[c1] = n >> 18
        if ((n < 0) && (!((n & 0x3ffff)).equal?(0)))
          data_unit[c1] -= 1
        end
        col += 1
      end
    end
    
    typesig { [] }
    def get_app0
      appn = JPEGAppn.new(self.attr_input_stream)
      if (!appn.verify)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
    end
    
    typesig { [] }
    def get_com
      JPEGComment.new(self.attr_input_stream)
    end
    
    typesig { [] }
    def get_dac
      JPEGArithmeticConditioningTable.new(self.attr_input_stream)
    end
    
    typesig { [] }
    def get_dht
      dht = JPEGHuffmanTable.new(self.attr_input_stream)
      if (!dht.verify)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      if ((@ac_huffman_tables).nil?)
        @ac_huffman_tables = Array.typed(JPEGHuffmanTable).new(4) { nil }
      end
      if ((@dc_huffman_tables).nil?)
        @dc_huffman_tables = Array.typed(JPEGHuffmanTable).new(4) { nil }
      end
      dht_tables = dht.get_all_tables
      i = 0
      while i < dht_tables.attr_length
        dht_table = dht_tables[i]
        if ((dht_table.get_table_class).equal?(0))
          @dc_huffman_tables[dht_table.get_table_identifier] = dht_table
        else
          @ac_huffman_tables[dht_table.get_table_identifier] = dht_table
        end
        i += 1
      end
    end
    
    typesig { [] }
    def get_dnl
      JPEGRestartInterval.new(self.attr_input_stream)
    end
    
    typesig { [] }
    def get_dqt
      dqt = JPEGQuantizationTable.new(self.attr_input_stream)
      current_tables = @quantization_tables
      if ((current_tables).nil?)
        current_tables = Array.typed(::Java::Int).new(4) { 0 }
      end
      dqt_tables_keys = dqt.get_quantization_tables_keys
      dqt_tables_values = dqt.get_quantization_tables_values
      i = 0
      while i < dqt_tables_keys.attr_length
        index = dqt_tables_keys[i]
        current_tables[index] = dqt_tables_values[i]
        i += 1
      end
      @quantization_tables = current_tables
    end
    
    typesig { [] }
    def get_dri
      dri = JPEGRestartInterval.new(self.attr_input_stream)
      if (!dri.verify)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      @restart_interval = dri.get_restart_interval
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def inverse_dct(data_unit)
      row = 0
      while row < 8
        r_index = row * DCTSIZE
        # Due to quantization, we will usually find that many of the input
        # coefficients are zero, especially the AC terms.  We can exploit this
        # by short-circuiting the IDCT calculation for any row in which all
        # the AC terms are zero.  In that case each output is equal to the
        # DC coefficient (with scale factor as needed).
        # With typical images and quantization tables, half or more of the
        # row DCT calculations can be simplified this way.
        if (is_zero_in_row(data_unit, r_index))
          dc_val = data_unit[r_index] << 2
          i = r_index + 7
          while i >= r_index
            data_unit[i] = dc_val
            i -= 1
          end
        else
          # Even part: reverse the even part of the forward DCT.
          # The rotator is sqrt(2)*c(-6).
          z2 = data_unit[r_index + 2]
          z3 = data_unit[r_index + 6]
          z1 = (z2 + z3) * FIX_0_541196100
          tmp2 = z1 + (z3 * (0 - FIX_1_847759065))
          tmp3 = z1 + (z2 * FIX_0_765366865)
          tmp0 = (data_unit[r_index] + data_unit[r_index + 4]) << 13
          tmp1 = (data_unit[r_index] - data_unit[r_index + 4]) << 13
          tmp10 = tmp0 + tmp3
          tmp13 = tmp0 - tmp3
          tmp11 = tmp1 + tmp2
          tmp12 = tmp1 - tmp2
          # Odd part per figure 8; the matrix is unitary and hence its
          # transpose is its inverse. i0..i3 are y7,y5,y3,y1 respectively.
          tmp0 = data_unit[r_index + 7]
          tmp1 = data_unit[r_index + 5]
          tmp2 = data_unit[r_index + 3]
          tmp3 = data_unit[r_index + 1]
          z1 = tmp0 + tmp3
          z2 = tmp1 + tmp2
          z3 = tmp0 + tmp2
          z4 = tmp1 + tmp3
          z5 = (z3 + z4) * FIX_1_175875602
          # sqrt(2) * c3
          tmp0 *= FIX_0_298631336
          # sqrt(2) * (-c1+c3+c5-c7)
          tmp1 *= FIX_2_053119869
          # sqrt(2) * ( c1+c3-c5+c7)
          tmp2 *= FIX_3_072711026
          # sqrt(2) * ( c1+c3+c5-c7)
          tmp3 *= FIX_1_501321110
          # sqrt(2) * ( c1+c3-c5-c7)
          z1 *= 0 - FIX_0_899976223
          # sqrt(2) * (c7-c3)
          z2 *= 0 - FIX_2_562915447
          # sqrt(2) * (-c1-c3)
          z3 *= 0 - FIX_1_961570560
          # sqrt(2) * (-c3-c5)
          z4 *= 0 - FIX_0_390180644
          # sqrt(2) * (c5-c3)
          z3 += z5
          z4 += z5
          tmp0 += z1 + z3
          tmp1 += z2 + z4
          tmp2 += z2 + z3
          tmp3 += z1 + z4
          data_unit[r_index] = (tmp10 + tmp3 + 1024) >> 11
          data_unit[r_index + 7] = (tmp10 - tmp3 + 1024) >> 11
          data_unit[r_index + 1] = (tmp11 + tmp2 + 1024) >> 11
          data_unit[r_index + 6] = (tmp11 - tmp2 + 1024) >> 11
          data_unit[r_index + 2] = (tmp12 + tmp1 + 1024) >> 11
          data_unit[r_index + 5] = (tmp12 - tmp1 + 1024) >> 11
          data_unit[r_index + 3] = (tmp13 + tmp0 + 1024) >> 11
          data_unit[r_index + 4] = (tmp13 - tmp0 + 1024) >> 11
        end
        row += 1
      end
      # Pass 2: process columns.
      # Note that we must descale the results by a factor of 8 == 2**3,
      # and also undo the PASS1_BITS scaling.
      col = 0
      while col < 8
        c0 = col
        c1 = col + 8
        c2 = col + 16
        c3 = col + 24
        c4 = col + 32
        c5 = col + 40
        c6 = col + 48
        c7 = col + 56
        if (is_zero_in_column(data_unit, col))
          dc_val = (data_unit[c0] + 16) >> 5
          data_unit[c0] = dc_val
          data_unit[c1] = dc_val
          data_unit[c2] = dc_val
          data_unit[c3] = dc_val
          data_unit[c4] = dc_val
          data_unit[c5] = dc_val
          data_unit[c6] = dc_val
          data_unit[c7] = dc_val
        else
          # Even part: reverse the even part of the forward DCT.
          # The rotator is sqrt(2)*c(-6).
          z0 = data_unit[c0]
          z2 = data_unit[c2]
          z3 = data_unit[c6]
          z4 = data_unit[c4]
          z1 = (z2 + z3) * FIX_0_541196100
          tmp2 = z1 + (z3 * (0 - FIX_1_847759065))
          tmp3 = z1 + (z2 * FIX_0_765366865)
          tmp0 = (z0 + z4) << 13
          tmp1 = (z0 - z4) << 13
          tmp10 = tmp0 + tmp3
          tmp13 = tmp0 - tmp3
          tmp11 = tmp1 + tmp2
          tmp12 = tmp1 - tmp2
          # Odd part per figure 8; the matrix is unitary and hence its
          # transpose is its inverse. i0..i3 are y7,y5,y3,y1 respectively.
          tmp0 = data_unit[c7]
          tmp1 = data_unit[c5]
          tmp2 = data_unit[c3]
          tmp3 = data_unit[c1]
          z1 = tmp0 + tmp3
          z2 = tmp1 + tmp2
          z3 = tmp0 + tmp2
          z4 = tmp1 + tmp3
          z0 = (z3 + z4) * FIX_1_175875602
          # sqrt(2) * c3
          tmp0 *= FIX_0_298631336
          # sqrt(2) * (-c1+c3+c5-c7)
          tmp1 *= FIX_2_053119869
          # sqrt(2) * ( c1+c3-c5+c7)
          tmp2 *= FIX_3_072711026
          # sqrt(2) * ( c1+c3+c5-c7)
          tmp3 *= FIX_1_501321110
          # sqrt(2) * ( c1+c3-c5-c7)
          z1 *= 0 - FIX_0_899976223
          # sqrt(2) * (c7-c3)
          z2 *= 0 - FIX_2_562915447
          # sqrt(2) * (-c1-c3)
          z3 *= 0 - FIX_1_961570560
          # sqrt(2) * (-c3-c5)
          z4 *= 0 - FIX_0_390180644
          # sqrt(2) * (c5-c3)
          z3 += z0
          z4 += z0
          tmp0 += z1 + z3
          tmp1 += z2 + z4
          tmp2 += z2 + z3
          tmp3 += z1 + z4
          # Final output stage: inputs are tmp10..tmp13, tmp0..tmp3
          data_unit[c0] = (tmp10 + tmp3 + 131072) >> 18
          data_unit[c7] = (tmp10 - tmp3 + 131072) >> 18
          data_unit[c1] = (tmp11 + tmp2 + 131072) >> 18
          data_unit[c6] = (tmp11 - tmp2 + 131072) >> 18
          data_unit[c2] = (tmp12 + tmp1 + 131072) >> 18
          data_unit[c5] = (tmp12 - tmp1 + 131072) >> 18
          data_unit[c3] = (tmp13 + tmp0 + 131072) >> 18
          data_unit[c4] = (tmp13 - tmp0 + 131072) >> 18
        end
        col += 1
      end
    end
    
    typesig { [LEDataInputStream] }
    def is_file_format(stream)
      begin
        soi = JPEGStartOfImage.new(stream)
        stream.unread(soi.attr_reference)
        return soi.verify # we no longer check for appN
      rescue Exception => e
        return false
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def is_zero_in_column(data_unit, col)
      return (data_unit[col + 8]).equal?(0) && (data_unit[col + 16]).equal?(0) && (data_unit[col + 24]).equal?(0) && (data_unit[col + 32]).equal?(0) && (data_unit[col + 40]).equal?(0) && (data_unit[col + 48]).equal?(0) && (data_unit[col + 56]).equal?(0)
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def is_zero_in_row(data_unit, r_index)
      return (data_unit[r_index + 1]).equal?(0) && (data_unit[r_index + 2]).equal?(0) && (data_unit[r_index + 3]).equal?(0) && (data_unit[r_index + 4]).equal?(0) && (data_unit[r_index + 5]).equal?(0) && (data_unit[r_index + 6]).equal?(0) && (data_unit[r_index + 7]).equal?(0)
    end
    
    typesig { [] }
    def load_from_byte_stream
      # TEMPORARY CODE
      if ((System.get_property("org.eclipse.swt.internal.image.JPEGFileFormat_3.2")).nil?)
        return JPEGDecoder.load_from_byte_stream(self.attr_input_stream, self.attr_loader)
      end
      soi = JPEGStartOfImage.new(self.attr_input_stream)
      if (!soi.verify)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      @restart_interval = 0
      # Process the tables preceding the frame header.
      process_tables
      # Start of Frame.
      @frame_header = JPEGFrameHeader.new(self.attr_input_stream)
      if (!@frame_header.verify)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      @image_width = @frame_header.get_samples_per_line
      @image_height = @frame_header.get_number_of_lines
      @max_h = @frame_header.get_max_hfactor
      @max_v = @frame_header.get_max_vfactor
      mcu_width = @max_h * DCTSIZE
      mcu_height = @max_v * DCTSIZE
      @interleaved_mcu_cols = (@image_width + mcu_width - 1) / mcu_width
      @interleaved_mcu_rows = (@image_height + mcu_height - 1) / mcu_height
      @progressive = @frame_header.is_progressive
      @sample_precision = @frame_header.get_sample_precision
      @n_components = @frame_header.get_number_of_image_components
      @frame_components = @frame_header.attr_component_parameters
      @component_ids = @frame_header.attr_component_identifiers
      @image_components = Array.typed(::Java::Byte).new(@n_components) { 0 }
      if (@progressive)
        # Progressive jpeg: need to keep all of the data units.
        @data_units = Array.typed(::Java::Int).new(@n_components) { 0 }
      else
        # Sequential jpeg: only need one data unit.
        @data_unit = Array.typed(::Java::Int).new(8 * 8) { 0 }
      end
      i = 0
      while i < @n_components
        frame_component = @frame_components[@component_ids[i]]
        buffer_size = frame_component[CW] * frame_component[CH]
        @image_components[i] = Array.typed(::Java::Byte).new(buffer_size) { 0 }
        if (@progressive)
          @data_units[i] = Array.typed(::Java::Int).new(buffer_size) { 0 }
        end
        i += 1
      end
      # Process the tables preceding the scan header.
      process_tables
      # Start of Scan.
      @scan_header = JPEGScanHeader.new(self.attr_input_stream)
      if (!@scan_header.verify)
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      # Process scan(s) and further tables until EOI.
      progressive_scan_count = 0
      done = false
      while (!done)
        reset_input_buffer
        @preceding_dcs = Array.typed(::Java::Int).new(4) { 0 }
        decode_scan
        if (@progressive && self.attr_loader.has_listeners)
          image_data = create_image_data
          self.attr_loader.notify_listeners(ImageLoaderEvent.new(self.attr_loader, image_data, progressive_scan_count, false))
          progressive_scan_count += 1
        end
        # Unread any buffered data before looking for tables again.
        delta = 512 - @buffer_current_position - 1
        if (delta > 0)
          unread_buffer = Array.typed(::Java::Byte).new(delta) { 0 }
          System.arraycopy(@data_buffer, @buffer_current_position + 1, unread_buffer, 0, delta)
          begin
            self.attr_input_stream.unread(unread_buffer)
          rescue IOException => e
            SWT.error(SWT::ERROR_IO, e)
          end
        end
        # Process the tables preceding the next scan header.
        jpeg_segment = process_tables
        if ((jpeg_segment).nil? || (jpeg_segment.get_segment_marker).equal?(EOI))
          done = true
        else
          @scan_header = JPEGScanHeader.new(self.attr_input_stream)
          if (!@scan_header.verify)
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
        end
      end
      if (@progressive)
        ymcu = 0
        while ymcu < @interleaved_mcu_rows
          xmcu = 0
          while xmcu < @interleaved_mcu_cols
            i_comp = 0
            while i_comp < @n_components
              frame_component = @frame_components[@component_ids[i_comp]]
              hi = frame_component[HI]
              vi = frame_component[VI]
              comp_width = frame_component[CW]
              ivi = 0
              while ivi < vi
                ihi = 0
                while ihi < hi
                  index = (ymcu * vi + ivi) * comp_width + xmcu * hi + ihi
                  @data_unit = @data_units[i_comp][index]
                  dequantize(@data_unit, i_comp)
                  inverse_dct(@data_unit)
                  store_data(@data_unit, i_comp, xmcu, ymcu, hi, ihi, vi, ivi)
                  ihi += 1
                end
                ivi += 1
              end
              i_comp += 1
            end
            xmcu += 1
          end
          ymcu += 1
        end
        @data_units = nil # release memory
      end
      image_data = create_image_data
      if (@progressive && self.attr_loader.has_listeners)
        self.attr_loader.notify_listeners(ImageLoaderEvent.new(self.attr_loader, image_data, progressive_scan_count, true))
      end
      return Array.typed(ImageData).new([image_data])
    end
    
    typesig { [] }
    def create_image_data
      return ImageData.internal_new(@image_width, @image_height, @n_components * @sample_precision, set_up_palette, (@n_components).equal?(1) ? 4 : 1, decode_image_components, 0, nil, nil, -1, -1, SWT::IMAGE_JPEG, 0, 0, 0, 0)
    end
    
    typesig { [] }
    def next_bit
      if (!(@current_bit_count).equal?(0))
        @current_bit_count -= 1
        @current_byte *= 2
        if (@current_byte > 255)
          @current_byte -= 256
          return 1
        else
          return 0
        end
      end
      @buffer_current_position += 1
      if (@buffer_current_position >= 512)
        reset_input_buffer
        @buffer_current_position = 0
      end
      @current_byte = @data_buffer[@buffer_current_position] & 0xff
      @current_bit_count = 8
      next_byte = 0
      if ((@buffer_current_position).equal?(511))
        reset_input_buffer
        @current_bit_count = 8
        next_byte = @data_buffer[0]
      else
        next_byte = @data_buffer[@buffer_current_position + 1]
      end
      if ((@current_byte).equal?(0xff))
        if ((next_byte).equal?(0))
          @buffer_current_position += 1
          @current_bit_count -= 1
          @current_byte *= 2
          if (@current_byte > 255)
            @current_byte -= 256
            return 1
          else
            return 0
          end
        else
          if (((next_byte & 0xff) + 0xff00).equal?(DNL))
            get_dnl
            return 0
          else
            SWT.error(SWT::ERROR_INVALID_IMAGE)
            return 0
          end
        end
      else
        @current_bit_count -= 1
        @current_byte *= 2
        if (@current_byte > 255)
          @current_byte -= 256
          return 1
        else
          return 0
        end
      end
    end
    
    typesig { [] }
    def process_restart_interval
      begin
        @buffer_current_position += 1
        if (@buffer_current_position > 511)
          reset_input_buffer
          @buffer_current_position = 0
        end
        @current_byte = @data_buffer[@buffer_current_position] & 0xff
      end while (!(@current_byte).equal?(0xff))
      while ((@current_byte).equal?(0xff))
        @buffer_current_position += 1
        if (@buffer_current_position > 511)
          reset_input_buffer
          @buffer_current_position = 0
        end
        @current_byte = @data_buffer[@buffer_current_position] & 0xff
      end
      if (!(@current_byte).equal?(((RST0 + @next_restart_number) & 0xff)))
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      @buffer_current_position += 1
      if (@buffer_current_position > 511)
        reset_input_buffer
        @buffer_current_position = 0
      end
      @current_byte = @data_buffer[@buffer_current_position] & 0xff
      @current_bit_count = 8
      @restarts_to_go = @restart_interval
      @next_restart_number = (@next_restart_number + 1) & 0x7
      @preceding_dcs = Array.typed(::Java::Int).new(4) { 0 }
      @eobrun = 0
    end
    
    typesig { [] }
    # Process all markers until a frame header, scan header, or EOI is found.
    def process_tables
      while (true)
        jpeg_segment = seek_unspecified_marker(self.attr_input_stream)
        if ((jpeg_segment).nil?)
          return nil
        end
        sof = JPEGFrameHeader.new(jpeg_segment.attr_reference)
        if (sof.verify)
          return jpeg_segment
        end
        marker = jpeg_segment.get_segment_marker
        case (marker)
        when SOI
          # there should only be one SOI per file
          SWT.error(SWT::ERROR_INVALID_IMAGE)
          return jpeg_segment
        when EOI, SOS
          return jpeg_segment
        when DQT
          get_dqt
        when DHT
          get_dht
        when DAC
          get_dac
        when DRI
          get_dri
        when APP0
          get_app0
        when COM
          get_com
        else
          skip_segment_from(self.attr_input_stream)
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def quantize_data(data_unit, i_comp)
      q_table = @quantization_tables[@frame_components[@component_ids[i_comp]][TQI]]
      i = 0
      while i < data_unit.attr_length
        zz_index = ZigZag8x8[i]
        data = data_unit[zz_index]
        abs_data = data < 0 ? 0 - data : data
        q_value = q_table[i]
        q2 = q_value >> 1
        abs_data += q2
        if (abs_data < q_value)
          data_unit[zz_index] = 0
        else
          abs_data /= q_value
          if (data >= 0)
            data_unit[zz_index] = abs_data
          else
            data_unit[zz_index] = 0 - abs_data
          end
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    def receive(n_bits)
      v = 0
      i = 0
      while i < n_bits
        v = v * 2 + next_bit
        i += 1
      end
      return v
    end
    
    typesig { [] }
    def reset_input_buffer
      if ((@data_buffer).nil?)
        @data_buffer = Array.typed(::Java::Byte).new(512) { 0 }
      end
      begin
        self.attr_input_stream.read(@data_buffer)
      rescue IOException => e
        SWT.error(SWT::ERROR_IO, e)
      end
      @current_bit_count = 0
      @buffer_current_position = -1
    end
    
    typesig { [] }
    def reset_output_buffer
      if ((@data_buffer).nil?)
        @data_buffer = Array.typed(::Java::Byte).new(512) { 0 }
      else
        begin
          self.attr_output_stream.write(@data_buffer, 0, @buffer_current_position)
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
      @buffer_current_position = 0
    end
    
    class_module.module_eval {
      typesig { [LEDataInputStream] }
      def seek_unspecified_marker(byte_stream)
        byte_array = Array.typed(::Java::Byte).new(2) { 0 }
        begin
          while (true)
            if (!(byte_stream.read(byte_array, 0, 1)).equal?(1))
              return nil
            end
            if ((byte_array[0]).equal?(0xff))
              if (!(byte_stream.read(byte_array, 1, 1)).equal?(1))
                return nil
              end
              if (!(byte_array[1]).equal?(0xff) && !(byte_array[1]).equal?(0))
                byte_stream.unread(byte_array)
                return JPEGSegment.new(byte_array)
              end
            end
          end
        rescue IOException => e
          SWT.error(SWT::ERROR_IO, e)
        end
        return nil
      end
    }
    
    typesig { [] }
    def set_up_palette
      if ((@n_components).equal?(1))
        entries = Array.typed(RGB).new(256) { nil }
        i = 0
        while i < 256
          entries[i] = RGB.new(i, i, i)
          i += 1
        end
        return PaletteData.new(entries)
      end
      return PaletteData.new(0xff, 0xff00, 0xff0000)
    end
    
    class_module.module_eval {
      typesig { [LEDataInputStream] }
      def skip_segment_from(byte_stream)
        begin
          byte_array = Array.typed(::Java::Byte).new(4) { 0 }
          jpeg_segment = JPEGSegment.new(byte_array)
          if (!(byte_stream.read(byte_array)).equal?(byte_array.attr_length))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          if (!((byte_array[0]).equal?(-1) && !(byte_array[1]).equal?(0) && !(byte_array[1]).equal?(-1)))
            SWT.error(SWT::ERROR_INVALID_IMAGE)
          end
          delta = jpeg_segment.get_segment_length - 2
          byte_stream.skip(delta)
        rescue Exception => e
          SWT.error(SWT::ERROR_IO, e)
        end
      end
    }
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def store_data(data_unit, i_comp, xmcu, ymcu, hi, ihi, vi, ivi)
      comp_image = @image_components[i_comp]
      frame_component = @frame_components[@component_ids[i_comp]]
      comp_width = frame_component[CW]
      dest_index = ((ymcu * vi + ivi) * comp_width * DCTSIZE) + ((xmcu * hi + ihi) * DCTSIZE)
      src_index = 0
      i = 0
      while i < DCTSIZE
        col = 0
        while col < DCTSIZE
          x = data_unit[src_index] + 128
          if (x < 0)
            x = 0
          else
            if (x > 255)
              x = 255
            end
          end
          comp_image[dest_index + col] = x
          src_index += 1
          col += 1
        end
        dest_index += comp_width
        i += 1
      end
    end
    
    typesig { [ImageLoader] }
    def unload_into_byte_stream(loader)
      image = loader.attr_data[0]
      if (!JPEGStartOfImage.new.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
      appn = JPEGAppn.new(Array.typed(::Java::Byte).new([0xff, 0xe0, 0, 0x10, 0x4a, 0x46, 0x49, 0x46, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0]))
      if (!appn.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
      @quantization_tables = Array.typed(::Java::Int).new(4) { 0 }
      chrom_dqt = JPEGQuantizationTable.default_chrominance_table
      chrom_dqt.scale_by(@encoder_qfactor)
      jpeg_dqtkeys = chrom_dqt.get_quantization_tables_keys
      jpeg_dqtvalues = chrom_dqt.get_quantization_tables_values
      i = 0
      while i < jpeg_dqtkeys.attr_length
        @quantization_tables[jpeg_dqtkeys[i]] = jpeg_dqtvalues[i]
        i += 1
      end
      lum_dqt = JPEGQuantizationTable.default_luminance_table
      lum_dqt.scale_by(@encoder_qfactor)
      jpeg_dqtkeys = lum_dqt.get_quantization_tables_keys
      jpeg_dqtvalues = lum_dqt.get_quantization_tables_values
      i_ = 0
      while i_ < jpeg_dqtkeys.attr_length
        @quantization_tables[jpeg_dqtkeys[i_]] = jpeg_dqtvalues[i_]
        i_ += 1
      end
      if (!lum_dqt.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
      if (!chrom_dqt.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
      frame_length = 0
      scan_length = 0
      precision = 0
      frame_params = nil
      scan_params = nil
      if ((image.attr_depth).equal?(1))
        frame_length = 11
        frame_params = Array.typed(::Java::Int).new(1) { 0 }
        frame_params[0] = Array.typed(::Java::Int).new([1, 1, 1, 0, 0])
        scan_params = Array.typed(::Java::Int).new(1) { 0 }
        scan_params[0] = Array.typed(::Java::Int).new([0, 0])
        scan_length = 8
        @n_components = 1
        precision = 1
      else
        frame_length = 17
        frame_params = Array.typed(::Java::Int).new(3) { 0 }
        frame_params[0] = Array.typed(::Java::Int).new([0, 2, 2, 0, 0])
        frame_params[1] = Array.typed(::Java::Int).new([1, 1, 1, 0, 0])
        frame_params[2] = Array.typed(::Java::Int).new([1, 1, 1, 0, 0])
        scan_params = Array.typed(::Java::Int).new(3) { 0 }
        scan_params[0] = Array.typed(::Java::Int).new([0, 0])
        scan_params[1] = Array.typed(::Java::Int).new([1, 1])
        scan_params[2] = Array.typed(::Java::Int).new([1, 1])
        scan_length = 12
        @n_components = 3
        precision = 8
      end
      @image_width = image.attr_width
      @image_height = image.attr_height
      @frame_header = JPEGFrameHeader.new(Array.typed(::Java::Byte).new(19) { 0 })
      @frame_header.set_segment_marker(SOF0)
      @frame_header.set_segment_length(frame_length)
      @frame_header.set_sample_precision(precision)
      @frame_header.set_samples_per_line(@image_width)
      @frame_header.set_number_of_lines(@image_height)
      @frame_header.set_number_of_image_components(@n_components)
      @frame_header.attr_component_parameters = frame_params
      @frame_header.attr_component_identifiers = Array.typed(::Java::Int).new([0, 1, 2])
      @frame_header.initialize_contents
      if (!@frame_header.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
      @frame_components = frame_params
      @component_ids = @frame_header.attr_component_identifiers
      @max_h = @frame_header.get_max_hfactor
      @max_v = @frame_header.get_max_vfactor
      mcu_width = @max_h * DCTSIZE
      mcu_height = @max_v * DCTSIZE
      @interleaved_mcu_cols = (@image_width + mcu_width - 1) / mcu_width
      @interleaved_mcu_rows = (@image_height + mcu_height - 1) / mcu_height
      @ac_huffman_tables = Array.typed(JPEGHuffmanTable).new(4) { nil }
      @dc_huffman_tables = Array.typed(JPEGHuffmanTable).new(4) { nil }
      dht_tables = Array.typed(JPEGHuffmanTable).new([JPEGHuffmanTable.get_default_dcluminance_table, JPEGHuffmanTable.get_default_dcchrominance_table, JPEGHuffmanTable.get_default_acluminance_table, JPEGHuffmanTable.get_default_acchrominance_table])
      i__ = 0
      while i__ < dht_tables.attr_length
        dht_table = dht_tables[i__]
        if (!dht_table.write_to_stream(self.attr_output_stream))
          SWT.error(SWT::ERROR_IO)
        end
        all_tables = dht_table.get_all_tables
        j = 0
        while j < all_tables.attr_length
          huffman_table = all_tables[j]
          if ((huffman_table.get_table_class).equal?(0))
            @dc_huffman_tables[huffman_table.get_table_identifier] = huffman_table
          else
            @ac_huffman_tables[huffman_table.get_table_identifier] = huffman_table
          end
          j += 1
        end
        i__ += 1
      end
      @preceding_dcs = Array.typed(::Java::Int).new(4) { 0 }
      @scan_header = JPEGScanHeader.new(Array.typed(::Java::Byte).new(14) { 0 })
      @scan_header.set_segment_marker(SOS)
      @scan_header.set_segment_length(scan_length)
      @scan_header.set_number_of_image_components(@n_components)
      @scan_header.set_start_of_spectral_selection(0)
      @scan_header.set_end_of_spectral_selection(63)
      @scan_header.attr_component_parameters = scan_params
      @scan_header.initialize_contents
      if (!@scan_header.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
      convert_image_to_ycb_cr(image)
      reset_output_buffer
      @current_byte = 0
      @current_bit_count = 0
      encode_scan
      if (!JPEGEndOfImage.new.write_to_stream(self.attr_output_stream))
        SWT.error(SWT::ERROR_IO)
      end
    end
    
    typesig { [] }
    def initialize
      @restart_interval = 0
      @frame_header = nil
      @image_width = 0
      @image_height = 0
      @interleaved_mcu_cols = 0
      @interleaved_mcu_rows = 0
      @max_v = 0
      @max_h = 0
      @progressive = false
      @sample_precision = 0
      @n_components = 0
      @frame_components = nil
      @component_ids = nil
      @image_components = nil
      @data_unit = nil
      @data_units = nil
      @preceding_dcs = nil
      @scan_header = nil
      @data_buffer = nil
      @current_bit_count = 0
      @buffer_current_position = 0
      @restarts_to_go = 0
      @next_restart_number = 0
      @ac_huffman_tables = nil
      @dc_huffman_tables = nil
      @quantization_tables = nil
      @current_byte = 0
      @encoder_qfactor = 0
      @eobrun = 0
      super()
      @encoder_qfactor = 75
      @eobrun = 0
    end
    
    private
    alias_method :initialize__jpegfile_format, :initialize
  end
  
end
