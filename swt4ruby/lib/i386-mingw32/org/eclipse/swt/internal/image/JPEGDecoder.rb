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
  module JPEGDecoderImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Image
      include ::Java::Io
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class JPEGDecoder 
    include_class_members JPEGDecoderImports
    
    class_module.module_eval {
      const_set_lazy(:DCTSIZE) { 8 }
      const_attr_reader  :DCTSIZE
      
      const_set_lazy(:DCTSIZE2) { 64 }
      const_attr_reader  :DCTSIZE2
      
      const_set_lazy(:NUM_QUANT_TBLS) { 4 }
      const_attr_reader  :NUM_QUANT_TBLS
      
      const_set_lazy(:NUM_HUFF_TBLS) { 4 }
      const_attr_reader  :NUM_HUFF_TBLS
      
      const_set_lazy(:NUM_ARITH_TBLS) { 16 }
      const_attr_reader  :NUM_ARITH_TBLS
      
      const_set_lazy(:MAX_COMPS_IN_SCAN) { 4 }
      const_attr_reader  :MAX_COMPS_IN_SCAN
      
      const_set_lazy(:MAX_COMPONENTS) { 10 }
      const_attr_reader  :MAX_COMPONENTS
      
      const_set_lazy(:MAX_SAMP_FACTOR) { 4 }
      const_attr_reader  :MAX_SAMP_FACTOR
      
      const_set_lazy(:D_MAX_BLOCKS_IN_MCU) { 10 }
      const_attr_reader  :D_MAX_BLOCKS_IN_MCU
      
      const_set_lazy(:HUFF_LOOKAHEAD) { 8 }
      const_attr_reader  :HUFF_LOOKAHEAD
      
      const_set_lazy(:MAX_Q_COMPS) { 4 }
      const_attr_reader  :MAX_Q_COMPS
      
      const_set_lazy(:IFAST_SCALE_BITS) { 2 }
      const_attr_reader  :IFAST_SCALE_BITS
      
      const_set_lazy(:MAXJSAMPLE) { 255 }
      const_attr_reader  :MAXJSAMPLE
      
      const_set_lazy(:CENTERJSAMPLE) { 128 }
      const_attr_reader  :CENTERJSAMPLE
      
      const_set_lazy(:MIN_GET_BITS) { 32 - 7 }
      const_attr_reader  :MIN_GET_BITS
      
      const_set_lazy(:INPUT_BUFFER_SIZE) { 4096 }
      const_attr_reader  :INPUT_BUFFER_SIZE
      
      const_set_lazy(:SCALEBITS) { 16 }
      const_attr_reader  :SCALEBITS
      
      # speediest right-shift on some machines
      const_set_lazy(:ONE_HALF) { 1 << (SCALEBITS - 1) }
      const_attr_reader  :ONE_HALF
      
      const_set_lazy(:RGB_RED) { 2 }
      const_attr_reader  :RGB_RED
      
      # Offset of Red in an RGB scanline element
      const_set_lazy(:RGB_GREEN) { 1 }
      const_attr_reader  :RGB_GREEN
      
      # Offset of Green
      const_set_lazy(:RGB_BLUE) { 0 }
      const_attr_reader  :RGB_BLUE
      
      # Offset of Blue
      const_set_lazy(:RGB_PIXELSIZE) { 3 }
      const_attr_reader  :RGB_PIXELSIZE
      
      const_set_lazy(:JBUF_PASS_THRU) { 0 }
      const_attr_reader  :JBUF_PASS_THRU
      
      const_set_lazy(:JBUF_SAVE_SOURCE) { 1 }
      const_attr_reader  :JBUF_SAVE_SOURCE
      
      # Run source subobject only, save output
      const_set_lazy(:JBUF_CRANK_DEST) { 2 }
      const_attr_reader  :JBUF_CRANK_DEST
      
      # Run dest subobject only, using saved data
      const_set_lazy(:JBUF_SAVE_AND_PASS) { 3 }
      const_attr_reader  :JBUF_SAVE_AND_PASS
      
      const_set_lazy(:JPEG_MAX_DIMENSION) { 65500 }
      const_attr_reader  :JPEG_MAX_DIMENSION
      
      const_set_lazy(:BITS_IN_JSAMPLE) { 8 }
      const_attr_reader  :BITS_IN_JSAMPLE
      
      const_set_lazy(:JDITHER_NONE) { 0 }
      const_attr_reader  :JDITHER_NONE
      
      # no dithering
      const_set_lazy(:JDITHER_ORDERED) { 1 }
      const_attr_reader  :JDITHER_ORDERED
      
      # simple ordered dither
      const_set_lazy(:JDITHER_FS) { 2 }
      const_attr_reader  :JDITHER_FS
      
      const_set_lazy(:JDCT_ISLOW) { 0 }
      const_attr_reader  :JDCT_ISLOW
      
      # slow but accurate integer algorithm
      const_set_lazy(:JDCT_IFAST) { 1 }
      const_attr_reader  :JDCT_IFAST
      
      # faster, less accurate integer method
      const_set_lazy(:JDCT_FLOAT) { 2 }
      const_attr_reader  :JDCT_FLOAT
      
      # floating-point: accurate, fast on fast HW
      const_set_lazy(:JDCT_DEFAULT) { JDCT_ISLOW }
      const_attr_reader  :JDCT_DEFAULT
      
      const_set_lazy(:JCS_UNKNOWN) { 0 }
      const_attr_reader  :JCS_UNKNOWN
      
      # error/unspecified
      const_set_lazy(:JCS_GRAYSCALE) { 1 }
      const_attr_reader  :JCS_GRAYSCALE
      
      # monochrome
      const_set_lazy(:JCS_RGB) { 2 }
      const_attr_reader  :JCS_RGB
      
      # red/green/blue
      const_set_lazy(:JCS_YCbCr) { 3 }
      const_attr_reader  :JCS_YCbCr
      
      # Y/Cb/Cr (also known as YUV)
      const_set_lazy(:JCS_CMYK) { 4 }
      const_attr_reader  :JCS_CMYK
      
      # C/M/Y/K
      const_set_lazy(:JCS_YCCK) { 5 }
      const_attr_reader  :JCS_YCCK
      
      # Y/Cb/Cr/K
      const_set_lazy(:SAVED_COEFS) { 6 }
      const_attr_reader  :SAVED_COEFS
      
      const_set_lazy(:Q01_POS) { 1 }
      const_attr_reader  :Q01_POS
      
      const_set_lazy(:Q10_POS) { 8 }
      const_attr_reader  :Q10_POS
      
      const_set_lazy(:Q20_POS) { 16 }
      const_attr_reader  :Q20_POS
      
      const_set_lazy(:Q11_POS) { 9 }
      const_attr_reader  :Q11_POS
      
      const_set_lazy(:Q02_POS) { 2 }
      const_attr_reader  :Q02_POS
      
      const_set_lazy(:CTX_PREPARE_FOR_IMCU) { 0 }
      const_attr_reader  :CTX_PREPARE_FOR_IMCU
      
      # need to prepare for MCU row
      const_set_lazy(:CTX_PROCESS_IMCU) { 1 }
      const_attr_reader  :CTX_PROCESS_IMCU
      
      # feeding iMCU to postprocessor
      const_set_lazy(:CTX_POSTPONED_ROW) { 2 }
      const_attr_reader  :CTX_POSTPONED_ROW
      
      # feeding postponed row group
      const_set_lazy(:APP0_DATA_LEN) { 14 }
      const_attr_reader  :APP0_DATA_LEN
      
      # Length of interesting data in APP0
      const_set_lazy(:APP14_DATA_LEN) { 12 }
      const_attr_reader  :APP14_DATA_LEN
      
      # Length of interesting data in APP14
      const_set_lazy(:APPN_DATA_LEN) { 14 }
      const_attr_reader  :APPN_DATA_LEN
      
      # Must be the largest of the above!!
      # markers
      const_set_lazy(:M_SOF0) { 0xc0 }
      const_attr_reader  :M_SOF0
      
      const_set_lazy(:M_SOF1) { 0xc1 }
      const_attr_reader  :M_SOF1
      
      const_set_lazy(:M_SOF2) { 0xc2 }
      const_attr_reader  :M_SOF2
      
      const_set_lazy(:M_SOF3) { 0xc3 }
      const_attr_reader  :M_SOF3
      
      const_set_lazy(:M_SOF5) { 0xc5 }
      const_attr_reader  :M_SOF5
      
      const_set_lazy(:M_SOF6) { 0xc6 }
      const_attr_reader  :M_SOF6
      
      const_set_lazy(:M_SOF7) { 0xc7 }
      const_attr_reader  :M_SOF7
      
      const_set_lazy(:M_JPG) { 0xc8 }
      const_attr_reader  :M_JPG
      
      const_set_lazy(:M_SOF9) { 0xc9 }
      const_attr_reader  :M_SOF9
      
      const_set_lazy(:M_SOF10) { 0xca }
      const_attr_reader  :M_SOF10
      
      const_set_lazy(:M_SOF11) { 0xcb }
      const_attr_reader  :M_SOF11
      
      const_set_lazy(:M_SOF13) { 0xcd }
      const_attr_reader  :M_SOF13
      
      const_set_lazy(:M_SOF14) { 0xce }
      const_attr_reader  :M_SOF14
      
      const_set_lazy(:M_SOF15) { 0xcf }
      const_attr_reader  :M_SOF15
      
      const_set_lazy(:M_DHT) { 0xc4 }
      const_attr_reader  :M_DHT
      
      const_set_lazy(:M_DAC) { 0xcc }
      const_attr_reader  :M_DAC
      
      const_set_lazy(:M_RST0) { 0xd0 }
      const_attr_reader  :M_RST0
      
      const_set_lazy(:M_RST1) { 0xd1 }
      const_attr_reader  :M_RST1
      
      const_set_lazy(:M_RST2) { 0xd2 }
      const_attr_reader  :M_RST2
      
      const_set_lazy(:M_RST3) { 0xd3 }
      const_attr_reader  :M_RST3
      
      const_set_lazy(:M_RST4) { 0xd4 }
      const_attr_reader  :M_RST4
      
      const_set_lazy(:M_RST5) { 0xd5 }
      const_attr_reader  :M_RST5
      
      const_set_lazy(:M_RST6) { 0xd6 }
      const_attr_reader  :M_RST6
      
      const_set_lazy(:M_RST7) { 0xd7 }
      const_attr_reader  :M_RST7
      
      const_set_lazy(:M_SOI) { 0xd8 }
      const_attr_reader  :M_SOI
      
      const_set_lazy(:M_EOI) { 0xd9 }
      const_attr_reader  :M_EOI
      
      const_set_lazy(:M_SOS) { 0xda }
      const_attr_reader  :M_SOS
      
      const_set_lazy(:M_DQT) { 0xdb }
      const_attr_reader  :M_DQT
      
      const_set_lazy(:M_DNL) { 0xdc }
      const_attr_reader  :M_DNL
      
      const_set_lazy(:M_DRI) { 0xdd }
      const_attr_reader  :M_DRI
      
      const_set_lazy(:M_DHP) { 0xde }
      const_attr_reader  :M_DHP
      
      const_set_lazy(:M_EXP) { 0xdf }
      const_attr_reader  :M_EXP
      
      const_set_lazy(:M_APP0) { 0xe0 }
      const_attr_reader  :M_APP0
      
      const_set_lazy(:M_APP1) { 0xe1 }
      const_attr_reader  :M_APP1
      
      const_set_lazy(:M_APP2) { 0xe2 }
      const_attr_reader  :M_APP2
      
      const_set_lazy(:M_APP3) { 0xe3 }
      const_attr_reader  :M_APP3
      
      const_set_lazy(:M_APP4) { 0xe4 }
      const_attr_reader  :M_APP4
      
      const_set_lazy(:M_APP5) { 0xe5 }
      const_attr_reader  :M_APP5
      
      const_set_lazy(:M_APP6) { 0xe6 }
      const_attr_reader  :M_APP6
      
      const_set_lazy(:M_APP7) { 0xe7 }
      const_attr_reader  :M_APP7
      
      const_set_lazy(:M_APP8) { 0xe8 }
      const_attr_reader  :M_APP8
      
      const_set_lazy(:M_APP9) { 0xe9 }
      const_attr_reader  :M_APP9
      
      const_set_lazy(:M_APP10) { 0xea }
      const_attr_reader  :M_APP10
      
      const_set_lazy(:M_APP11) { 0xeb }
      const_attr_reader  :M_APP11
      
      const_set_lazy(:M_APP12) { 0xec }
      const_attr_reader  :M_APP12
      
      const_set_lazy(:M_APP13) { 0xed }
      const_attr_reader  :M_APP13
      
      const_set_lazy(:M_APP14) { 0xee }
      const_attr_reader  :M_APP14
      
      const_set_lazy(:M_APP15) { 0xef }
      const_attr_reader  :M_APP15
      
      const_set_lazy(:M_JPG0) { 0xf0 }
      const_attr_reader  :M_JPG0
      
      const_set_lazy(:M_JPG13) { 0xfd }
      const_attr_reader  :M_JPG13
      
      const_set_lazy(:M_COM) { 0xfe }
      const_attr_reader  :M_COM
      
      const_set_lazy(:M_TEM) { 0x1 }
      const_attr_reader  :M_TEM
      
      const_set_lazy(:M_ERROR) { 0x100 }
      const_attr_reader  :M_ERROR
      
      # Values of global_state field (jdapi.c has some dependencies on ordering!)
      const_set_lazy(:CSTATE_START) { 100 }
      const_attr_reader  :CSTATE_START
      
      # after create_compress
      const_set_lazy(:CSTATE_SCANNING) { 101 }
      const_attr_reader  :CSTATE_SCANNING
      
      # start_compress done, write_scanlines OK
      const_set_lazy(:CSTATE_RAW_OK) { 102 }
      const_attr_reader  :CSTATE_RAW_OK
      
      # start_compress done, write_raw_data OK
      const_set_lazy(:CSTATE_WRCOEFS) { 103 }
      const_attr_reader  :CSTATE_WRCOEFS
      
      # jpeg_write_coefficients done
      const_set_lazy(:DSTATE_START) { 200 }
      const_attr_reader  :DSTATE_START
      
      # after create_decompress
      const_set_lazy(:DSTATE_INHEADER) { 201 }
      const_attr_reader  :DSTATE_INHEADER
      
      # reading header markers, no SOS yet
      const_set_lazy(:DSTATE_READY) { 202 }
      const_attr_reader  :DSTATE_READY
      
      # found SOS, ready for start_decompress
      const_set_lazy(:DSTATE_PRELOAD) { 203 }
      const_attr_reader  :DSTATE_PRELOAD
      
      # reading multiscan file in start_decompress
      const_set_lazy(:DSTATE_PRESCAN) { 204 }
      const_attr_reader  :DSTATE_PRESCAN
      
      # performing dummy pass for 2-pass quant
      const_set_lazy(:DSTATE_SCANNING) { 205 }
      const_attr_reader  :DSTATE_SCANNING
      
      # start_decompress done, read_scanlines OK
      const_set_lazy(:DSTATE_RAW_OK) { 206 }
      const_attr_reader  :DSTATE_RAW_OK
      
      # start_decompress done, read_raw_data OK
      const_set_lazy(:DSTATE_BUFIMAGE) { 207 }
      const_attr_reader  :DSTATE_BUFIMAGE
      
      # expecting jpeg_start_output
      const_set_lazy(:DSTATE_BUFPOST) { 208 }
      const_attr_reader  :DSTATE_BUFPOST
      
      # looking for SOS/EOI in jpeg_finish_output
      const_set_lazy(:DSTATE_RDCOEFS) { 209 }
      const_attr_reader  :DSTATE_RDCOEFS
      
      # reading file in jpeg_read_coefficients
      const_set_lazy(:DSTATE_STOPPING) { 210 }
      const_attr_reader  :DSTATE_STOPPING
      
      # looking for EOI in jpeg_finish_decompress
      const_set_lazy(:JPEG_REACHED_SOS) { 1 }
      const_attr_reader  :JPEG_REACHED_SOS
      
      # Reached start of new scan
      const_set_lazy(:JPEG_REACHED_EOI) { 2 }
      const_attr_reader  :JPEG_REACHED_EOI
      
      # Reached end of image
      const_set_lazy(:JPEG_ROW_COMPLETED) { 3 }
      const_attr_reader  :JPEG_ROW_COMPLETED
      
      # Completed one iMCU row
      const_set_lazy(:JPEG_SCAN_COMPLETED) { 4 }
      const_attr_reader  :JPEG_SCAN_COMPLETED
      
      # Completed last iMCU row of a scan
      const_set_lazy(:JPEG_SUSPENDED) { 0 }
      const_attr_reader  :JPEG_SUSPENDED
      
      # Suspended due to lack of input data
      const_set_lazy(:JPEG_HEADER_OK) { 1 }
      const_attr_reader  :JPEG_HEADER_OK
      
      # Found valid image datastream
      const_set_lazy(:JPEG_HEADER_TABLES_ONLY) { 2 }
      const_attr_reader  :JPEG_HEADER_TABLES_ONLY
      
      # Found valid table-specs-only datastream
      # Function pointers
      const_set_lazy(:DECOMPRESS_DATA) { 0 }
      const_attr_reader  :DECOMPRESS_DATA
      
      const_set_lazy(:DECOMPRESS_SMOOTH_DATA) { 1 }
      const_attr_reader  :DECOMPRESS_SMOOTH_DATA
      
      const_set_lazy(:DECOMPRESS_ONEPASS) { 2 }
      const_attr_reader  :DECOMPRESS_ONEPASS
      
      const_set_lazy(:CONSUME_DATA) { 0 }
      const_attr_reader  :CONSUME_DATA
      
      const_set_lazy(:DUMMY_CONSUME_DATA) { 1 }
      const_attr_reader  :DUMMY_CONSUME_DATA
      
      const_set_lazy(:PROCESS_DATA_SIMPLE_MAIN) { 0 }
      const_attr_reader  :PROCESS_DATA_SIMPLE_MAIN
      
      const_set_lazy(:PROCESS_DATA_CONTEXT_MAIN) { 1 }
      const_attr_reader  :PROCESS_DATA_CONTEXT_MAIN
      
      const_set_lazy(:PROCESS_DATA_CRANK_POST) { 2 }
      const_attr_reader  :PROCESS_DATA_CRANK_POST
      
      const_set_lazy(:POST_PROCESS_1PASS) { 0 }
      const_attr_reader  :POST_PROCESS_1PASS
      
      const_set_lazy(:POST_PROCESS_DATA_UPSAMPLE) { 1 }
      const_attr_reader  :POST_PROCESS_DATA_UPSAMPLE
      
      const_set_lazy(:NULL_CONVERT) { 0 }
      const_attr_reader  :NULL_CONVERT
      
      const_set_lazy(:GRAYSCALE_CONVERT) { 1 }
      const_attr_reader  :GRAYSCALE_CONVERT
      
      const_set_lazy(:YCC_RGB_CONVERT) { 2 }
      const_attr_reader  :YCC_RGB_CONVERT
      
      const_set_lazy(:GRAY_RGB_CONVERT) { 3 }
      const_attr_reader  :GRAY_RGB_CONVERT
      
      const_set_lazy(:YCCK_CMYK_CONVERT) { 4 }
      const_attr_reader  :YCCK_CMYK_CONVERT
      
      const_set_lazy(:NOOP_UPSAMPLE) { 0 }
      const_attr_reader  :NOOP_UPSAMPLE
      
      const_set_lazy(:FULLSIZE_UPSAMPLE) { 1 }
      const_attr_reader  :FULLSIZE_UPSAMPLE
      
      const_set_lazy(:H2V1_FANCY_UPSAMPLE) { 2 }
      const_attr_reader  :H2V1_FANCY_UPSAMPLE
      
      const_set_lazy(:H2V1_UPSAMPLE) { 3 }
      const_attr_reader  :H2V1_UPSAMPLE
      
      const_set_lazy(:H2V2_FANCY_UPSAMPLE) { 4 }
      const_attr_reader  :H2V2_FANCY_UPSAMPLE
      
      const_set_lazy(:H2V2_UPSAMPLE) { 5 }
      const_attr_reader  :H2V2_UPSAMPLE
      
      const_set_lazy(:INT_UPSAMPLE) { 6 }
      const_attr_reader  :INT_UPSAMPLE
      
      const_set_lazy(:INPUT_CONSUME_INPUT) { 0 }
      const_attr_reader  :INPUT_CONSUME_INPUT
      
      const_set_lazy(:COEF_CONSUME_INPUT) { 1 }
      const_attr_reader  :COEF_CONSUME_INPUT
      
      # entry n is 2**(n-1)
      
      def extend_test
        defined?(@@extend_test) ? @@extend_test : @@extend_test= Array.typed(::Java::Int).new([0, 0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x40, 0x80, 0x100, 0x200, 0x400, 0x800, 0x1000, 0x2000, 0x4000])
      end
      alias_method :attr_extend_test, :extend_test
      
      def extend_test=(value)
        @@extend_test = value
      end
      alias_method :attr_extend_test=, :extend_test=
      
      # entry n is (-1 << n) + 1
      
      def extend_offset
        defined?(@@extend_offset) ? @@extend_offset : @@extend_offset= Array.typed(::Java::Int).new([0, ((-1) << 1) + 1, ((-1) << 2) + 1, ((-1) << 3) + 1, ((-1) << 4) + 1, ((-1) << 5) + 1, ((-1) << 6) + 1, ((-1) << 7) + 1, ((-1) << 8) + 1, ((-1) << 9) + 1, ((-1) << 10) + 1, ((-1) << 11) + 1, ((-1) << 12) + 1, ((-1) << 13) + 1, ((-1) << 14) + 1, ((-1) << 15) + 1])
      end
      alias_method :attr_extend_offset, :extend_offset
      
      def extend_offset=(value)
        @@extend_offset = value
      end
      alias_method :attr_extend_offset=, :extend_offset=
      
      # extra entries for safety in decoder
      
      def jpeg_natural_order
        defined?(@@jpeg_natural_order) ? @@jpeg_natural_order : @@jpeg_natural_order= Array.typed(::Java::Int).new([0, 1, 8, 16, 9, 2, 3, 10, 17, 24, 32, 25, 18, 11, 4, 5, 12, 19, 26, 33, 40, 48, 41, 34, 27, 20, 13, 6, 7, 14, 21, 28, 35, 42, 49, 56, 57, 50, 43, 36, 29, 22, 15, 23, 30, 37, 44, 51, 58, 59, 52, 45, 38, 31, 39, 46, 53, 60, 61, 54, 47, 55, 62, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63])
      end
      alias_method :attr_jpeg_natural_order, :jpeg_natural_order
      
      def jpeg_natural_order=(value)
        @@jpeg_natural_order = value
      end
      alias_method :attr_jpeg_natural_order=, :jpeg_natural_order=
      
      # true when table has been output
      const_set_lazy(:JQUANT_TBL) { Class.new do
        include_class_members JPEGDecoder
        
        # This array gives the coefficient quantizers in natural array order
        # (not the zigzag order in which they are stored in a JPEG DQT marker).
        # CAUTION: IJG versions prior to v6a kept this array in zigzag order.
        attr_accessor :quantval
        alias_method :attr_quantval, :quantval
        undef_method :quantval
        alias_method :attr_quantval=, :quantval=
        undef_method :quantval=
        
        # quantization step for each coefficient
        # This field is used only during compression.	It's initialized false when
        # the table is created, and set true when it's been output to the file.
        # You could suppress output of a table by setting this to true.
        # (See jpeg_suppress_tables for an example.)
        attr_accessor :sent_table
        alias_method :attr_sent_table, :sent_table
        undef_method :sent_table
        alias_method :attr_sent_table=, :sent_table=
        undef_method :sent_table=
        
        typesig { [] }
        def initialize
          @quantval = Array.typed(::Java::Short).new(DCTSIZE2) { 0 }
          @sent_table = false
        end
        
        private
        alias_method :initialize__jquant_tbl, :initialize
      end }
      
      # true when table has been output
      const_set_lazy(:JHUFF_TBL) { Class.new do
        include_class_members JPEGDecoder
        
        # These two fields directly represent the contents of a JPEG DHT marker
        attr_accessor :bits
        alias_method :attr_bits, :bits
        undef_method :bits
        alias_method :attr_bits=, :bits=
        undef_method :bits=
        
        # bits[k] = # of symbols with codes of
        # length k bits; bits[0] is unused
        attr_accessor :huffval
        alias_method :attr_huffval, :huffval
        undef_method :huffval
        alias_method :attr_huffval=, :huffval=
        undef_method :huffval=
        
        # The symbols, in order of incr code length
        # This field is used only during compression.	It's initialized false when
        # the table is created, and set true when it's been output to the file.
        # You could suppress output of a table by setting this to true.
        # (See jpeg_suppress_tables for an example.)
        attr_accessor :sent_table
        alias_method :attr_sent_table, :sent_table
        undef_method :sent_table
        alias_method :attr_sent_table=, :sent_table=
        undef_method :sent_table=
        
        typesig { [] }
        def initialize
          @bits = Array.typed(::Java::Byte).new(17) { 0 }
          @huffval = Array.typed(::Java::Byte).new(256) { 0 }
          @sent_table = false
        end
        
        private
        alias_method :initialize__jhuff_tbl, :initialize
      end }
      
      # # of unused bits in it
      const_set_lazy(:Bitread_perm_state) { Class.new do
        include_class_members JPEGDecoder
        
        # Bitreading state saved across MCUs
        attr_accessor :get_buffer
        alias_method :attr_get_buffer, :get_buffer
        undef_method :get_buffer
        alias_method :attr_get_buffer=, :get_buffer=
        undef_method :get_buffer=
        
        # current bit-extraction buffer
        attr_accessor :bits_left
        alias_method :attr_bits_left, :bits_left
        undef_method :bits_left
        alias_method :attr_bits_left=, :bits_left=
        undef_method :bits_left=
        
        typesig { [] }
        def initialize
          @get_buffer = 0
          @bits_left = 0
        end
        
        private
        alias_method :initialize_bitread_perm_state, :initialize
      end }
      
      # back link to decompress master record
      const_set_lazy(:Bitread_working_state) { Class.new do
        include_class_members JPEGDecoder
        
        # Bitreading working state within an MCU
        # Current data source location
        # We need a copy, rather than munging the original, in case of suspension
        attr_accessor :buffer
        alias_method :attr_buffer, :buffer
        undef_method :buffer
        alias_method :attr_buffer=, :buffer=
        undef_method :buffer=
        
        # => next byte to read from source
        attr_accessor :bytes_offset
        alias_method :attr_bytes_offset, :bytes_offset
        undef_method :bytes_offset
        alias_method :attr_bytes_offset=, :bytes_offset=
        undef_method :bytes_offset=
        
        attr_accessor :bytes_in_buffer
        alias_method :attr_bytes_in_buffer, :bytes_in_buffer
        undef_method :bytes_in_buffer
        alias_method :attr_bytes_in_buffer=, :bytes_in_buffer=
        undef_method :bytes_in_buffer=
        
        # # of bytes remaining in source buffer
        # Bit input buffer --- note these values are kept in register variables,
        # not in this struct, inside the inner loops.
        attr_accessor :get_buffer
        alias_method :attr_get_buffer, :get_buffer
        undef_method :get_buffer
        alias_method :attr_get_buffer=, :get_buffer=
        undef_method :get_buffer=
        
        # current bit-extraction buffer
        attr_accessor :bits_left
        alias_method :attr_bits_left, :bits_left
        undef_method :bits_left
        alias_method :attr_bits_left=, :bits_left=
        undef_method :bits_left=
        
        # # of unused bits in it
        # Pointer needed by jpeg_fill_bit_buffer.
        attr_accessor :cinfo
        alias_method :attr_cinfo, :cinfo
        undef_method :cinfo
        alias_method :attr_cinfo=, :cinfo=
        undef_method :cinfo=
        
        typesig { [] }
        def initialize
          @buffer = nil
          @bytes_offset = 0
          @bytes_in_buffer = 0
          @get_buffer = 0
          @bits_left = 0
          @cinfo = nil
        end
        
        private
        alias_method :initialize_bitread_working_state, :initialize
      end }
      
      # last DC coef for each component
      const_set_lazy(:Savable_state) { Class.new do
        include_class_members JPEGDecoder
        
        attr_accessor :eobrun
        alias_method :attr_eobrun, :eobrun
        undef_method :eobrun
        alias_method :attr_eobrun=, :eobrun=
        undef_method :eobrun=
        
        # Note that this is only used in the progressive case
        attr_accessor :last_dc_val
        alias_method :attr_last_dc_val, :last_dc_val
        undef_method :last_dc_val
        alias_method :attr_last_dc_val=, :last_dc_val=
        undef_method :last_dc_val=
        
        typesig { [] }
        def initialize
          @eobrun = 0
          @last_dc_val = Array.typed(::Java::Int).new(MAX_COMPS_IN_SCAN) { 0 }
        end
        
        private
        alias_method :initialize_savable_state, :initialize
      end }
      
      # symbol, or unused
      const_set_lazy(:D_derived_tbl) { Class.new do
        include_class_members JPEGDecoder
        
        # Basic tables: (element [0] of each array is unused)
        attr_accessor :maxcode
        alias_method :attr_maxcode, :maxcode
        undef_method :maxcode
        alias_method :attr_maxcode=, :maxcode=
        undef_method :maxcode=
        
        # largest code of length k (-1 if none)
        # (maxcode[17] is a sentinel to ensure jpeg_huff_decode terminates)
        attr_accessor :valoffset
        alias_method :attr_valoffset, :valoffset
        undef_method :valoffset
        alias_method :attr_valoffset=, :valoffset=
        undef_method :valoffset=
        
        # huffval[] offset for codes of length k
        # valoffset[k] = huffval[] index of 1st symbol of code length k, less
        # the smallest code of length k; so given a code of length k, the
        # corresponding symbol is huffval[code + valoffset[k]]
        # 
        # Link to public Huffman table (needed only in jpeg_huff_decode)
        attr_accessor :pub
        alias_method :attr_pub, :pub
        undef_method :pub
        alias_method :attr_pub=, :pub=
        undef_method :pub=
        
        # Lookahead tables: indexed by the next HUFF_LOOKAHEAD bits of
        # the input data stream.	If the next Huffman code is no more
        # than HUFF_LOOKAHEAD bits long, we can obtain its length and
        # the corresponding symbol directly from these tables.
        attr_accessor :look_nbits
        alias_method :attr_look_nbits, :look_nbits
        undef_method :look_nbits
        alias_method :attr_look_nbits=, :look_nbits=
        undef_method :look_nbits=
        
        # # bits, or 0 if too long
        attr_accessor :look_sym
        alias_method :attr_look_sym, :look_sym
        undef_method :look_sym
        alias_method :attr_look_sym=, :look_sym=
        undef_method :look_sym=
        
        typesig { [] }
        def initialize
          @maxcode = Array.typed(::Java::Int).new(18) { 0 }
          @valoffset = Array.typed(::Java::Int).new(17) { 0 }
          @pub = nil
          @look_nbits = Array.typed(::Java::Int).new(1 << HUFF_LOOKAHEAD) { 0 }
          @look_sym = Array.typed(::Java::Byte).new(1 << HUFF_LOOKAHEAD) { 0 }
        end
        
        private
        alias_method :initialize_d_derived_tbl, :initialize
      end }
      
      const_set_lazy(:Jpeg_d_coef_controller) { Class.new do
        include_class_members JPEGDecoder
        
        attr_accessor :consume_data
        alias_method :attr_consume_data, :consume_data
        undef_method :consume_data
        alias_method :attr_consume_data=, :consume_data=
        undef_method :consume_data=
        
        attr_accessor :decompress_data
        alias_method :attr_decompress_data, :decompress_data
        undef_method :decompress_data
        alias_method :attr_decompress_data=, :decompress_data=
        undef_method :decompress_data=
        
        # Pointer to array of coefficient virtual arrays, or null if none
        attr_accessor :coef_arrays
        alias_method :attr_coef_arrays, :coef_arrays
        undef_method :coef_arrays
        alias_method :attr_coef_arrays=, :coef_arrays=
        undef_method :coef_arrays=
        
        # These variables keep track of the current location of the input side.
        # cinfo.input_iMCU_row is also used for this.
        attr_accessor :mcu_ctr
        alias_method :attr_mcu_ctr, :mcu_ctr
        undef_method :mcu_ctr
        alias_method :attr_mcu_ctr=, :mcu_ctr=
        undef_method :mcu_ctr=
        
        # counts MCUs processed in current row
        attr_accessor :mcu_vert_offset
        alias_method :attr_mcu_vert_offset, :mcu_vert_offset
        undef_method :mcu_vert_offset
        alias_method :attr_mcu_vert_offset=, :mcu_vert_offset=
        undef_method :mcu_vert_offset=
        
        # counts MCU rows within iMCU row
        attr_accessor :mcu_rows_per_i_mcu_row
        alias_method :attr_mcu_rows_per_i_mcu_row, :mcu_rows_per_i_mcu_row
        undef_method :mcu_rows_per_i_mcu_row
        alias_method :attr_mcu_rows_per_i_mcu_row=, :mcu_rows_per_i_mcu_row=
        undef_method :mcu_rows_per_i_mcu_row=
        
        # number of such rows needed
        # The output side's location is represented by cinfo.output_iMCU_row.
        # In single-pass modes, it's sufficient to buffer just one MCU.
        # We allocate a workspace of D_MAX_BLOCKS_IN_MCU coefficient blocks,
        # and let the entropy decoder write into that workspace each time.
        # (On 80x86, the workspace is FAR even though it's not really very big;
        # this is to keep the module interfaces unchanged when a large coefficient
        # buffer is necessary.)
        # In multi-pass modes, this array points to the current MCU's blocks
        # within the virtual arrays; it is used only by the input side.
        attr_accessor :mcu_buffer
        alias_method :attr_mcu_buffer, :mcu_buffer
        undef_method :mcu_buffer
        alias_method :attr_mcu_buffer=, :mcu_buffer=
        undef_method :mcu_buffer=
        
        # In multi-pass modes, we need a virtual block array for each component.
        attr_accessor :whole_image
        alias_method :attr_whole_image, :whole_image
        undef_method :whole_image
        alias_method :attr_whole_image=, :whole_image=
        undef_method :whole_image=
        
        # When doing block smoothing, we latch coefficient Al values here
        attr_accessor :coef_bits_latch
        alias_method :attr_coef_bits_latch, :coef_bits_latch
        undef_method :coef_bits_latch
        alias_method :attr_coef_bits_latch=, :coef_bits_latch=
        undef_method :coef_bits_latch=
        
        attr_accessor :workspace
        alias_method :attr_workspace, :workspace
        undef_method :workspace
        alias_method :attr_workspace=, :workspace=
        undef_method :workspace=
        
        typesig { [Jpeg_decompress_struct] }
        def start_input_pass(cinfo)
          cinfo.attr_input_i_mcu_row = 0
          start_i_mcu_row(cinfo)
        end
        
        typesig { [Jpeg_decompress_struct] }
        # Reset within-iMCU-row counters for a new row (input side)
        def start_i_mcu_row(cinfo)
          coef = cinfo.attr_coef
          # In an interleaved scan, an MCU row is the same as an iMCU row.
          # In a noninterleaved scan, an iMCU row has v_samp_factor MCU rows.
          # But at the bottom of the image, process only what's left.
          if (cinfo.attr_comps_in_scan > 1)
            coef.attr_mcu_rows_per_i_mcu_row = 1
          else
            if (cinfo.attr_input_i_mcu_row < (cinfo.attr_total_i_mcu_rows - 1))
              coef.attr_mcu_rows_per_i_mcu_row = cinfo.attr_cur_comp_info[0].attr_v_samp_factor
            else
              coef.attr_mcu_rows_per_i_mcu_row = cinfo.attr_cur_comp_info[0].attr_last_row_height
            end
          end
          coef.attr_mcu_ctr = 0
          coef.attr_mcu_vert_offset = 0
        end
        
        typesig { [] }
        def initialize
          @consume_data = 0
          @decompress_data = 0
          @coef_arrays = nil
          @mcu_ctr = 0
          @mcu_vert_offset = 0
          @mcu_rows_per_i_mcu_row = 0
          @mcu_buffer = Array.typed(::Java::Short).new(D_MAX_BLOCKS_IN_MCU) { 0 }
          @whole_image = Array.typed(::Java::Short).new(MAX_COMPONENTS) { 0 }
          @coef_bits_latch = nil
          @workspace = nil
        end
        
        private
        alias_method :initialize_jpeg_d_coef_controller, :initialize
      end }
      
      const_set_lazy(:Jpeg_entropy_decoder) { Class.new do
        include_class_members JPEGDecoder
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass(cinfo)
          raise NotImplementedError
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu(cinfo, mcu_data)
          raise NotImplementedError
        end
        
        # This is here to share code between baseline and progressive decoders;
        # other modules probably should not use it
        attr_accessor :insufficient_data
        alias_method :attr_insufficient_data, :insufficient_data
        undef_method :insufficient_data
        alias_method :attr_insufficient_data=, :insufficient_data=
        undef_method :insufficient_data=
        
        # set true after emitting warning
        attr_accessor :br_state_local
        alias_method :attr_br_state_local, :br_state_local
        undef_method :br_state_local
        alias_method :attr_br_state_local=, :br_state_local=
        undef_method :br_state_local=
        
        attr_accessor :state_local
        alias_method :attr_state_local, :state_local
        undef_method :state_local
        alias_method :attr_state_local=, :state_local=
        undef_method :state_local=
        
        typesig { [] }
        def initialize
          @insufficient_data = false
          @br_state_local = Bitread_working_state.new
          @state_local = Savable_state.new
        end
        
        private
        alias_method :initialize_jpeg_entropy_decoder, :initialize
      end }
      
      const_set_lazy(:Huff_entropy_decoder) { Class.new(Jpeg_entropy_decoder) do
        include_class_members JPEGDecoder
        
        attr_accessor :bitstate
        alias_method :attr_bitstate, :bitstate
        undef_method :bitstate
        alias_method :attr_bitstate=, :bitstate=
        undef_method :bitstate=
        
        # Bit buffer at start of MCU
        attr_accessor :saved
        alias_method :attr_saved, :saved
        undef_method :saved
        alias_method :attr_saved=, :saved=
        undef_method :saved=
        
        # Other state at start of MCU
        # These fields are NOT loaded into local working state.
        attr_accessor :restarts_to_go
        alias_method :attr_restarts_to_go, :restarts_to_go
        undef_method :restarts_to_go
        alias_method :attr_restarts_to_go=, :restarts_to_go=
        undef_method :restarts_to_go=
        
        # MCUs left in this restart interval
        # Pointers to derived tables (these workspaces have image lifespan)
        attr_accessor :dc_derived_tbls
        alias_method :attr_dc_derived_tbls, :dc_derived_tbls
        undef_method :dc_derived_tbls
        alias_method :attr_dc_derived_tbls=, :dc_derived_tbls=
        undef_method :dc_derived_tbls=
        
        attr_accessor :ac_derived_tbls
        alias_method :attr_ac_derived_tbls, :ac_derived_tbls
        undef_method :ac_derived_tbls
        alias_method :attr_ac_derived_tbls=, :ac_derived_tbls=
        undef_method :ac_derived_tbls=
        
        # Precalculated info set up by start_pass for use in decode_mcu:
        # Pointers to derived tables to be used for each block within an MCU
        attr_accessor :dc_cur_tbls
        alias_method :attr_dc_cur_tbls, :dc_cur_tbls
        undef_method :dc_cur_tbls
        alias_method :attr_dc_cur_tbls=, :dc_cur_tbls=
        undef_method :dc_cur_tbls=
        
        attr_accessor :ac_cur_tbls
        alias_method :attr_ac_cur_tbls, :ac_cur_tbls
        undef_method :ac_cur_tbls
        alias_method :attr_ac_cur_tbls=, :ac_cur_tbls=
        undef_method :ac_cur_tbls=
        
        # Whether we care about the DC and AC coefficient values for each block
        attr_accessor :dc_needed
        alias_method :attr_dc_needed, :dc_needed
        undef_method :dc_needed
        alias_method :attr_dc_needed=, :dc_needed=
        undef_method :dc_needed=
        
        attr_accessor :ac_needed
        alias_method :attr_ac_needed, :ac_needed
        undef_method :ac_needed
        alias_method :attr_ac_needed=, :ac_needed=
        undef_method :ac_needed=
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass(cinfo)
          start_pass_huff_decoder(cinfo)
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu(cinfo, mcu_data)
          entropy = self
          blkn = 0
          # BITREAD_STATE_VARS;
          get_buffer = 0
          bits_left = 0
          # bitread_working_state br_state = new bitread_working_state();
          # savable_state state = new savable_state();
          br_state = self.attr_br_state_local
          state = self.attr_state_local
          # Process restart marker if needed; may have to suspend
          if (!(cinfo.attr_restart_interval).equal?(0))
            if ((entropy.attr_restarts_to_go).equal?(0))
              if (!process_restart(cinfo))
                return false
              end
            end
          end
          # If we've run out of data, just leave the MCU set to zeroes.
          # This way, we return uniform gray for the remainder of the segment.
          if (!entropy.attr_insufficient_data)
            # Load up working state
            # BITREAD_LOAD_STATE(cinfo,entropy.bitstate);
            br_state.attr_cinfo = cinfo
            br_state.attr_buffer = cinfo.attr_buffer
            br_state.attr_bytes_in_buffer = cinfo.attr_bytes_in_buffer
            br_state.attr_bytes_offset = cinfo.attr_bytes_offset
            get_buffer = entropy.attr_bitstate.attr_get_buffer
            bits_left = entropy.attr_bitstate.attr_bits_left
            # ASSIGN_STATE(state, entropy.saved);
            state.attr_last_dc_val[0] = entropy.attr_saved.attr_last_dc_val[0]
            state.attr_last_dc_val[1] = entropy.attr_saved.attr_last_dc_val[1]
            state.attr_last_dc_val[2] = entropy.attr_saved.attr_last_dc_val[2]
            state.attr_last_dc_val[3] = entropy.attr_saved.attr_last_dc_val[3]
            # Outer loop handles each block in the MCU
            blkn = 0
            while blkn < cinfo.attr_blocks_in_mcu
              block = mcu_data[blkn]
              dctbl = entropy.attr_dc_cur_tbls[blkn]
              actbl = entropy.attr_ac_cur_tbls[blkn]
              s = 0
              k = 0
              r = 0
              # Decode a single block's worth of coefficients
              # Section F.2.2.1: decode the DC coefficient difference
              # HUFF_DECODE(s, br_state, dctbl, return FALSE, label1);
              nb = 0
              look = 0
              if (bits_left < HUFF_LOOKAHEAD)
                if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0))
                  return false
                end
                get_buffer = br_state.attr_get_buffer
                bits_left = br_state.attr_bits_left
                if (bits_left < HUFF_LOOKAHEAD)
                  nb = 1
                  # goto slowlabel;
                  if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, dctbl, nb)) < 0)
                    return false
                  end
                  get_buffer = br_state.attr_get_buffer
                  bits_left = br_state.attr_bits_left
                end
              end
              # look = PEEK_BITS(HUFF_LOOKAHEAD);
              if (!(nb).equal?(1))
                look = (((get_buffer >> (bits_left - (HUFF_LOOKAHEAD)))) & ((1 << (HUFF_LOOKAHEAD)) - 1))
                if (!((nb = dctbl.attr_look_nbits[look])).equal?(0))
                  # DROP_BITS(nb);
                  bits_left -= nb
                  s = dctbl.attr_look_sym[look] & 0xff
                else
                  nb = HUFF_LOOKAHEAD + 1
                  # slowlabel:
                  if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, dctbl, nb)) < 0)
                    return false
                  end
                  get_buffer = br_state.attr_get_buffer
                  bits_left = br_state.attr_bits_left
                end
              end
              if (!(s).equal?(0))
                # CHECK_BIT_BUFFER(br_state, s, return FALSE);
                if (bits_left < (s))
                  if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s))
                    return false
                  end
                  get_buffer = (br_state).attr_get_buffer
                  bits_left = (br_state).attr_bits_left
                end
                # r = GET_BITS(s);
                r = (((get_buffer >> (bits_left -= (s)))) & ((1 << (s)) - 1))
                # s = HUFF_EXTEND(r, s);
                s = ((r) < self.attr_extend_test[s] ? (r) + self.attr_extend_offset[s] : (r))
              end
              if (entropy.attr_dc_needed[blkn])
                # Convert DC difference to actual value, update last_dc_val
                ci = cinfo.attr_mcu_membership[blkn]
                s += state.attr_last_dc_val[ci]
                state.attr_last_dc_val[ci] = s
                # Output the DC coefficient (assumes jpeg_natural_order[0] = 0)
                block[0] = RJava.cast_to_short(s)
              end
              if (entropy.attr_ac_needed[blkn])
                # Section F.2.2.2: decode the AC coefficients
                # Since zeroes are skipped, output area must be cleared beforehand
                k = 1
                while k < DCTSIZE2
                  # HUFF_DECODE(s, br_state, actbl, return FALSE, label2);
                  nb = 0
                  look = 0
                  if (bits_left < HUFF_LOOKAHEAD)
                    if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0))
                      return false
                    end
                    get_buffer = br_state.attr_get_buffer
                    bits_left = br_state.attr_bits_left
                    if (bits_left < HUFF_LOOKAHEAD)
                      nb = 1
                      # goto slowlabel;
                      if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb)) < 0)
                        return false
                      end
                      get_buffer = br_state.attr_get_buffer
                      bits_left = br_state.attr_bits_left
                    end
                  end
                  if (!(nb).equal?(1))
                    # look = PEEK_BITS(HUFF_LOOKAHEAD);
                    look = (((get_buffer >> (bits_left - (HUFF_LOOKAHEAD)))) & ((1 << (HUFF_LOOKAHEAD)) - 1))
                    if (!((nb = actbl.attr_look_nbits[look])).equal?(0))
                      # DROP_BITS(nb);
                      bits_left -= (nb)
                      s = actbl.attr_look_sym[look] & 0xff
                    else
                      nb = HUFF_LOOKAHEAD + 1
                      # slowlabel:
                      if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb)) < 0)
                        return false
                      end
                      get_buffer = br_state.attr_get_buffer
                      bits_left = br_state.attr_bits_left
                    end
                  end
                  r = s >> 4
                  s &= 15
                  if (!(s).equal?(0))
                    k += r
                    # CHECK_BIT_BUFFER(br_state, s, return FALSE);
                    if (bits_left < (s))
                      if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s))
                        return false
                      end
                      get_buffer = (br_state).attr_get_buffer
                      bits_left = (br_state).attr_bits_left
                    end
                    # r = GET_BITS(s);
                    r = (((get_buffer >> (bits_left -= (s)))) & ((1 << (s)) - 1))
                    # s = HUFF_EXTEND(r, s);
                    s = ((r) < self.attr_extend_test[s] ? (r) + self.attr_extend_offset[s] : (r))
                    # Output coefficient in natural (dezigzagged)
                    # order. Note: the extra entries in
                    # jpeg_natural_order[] will save us if k >=
                    # DCTSIZE2, which could happen if the data is
                    # corrupted.
                    block[self.attr_jpeg_natural_order[k]] = RJava.cast_to_short(s)
                  else
                    if (!(r).equal?(15))
                      break
                    end
                    k += 15
                  end
                  k += 1
                end
              else
                # Section F.2.2.2: decode the AC coefficients
                # In this path we just discard the values
                k = 1
                while k < DCTSIZE2
                  # HUFF_DECODE(s, br_state, actbl, return FALSE, label3);
                  nb = 0
                  look = 0
                  if (bits_left < HUFF_LOOKAHEAD)
                    if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0))
                      return false
                    end
                    get_buffer = br_state.attr_get_buffer
                    bits_left = br_state.attr_bits_left
                    if (bits_left < HUFF_LOOKAHEAD)
                      nb = 1
                      # goto slowlabel;
                      if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb)) < 0)
                        return false
                      end
                      get_buffer = br_state.attr_get_buffer
                      bits_left = br_state.attr_bits_left
                    end
                  end
                  if (!(nb).equal?(1))
                    # look = PEEK_BITS(HUFF_LOOKAHEAD);
                    look = (((get_buffer >> (bits_left - (HUFF_LOOKAHEAD)))) & ((1 << (HUFF_LOOKAHEAD)) - 1))
                    if (!((nb = actbl.attr_look_nbits[look])).equal?(0))
                      # DROP_BITS(nb);
                      bits_left -= (nb)
                      s = actbl.attr_look_sym[look] & 0xff
                    else
                      nb = HUFF_LOOKAHEAD + 1
                      # slowlabel:
                      if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, actbl, nb)) < 0)
                        return false
                      end
                      get_buffer = br_state.attr_get_buffer
                      bits_left = br_state.attr_bits_left
                    end
                  end
                  r = s >> 4
                  s &= 15
                  if (!(s).equal?(0))
                    k += r
                    # CHECK_BIT_BUFFER(br_state, s, return FALSE);
                    if (bits_left < (s))
                      if (!jpeg_fill_bit_buffer((br_state), get_buffer, bits_left, s))
                        return false
                      end
                      get_buffer = (br_state).attr_get_buffer
                      bits_left = (br_state).attr_bits_left
                    end
                    # DROP_BITS(s);
                    bits_left -= s
                  else
                    if (!(r).equal?(15))
                      break
                    end
                    k += 15
                  end
                  k += 1
                end
              end
              blkn += 1
            end
            # Completed MCU, so update state
            # BITREAD_SAVE_STATE(cinfo,entropy.bitstate);
            cinfo.attr_buffer = br_state.attr_buffer
            cinfo.attr_bytes_in_buffer = br_state.attr_bytes_in_buffer
            cinfo.attr_bytes_offset = br_state.attr_bytes_offset
            entropy.attr_bitstate.attr_get_buffer = get_buffer
            entropy.attr_bitstate.attr_bits_left = bits_left
            # ASSIGN_STATE(entropy.saved, state);
            entropy.attr_saved.attr_last_dc_val[0] = state.attr_last_dc_val[0]
            entropy.attr_saved.attr_last_dc_val[1] = state.attr_last_dc_val[1]
            entropy.attr_saved.attr_last_dc_val[2] = state.attr_last_dc_val[2]
            entropy.attr_saved.attr_last_dc_val[3] = state.attr_last_dc_val[3]
          end
          # Account for restart interval (no-op if not using restarts)
          entropy.attr_restarts_to_go -= 1
          return true
        end
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass_huff_decoder(cinfo)
          entropy = self
          ci = 0
          blkn = 0
          dctbl = 0
          actbl = 0
          compptr = nil
          # Check that the scan parameters Ss, Se, Ah/Al are OK for sequential JPEG.
          # This ought to be an error condition, but we make it a warning because
          # there are some baseline files out there with all zeroes in these bytes.
          if (!(cinfo.attr_ss).equal?(0) || !(cinfo.attr_se).equal?(DCTSIZE2 - 1) || !(cinfo.attr_ah).equal?(0) || !(cinfo.attr_al).equal?(0))
            # WARNMS(cinfo, JWRN_NOT_SEQUENTIAL);
          end
          ci = 0
          while ci < cinfo.attr_comps_in_scan
            compptr = cinfo.attr_cur_comp_info[ci]
            dctbl = compptr.attr_dc_tbl_no
            actbl = compptr.attr_ac_tbl_no
            # Compute derived values for Huffman tables
            # We may do this more than once for a table, but it's not expensive
            jpeg_make_d_derived_tbl(cinfo, true, dctbl, entropy.attr_dc_derived_tbls[dctbl] = D_derived_tbl.new)
            jpeg_make_d_derived_tbl(cinfo, false, actbl, entropy.attr_ac_derived_tbls[actbl] = D_derived_tbl.new)
            # Initialize DC predictions to 0
            entropy.attr_saved.attr_last_dc_val[ci] = 0
            ci += 1
          end
          # Precalculate decoding info for each block in an MCU of this scan
          blkn = 0
          while blkn < cinfo.attr_blocks_in_mcu
            ci = cinfo.attr_mcu_membership[blkn]
            compptr = cinfo.attr_cur_comp_info[ci]
            # Precalculate which table to use for each block
            entropy.attr_dc_cur_tbls[blkn] = entropy.attr_dc_derived_tbls[compptr.attr_dc_tbl_no]
            entropy.attr_ac_cur_tbls[blkn] = entropy.attr_ac_derived_tbls[compptr.attr_ac_tbl_no]
            # Decide whether we really care about the coefficient values
            if (compptr.attr_component_needed)
              entropy.attr_dc_needed[blkn] = true
              # we don't need the ACs if producing a 1/8th-size image
              entropy.attr_ac_needed[blkn] = (compptr.attr_dct_scaled_size > 1)
            else
              entropy.attr_dc_needed[blkn] = entropy.attr_ac_needed[blkn] = false
            end
            blkn += 1
          end
          # Initialize bitread state variables
          entropy.attr_bitstate.attr_bits_left = 0
          entropy.attr_bitstate.attr_get_buffer = 0
          # unnecessary, but keeps Purify quiet
          entropy.attr_insufficient_data = false
          # Initialize restart counter
          entropy.attr_restarts_to_go = cinfo.attr_restart_interval
        end
        
        typesig { [Jpeg_decompress_struct] }
        def process_restart(cinfo)
          entropy = self
          ci = 0
          # Throw away any unused bits remaining in bit buffer;
          # include any full bytes in next_marker's count of discarded bytes
          cinfo.attr_marker.attr_discarded_bytes += entropy.attr_bitstate.attr_bits_left / 8
          entropy.attr_bitstate.attr_bits_left = 0
          # Advance past the RSTn marker
          if (!read_restart_marker(cinfo))
            return false
          end
          # Re-initialize DC predictions to 0
          ci = 0
          while ci < cinfo.attr_comps_in_scan
            entropy.attr_saved.attr_last_dc_val[ci] = 0
            ci += 1
          end
          # Reset restart counter
          entropy.attr_restarts_to_go = cinfo.attr_restart_interval
          # Reset out-of-data flag, unless read_restart_marker left us smack up
          # against a marker.	In that case we will end up treating the next data
          # segment as empty, and we can avoid producing bogus output pixels by
          # leaving the flag set.
          if ((cinfo.attr_unread_marker).equal?(0))
            entropy.attr_insufficient_data = false
          end
          return true
        end
        
        typesig { [] }
        def initialize
          @bitstate = nil
          @saved = nil
          @restarts_to_go = 0
          @dc_derived_tbls = nil
          @ac_derived_tbls = nil
          @dc_cur_tbls = nil
          @ac_cur_tbls = nil
          @dc_needed = nil
          @ac_needed = nil
          super()
          @bitstate = Bitread_perm_state.new
          @saved = Savable_state.new
          @dc_derived_tbls = Array.typed(D_derived_tbl).new(NUM_HUFF_TBLS) { nil }
          @ac_derived_tbls = Array.typed(D_derived_tbl).new(NUM_HUFF_TBLS) { nil }
          @dc_cur_tbls = Array.typed(D_derived_tbl).new(D_MAX_BLOCKS_IN_MCU) { nil }
          @ac_cur_tbls = Array.typed(D_derived_tbl).new(D_MAX_BLOCKS_IN_MCU) { nil }
          @dc_needed = Array.typed(::Java::Boolean).new(D_MAX_BLOCKS_IN_MCU) { false }
          @ac_needed = Array.typed(::Java::Boolean).new(D_MAX_BLOCKS_IN_MCU) { false }
        end
        
        private
        alias_method :initialize_huff_entropy_decoder, :initialize
      end }
      
      const_set_lazy(:Phuff_entropy_decoder) { Class.new(Jpeg_entropy_decoder) do
        include_class_members JPEGDecoder
        
        # These fields are loaded into local variables at start of each MCU.
        # In case of suspension, we exit WITHOUT updating them.
        attr_accessor :bitstate
        alias_method :attr_bitstate, :bitstate
        undef_method :bitstate
        alias_method :attr_bitstate=, :bitstate=
        undef_method :bitstate=
        
        # Bit buffer at start of MCU
        attr_accessor :saved
        alias_method :attr_saved, :saved
        undef_method :saved
        alias_method :attr_saved=, :saved=
        undef_method :saved=
        
        # Other state at start of MCU
        # These fields are NOT loaded into local working state.
        attr_accessor :restarts_to_go
        alias_method :attr_restarts_to_go, :restarts_to_go
        undef_method :restarts_to_go
        alias_method :attr_restarts_to_go=, :restarts_to_go=
        undef_method :restarts_to_go=
        
        # MCUs left in this restart interval
        # Pointers to derived tables (these workspaces have image lifespan)
        attr_accessor :derived_tbls
        alias_method :attr_derived_tbls, :derived_tbls
        undef_method :derived_tbls
        alias_method :attr_derived_tbls=, :derived_tbls=
        undef_method :derived_tbls=
        
        attr_accessor :ac_derived_tbl
        alias_method :attr_ac_derived_tbl, :ac_derived_tbl
        undef_method :ac_derived_tbl
        alias_method :attr_ac_derived_tbl=, :ac_derived_tbl=
        undef_method :ac_derived_tbl=
        
        # active table during an AC scan
        attr_accessor :newnz_pos
        alias_method :attr_newnz_pos, :newnz_pos
        undef_method :newnz_pos
        alias_method :attr_newnz_pos=, :newnz_pos=
        undef_method :newnz_pos=
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass(cinfo)
          start_pass_phuff_decoder(cinfo)
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu(cinfo, mcu_data)
          is_dc_band = ((cinfo.attr_ss).equal?(0))
          if ((cinfo.attr_ah).equal?(0))
            if (is_dc_band)
              return decode_mcu__dc_first(cinfo, mcu_data)
            else
              return decode_mcu__ac_first(cinfo, mcu_data)
            end
          else
            if (is_dc_band)
              return decode_mcu__dc_refine(cinfo, mcu_data)
            else
              return decode_mcu__ac_refine(cinfo, mcu_data)
            end
          end
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu__dc_refine(cinfo, mcu_data)
          entropy = self
          p1 = 1 << cinfo.attr_al
          # 1 in the bit position being coded
          blkn = 0
          block = nil
          # BITREAD_STATE_VARS;
          get_buffer = 0
          bits_left = 0
          # bitread_working_state br_state = new bitread_working_state();
          br_state = self.attr_br_state_local
          # Process restart marker if needed; may have to suspend
          if (!(cinfo.attr_restart_interval).equal?(0))
            if ((entropy.attr_restarts_to_go).equal?(0))
              if (!process_restart(cinfo))
                return false
              end
            end
          end
          # Not worth the cycles to check insufficient_data here,
          # since we will not change the data anyway if we read zeroes.
          # 
          # Load up working state
          # BITREAD_LOAD_STATE(cinfo,entropy.bitstate);
          br_state.attr_cinfo = cinfo
          br_state.attr_buffer = cinfo.attr_buffer
          br_state.attr_bytes_in_buffer = cinfo.attr_bytes_in_buffer
          br_state.attr_bytes_offset = cinfo.attr_bytes_offset
          get_buffer = entropy.attr_bitstate.attr_get_buffer
          bits_left = entropy.attr_bitstate.attr_bits_left
          # Outer loop handles each block in the MCU
          blkn = 0
          while blkn < cinfo.attr_blocks_in_mcu
            block = mcu_data[blkn]
            # Encoded data is simply the next bit of the two's-complement DC value
            # CHECK_BIT_BUFFER(br_state, 1, return FALSE);
            if (bits_left < (1))
              if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1))
                return false
              end
              get_buffer = (br_state).attr_get_buffer
              bits_left = (br_state).attr_bits_left
            end
            # if (GET_BITS(1))
            if (!((((get_buffer >> (bits_left -= (1)))) & ((1 << (1)) - 1))).equal?(0))
              block[0] |= p1
            end
            blkn += 1
          end
          # Completed MCU, so update state
          # BITREAD_SAVE_STATE(cinfo,entropy.bitstate);
          cinfo.attr_buffer = br_state.attr_buffer
          cinfo.attr_bytes_in_buffer = br_state.attr_bytes_in_buffer
          cinfo.attr_bytes_offset = br_state.attr_bytes_offset
          entropy.attr_bitstate.attr_get_buffer = get_buffer
          entropy.attr_bitstate.attr_bits_left = bits_left
          # Account for restart interval (no-op if not using restarts)
          entropy.attr_restarts_to_go -= 1
          return true
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu__ac_refine(cinfo, mcu_data)
          entropy = self
          se = cinfo.attr_se
          p1 = 1 << cinfo.attr_al
          # 1 in the bit position being coded
          m1 = (-1) << cinfo.attr_al
          # -1 in the bit position being coded
          s = 0
          k = 0
          r = 0
          eobrun = 0
          block = nil
          thiscoef = nil
          # BITREAD_STATE_VARS;
          get_buffer = 0
          bits_left = 0
          # bitread_working_state br_state = new bitread_working_state();
          br_state = self.attr_br_state_local
          tbl = nil
          num_newnz = 0
          newnz_pos = entropy.attr_newnz_pos
          # Process restart marker if needed; may have to suspend
          if (!(cinfo.attr_restart_interval).equal?(0))
            if ((entropy.attr_restarts_to_go).equal?(0))
              if (!process_restart(cinfo))
                return false
              end
            end
          end
          # If we've run out of data, don't modify the MCU.
          if (!entropy.attr_insufficient_data)
            # Load up working state
            # BITREAD_LOAD_STATE(cinfo,entropy.bitstate);
            br_state.attr_cinfo = cinfo
            br_state.attr_buffer = cinfo.attr_buffer
            br_state.attr_bytes_in_buffer = cinfo.attr_bytes_in_buffer
            br_state.attr_bytes_offset = cinfo.attr_bytes_offset
            get_buffer = entropy.attr_bitstate.attr_get_buffer
            bits_left = entropy.attr_bitstate.attr_bits_left
            eobrun = entropy.attr_saved.attr_eobrun
            # only part of saved state we need
            # There is always only one block per MCU
            block = mcu_data[0]
            tbl = entropy.attr_ac_derived_tbl
            # If we are forced to suspend, we must undo the assignments to any newly
            # nonzero coefficients in the block, because otherwise we'd get confused
            # next time about which coefficients were already nonzero.
            # But we need not undo addition of bits to already-nonzero coefficients;
            # instead, we can test the current bit to see if we already did it.
            num_newnz = 0
            # initialize coefficient loop counter to start of band
            k = cinfo.attr_ss
            if ((eobrun).equal?(0))
              while k <= se
                # HUFF_DECODE(s, br_state, tbl, goto undoit, label3);
                nb = 0
                look = 0
                if (bits_left < HUFF_LOOKAHEAD)
                  if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0))
                    # failaction;
                    while (num_newnz > 0)
                      block[newnz_pos[(num_newnz -= 1)]] = 0
                    end
                    return false
                  end
                  get_buffer = br_state.attr_get_buffer
                  bits_left = br_state.attr_bits_left
                  if (bits_left < HUFF_LOOKAHEAD)
                    nb = 1
                    # goto slowlabel;
                    if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb)) < 0)
                      # failaction;
                      while (num_newnz > 0)
                        block[newnz_pos[(num_newnz -= 1)]] = 0
                      end
                      return false
                    end
                    get_buffer = br_state.attr_get_buffer
                    bits_left = br_state.attr_bits_left
                  end
                end
                if (!(nb).equal?(1))
                  # look = PEEK_BITS(HUFF_LOOKAHEAD);
                  look = (((get_buffer >> (bits_left - (HUFF_LOOKAHEAD)))) & ((1 << (HUFF_LOOKAHEAD)) - 1))
                  if (!((nb = tbl.attr_look_nbits[look])).equal?(0))
                    # DROP_BITS(nb);
                    bits_left -= nb
                    s = tbl.attr_look_sym[look] & 0xff
                  else
                    nb = HUFF_LOOKAHEAD + 1
                    # slowlabel:
                    if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb)) < 0)
                      # failaction;
                      while (num_newnz > 0)
                        block[newnz_pos[(num_newnz -= 1)]] = 0
                      end
                      return false
                    end
                    get_buffer = br_state.attr_get_buffer
                    bits_left = br_state.attr_bits_left
                  end
                end
                r = s >> 4
                s &= 15
                if (!(s).equal?(0))
                  if (!(s).equal?(1))
                    # size of new coef should always be 1
                    # WARNMS(cinfo, JWRN_HUFF_BAD_CODE);
                  end
                  # CHECK_BIT_BUFFER(br_state, 1, goto undoit);
                  if (bits_left < (1))
                    if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1))
                      # failaction;
                      while (num_newnz > 0)
                        block[newnz_pos[(num_newnz -= 1)]] = 0
                      end
                      return false
                    end
                    get_buffer = (br_state).attr_get_buffer
                    bits_left = (br_state).attr_bits_left
                  end
                  # if (GET_BITS(1))
                  if (!((((get_buffer >> (bits_left -= (1)))) & ((1 << (1)) - 1))).equal?(0))
                    s = p1
                  # newly nonzero coef is positive
                  else
                    s = m1
                  end
                  # newly nonzero coef is negative
                else
                  if (!(r).equal?(15))
                    eobrun = 1 << r
                    # EOBr, run length is 2^r + appended bits
                    if (!(r).equal?(0))
                      # CHECK_BIT_BUFFER(br_state, r, goto undoit);
                      if (bits_left < (r))
                        if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, r))
                          # failaction;
                          while (num_newnz > 0)
                            block[newnz_pos[(num_newnz -= 1)]] = 0
                          end
                          return false
                        end
                        get_buffer = (br_state).attr_get_buffer
                        bits_left = (br_state).attr_bits_left
                      end
                      # r = GET_BITS(r);
                      r = (((get_buffer >> (bits_left -= (r)))) & ((1 << (r)) - 1))
                      eobrun += r
                    end
                    break
                    # rest of block is handled by EOB logic
                  end
                  # note s = 0 for processing ZRL
                end
                # Advance over already-nonzero coefs and r still-zero coefs,
                # appending correction bits to the nonzeroes.	A correction bit is 1
                # if the absolute value of the coefficient must be increased.
                begin
                  thiscoef = block
                  thiscoef_offset = self.attr_jpeg_natural_order[k]
                  if (!(thiscoef[thiscoef_offset]).equal?(0))
                    # CHECK_BIT_BUFFER(br_state, 1, goto undoit);
                    if (bits_left < (1))
                      if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1))
                        # failaction;
                        while (num_newnz > 0)
                          block[newnz_pos[(num_newnz -= 1)]] = 0
                        end
                        return false
                      end
                      get_buffer = (br_state).attr_get_buffer
                      bits_left = (br_state).attr_bits_left
                    end
                    # if (GET_BITS(1)) {
                    if (!((((get_buffer >> (bits_left -= (1)))) & ((1 << (1)) - 1))).equal?(0))
                      if (((thiscoef[thiscoef_offset] & p1)).equal?(0))
                        # do nothing if already set it
                        if (thiscoef[thiscoef_offset] >= 0)
                          thiscoef[thiscoef_offset] += p1
                        else
                          thiscoef[thiscoef_offset] += m1
                        end
                      end
                    end
                  else
                    if ((r -= 1) < 0)
                      break
                    end
                    # reached target zero coefficient
                  end
                  k += 1
                end while (k <= se)
                if (!(s).equal?(0))
                  pos = self.attr_jpeg_natural_order[k]
                  # Output newly nonzero coefficient
                  block[pos] = RJava.cast_to_short(s)
                  # Remember its position in case we have to suspend
                  newnz_pos[((num_newnz += 1) - 1)] = pos
                end
                k += 1
              end
            end
            if (eobrun > 0)
              # Scan any remaining coefficient positions after the end-of-band
              # (the last newly nonzero coefficient, if any).	Append a correction
              # bit to each already-nonzero coefficient.	A correction bit is 1
              # if the absolute value of the coefficient must be increased.
              while k <= se
                thiscoef = block
                thiscoef_offset = self.attr_jpeg_natural_order[k]
                if (!(thiscoef[thiscoef_offset]).equal?(0))
                  # CHECK_BIT_BUFFER(br_state, 1, goto undoit);
                  if (bits_left < (1))
                    if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 1))
                      # failaction;
                      while (num_newnz > 0)
                        block[newnz_pos[(num_newnz -= 1)]] = 0
                      end
                      return false
                    end
                    get_buffer = (br_state).attr_get_buffer
                    bits_left = (br_state).attr_bits_left
                  end
                  # if (GET_BITS(1)) {
                  if (!((((get_buffer >> (bits_left -= (1)))) & ((1 << (1)) - 1))).equal?(0))
                    if (((thiscoef[thiscoef_offset] & p1)).equal?(0))
                      # do nothing if already changed it
                      if (thiscoef[thiscoef_offset] >= 0)
                        thiscoef[thiscoef_offset] += p1
                      else
                        thiscoef[thiscoef_offset] += m1
                      end
                    end
                  end
                end
                k += 1
              end
              # Count one block completed in EOB run
              eobrun -= 1
            end
            # Completed MCU, so update state
            # BITREAD_SAVE_STATE(cinfo,entropy.bitstate);
            cinfo.attr_buffer = br_state.attr_buffer
            cinfo.attr_bytes_in_buffer = br_state.attr_bytes_in_buffer
            cinfo.attr_bytes_offset = br_state.attr_bytes_offset
            entropy.attr_bitstate.attr_get_buffer = get_buffer
            entropy.attr_bitstate.attr_bits_left = bits_left
            entropy.attr_saved.attr_eobrun = eobrun
            # only part of saved state we need
          end
          # Account for restart interval (no-op if not using restarts)
          entropy.attr_restarts_to_go -= 1
          return true
          # undoit:
          # /* Re-zero any output coefficients that we made newly nonzero */
          # while (num_newnz > 0)
          # (*block)[newnz_pos[--num_newnz]] = 0;
          # 
          # return false;
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu__ac_first(cinfo, mcu_data)
          entropy = self
          se = cinfo.attr_se
          al = cinfo.attr_al
          s = 0
          k = 0
          r = 0
          eobrun = 0
          block = nil
          # BITREAD_STATE_VARS;
          get_buffer = 0
          bits_left = 0
          # bitread_working_state br_state = new bitread_working_state();
          br_state = self.attr_br_state_local
          tbl = nil
          # Process restart marker if needed; may have to suspend
          if (!(cinfo.attr_restart_interval).equal?(0))
            if ((entropy.attr_restarts_to_go).equal?(0))
              if (!process_restart(cinfo))
                return false
              end
            end
          end
          # If we've run out of data, just leave the MCU set to zeroes.
          # This way, we return uniform gray for the remainder of the segment.
          if (!entropy.attr_insufficient_data)
            # Load up working state.
            # We can avoid loading/saving bitread state if in an EOB run.
            eobrun = entropy.attr_saved.attr_eobrun
            # only part of saved state we need
            # There is always only one block per MCU
            if (eobrun > 0)
              # if it's a band of zeroes...
              eobrun -= 1
            # ...process it now (we do nothing)
            else
              # BITREAD_LOAD_STATE(cinfo,entropy.bitstate);
              br_state.attr_cinfo = cinfo
              br_state.attr_buffer = cinfo.attr_buffer
              br_state.attr_bytes_in_buffer = cinfo.attr_bytes_in_buffer
              br_state.attr_bytes_offset = cinfo.attr_bytes_offset
              get_buffer = entropy.attr_bitstate.attr_get_buffer
              bits_left = entropy.attr_bitstate.attr_bits_left
              block = mcu_data[0]
              tbl = entropy.attr_ac_derived_tbl
              k = cinfo.attr_ss
              while k <= se
                # HUFF_DECODE(s, br_state, tbl, return FALSE, label2);
                nb = 0
                look = 0
                if (bits_left < HUFF_LOOKAHEAD)
                  if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0))
                    return false
                  end
                  get_buffer = br_state.attr_get_buffer
                  bits_left = br_state.attr_bits_left
                  if (bits_left < HUFF_LOOKAHEAD)
                    nb = 1
                    # goto slowlabel;
                    if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb)) < 0)
                      return false
                    end
                    get_buffer = br_state.attr_get_buffer
                    bits_left = br_state.attr_bits_left
                  end
                end
                if (!(nb).equal?(1))
                  # look = PEEK_BITS(HUFF_LOOKAHEAD);
                  look = (((get_buffer >> (bits_left - (HUFF_LOOKAHEAD)))) & ((1 << (HUFF_LOOKAHEAD)) - 1))
                  if (!((nb = tbl.attr_look_nbits[look])).equal?(0))
                    # DROP_BITS(nb);
                    bits_left -= nb
                    s = tbl.attr_look_sym[look] & 0xff
                  else
                    nb = HUFF_LOOKAHEAD + 1
                    # slowlabel:
                    if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb)) < 0)
                      return false
                    end
                    get_buffer = br_state.attr_get_buffer
                    bits_left = br_state.attr_bits_left
                  end
                end
                r = s >> 4
                s &= 15
                if (!(s).equal?(0))
                  k += r
                  # CHECK_BIT_BUFFER(br_state, s, return FALSE);
                  if (bits_left < (s))
                    if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s))
                      return false
                    end
                    get_buffer = (br_state).attr_get_buffer
                    bits_left = (br_state).attr_bits_left
                  end
                  # r = GET_BITS(s);
                  r = (((get_buffer >> (bits_left -= (s)))) & ((1 << (s)) - 1))
                  # s = HUFF_EXTEND(r, s);
                  s = ((r) < self.attr_extend_test[s] ? (r) + self.attr_extend_offset[s] : (r))
                  # Scale and output coefficient in natural (dezigzagged) order
                  block[self.attr_jpeg_natural_order[k]] = RJava.cast_to_short((s << al))
                else
                  if ((r).equal?(15))
                    # ZRL
                    k += 15
                    # skip 15 zeroes in band
                  else
                    # EOBr, run length is 2^r + appended bits
                    eobrun = 1 << r
                    if (!(r).equal?(0))
                      # EOBr, r > 0
                      # CHECK_BIT_BUFFER(br_state, r, return FALSE);
                      if (bits_left < (r))
                        if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, r))
                          return false
                        end
                        get_buffer = (br_state).attr_get_buffer
                        bits_left = (br_state).attr_bits_left
                      end
                      # r = GET_BITS(r);
                      r = (((get_buffer >> (bits_left -= (r)))) & ((1 << (r)) - 1))
                      eobrun += r
                    end
                    eobrun -= 1
                    # this band is processed at this moment
                    break
                    # force end-of-band
                  end
                end
                k += 1
              end
              # BITREAD_SAVE_STATE(cinfo,entropy.bitstate);
              cinfo.attr_buffer = br_state.attr_buffer
              cinfo.attr_bytes_in_buffer = br_state.attr_bytes_in_buffer
              cinfo.attr_bytes_offset = br_state.attr_bytes_offset
              entropy.attr_bitstate.attr_get_buffer = get_buffer
              entropy.attr_bitstate.attr_bits_left = bits_left
            end
            # Completed MCU, so update state
            entropy.attr_saved.attr_eobrun = eobrun
            # only part of saved state we need
          end
          # Account for restart interval (no-op if not using restarts)
          entropy.attr_restarts_to_go -= 1
          return true
        end
        
        typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Short))] }
        def decode_mcu__dc_first(cinfo, mcu_data)
          entropy = self
          al = cinfo.attr_al
          s = 0
          r = 0
          blkn = 0
          ci = 0
          block = nil
          # BITREAD_STATE_VARS;
          get_buffer = 0
          bits_left = 0
          # bitread_working_state br_state = new bitread_working_state();
          br_state = self.attr_br_state_local
          # savable_state state = new savable_state();
          state = self.attr_state_local
          tbl = nil
          compptr = nil
          # Process restart marker if needed; may have to suspend
          if (!(cinfo.attr_restart_interval).equal?(0))
            if ((entropy.attr_restarts_to_go).equal?(0))
              if (!process_restart(cinfo))
                return false
              end
            end
          end
          # If we've run out of data, just leave the MCU set to zeroes.
          # This way, we return uniform gray for the remainder of the segment.
          if (!entropy.attr_insufficient_data)
            # Load up working state
            # BITREAD_LOAD_STATE(cinfo,entropy.bitstate);
            br_state.attr_cinfo = cinfo
            br_state.attr_buffer = cinfo.attr_buffer
            br_state.attr_bytes_in_buffer = cinfo.attr_bytes_in_buffer
            br_state.attr_bytes_offset = cinfo.attr_bytes_offset
            get_buffer = entropy.attr_bitstate.attr_get_buffer
            bits_left = entropy.attr_bitstate.attr_bits_left
            # ASSIGN_STATE(state, entropy.saved);
            state.attr_eobrun = entropy.attr_saved.attr_eobrun
            state.attr_last_dc_val[0] = entropy.attr_saved.attr_last_dc_val[0]
            state.attr_last_dc_val[1] = entropy.attr_saved.attr_last_dc_val[1]
            state.attr_last_dc_val[2] = entropy.attr_saved.attr_last_dc_val[2]
            state.attr_last_dc_val[3] = entropy.attr_saved.attr_last_dc_val[3]
            # Outer loop handles each block in the MCU
            blkn = 0
            while blkn < cinfo.attr_blocks_in_mcu
              block = mcu_data[blkn]
              ci = cinfo.attr_mcu_membership[blkn]
              compptr = cinfo.attr_cur_comp_info[ci]
              tbl = entropy.attr_derived_tbls[compptr.attr_dc_tbl_no]
              # Decode a single block's worth of coefficients
              # Section F.2.2.1: decode the DC coefficient difference
              # HUFF_DECODE(s, br_state, tbl, return FALSE, label1);
              nb = 0
              look = 0
              if (bits_left < HUFF_LOOKAHEAD)
                if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, 0))
                  return false
                end
                get_buffer = br_state.attr_get_buffer
                bits_left = br_state.attr_bits_left
                if (bits_left < HUFF_LOOKAHEAD)
                  nb = 1
                  # goto slowlabel;
                  if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb)) < 0)
                    return false
                  end
                  get_buffer = br_state.attr_get_buffer
                  bits_left = br_state.attr_bits_left
                end
              end
              if (!(nb).equal?(1))
                # look = PEEK_BITS(HUFF_LOOKAHEAD);
                look = (((get_buffer >> (bits_left - (HUFF_LOOKAHEAD)))) & ((1 << (HUFF_LOOKAHEAD)) - 1))
                if (!((nb = tbl.attr_look_nbits[look])).equal?(0))
                  # DROP_BITS(nb);
                  bits_left -= nb
                  s = tbl.attr_look_sym[look] & 0xff
                else
                  nb = HUFF_LOOKAHEAD + 1
                  # slowlabel:
                  if ((s = jpeg_huff_decode(br_state, get_buffer, bits_left, tbl, nb)) < 0)
                    return false
                  end
                  get_buffer = br_state.attr_get_buffer
                  bits_left = br_state.attr_bits_left
                end
              end
              if (!(s).equal?(0))
                # CHECK_BIT_BUFFER(br_state, s, return FALSE);
                if (bits_left < (s))
                  if (!jpeg_fill_bit_buffer(br_state, get_buffer, bits_left, s))
                    return false
                  end
                  get_buffer = (br_state).attr_get_buffer
                  bits_left = (br_state).attr_bits_left
                end
                # r = GET_BITS(s);
                r = (((get_buffer >> (bits_left -= (s)))) & ((1 << (s)) - 1))
                # s = HUFF_EXTEND(r, s);
                s = ((r) < self.attr_extend_test[s] ? (r) + self.attr_extend_offset[s] : (r))
              end
              # Convert DC difference to actual value, update last_dc_val
              s += state.attr_last_dc_val[ci]
              state.attr_last_dc_val[ci] = s
              # Scale and output the coefficient (assumes jpeg_natural_order[0]=0)
              block[0] = RJava.cast_to_short((s << al))
              blkn += 1
            end
            # Completed MCU, so update state
            # BITREAD_SAVE_STATE(cinfo,entropy.bitstate);
            cinfo.attr_buffer = br_state.attr_buffer
            cinfo.attr_bytes_in_buffer = br_state.attr_bytes_in_buffer
            cinfo.attr_bytes_offset = br_state.attr_bytes_offset
            entropy.attr_bitstate.attr_get_buffer = get_buffer
            entropy.attr_bitstate.attr_bits_left = bits_left
            # ASSIGN_STATE(entropy.saved, state);
            entropy.attr_saved.attr_eobrun = state.attr_eobrun
            entropy.attr_saved.attr_last_dc_val[0] = state.attr_last_dc_val[0]
            entropy.attr_saved.attr_last_dc_val[1] = state.attr_last_dc_val[1]
            entropy.attr_saved.attr_last_dc_val[2] = state.attr_last_dc_val[2]
            entropy.attr_saved.attr_last_dc_val[3] = state.attr_last_dc_val[3]
          end
          # Account for restart interval (no-op if not using restarts)
          entropy.attr_restarts_to_go -= 1
          return true
        end
        
        typesig { [Jpeg_decompress_struct] }
        def process_restart(cinfo)
          entropy = self
          ci = 0
          # Throw away any unused bits remaining in bit buffer;
          # include any full bytes in next_marker's count of discarded bytes
          cinfo.attr_marker.attr_discarded_bytes += entropy.attr_bitstate.attr_bits_left / 8
          entropy.attr_bitstate.attr_bits_left = 0
          # Advance past the RSTn marker
          if (!read_restart_marker(cinfo))
            return false
          end
          # Re-initialize DC predictions to 0
          ci = 0
          while ci < cinfo.attr_comps_in_scan
            entropy.attr_saved.attr_last_dc_val[ci] = 0
            ci += 1
          end
          # Re-init EOB run count, too
          entropy.attr_saved.attr_eobrun = 0
          # Reset restart counter
          entropy.attr_restarts_to_go = cinfo.attr_restart_interval
          # Reset out-of-data flag, unless read_restart_marker left us smack up
          # against a marker.	In that case we will end up treating the next data
          # segment as empty, and we can avoid producing bogus output pixels by
          # leaving the flag set.
          if ((cinfo.attr_unread_marker).equal?(0))
            entropy.attr_insufficient_data = false
          end
          return true
        end
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass_phuff_decoder(cinfo)
          entropy = self
          is_dc_band = false
          bad = false
          ci = 0
          coefi = 0
          tbl = 0
          coef_bit_ptr = nil
          compptr = nil
          is_dc_band = ((cinfo.attr_ss).equal?(0))
          # Validate scan parameters
          bad = false
          if (is_dc_band)
            if (!(cinfo.attr_se).equal?(0))
              bad = true
            end
          else
            # need not check Ss/Se < 0 since they came from unsigned bytes
            if (cinfo.attr_ss > cinfo.attr_se || cinfo.attr_se >= DCTSIZE2)
              bad = true
            end
            # AC scans may have only one component
            if (!(cinfo.attr_comps_in_scan).equal?(1))
              bad = true
            end
          end
          if (!(cinfo.attr_ah).equal?(0))
            # Successive approximation refinement scan: must have Al = Ah-1.
            if (!(cinfo.attr_al).equal?(cinfo.attr_ah - 1))
              bad = true
            end
          end
          if (cinfo.attr_al > 13)
            # need not check for < 0
            bad = true
          end
          # Arguably the maximum Al value should be less than 13 for 8-bit precision,
          # but the spec doesn't say so, and we try to be liberal about what we
          # accept.	Note: large Al values could result in out-of-range DC
          # coefficients during early scans, leading to bizarre displays due to
          # overflows in the IDCT math.	But we won't crash.
          if (bad)
            error
          end
          # ERREXIT4(cinfo, JERR_BAD_PROGRESSION, cinfo.Ss, cinfo.Se, cinfo.Ah, cinfo.Al);
          # Update progression status, and verify that scan order is legal.
          # Note that inter-scan inconsistencies are treated as warnings
          # not fatal errors ... not clear if this is right way to behave.
          ci = 0
          while ci < cinfo.attr_comps_in_scan
            cindex = cinfo.attr_cur_comp_info[ci].attr_component_index
            coef_bit_ptr = cinfo.attr_coef_bits[cindex]
            if (!is_dc_band && coef_bit_ptr[0] < 0)
              # AC without prior DC scan
              # WARNMS2(cinfo, JWRN_BOGUS_PROGRESSION, cindex, 0);
            end
            coefi = cinfo.attr_ss
            while coefi <= cinfo.attr_se
              expected = (coef_bit_ptr[coefi] < 0) ? 0 : coef_bit_ptr[coefi]
              if (!(cinfo.attr_ah).equal?(expected))
                # WARNMS2(cinfo, JWRN_BOGUS_PROGRESSION, cindex, coefi);
              end
              coef_bit_ptr[coefi] = cinfo.attr_al
              coefi += 1
            end
            ci += 1
          end
          # Select MCU decoding routine
          # if (cinfo.Ah == 0) {
          # if (is_DC_band)
          # entropy.pub.decode_mcu = decode_mcu_DC_first;
          # else
          # entropy.pub.decode_mcu = decode_mcu_AC_first;
          # } else {
          # if (is_DC_band)
          # entropy.pub.decode_mcu = decode_mcu_DC_refine;
          # else
          # entropy.pub.decode_mcu = decode_mcu_AC_refine;
          # }
          ci = 0
          while ci < cinfo.attr_comps_in_scan
            compptr = cinfo.attr_cur_comp_info[ci]
            # Make sure requested tables are present, and compute derived tables.
            # We may build same derived table more than once, but it's not expensive.
            if (is_dc_band)
              if ((cinfo.attr_ah).equal?(0))
                # DC refinement needs no table
                tbl = compptr.attr_dc_tbl_no
                jpeg_make_d_derived_tbl(cinfo, true, tbl, entropy.attr_derived_tbls[tbl] = D_derived_tbl.new)
              end
            else
              tbl = compptr.attr_ac_tbl_no
              jpeg_make_d_derived_tbl(cinfo, false, tbl, entropy.attr_derived_tbls[tbl] = D_derived_tbl.new)
              # remember the single active table
              entropy.attr_ac_derived_tbl = entropy.attr_derived_tbls[tbl]
            end
            # Initialize DC predictions to 0
            entropy.attr_saved.attr_last_dc_val[ci] = 0
            ci += 1
          end
          # Initialize bitread state variables
          entropy.attr_bitstate.attr_bits_left = 0
          entropy.attr_bitstate.attr_get_buffer = 0
          # unnecessary, but keeps Purify quiet
          entropy.attr_insufficient_data = false
          # Initialize private state variables
          entropy.attr_saved.attr_eobrun = 0
          # Initialize restart counter
          entropy.attr_restarts_to_go = cinfo.attr_restart_interval
        end
        
        typesig { [] }
        def initialize
          @bitstate = nil
          @saved = nil
          @restarts_to_go = 0
          @derived_tbls = nil
          @ac_derived_tbl = nil
          @newnz_pos = nil
          super()
          @bitstate = Bitread_perm_state.new
          @saved = Savable_state.new
          @derived_tbls = Array.typed(D_derived_tbl).new(NUM_HUFF_TBLS) { nil }
          @newnz_pos = Array.typed(::Java::Int).new(DCTSIZE2) { 0 }
        end
        
        private
        alias_method :initialize_phuff_entropy_decoder, :initialize
      end }
      
      const_set_lazy(:Jpeg_component_info) { Class.new do
        include_class_members JPEGDecoder
        
        # These values are fixed over the whole image.
        # For compression, they must be supplied by parameter setup;
        # for decompression, they are read from the SOF marker.
        attr_accessor :component_id
        alias_method :attr_component_id, :component_id
        undef_method :component_id
        alias_method :attr_component_id=, :component_id=
        undef_method :component_id=
        
        # identifier for this component (0..255)
        attr_accessor :component_index
        alias_method :attr_component_index, :component_index
        undef_method :component_index
        alias_method :attr_component_index=, :component_index=
        undef_method :component_index=
        
        # its index in SOF or cinfo.comp_info[]
        attr_accessor :h_samp_factor
        alias_method :attr_h_samp_factor, :h_samp_factor
        undef_method :h_samp_factor
        alias_method :attr_h_samp_factor=, :h_samp_factor=
        undef_method :h_samp_factor=
        
        # horizontal sampling factor (1..4)
        attr_accessor :v_samp_factor
        alias_method :attr_v_samp_factor, :v_samp_factor
        undef_method :v_samp_factor
        alias_method :attr_v_samp_factor=, :v_samp_factor=
        undef_method :v_samp_factor=
        
        # vertical sampling factor (1..4)
        attr_accessor :quant_tbl_no
        alias_method :attr_quant_tbl_no, :quant_tbl_no
        undef_method :quant_tbl_no
        alias_method :attr_quant_tbl_no=, :quant_tbl_no=
        undef_method :quant_tbl_no=
        
        # quantization table selector (0..3)
        # These values may vary between scans.
        # For compression, they must be supplied by parameter setup;
        # for decompression, they are read from the SOS marker.
        # The decompressor output side may not use these variables.
        attr_accessor :dc_tbl_no
        alias_method :attr_dc_tbl_no, :dc_tbl_no
        undef_method :dc_tbl_no
        alias_method :attr_dc_tbl_no=, :dc_tbl_no=
        undef_method :dc_tbl_no=
        
        # DC entropy table selector (0..3)
        attr_accessor :ac_tbl_no
        alias_method :attr_ac_tbl_no, :ac_tbl_no
        undef_method :ac_tbl_no
        alias_method :attr_ac_tbl_no=, :ac_tbl_no=
        undef_method :ac_tbl_no=
        
        # AC entropy table selector (0..3)
        # Remaining fields should be treated as private by applications.
        # These values are computed during compression or decompression startup:
        # Component's size in DCT blocks.
        # Any dummy blocks added to complete an MCU are not counted; therefore
        # these values do not depend on whether a scan is interleaved or not.
        attr_accessor :width_in_blocks
        alias_method :attr_width_in_blocks, :width_in_blocks
        undef_method :width_in_blocks
        alias_method :attr_width_in_blocks=, :width_in_blocks=
        undef_method :width_in_blocks=
        
        attr_accessor :height_in_blocks
        alias_method :attr_height_in_blocks, :height_in_blocks
        undef_method :height_in_blocks
        alias_method :attr_height_in_blocks=, :height_in_blocks=
        undef_method :height_in_blocks=
        
        # Size of a DCT block in samples.	Always DCTSIZE for compression.
        # For decompression this is the size of the output from one DCT block,
        # reflecting any scaling we choose to apply during the IDCT step.
        # Values of 1,2,4,8 are likely to be supported.	Note that different
        # components may receive different IDCT scalings.
        attr_accessor :dct_scaled_size
        alias_method :attr_dct_scaled_size, :dct_scaled_size
        undef_method :dct_scaled_size
        alias_method :attr_dct_scaled_size=, :dct_scaled_size=
        undef_method :dct_scaled_size=
        
        # The downsampled dimensions are the component's actual, unpadded number
        # of samples at the main buffer (preprocessing/compression interface), thus
        # downsampled_width = ceil(image_width * Hi/Hmax)
        # and similarly for height.	For decompression, IDCT scaling is included, so
        # downsampled_width = ceil(image_width * Hi/Hmax * DCT_scaled_size/DCTSIZE)
        attr_accessor :downsampled_width
        alias_method :attr_downsampled_width, :downsampled_width
        undef_method :downsampled_width
        alias_method :attr_downsampled_width=, :downsampled_width=
        undef_method :downsampled_width=
        
        # actual width in samples
        attr_accessor :downsampled_height
        alias_method :attr_downsampled_height, :downsampled_height
        undef_method :downsampled_height
        alias_method :attr_downsampled_height=, :downsampled_height=
        undef_method :downsampled_height=
        
        # actual height in samples
        # This flag is used only for decompression.	In cases where some of the
        # components will be ignored (eg grayscale output from YCbCr image),
        # we can skip most computations for the unused components.
        attr_accessor :component_needed
        alias_method :attr_component_needed, :component_needed
        undef_method :component_needed
        alias_method :attr_component_needed=, :component_needed=
        undef_method :component_needed=
        
        # do we need the value of this component?
        # These values are computed before starting a scan of the component.
        # The decompressor output side may not use these variables.
        attr_accessor :mcu_width
        alias_method :attr_mcu_width, :mcu_width
        undef_method :mcu_width
        alias_method :attr_mcu_width=, :mcu_width=
        undef_method :mcu_width=
        
        # number of blocks per MCU, horizontally
        attr_accessor :mcu_height
        alias_method :attr_mcu_height, :mcu_height
        undef_method :mcu_height
        alias_method :attr_mcu_height=, :mcu_height=
        undef_method :mcu_height=
        
        # number of blocks per MCU, vertically
        attr_accessor :mcu_blocks
        alias_method :attr_mcu_blocks, :mcu_blocks
        undef_method :mcu_blocks
        alias_method :attr_mcu_blocks=, :mcu_blocks=
        undef_method :mcu_blocks=
        
        # MCU_width * MCU_height
        attr_accessor :mcu_sample_width
        alias_method :attr_mcu_sample_width, :mcu_sample_width
        undef_method :mcu_sample_width
        alias_method :attr_mcu_sample_width=, :mcu_sample_width=
        undef_method :mcu_sample_width=
        
        # MCU width in samples, MCU_width*DCT_scaled_size
        attr_accessor :last_col_width
        alias_method :attr_last_col_width, :last_col_width
        undef_method :last_col_width
        alias_method :attr_last_col_width=, :last_col_width=
        undef_method :last_col_width=
        
        # # of non-dummy blocks across in last MCU
        attr_accessor :last_row_height
        alias_method :attr_last_row_height, :last_row_height
        undef_method :last_row_height
        alias_method :attr_last_row_height=, :last_row_height=
        undef_method :last_row_height=
        
        # # of non-dummy blocks down in last MCU
        # Saved quantization table for component; null if none yet saved.
        # See jdinput.c comments about the need for this information.
        # This field is currently used only for decompression.
        attr_accessor :quant_table
        alias_method :attr_quant_table, :quant_table
        undef_method :quant_table
        alias_method :attr_quant_table=, :quant_table=
        undef_method :quant_table=
        
        # Private per-component storage for DCT or IDCT subsystem.
        attr_accessor :dct_table
        alias_method :attr_dct_table, :dct_table
        undef_method :dct_table
        alias_method :attr_dct_table=, :dct_table=
        undef_method :dct_table=
        
        typesig { [] }
        def initialize
          @component_id = 0
          @component_index = 0
          @h_samp_factor = 0
          @v_samp_factor = 0
          @quant_tbl_no = 0
          @dc_tbl_no = 0
          @ac_tbl_no = 0
          @width_in_blocks = 0
          @height_in_blocks = 0
          @dct_scaled_size = 0
          @downsampled_width = 0
          @downsampled_height = 0
          @component_needed = false
          @mcu_width = 0
          @mcu_height = 0
          @mcu_blocks = 0
          @mcu_sample_width = 0
          @last_col_width = 0
          @last_row_height = 0
          @quant_table = nil
          @dct_table = nil
        end
        
        private
        alias_method :initialize_jpeg_component_info, :initialize
      end }
      
      const_set_lazy(:Jpeg_color_quantizer) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, start_pass, (j_decompress_ptr cinfo, boolean is_pre_scan));
        # JMETHOD(void, color_quantize, (j_decompress_ptr cinfo,
        # JSAMPARRAY input_buf, JSAMPARRAY output_buf,
        # int num_rows));
        # JMETHOD(void, finish_pass, (j_decompress_ptr cinfo));
        # JMETHOD(void, new_color_map, (j_decompress_ptr cinfo));
        # Initially allocated colormap is saved here
        attr_accessor :sv_colormap
        alias_method :attr_sv_colormap, :sv_colormap
        undef_method :sv_colormap
        alias_method :attr_sv_colormap=, :sv_colormap=
        undef_method :sv_colormap=
        
        # The color map as a 2-D pixel array
        attr_accessor :sv_actual
        alias_method :attr_sv_actual, :sv_actual
        undef_method :sv_actual
        alias_method :attr_sv_actual=, :sv_actual=
        undef_method :sv_actual=
        
        # number of entries in use
        attr_accessor :colorindex
        alias_method :attr_colorindex, :colorindex
        undef_method :colorindex
        alias_method :attr_colorindex=, :colorindex=
        undef_method :colorindex=
        
        # Precomputed mapping for speed
        # colorindex[i][j] = index of color closest to pixel value j in component i,
        # premultiplied as described above.	Since colormap indexes must fit into
        # JSAMPLEs, the entries of this array will too.
        attr_accessor :is_padded
        alias_method :attr_is_padded, :is_padded
        undef_method :is_padded
        alias_method :attr_is_padded=, :is_padded=
        undef_method :is_padded=
        
        # is the colorindex padded for odither?
        attr_accessor :ncolors
        alias_method :attr_ncolors, :ncolors
        undef_method :ncolors
        alias_method :attr_ncolors=, :ncolors=
        undef_method :ncolors=
        
        # # of values alloced to each component
        # Variables for ordered dithering
        attr_accessor :row_index
        alias_method :attr_row_index, :row_index
        undef_method :row_index
        alias_method :attr_row_index=, :row_index=
        undef_method :row_index=
        
        # cur row's vertical index in dither matrix
        # ODITHER_MATRIX_PTR odither[MAX_Q_COMPS]; /* one dither array per component */
        # Variables for Floyd-Steinberg dithering
        # FSERRPTR fserrors[MAX_Q_COMPS]; /* accumulated errors */
        attr_accessor :on_odd_row
        alias_method :attr_on_odd_row, :on_odd_row
        undef_method :on_odd_row
        alias_method :attr_on_odd_row=, :on_odd_row=
        undef_method :on_odd_row=
        
        typesig { [Jpeg_decompress_struct, ::Java::Boolean] }
        def start_pass(cinfo, is_pre_scan)
          error
        end
        
        typesig { [] }
        def initialize
          @sv_colormap = nil
          @sv_actual = 0
          @colorindex = nil
          @is_padded = false
          @ncolors = Array.typed(::Java::Int).new(MAX_Q_COMPS) { 0 }
          @row_index = 0
          @on_odd_row = false
        end
        
        private
        alias_method :initialize_jpeg_color_quantizer, :initialize
      end }
      
      const_set_lazy(:Jpeg_upsampler) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, start_pass, (j_decompress_ptr cinfo));
        # JMETHOD(void, upsample, (j_decompress_ptr cinfo,
        # JSAMPIMAGE input_buf,
        # JDIMENSION *in_row_group_ctr,
        # JDIMENSION in_row_groups_avail,
        # JSAMPARRAY output_buf,
        # JDIMENSION *out_row_ctr,
        # JDIMENSION out_rows_avail));
        attr_accessor :need_context_rows
        alias_method :attr_need_context_rows, :need_context_rows
        undef_method :need_context_rows
        alias_method :attr_need_context_rows=, :need_context_rows=
        undef_method :need_context_rows=
        
        # TRUE if need rows above & below
        # Color conversion buffer.	When using separate upsampling and color
        # conversion steps, this buffer holds one upsampled row group until it
        # has been color converted and output.
        # Note: we do not allocate any storage for component(s) which are full-size,
        # ie do not need rescaling.	The corresponding entry of color_buf[] is
        # simply set to point to the input data array, thereby avoiding copying.
        attr_accessor :color_buf
        alias_method :attr_color_buf, :color_buf
        undef_method :color_buf
        alias_method :attr_color_buf=, :color_buf=
        undef_method :color_buf=
        
        attr_accessor :color_buf_offset
        alias_method :attr_color_buf_offset, :color_buf_offset
        undef_method :color_buf_offset
        alias_method :attr_color_buf_offset=, :color_buf_offset=
        undef_method :color_buf_offset=
        
        # Per-component upsampling method pointers
        attr_accessor :methods
        alias_method :attr_methods, :methods
        undef_method :methods
        alias_method :attr_methods=, :methods=
        undef_method :methods=
        
        attr_accessor :next_row_out
        alias_method :attr_next_row_out, :next_row_out
        undef_method :next_row_out
        alias_method :attr_next_row_out=, :next_row_out=
        undef_method :next_row_out=
        
        # counts rows emitted from color_buf
        attr_accessor :rows_to_go
        alias_method :attr_rows_to_go, :rows_to_go
        undef_method :rows_to_go
        alias_method :attr_rows_to_go=, :rows_to_go=
        undef_method :rows_to_go=
        
        # counts rows remaining in image
        # Height of an input row group for each component.
        attr_accessor :rowgroup_height
        alias_method :attr_rowgroup_height, :rowgroup_height
        undef_method :rowgroup_height
        alias_method :attr_rowgroup_height=, :rowgroup_height=
        undef_method :rowgroup_height=
        
        # These arrays save pixel expansion factors so that int_expand need not
        # recompute them each time.	They are unused for other upsampling methods.
        attr_accessor :h_expand
        alias_method :attr_h_expand, :h_expand
        undef_method :h_expand
        alias_method :attr_h_expand=, :h_expand=
        undef_method :h_expand=
        
        attr_accessor :v_expand
        alias_method :attr_v_expand, :v_expand
        undef_method :v_expand
        alias_method :attr_v_expand=, :v_expand=
        undef_method :v_expand=
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass(cinfo)
          upsample = cinfo.attr_upsample
          # Mark the conversion buffer empty
          upsample.attr_next_row_out = cinfo.attr_max_v_samp_factor
          # Initialize total-height counter for detecting bottom of image
          upsample.attr_rows_to_go = cinfo.attr_output_height
        end
        
        typesig { [] }
        def initialize
          @need_context_rows = false
          @color_buf = Array.typed(::Java::Byte).new(MAX_COMPONENTS) { 0 }
          @color_buf_offset = Array.typed(::Java::Int).new(MAX_COMPONENTS) { 0 }
          @methods = Array.typed(::Java::Int).new(MAX_COMPONENTS) { 0 }
          @next_row_out = 0
          @rows_to_go = 0
          @rowgroup_height = Array.typed(::Java::Int).new(MAX_COMPONENTS) { 0 }
          @h_expand = Array.typed(::Java::Byte).new(MAX_COMPONENTS) { 0 }
          @v_expand = Array.typed(::Java::Byte).new(MAX_COMPONENTS) { 0 }
        end
        
        private
        alias_method :initialize_jpeg_upsampler, :initialize
      end }
      
      # Status of COM/APPn marker saving
      # jpeg_marker_reader cur_marker;	/* null if not processing a marker */
      # int bytes_read;		/* data bytes read so far in marker */
      # Note: cur_marker is not linked into marker_list until it's all read.
      const_set_lazy(:Jpeg_marker_reader) { Class.new do
        include_class_members JPEGDecoder
        
        # Read a restart marker --- exported for use by entropy decoder only
        # jpeg_marker_parser_method read_restart_marker;
        # State of marker reader --- nominally internal, but applications
        # supplying COM or APPn handlers might like to know the state.
        attr_accessor :saw_soi
        alias_method :attr_saw_soi, :saw_soi
        undef_method :saw_soi
        alias_method :attr_saw_soi=, :saw_soi=
        undef_method :saw_soi=
        
        # found SOI?
        attr_accessor :saw_sof
        alias_method :attr_saw_sof, :saw_sof
        undef_method :saw_sof
        alias_method :attr_saw_sof=, :saw_sof=
        undef_method :saw_sof=
        
        # found SOF?
        attr_accessor :next_restart_num
        alias_method :attr_next_restart_num, :next_restart_num
        undef_method :next_restart_num
        alias_method :attr_next_restart_num=, :next_restart_num=
        undef_method :next_restart_num=
        
        # next restart number expected (0-7)
        attr_accessor :discarded_bytes
        alias_method :attr_discarded_bytes, :discarded_bytes
        undef_method :discarded_bytes
        alias_method :attr_discarded_bytes=, :discarded_bytes=
        undef_method :discarded_bytes=
        
        # # of bytes skipped looking for a marker
        # Application-overridable marker processing methods
        # jpeg_marker_parser_method process_COM;
        # jpeg_marker_parser_method process_APPn[16];
        # Limit on marker data length to save for each marker type
        attr_accessor :length_limit_com
        alias_method :attr_length_limit_com, :length_limit_com
        undef_method :length_limit_com
        alias_method :attr_length_limit_com=, :length_limit_com=
        undef_method :length_limit_com=
        
        attr_accessor :length_limit_appn
        alias_method :attr_length_limit_appn, :length_limit_appn
        undef_method :length_limit_appn
        alias_method :attr_length_limit_appn=, :length_limit_appn=
        undef_method :length_limit_appn=
        
        typesig { [] }
        def initialize
          @saw_soi = false
          @saw_sof = false
          @next_restart_num = 0
          @discarded_bytes = 0
          @length_limit_com = 0
          @length_limit_appn = Array.typed(::Java::Int).new(16) { 0 }
        end
        
        private
        alias_method :initialize_jpeg_marker_reader, :initialize
      end }
      
      const_set_lazy(:Jpeg_d_main_controller) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, start_pass, (j_decompress_ptr cinfo, J_BUF_MODE pass_mode));
        attr_accessor :process_data
        alias_method :attr_process_data, :process_data
        undef_method :process_data
        alias_method :attr_process_data=, :process_data=
        undef_method :process_data=
        
        # Pointer to allocated workspace (M or M+2 row groups).
        attr_accessor :buffer
        alias_method :attr_buffer, :buffer
        undef_method :buffer
        alias_method :attr_buffer=, :buffer=
        undef_method :buffer=
        
        attr_accessor :buffer_offset
        alias_method :attr_buffer_offset, :buffer_offset
        undef_method :buffer_offset
        alias_method :attr_buffer_offset=, :buffer_offset=
        undef_method :buffer_offset=
        
        attr_accessor :buffer_full
        alias_method :attr_buffer_full, :buffer_full
        undef_method :buffer_full
        alias_method :attr_buffer_full=, :buffer_full=
        undef_method :buffer_full=
        
        # Have we gotten an iMCU row from decoder?
        attr_accessor :rowgroup_ctr
        alias_method :attr_rowgroup_ctr, :rowgroup_ctr
        undef_method :rowgroup_ctr
        alias_method :attr_rowgroup_ctr=, :rowgroup_ctr=
        undef_method :rowgroup_ctr=
        
        # counts row groups output to postprocessor
        # Remaining fields are only used in the context case.
        # These are the master pointers to the funny-order pointer lists.
        attr_accessor :xbuffer
        alias_method :attr_xbuffer, :xbuffer
        undef_method :xbuffer
        alias_method :attr_xbuffer=, :xbuffer=
        undef_method :xbuffer=
        
        # pointers to weird pointer lists
        attr_accessor :xbuffer_offset
        alias_method :attr_xbuffer_offset, :xbuffer_offset
        undef_method :xbuffer_offset
        alias_method :attr_xbuffer_offset=, :xbuffer_offset=
        undef_method :xbuffer_offset=
        
        attr_accessor :whichptr
        alias_method :attr_whichptr, :whichptr
        undef_method :whichptr
        alias_method :attr_whichptr=, :whichptr=
        undef_method :whichptr=
        
        # indicates which pointer set is now in use
        attr_accessor :context_state
        alias_method :attr_context_state, :context_state
        undef_method :context_state
        alias_method :attr_context_state=, :context_state=
        undef_method :context_state=
        
        # process_data state machine status
        attr_accessor :rowgroups_avail
        alias_method :attr_rowgroups_avail, :rowgroups_avail
        undef_method :rowgroups_avail
        alias_method :attr_rowgroups_avail=, :rowgroups_avail=
        undef_method :rowgroups_avail=
        
        # row groups available to postprocessor
        attr_accessor :i_mcu_row_ctr
        alias_method :attr_i_mcu_row_ctr, :i_mcu_row_ctr
        undef_method :i_mcu_row_ctr
        alias_method :attr_i_mcu_row_ctr=, :i_mcu_row_ctr=
        undef_method :i_mcu_row_ctr=
        
        typesig { [Jpeg_decompress_struct, ::Java::Int] }
        # counts iMCU rows to detect image top/bot
        def start_pass(cinfo, pass_mode)
          main = cinfo.attr_main
          case (pass_mode)
          # #ifdef QUANT_2PASS_SUPPORTED
          # case JBUF_CRANK_DEST:
          # /* For last pass of 2-pass quantization, just crank the postprocessor */
          # main.process_data = PROCESS_DATA_CRANK_POST;
          # break;
          # #endif
          when JBUF_PASS_THRU
            if (cinfo.attr_upsample.attr_need_context_rows)
              main.attr_process_data = PROCESS_DATA_CONTEXT_MAIN
              make_funny_pointers(cinfo)
              # Create the xbuffer[] lists
              main.attr_whichptr = 0
              # Read first iMCU row into xbuffer[0]
              main.attr_context_state = CTX_PREPARE_FOR_IMCU
              main.attr_i_mcu_row_ctr = 0
            else
              # Simple case with no context needed
              main.attr_process_data = PROCESS_DATA_SIMPLE_MAIN
            end
            main.attr_buffer_full = false
            # Mark buffer empty
            main.attr_rowgroup_ctr[0] = 0
          else
            error
            # ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);
          end
        end
        
        typesig { [] }
        def initialize
          @process_data = 0
          @buffer = Array.typed(::Java::Byte).new(MAX_COMPONENTS) { 0 }
          @buffer_offset = Array.typed(::Java::Int).new(MAX_COMPONENTS) { 0 }
          @buffer_full = false
          @rowgroup_ctr = Array.typed(::Java::Int).new(1) { 0 }
          @xbuffer = Array.typed(::Java::Byte).new(2) { 0 }
          @xbuffer_offset = Array.typed(::Java::Int).new(2) { 0 }
          @whichptr = 0
          @context_state = 0
          @rowgroups_avail = 0
          @i_mcu_row_ctr = 0
        end
        
        private
        alias_method :initialize_jpeg_d_main_controller, :initialize
      end }
      
      const_set_lazy(:Jpeg_decomp_master) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, prepare_for_output_pass, (j_decompress_ptr cinfo));
        # JMETHOD(void, finish_output_pass, (j_decompress_ptr cinfo));
        # State variables made visible to other modules
        attr_accessor :is_dummy_pass
        alias_method :attr_is_dummy_pass, :is_dummy_pass
        undef_method :is_dummy_pass
        alias_method :attr_is_dummy_pass=, :is_dummy_pass=
        undef_method :is_dummy_pass=
        
        attr_accessor :pass_number
        alias_method :attr_pass_number, :pass_number
        undef_method :pass_number
        alias_method :attr_pass_number=, :pass_number=
        undef_method :pass_number=
        
        # # of passes completed
        attr_accessor :using_merged_upsample
        alias_method :attr_using_merged_upsample, :using_merged_upsample
        undef_method :using_merged_upsample
        alias_method :attr_using_merged_upsample=, :using_merged_upsample=
        undef_method :using_merged_upsample=
        
        # true if using merged upsample/cconvert
        # Saved references to initialized quantizer modules,
        # in case we need to switch modes.
        attr_accessor :quantizer_1pass
        alias_method :attr_quantizer_1pass, :quantizer_1pass
        undef_method :quantizer_1pass
        alias_method :attr_quantizer_1pass=, :quantizer_1pass=
        undef_method :quantizer_1pass=
        
        attr_accessor :quantizer_2pass
        alias_method :attr_quantizer_2pass, :quantizer_2pass
        undef_method :quantizer_2pass
        alias_method :attr_quantizer_2pass=, :quantizer_2pass=
        undef_method :quantizer_2pass=
        
        typesig { [] }
        def initialize
          @is_dummy_pass = false
          @pass_number = 0
          @using_merged_upsample = false
          @quantizer_1pass = nil
          @quantizer_2pass = nil
        end
        
        private
        alias_method :initialize_jpeg_decomp_master, :initialize
      end }
      
      const_set_lazy(:Jpeg_inverse_dct) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, start_pass, (j_decompress_ptr cinfo));
        # /* It is useful to allow each component to have a separate IDCT method. */
        # inverse_DCT_method_ptr inverse_DCT[MAX_COMPONENTS];
        attr_accessor :cur_method
        alias_method :attr_cur_method, :cur_method
        undef_method :cur_method
        alias_method :attr_cur_method=, :cur_method=
        undef_method :cur_method=
        
        typesig { [Jpeg_decompress_struct] }
        def start_pass(cinfo)
          idct = cinfo.attr_idct
          ci = 0
          i = 0
          compptr = nil
          method = 0
          # inverse_DCT_method_ptr method_ptr = NULL;
          qtbl = nil
          ci = 0
          while ci < cinfo.attr_num_components
            compptr = cinfo.attr_comp_info[ci]
            # Select the proper IDCT routine for this component's scaling
            case (compptr.attr_dct_scaled_size)
            # #ifdef IDCT_SCALING_SUPPORTED
            # case 1:
            # method_ptr = jpeg_idct_1x1;
            # method = JDCT_ISLOW;	/* jidctred uses islow-style table */
            # break;
            # case 2:
            # method_ptr = jpeg_idct_2x2;
            # method = JDCT_ISLOW;	/* jidctred uses islow-style table */
            # break;
            # case 4:
            # method_ptr = jpeg_idct_4x4;
            # method = JDCT_ISLOW;	/* jidctred uses islow-style table */
            # break;
            # #endif
            when DCTSIZE
              case (cinfo.attr_dct_method)
              # #ifdef DCT_ISLOW_SUPPORTED
              # #endif
              # #ifdef DCT_IFAST_SUPPORTED
              # case JDCT_IFAST:
              # method_ptr = jpeg_idct_ifast;
              # method = JDCT_IFAST;
              # break;
              # #endif
              # #ifdef DCT_FLOAT_SUPPORTED
              # case JDCT_FLOAT:
              # method_ptr = jpeg_idct_float;
              # method = JDCT_FLOAT;
              # break;
              # #endif
              when JDCT_ISLOW
                # method_ptr = jpeg_idct_islow;
                method = JDCT_ISLOW
              else
                error
                # ERREXIT(cinfo, JERR_NOT_COMPILED);
              end
            else
              error
              # ERREXIT1(cinfo, JERR_BAD_DCTSIZE, compptr.DCT_scaled_size);
            end
            # idct.inverse_DCT[ci] = method_ptr;
            # Create multiplier table from quant table.
            # However, we can skip this if the component is uninteresting
            # or if we already built the table.	Also, if no quant table
            # has yet been saved for the component, we leave the
            # multiplier table all-zero; we'll be reading zeroes from the
            # coefficient controller's buffer anyway.
            if (!compptr.attr_component_needed || (idct.attr_cur_method[ci]).equal?(method))
              ci += 1
              next
            end
            qtbl = compptr.attr_quant_table
            if ((qtbl).nil?)
              # happens if no data yet for component
              ci += 1
              next
            end
            idct.attr_cur_method[ci] = method
            case (method)
            # #ifdef PROVIDE_ISLOW_TABLES
            # #endif
            # #ifdef DCT_IFAST_SUPPORTED
            # case JDCT_IFAST:
            # {
            # /* For AA&N IDCT method, multipliers are equal to quantization
            # * coefficients scaled by scalefactor[row]*scalefactor[col], where
            # *	 scalefactor[0] = 1
            # *	 scalefactor[k] = cos(k*PI/16) * sqrt(2)		for k=1..7
            # * For integer operation, the multiplier table is to be scaled by
            # * IFAST_SCALE_BITS.
            # */
            # int[] ifmtbl = compptr.dct_table;
            # short aanscales[] = {
            # /* precomputed values scaled up by 14 bits */
            # 16384, 22725, 21407, 19266, 16384, 12873,	8867,	4520,
            # 22725, 31521, 29692, 26722, 22725, 17855, 12299,	6270,
            # 21407, 29692, 27969, 25172, 21407, 16819, 11585,	5906,
            # 19266, 26722, 25172, 22654, 19266, 15137, 10426,	5315,
            # 16384, 22725, 21407, 19266, 16384, 12873,	8867,	4520,
            # 12873, 17855, 16819, 15137, 12873, 10114,	6967,	3552,
            # 8867, 12299, 11585, 10426,	8867,	6967,	4799,	2446,
            # 4520,	6270,	5906,	5315,	4520,	3552,	2446,	1247
            # };
            # SHIFT_TEMPS
            # 
            # for (i = 0; i < DCTSIZE2; i++) {
            # ifmtbl[i] = DESCALE(MULTIPLY16V16( qtbl.quantval[i], aanscales[i]), CONST_BITS-IFAST_SCALE_BITS);
            # }
            # }
            # break;
            # #endif
            # #ifdef DCT_FLOAT_SUPPORTED
            # case JDCT_FLOAT:
            # {
            # /* For float AA&N IDCT method, multipliers are equal to quantization
            # * coefficients scaled by scalefactor[row]*scalefactor[col], where
            # *	 scalefactor[0] = 1
            # *	 scalefactor[k] = cos(k*PI/16) * sqrt(2)		for k=1..7
            # */
            # FLOAT_MULT_TYPE * fmtbl = (FLOAT_MULT_TYPE *) compptr.dct_table;
            # int row, col;
            # static const double aanscalefactor[DCTSIZE] = {
            # 1.0, 1.387039845, 1.306562965, 1.175875602,
            # 1.0, 0.785694958, 0.541196100, 0.275899379
            # };
            # 
            # i = 0;
            # for (row = 0; row < DCTSIZE; row++) {
            # for (col = 0; col < DCTSIZE; col++) {
            # fmtbl[i] = (FLOAT_MULT_TYPE)
            # ((double) qtbl.quantval[i] *
            # aanscalefactor[row] * aanscalefactor[col]);
            # i++;
            # }
            # }
            # }
            # break;
            # #endif
            when JDCT_ISLOW
              # For LL&M IDCT method, multipliers are equal to raw quantization
              # coefficients, but are stored as ints to ensure access efficiency.
              ismtbl = compptr.attr_dct_table
              i = 0
              while i < DCTSIZE2
                ismtbl[i] = qtbl.attr_quantval[i]
                i += 1
              end
            else
              error
              # ERREXIT(cinfo, JERR_NOT_COMPILED);
            end
            ci += 1
          end
        end
        
        typesig { [] }
        def initialize
          @cur_method = Array.typed(::Java::Int).new(MAX_COMPONENTS) { 0 }
        end
        
        private
        alias_method :initialize_jpeg_inverse_dct, :initialize
      end }
      
      # true until first SOS is reached
      const_set_lazy(:Jpeg_input_controller) { Class.new do
        include_class_members JPEGDecoder
        
        attr_accessor :consume_input
        alias_method :attr_consume_input, :consume_input
        undef_method :consume_input
        alias_method :attr_consume_input=, :consume_input=
        undef_method :consume_input=
        
        attr_accessor :has_multiple_scans
        alias_method :attr_has_multiple_scans, :has_multiple_scans
        undef_method :has_multiple_scans
        alias_method :attr_has_multiple_scans=, :has_multiple_scans=
        undef_method :has_multiple_scans=
        
        # True if file has multiple scans
        attr_accessor :eoi_reached
        alias_method :attr_eoi_reached, :eoi_reached
        undef_method :eoi_reached
        alias_method :attr_eoi_reached=, :eoi_reached=
        undef_method :eoi_reached=
        
        attr_accessor :inheaders
        alias_method :attr_inheaders, :inheaders
        undef_method :inheaders
        alias_method :attr_inheaders=, :inheaders=
        undef_method :inheaders=
        
        typesig { [] }
        def initialize
          @consume_input = 0
          @has_multiple_scans = false
          @eoi_reached = false
          @inheaders = false
        end
        
        private
        alias_method :initialize_jpeg_input_controller, :initialize
      end }
      
      const_set_lazy(:Jpeg_color_deconverter) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, start_pass, (j_decompress_ptr cinfo));
        attr_accessor :color_convert
        alias_method :attr_color_convert, :color_convert
        undef_method :color_convert
        alias_method :attr_color_convert=, :color_convert=
        undef_method :color_convert=
        
        # Private state for YCC.RGB conversion
        attr_accessor :cr_r_tab
        alias_method :attr_cr_r_tab, :cr_r_tab
        undef_method :cr_r_tab
        alias_method :attr_cr_r_tab=, :cr_r_tab=
        undef_method :cr_r_tab=
        
        # => table for Cr to R conversion
        attr_accessor :cb_b_tab
        alias_method :attr_cb_b_tab, :cb_b_tab
        undef_method :cb_b_tab
        alias_method :attr_cb_b_tab=, :cb_b_tab=
        undef_method :cb_b_tab=
        
        # => table for Cb to B conversion
        attr_accessor :cr_g_tab
        alias_method :attr_cr_g_tab, :cr_g_tab
        undef_method :cr_g_tab
        alias_method :attr_cr_g_tab=, :cr_g_tab=
        undef_method :cr_g_tab=
        
        # => table for Cr to G conversion
        attr_accessor :cb_g_tab
        alias_method :attr_cb_g_tab, :cb_g_tab
        undef_method :cb_g_tab
        alias_method :attr_cb_g_tab=, :cb_g_tab=
        undef_method :cb_g_tab=
        
        typesig { [Jpeg_decompress_struct] }
        # => table for Cb to G conversion
        def start_pass(cinfo)
          # no work needed
        end
        
        typesig { [] }
        def initialize
          @color_convert = 0
          @cr_r_tab = nil
          @cb_b_tab = nil
          @cr_g_tab = nil
          @cb_g_tab = nil
        end
        
        private
        alias_method :initialize_jpeg_color_deconverter, :initialize
      end }
      
      const_set_lazy(:Jpeg_d_post_controller) { Class.new do
        include_class_members JPEGDecoder
        
        # JMETHOD(void, start_pass, (j_decompress_ptr cinfo, J_BUF_MODE pass_mode));
        attr_accessor :post_process_data
        alias_method :attr_post_process_data, :post_process_data
        undef_method :post_process_data
        alias_method :attr_post_process_data=, :post_process_data=
        undef_method :post_process_data=
        
        # Color quantization source buffer: this holds output data from
        # the upsample/color conversion step to be passed to the quantizer.
        # For two-pass color quantization, we need a full-image buffer;
        # for one-pass operation, a strip buffer is sufficient.
        attr_accessor :whole_image
        alias_method :attr_whole_image, :whole_image
        undef_method :whole_image
        alias_method :attr_whole_image=, :whole_image=
        undef_method :whole_image=
        
        # virtual array, or NULL if one-pass
        attr_accessor :buffer
        alias_method :attr_buffer, :buffer
        undef_method :buffer
        alias_method :attr_buffer=, :buffer=
        undef_method :buffer=
        
        # strip buffer, or current strip of virtual
        attr_accessor :strip_height
        alias_method :attr_strip_height, :strip_height
        undef_method :strip_height
        alias_method :attr_strip_height=, :strip_height=
        undef_method :strip_height=
        
        # buffer size in rows
        # for two-pass mode only:
        attr_accessor :starting_row
        alias_method :attr_starting_row, :starting_row
        undef_method :starting_row
        alias_method :attr_starting_row=, :starting_row=
        undef_method :starting_row=
        
        # row # of first row in current strip
        attr_accessor :next_row
        alias_method :attr_next_row, :next_row
        undef_method :next_row
        alias_method :attr_next_row=, :next_row=
        undef_method :next_row=
        
        typesig { [Jpeg_decompress_struct, ::Java::Int] }
        # index of next row to fill/empty in strip
        def start_pass(cinfo, pass_mode)
          post = cinfo.attr_post
          case (pass_mode)
          # #ifdef QUANT_2PASS_SUPPORTED
          # case JBUF_SAVE_AND_PASS:
          # /* First pass of 2-pass quantization */
          # if (post.whole_image == NULL)
          # ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);
          # post.pub.post_process_data = post_process_prepass;
          # break;
          # case JBUF_CRANK_DEST:
          # /* Second pass of 2-pass quantization */
          # if (post.whole_image == NULL)
          # ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);
          # post.pub.post_process_data = post_process_2pass;
          # break;
          # #endif /* QUANT_2PASS_SUPPORTED */
          when JBUF_PASS_THRU
            if (cinfo.attr_quantize_colors)
              error(SWT::ERROR_NOT_IMPLEMENTED)
              # /* Single-pass processing with color quantization. */
              # post.post_process_data = POST_PROCESS_1PASS;
              # /* We could be doing buffered-image output before starting a 2-pass
              # * color quantization; in that case, jinit_d_post_controller did not
              # * allocate a strip buffer.	Use the virtual-array buffer as workspace.
              # */
              # if (post.buffer == null) {
              # post.buffer = (*cinfo.mem.access_virt_sarray)
              # ((j_common_ptr) cinfo, post.whole_image,
              # (JDIMENSION) 0, post.strip_height, TRUE);
              # }
            else
              # For single-pass processing without color quantization,
              # I have no work to do; just call the upsampler directly.
              post.attr_post_process_data = POST_PROCESS_DATA_UPSAMPLE
            end
          else
            error
            # ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);
          end
          post.attr_starting_row = post.attr_next_row = 0
        end
        
        typesig { [] }
        def initialize
          @post_process_data = 0
          @whole_image = nil
          @buffer = nil
          @strip_height = 0
          @starting_row = 0
          @next_row = 0
        end
        
        private
        alias_method :initialize_jpeg_d_post_controller, :initialize
      end }
      
      const_set_lazy(:Jpeg_decompress_struct) { Class.new do
        include_class_members JPEGDecoder
        
        # jpeg_error_mgr * err;	/* Error handler module */\
        # struct jpeg_memory_mgr * mem;	/* Memory manager module */\
        # struct jpeg_progress_mgr * progress; /* Progress monitor, or null if none */\
        # void * client_data;		/* Available for use by application */\
        attr_accessor :is_decompressor
        alias_method :attr_is_decompressor, :is_decompressor
        undef_method :is_decompressor
        alias_method :attr_is_decompressor=, :is_decompressor=
        undef_method :is_decompressor=
        
        # So common code can tell which is which
        attr_accessor :global_state
        alias_method :attr_global_state, :global_state
        undef_method :global_state
        alias_method :attr_global_state=, :global_state=
        undef_method :global_state=
        
        # For checking call sequence validity
        # /* Source of compressed data */
        # struct jpeg_source_mgr * src;
        attr_accessor :input_stream
        alias_method :attr_input_stream, :input_stream
        undef_method :input_stream
        alias_method :attr_input_stream=, :input_stream=
        undef_method :input_stream=
        
        attr_accessor :buffer
        alias_method :attr_buffer, :buffer
        undef_method :buffer
        alias_method :attr_buffer=, :buffer=
        undef_method :buffer=
        
        attr_accessor :bytes_in_buffer
        alias_method :attr_bytes_in_buffer, :bytes_in_buffer
        undef_method :bytes_in_buffer
        alias_method :attr_bytes_in_buffer=, :bytes_in_buffer=
        undef_method :bytes_in_buffer=
        
        attr_accessor :bytes_offset
        alias_method :attr_bytes_offset, :bytes_offset
        undef_method :bytes_offset
        alias_method :attr_bytes_offset=, :bytes_offset=
        undef_method :bytes_offset=
        
        attr_accessor :start_of_file
        alias_method :attr_start_of_file, :start_of_file
        undef_method :start_of_file
        alias_method :attr_start_of_file=, :start_of_file=
        undef_method :start_of_file=
        
        # Basic description of image --- filled in by jpeg_read_header().
        # Application may inspect these values to decide how to process image.
        attr_accessor :image_width
        alias_method :attr_image_width, :image_width
        undef_method :image_width
        alias_method :attr_image_width=, :image_width=
        undef_method :image_width=
        
        # nominal image width (from SOF marker)
        attr_accessor :image_height
        alias_method :attr_image_height, :image_height
        undef_method :image_height
        alias_method :attr_image_height=, :image_height=
        undef_method :image_height=
        
        # nominal image height
        attr_accessor :num_components
        alias_method :attr_num_components, :num_components
        undef_method :num_components
        alias_method :attr_num_components=, :num_components=
        undef_method :num_components=
        
        # # of color components in JPEG image
        attr_accessor :jpeg_color_space
        alias_method :attr_jpeg_color_space, :jpeg_color_space
        undef_method :jpeg_color_space
        alias_method :attr_jpeg_color_space=, :jpeg_color_space=
        undef_method :jpeg_color_space=
        
        # colorspace of JPEG image
        # Decompression processing parameters --- these fields must be set before
        # calling jpeg_start_decompress().	Note that jpeg_read_header() initializes
        # them to default values.
        attr_accessor :out_color_space
        alias_method :attr_out_color_space, :out_color_space
        undef_method :out_color_space
        alias_method :attr_out_color_space=, :out_color_space=
        undef_method :out_color_space=
        
        # colorspace for output
        attr_accessor :scale_num
        alias_method :attr_scale_num, :scale_num
        undef_method :scale_num
        alias_method :attr_scale_num=, :scale_num=
        undef_method :scale_num=
        
        attr_accessor :scale_denom
        alias_method :attr_scale_denom, :scale_denom
        undef_method :scale_denom
        alias_method :attr_scale_denom=, :scale_denom=
        undef_method :scale_denom=
        
        # fraction by which to scale image
        attr_accessor :output_gamma
        alias_method :attr_output_gamma, :output_gamma
        undef_method :output_gamma
        alias_method :attr_output_gamma=, :output_gamma=
        undef_method :output_gamma=
        
        # image gamma wanted in output
        attr_accessor :buffered_image
        alias_method :attr_buffered_image, :buffered_image
        undef_method :buffered_image
        alias_method :attr_buffered_image=, :buffered_image=
        undef_method :buffered_image=
        
        # true=multiple output passes
        attr_accessor :raw_data_out
        alias_method :attr_raw_data_out, :raw_data_out
        undef_method :raw_data_out
        alias_method :attr_raw_data_out=, :raw_data_out=
        undef_method :raw_data_out=
        
        # true=downsampled data wanted
        attr_accessor :dct_method
        alias_method :attr_dct_method, :dct_method
        undef_method :dct_method
        alias_method :attr_dct_method=, :dct_method=
        undef_method :dct_method=
        
        # IDCT algorithm selector
        attr_accessor :do_fancy_upsampling
        alias_method :attr_do_fancy_upsampling, :do_fancy_upsampling
        undef_method :do_fancy_upsampling
        alias_method :attr_do_fancy_upsampling=, :do_fancy_upsampling=
        undef_method :do_fancy_upsampling=
        
        # true=apply fancy upsampling
        attr_accessor :do_block_smoothing
        alias_method :attr_do_block_smoothing, :do_block_smoothing
        undef_method :do_block_smoothing
        alias_method :attr_do_block_smoothing=, :do_block_smoothing=
        undef_method :do_block_smoothing=
        
        # true=apply interblock smoothing
        attr_accessor :quantize_colors
        alias_method :attr_quantize_colors, :quantize_colors
        undef_method :quantize_colors
        alias_method :attr_quantize_colors=, :quantize_colors=
        undef_method :quantize_colors=
        
        # true=colormapped output wanted
        # the following are ignored if not quantize_colors:
        attr_accessor :dither_mode
        alias_method :attr_dither_mode, :dither_mode
        undef_method :dither_mode
        alias_method :attr_dither_mode=, :dither_mode=
        undef_method :dither_mode=
        
        # type of color dithering to use
        attr_accessor :two_pass_quantize
        alias_method :attr_two_pass_quantize, :two_pass_quantize
        undef_method :two_pass_quantize
        alias_method :attr_two_pass_quantize=, :two_pass_quantize=
        undef_method :two_pass_quantize=
        
        # true=use two-pass color quantization
        attr_accessor :desired_number_of_colors
        alias_method :attr_desired_number_of_colors, :desired_number_of_colors
        undef_method :desired_number_of_colors
        alias_method :attr_desired_number_of_colors=, :desired_number_of_colors=
        undef_method :desired_number_of_colors=
        
        # max # colors to use in created colormap
        # these are significant only in buffered-image mode:
        attr_accessor :enable_1pass_quant
        alias_method :attr_enable_1pass_quant, :enable_1pass_quant
        undef_method :enable_1pass_quant
        alias_method :attr_enable_1pass_quant=, :enable_1pass_quant=
        undef_method :enable_1pass_quant=
        
        # enable future use of 1-pass quantizer
        attr_accessor :enable_external_quant
        alias_method :attr_enable_external_quant, :enable_external_quant
        undef_method :enable_external_quant
        alias_method :attr_enable_external_quant=, :enable_external_quant=
        undef_method :enable_external_quant=
        
        # enable future use of external colormap
        attr_accessor :enable_2pass_quant
        alias_method :attr_enable_2pass_quant, :enable_2pass_quant
        undef_method :enable_2pass_quant
        alias_method :attr_enable_2pass_quant=, :enable_2pass_quant=
        undef_method :enable_2pass_quant=
        
        # enable future use of 2-pass quantizer
        # Description of actual output image that will be returned to application.
        # These fields are computed by jpeg_start_decompress().
        # You can also use jpeg_calc_output_dimensions() to determine these values
        # in advance of calling jpeg_start_decompress().
        attr_accessor :output_width
        alias_method :attr_output_width, :output_width
        undef_method :output_width
        alias_method :attr_output_width=, :output_width=
        undef_method :output_width=
        
        # scaled image width
        attr_accessor :output_height
        alias_method :attr_output_height, :output_height
        undef_method :output_height
        alias_method :attr_output_height=, :output_height=
        undef_method :output_height=
        
        # scaled image height
        attr_accessor :out_color_components
        alias_method :attr_out_color_components, :out_color_components
        undef_method :out_color_components
        alias_method :attr_out_color_components=, :out_color_components=
        undef_method :out_color_components=
        
        # # of color components in out_color_space
        attr_accessor :output_components
        alias_method :attr_output_components, :output_components
        undef_method :output_components
        alias_method :attr_output_components=, :output_components=
        undef_method :output_components=
        
        # # of color components returned
        # output_components is 1 (a colormap index) when quantizing colors;
        # otherwise it equals out_color_components.
        attr_accessor :rec_outbuf_height
        alias_method :attr_rec_outbuf_height, :rec_outbuf_height
        undef_method :rec_outbuf_height
        alias_method :attr_rec_outbuf_height=, :rec_outbuf_height=
        undef_method :rec_outbuf_height=
        
        # min recommended height of scanline buffer
        # If the buffer passed to jpeg_read_scanlines() is less than this many rows
        # high, space and time will be wasted due to unnecessary data copying.
        # Usually rec_outbuf_height will be 1 or 2, at most 4.
        # 
        # When quantizing colors, the output colormap is described by these fields.
        # The application can supply a colormap by setting colormap non-null before
        # calling jpeg_start_decompress; otherwise a colormap is created during
        # jpeg_start_decompress or jpeg_start_output.
        # The map has out_color_components rows and actual_number_of_colors columns.
        attr_accessor :actual_number_of_colors
        alias_method :attr_actual_number_of_colors, :actual_number_of_colors
        undef_method :actual_number_of_colors
        alias_method :attr_actual_number_of_colors=, :actual_number_of_colors=
        undef_method :actual_number_of_colors=
        
        # number of entries in use
        attr_accessor :colormap
        alias_method :attr_colormap, :colormap
        undef_method :colormap
        alias_method :attr_colormap=, :colormap=
        undef_method :colormap=
        
        # The color map as a 2-D pixel array
        # State variables: these variables indicate the progress of decompression.
        # The application may examine these but must not modify them.
        # 
        # Row index of next scanline to be read from jpeg_read_scanlines().
        # Application may use this to control its processing loop, e.g.,
        # "while (output_scanline < output_height)".
        attr_accessor :output_scanline
        alias_method :attr_output_scanline, :output_scanline
        undef_method :output_scanline
        alias_method :attr_output_scanline=, :output_scanline=
        undef_method :output_scanline=
        
        # 0 .. output_height-1
        # Current input scan number and number of iMCU rows completed in scan.
        # These indicate the progress of the decompressor input side.
        attr_accessor :input_scan_number
        alias_method :attr_input_scan_number, :input_scan_number
        undef_method :input_scan_number
        alias_method :attr_input_scan_number=, :input_scan_number=
        undef_method :input_scan_number=
        
        # Number of SOS markers seen so far
        attr_accessor :input_i_mcu_row
        alias_method :attr_input_i_mcu_row, :input_i_mcu_row
        undef_method :input_i_mcu_row
        alias_method :attr_input_i_mcu_row=, :input_i_mcu_row=
        undef_method :input_i_mcu_row=
        
        # Number of iMCU rows completed
        # The "output scan number" is the notional scan being displayed by the
        # output side.	The decompressor will not allow output scan/row number
        # to get ahead of input scan/row, but it can fall arbitrarily far behind.
        attr_accessor :output_scan_number
        alias_method :attr_output_scan_number, :output_scan_number
        undef_method :output_scan_number
        alias_method :attr_output_scan_number=, :output_scan_number=
        undef_method :output_scan_number=
        
        # Nominal scan number being displayed
        attr_accessor :output_i_mcu_row
        alias_method :attr_output_i_mcu_row, :output_i_mcu_row
        undef_method :output_i_mcu_row
        alias_method :attr_output_i_mcu_row=, :output_i_mcu_row=
        undef_method :output_i_mcu_row=
        
        # Number of iMCU rows read
        # Current progression status.	coef_bits[c][i] indicates the precision
        # with which component c's DCT coefficient i (in zigzag order) is known.
        # It is -1 when no data has yet been received, otherwise it is the point
        # transform (shift) value for the most recent scan of the coefficient
        # (thus, 0 at completion of the progression).
        # This pointer is null when reading a non-progressive file.
        attr_accessor :coef_bits
        alias_method :attr_coef_bits, :coef_bits
        undef_method :coef_bits
        alias_method :attr_coef_bits=, :coef_bits=
        undef_method :coef_bits=
        
        # -1 or current Al value for each coef
        # Internal JPEG parameters --- the application usually need not look at
        # these fields.	Note that the decompressor output side may not use
        # any parameters that can change between scans.
        # 
        # Quantization and Huffman tables are carried forward across input
        # datastreams when processing abbreviated JPEG datastreams.
        attr_accessor :quant_tbl_ptrs
        alias_method :attr_quant_tbl_ptrs, :quant_tbl_ptrs
        undef_method :quant_tbl_ptrs
        alias_method :attr_quant_tbl_ptrs=, :quant_tbl_ptrs=
        undef_method :quant_tbl_ptrs=
        
        # ptrs to coefficient quantization tables, or null if not defined
        attr_accessor :dc_huff_tbl_ptrs
        alias_method :attr_dc_huff_tbl_ptrs, :dc_huff_tbl_ptrs
        undef_method :dc_huff_tbl_ptrs
        alias_method :attr_dc_huff_tbl_ptrs=, :dc_huff_tbl_ptrs=
        undef_method :dc_huff_tbl_ptrs=
        
        attr_accessor :ac_huff_tbl_ptrs
        alias_method :attr_ac_huff_tbl_ptrs, :ac_huff_tbl_ptrs
        undef_method :ac_huff_tbl_ptrs
        alias_method :attr_ac_huff_tbl_ptrs=, :ac_huff_tbl_ptrs=
        undef_method :ac_huff_tbl_ptrs=
        
        # ptrs to Huffman coding tables, or null if not defined
        # These parameters are never carried across datastreams, since they
        # are given in SOF/SOS markers or defined to be reset by SOI.
        attr_accessor :data_precision
        alias_method :attr_data_precision, :data_precision
        undef_method :data_precision
        alias_method :attr_data_precision=, :data_precision=
        undef_method :data_precision=
        
        # bits of precision in image data
        attr_accessor :comp_info
        alias_method :attr_comp_info, :comp_info
        undef_method :comp_info
        alias_method :attr_comp_info=, :comp_info=
        undef_method :comp_info=
        
        # comp_info[i] describes component that appears i'th in SOF
        attr_accessor :progressive_mode
        alias_method :attr_progressive_mode, :progressive_mode
        undef_method :progressive_mode
        alias_method :attr_progressive_mode=, :progressive_mode=
        undef_method :progressive_mode=
        
        # true if SOFn specifies progressive mode
        attr_accessor :arith_code
        alias_method :attr_arith_code, :arith_code
        undef_method :arith_code
        alias_method :attr_arith_code=, :arith_code=
        undef_method :arith_code=
        
        # true=arithmetic coding, false=Huffman
        attr_accessor :arith_dc_l
        alias_method :attr_arith_dc_l, :arith_dc_l
        undef_method :arith_dc_l
        alias_method :attr_arith_dc_l=, :arith_dc_l=
        undef_method :arith_dc_l=
        
        # L values for DC arith-coding tables
        attr_accessor :arith_dc_u
        alias_method :attr_arith_dc_u, :arith_dc_u
        undef_method :arith_dc_u
        alias_method :attr_arith_dc_u=, :arith_dc_u=
        undef_method :arith_dc_u=
        
        # U values for DC arith-coding tables
        attr_accessor :arith_ac_k
        alias_method :attr_arith_ac_k, :arith_ac_k
        undef_method :arith_ac_k
        alias_method :attr_arith_ac_k=, :arith_ac_k=
        undef_method :arith_ac_k=
        
        # Kx values for AC arith-coding tables
        attr_accessor :restart_interval
        alias_method :attr_restart_interval, :restart_interval
        undef_method :restart_interval
        alias_method :attr_restart_interval=, :restart_interval=
        undef_method :restart_interval=
        
        # MCUs per restart interval, or 0 for no restart
        # These fields record data obtained from optional markers recognized by
        # the JPEG library.
        attr_accessor :saw_jfif_marker
        alias_method :attr_saw_jfif_marker, :saw_jfif_marker
        undef_method :saw_jfif_marker
        alias_method :attr_saw_jfif_marker=, :saw_jfif_marker=
        undef_method :saw_jfif_marker=
        
        # true iff a JFIF APP0 marker was found
        # Data copied from JFIF marker; only valid if saw_JFIF_marker is true:
        attr_accessor :jfif_major_version
        alias_method :attr_jfif_major_version, :jfif_major_version
        undef_method :jfif_major_version
        alias_method :attr_jfif_major_version=, :jfif_major_version=
        undef_method :jfif_major_version=
        
        # JFIF version number
        attr_accessor :jfif_minor_version
        alias_method :attr_jfif_minor_version, :jfif_minor_version
        undef_method :jfif_minor_version
        alias_method :attr_jfif_minor_version=, :jfif_minor_version=
        undef_method :jfif_minor_version=
        
        attr_accessor :density_unit
        alias_method :attr_density_unit, :density_unit
        undef_method :density_unit
        alias_method :attr_density_unit=, :density_unit=
        undef_method :density_unit=
        
        # JFIF code for pixel size units
        attr_accessor :x_density
        alias_method :attr_x_density, :x_density
        undef_method :x_density
        alias_method :attr_x_density=, :x_density=
        undef_method :x_density=
        
        # Horizontal pixel density
        attr_accessor :y_density
        alias_method :attr_y_density, :y_density
        undef_method :y_density
        alias_method :attr_y_density=, :y_density=
        undef_method :y_density=
        
        # Vertical pixel density
        attr_accessor :saw_adobe_marker
        alias_method :attr_saw_adobe_marker, :saw_adobe_marker
        undef_method :saw_adobe_marker
        alias_method :attr_saw_adobe_marker=, :saw_adobe_marker=
        undef_method :saw_adobe_marker=
        
        # true iff an Adobe APP14 marker was found
        attr_accessor :adobe_transform
        alias_method :attr_adobe_transform, :adobe_transform
        undef_method :adobe_transform
        alias_method :attr_adobe_transform=, :adobe_transform=
        undef_method :adobe_transform=
        
        # Color transform code from Adobe marker
        attr_accessor :ccir601_sampling
        alias_method :attr_ccir601_sampling, :ccir601_sampling
        undef_method :ccir601_sampling
        alias_method :attr_ccir601_sampling=, :ccir601_sampling=
        undef_method :ccir601_sampling=
        
        # true=first samples are cosited
        # Aside from the specific data retained from APPn markers known to the
        # library, the uninterpreted contents of any or all APPn and COM markers
        # can be saved in a list for examination by the application.
        attr_accessor :marker_list
        alias_method :attr_marker_list, :marker_list
        undef_method :marker_list
        alias_method :attr_marker_list=, :marker_list=
        undef_method :marker_list=
        
        # Head of list of saved markers
        # Remaining fields are known throughout decompressor, but generally
        # should not be touched by a surrounding application.
        # 
        # 
        # These fields are computed during decompression startup
        attr_accessor :max_h_samp_factor
        alias_method :attr_max_h_samp_factor, :max_h_samp_factor
        undef_method :max_h_samp_factor
        alias_method :attr_max_h_samp_factor=, :max_h_samp_factor=
        undef_method :max_h_samp_factor=
        
        # largest h_samp_factor
        attr_accessor :max_v_samp_factor
        alias_method :attr_max_v_samp_factor, :max_v_samp_factor
        undef_method :max_v_samp_factor
        alias_method :attr_max_v_samp_factor=, :max_v_samp_factor=
        undef_method :max_v_samp_factor=
        
        # largest v_samp_factor
        attr_accessor :min_dct_scaled_size
        alias_method :attr_min_dct_scaled_size, :min_dct_scaled_size
        undef_method :min_dct_scaled_size
        alias_method :attr_min_dct_scaled_size=, :min_dct_scaled_size=
        undef_method :min_dct_scaled_size=
        
        # smallest DCT_scaled_size of any component
        attr_accessor :total_i_mcu_rows
        alias_method :attr_total_i_mcu_rows, :total_i_mcu_rows
        undef_method :total_i_mcu_rows
        alias_method :attr_total_i_mcu_rows=, :total_i_mcu_rows=
        undef_method :total_i_mcu_rows=
        
        # # of iMCU rows in image
        # The coefficient controller's input and output progress is measured in
        # units of "iMCU" (interleaved MCU) rows.	These are the same as MCU rows
        # in fully interleaved JPEG scans, but are used whether the scan is
        # interleaved or not.	We define an iMCU row as v_samp_factor DCT block
        # rows of each component.	Therefore, the IDCT output contains
        # v_samp_factor*DCT_scaled_size sample rows of a component per iMCU row.
        attr_accessor :sample_range_limit
        alias_method :attr_sample_range_limit, :sample_range_limit
        undef_method :sample_range_limit
        alias_method :attr_sample_range_limit=, :sample_range_limit=
        undef_method :sample_range_limit=
        
        # table for fast range-limiting
        attr_accessor :sample_range_limit_offset
        alias_method :attr_sample_range_limit_offset, :sample_range_limit_offset
        undef_method :sample_range_limit_offset
        alias_method :attr_sample_range_limit_offset=, :sample_range_limit_offset=
        undef_method :sample_range_limit_offset=
        
        # These fields are valid during any one scan.
        # They describe the components and MCUs actually appearing in the scan.
        # Note that the decompressor output side must not use these fields.
        attr_accessor :comps_in_scan
        alias_method :attr_comps_in_scan, :comps_in_scan
        undef_method :comps_in_scan
        alias_method :attr_comps_in_scan=, :comps_in_scan=
        undef_method :comps_in_scan=
        
        # # of JPEG components in this scan
        attr_accessor :cur_comp_info
        alias_method :attr_cur_comp_info, :cur_comp_info
        undef_method :cur_comp_info
        alias_method :attr_cur_comp_info=, :cur_comp_info=
        undef_method :cur_comp_info=
        
        # *cur_comp_info[i] describes component that appears i'th in SOS
        attr_accessor :mcus_per_row
        alias_method :attr_mcus_per_row, :mcus_per_row
        undef_method :mcus_per_row
        alias_method :attr_mcus_per_row=, :mcus_per_row=
        undef_method :mcus_per_row=
        
        # # of MCUs across the image
        attr_accessor :mcu_rows_in_scan
        alias_method :attr_mcu_rows_in_scan, :mcu_rows_in_scan
        undef_method :mcu_rows_in_scan
        alias_method :attr_mcu_rows_in_scan=, :mcu_rows_in_scan=
        undef_method :mcu_rows_in_scan=
        
        # # of MCU rows in the image
        attr_accessor :blocks_in_mcu
        alias_method :attr_blocks_in_mcu, :blocks_in_mcu
        undef_method :blocks_in_mcu
        alias_method :attr_blocks_in_mcu=, :blocks_in_mcu=
        undef_method :blocks_in_mcu=
        
        # # of DCT blocks per MCU
        attr_accessor :mcu_membership
        alias_method :attr_mcu_membership, :mcu_membership
        undef_method :mcu_membership
        alias_method :attr_mcu_membership=, :mcu_membership=
        undef_method :mcu_membership=
        
        # MCU_membership[i] is index in cur_comp_info of component owning
        # i'th block in an MCU
        attr_accessor :ss
        alias_method :attr_ss, :ss
        undef_method :ss
        alias_method :attr_ss=, :ss=
        undef_method :ss=
        
        attr_accessor :se
        alias_method :attr_se, :se
        undef_method :se
        alias_method :attr_se=, :se=
        undef_method :se=
        
        attr_accessor :ah
        alias_method :attr_ah, :ah
        undef_method :ah
        alias_method :attr_ah=, :ah=
        undef_method :ah=
        
        attr_accessor :al
        alias_method :attr_al, :al
        undef_method :al
        alias_method :attr_al=, :al=
        undef_method :al=
        
        # progressive JPEG parameters for scan
        # This field is shared between entropy decoder and marker parser.
        # It is either zero or the code of a JPEG marker that has been
        # read from the data source, but has not yet been processed.
        attr_accessor :unread_marker
        alias_method :attr_unread_marker, :unread_marker
        undef_method :unread_marker
        alias_method :attr_unread_marker=, :unread_marker=
        undef_method :unread_marker=
        
        attr_accessor :workspace
        alias_method :attr_workspace, :workspace
        undef_method :workspace
        alias_method :attr_workspace=, :workspace=
        undef_method :workspace=
        
        attr_accessor :row_ctr
        alias_method :attr_row_ctr, :row_ctr
        undef_method :row_ctr
        alias_method :attr_row_ctr=, :row_ctr=
        undef_method :row_ctr=
        
        # Links to decompression subobjects (methods, private variables of modules)
        attr_accessor :master
        alias_method :attr_master, :master
        undef_method :master
        alias_method :attr_master=, :master=
        undef_method :master=
        
        attr_accessor :main
        alias_method :attr_main, :main
        undef_method :main
        alias_method :attr_main=, :main=
        undef_method :main=
        
        attr_accessor :coef
        alias_method :attr_coef, :coef
        undef_method :coef
        alias_method :attr_coef=, :coef=
        undef_method :coef=
        
        attr_accessor :post
        alias_method :attr_post, :post
        undef_method :post
        alias_method :attr_post=, :post=
        undef_method :post=
        
        attr_accessor :inputctl
        alias_method :attr_inputctl, :inputctl
        undef_method :inputctl
        alias_method :attr_inputctl=, :inputctl=
        undef_method :inputctl=
        
        attr_accessor :marker
        alias_method :attr_marker, :marker
        undef_method :marker
        alias_method :attr_marker=, :marker=
        undef_method :marker=
        
        attr_accessor :entropy
        alias_method :attr_entropy, :entropy
        undef_method :entropy
        alias_method :attr_entropy=, :entropy=
        undef_method :entropy=
        
        attr_accessor :idct
        alias_method :attr_idct, :idct
        undef_method :idct
        alias_method :attr_idct=, :idct=
        undef_method :idct=
        
        attr_accessor :upsample
        alias_method :attr_upsample, :upsample
        undef_method :upsample
        alias_method :attr_upsample=, :upsample=
        undef_method :upsample=
        
        attr_accessor :cconvert
        alias_method :attr_cconvert, :cconvert
        undef_method :cconvert
        alias_method :attr_cconvert=, :cconvert=
        undef_method :cconvert=
        
        attr_accessor :cquantize
        alias_method :attr_cquantize, :cquantize
        undef_method :cquantize
        alias_method :attr_cquantize=, :cquantize=
        undef_method :cquantize=
        
        typesig { [] }
        def initialize
          @is_decompressor = false
          @global_state = 0
          @input_stream = nil
          @buffer = nil
          @bytes_in_buffer = 0
          @bytes_offset = 0
          @start_of_file = false
          @image_width = 0
          @image_height = 0
          @num_components = 0
          @jpeg_color_space = 0
          @out_color_space = 0
          @scale_num = 0
          @scale_denom = 0
          @output_gamma = 0.0
          @buffered_image = false
          @raw_data_out = false
          @dct_method = 0
          @do_fancy_upsampling = false
          @do_block_smoothing = false
          @quantize_colors = false
          @dither_mode = 0
          @two_pass_quantize = false
          @desired_number_of_colors = 0
          @enable_1pass_quant = false
          @enable_external_quant = false
          @enable_2pass_quant = false
          @output_width = 0
          @output_height = 0
          @out_color_components = 0
          @output_components = 0
          @rec_outbuf_height = 0
          @actual_number_of_colors = 0
          @colormap = nil
          @output_scanline = 0
          @input_scan_number = 0
          @input_i_mcu_row = 0
          @output_scan_number = 0
          @output_i_mcu_row = 0
          @coef_bits = nil
          @quant_tbl_ptrs = Array.typed(JQUANT_TBL).new(NUM_QUANT_TBLS) { nil }
          @dc_huff_tbl_ptrs = Array.typed(JHUFF_TBL).new(NUM_HUFF_TBLS) { nil }
          @ac_huff_tbl_ptrs = Array.typed(JHUFF_TBL).new(NUM_HUFF_TBLS) { nil }
          @data_precision = 0
          @comp_info = nil
          @progressive_mode = false
          @arith_code = false
          @arith_dc_l = Array.typed(::Java::Byte).new(NUM_ARITH_TBLS) { 0 }
          @arith_dc_u = Array.typed(::Java::Byte).new(NUM_ARITH_TBLS) { 0 }
          @arith_ac_k = Array.typed(::Java::Byte).new(NUM_ARITH_TBLS) { 0 }
          @restart_interval = 0
          @saw_jfif_marker = false
          @jfif_major_version = 0
          @jfif_minor_version = 0
          @density_unit = 0
          @x_density = 0
          @y_density = 0
          @saw_adobe_marker = false
          @adobe_transform = 0
          @ccir601_sampling = false
          @marker_list = nil
          @max_h_samp_factor = 0
          @max_v_samp_factor = 0
          @min_dct_scaled_size = 0
          @total_i_mcu_rows = 0
          @sample_range_limit = nil
          @sample_range_limit_offset = 0
          @comps_in_scan = 0
          @cur_comp_info = Array.typed(Jpeg_component_info).new(MAX_COMPS_IN_SCAN) { nil }
          @mcus_per_row = 0
          @mcu_rows_in_scan = 0
          @blocks_in_mcu = 0
          @mcu_membership = Array.typed(::Java::Int).new(D_MAX_BLOCKS_IN_MCU) { 0 }
          @ss = 0
          @se = 0
          @ah = 0
          @al = 0
          @unread_marker = 0
          @workspace = Array.typed(::Java::Int).new(DCTSIZE2) { 0 }
          @row_ctr = Array.typed(::Java::Int).new(1) { 0 }
          @master = nil
          @main = nil
          @coef = nil
          @post = nil
          @inputctl = nil
          @marker = nil
          @entropy = nil
          @idct = nil
          @upsample = nil
          @cconvert = nil
          @cquantize = nil
        end
        
        private
        alias_method :initialize_jpeg_decompress_struct, :initialize
      end }
      
      typesig { [] }
      def error
        SWT.error(SWT::ERROR_INVALID_IMAGE)
      end
      
      typesig { [::Java::Int] }
      def error(code)
        SWT.error(code)
      end
      
      typesig { [String] }
      def error(msg)
        SWT.error(SWT::ERROR_INVALID_IMAGE, nil, msg)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_marker_reader(cinfo)
        marker = cinfo.attr_marker = Jpeg_marker_reader.new
        # int i;
        # Initialize COM/APPn processing.
        # By default, we examine and then discard APP0 and APP14,
        # but simply discard COM and all other APPn.
        # 
        # marker.process_COM = skip_variable;
        marker.attr_length_limit_com = 0
        # for (i = 0; i < 16; i++) {
        # marker.process_APPn[i] = skip_variable;
        # marker.length_limit_APPn[i] = 0;
        # }
        # marker.process_APPn[0] = get_interesting_appn;
        # marker.process_APPn[14] = get_interesting_appn;
        # Reset marker processing state
        reset_marker_reader(cinfo)
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Boolean] }
      def jinit_d_coef_controller(cinfo, need_full_buffer)
        coef = Jpeg_d_coef_controller.new
        cinfo.attr_coef = coef
        # coef.pub.start_input_pass = start_input_pass;
        # coef.pub.start_output_pass = start_output_pass;
        coef.attr_coef_bits_latch = nil
        # Create the coefficient buffer.
        if (need_full_buffer)
          # #ifdef D_MULTISCAN_FILES_SUPPORTED
          # Allocate a full-image virtual array for each component,
          # padded to a multiple of samp_factor DCT blocks in each direction.
          # Note we ask for a pre-zeroed array.
          ci = 0
          access_rows = 0
          compptr = nil
          ci = 0
          while ci < cinfo.attr_num_components
            compptr = cinfo.attr_comp_info[ci]
            access_rows = compptr.attr_v_samp_factor
            # #ifdef BLOCK_SMOOTHING_SUPPORTED
            # If block smoothing could be used, need a bigger window
            if (cinfo.attr_progressive_mode)
              access_rows *= 3
            end
            # #endif
            coef.attr_whole_image[ci] = Array.typed(::Java::Short).new(RJava.cast_to_int(jround_up(compptr.attr_height_in_blocks, compptr.attr_v_samp_factor))) { Array.typed(::Java::Short).new(RJava.cast_to_int(jround_up(compptr.attr_width_in_blocks, compptr.attr_h_samp_factor))) { Array.typed(::Java::Short).new(DCTSIZE2) { 0 } } }
            ci += 1
          end
          # coef.consume_data = consume_data;
          coef.attr_decompress_data = DECOMPRESS_DATA
          coef.attr_coef_arrays = coef.attr_whole_image[0]
          # link to virtual arrays
          # #else
          # ERREXIT(cinfo, JERR_NOT_COMPILED);
          # #endif
        else
          # We only need a single-MCU buffer.
          coef.attr_mcu_buffer = Array.typed(::Java::Short).new(D_MAX_BLOCKS_IN_MCU) { Array.typed(::Java::Short).new(DCTSIZE2) { 0 } }
          # coef.consume_data = dummy_consume_data;
          coef.attr_decompress_data = DECOMPRESS_ONEPASS
          coef.attr_coef_arrays = nil
          # flag for no virtual arrays
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def start_output_pass(cinfo)
        # #ifdef BLOCK_SMOOTHING_SUPPORTED
        coef = cinfo.attr_coef
        # If multipass, check to see whether to use block smoothing on this pass
        if (!(coef.attr_coef_arrays).nil?)
          if (cinfo.attr_do_block_smoothing && smoothing_ok(cinfo))
            coef.attr_decompress_data = DECOMPRESS_SMOOTH_DATA
          else
            coef.attr_decompress_data = DECOMPRESS_DATA
          end
        end
        # #endif
        cinfo.attr_output_i_mcu_row = 0
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_create_decompress(cinfo)
        cinfo.attr_is_decompressor = true
        # Initialize marker processor so application can override methods
        # for COM, APPn markers before calling jpeg_read_header.
        cinfo.attr_marker_list = nil
        jinit_marker_reader(cinfo)
        # And initialize the overall input controller.
        jinit_input_controller(cinfo)
        # OK, I'm ready
        cinfo.attr_global_state = DSTATE_START
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_calc_output_dimensions(cinfo)
        # Do computations that are needed before master selection phase
        # #ifdef IDCT_SCALING_SUPPORTED
        # int ci;
        # jpeg_component_info compptr;
        # #endif
        # Prevent application from calling me at wrong times
        if (!(cinfo.attr_global_state).equal?(DSTATE_READY))
          error
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        # #ifdef IDCT_SCALING_SUPPORTED
        # 
        # /* Compute actual output image dimensions and DCT scaling choices. */
        # if (cinfo.scale_num * 8 <= cinfo.scale_denom) {
        # /* Provide 1/8 scaling */
        # cinfo.output_width = (int)
        # jdiv_round_up(cinfo.image_width, 8L);
        # cinfo.output_height = (int)
        # jdiv_round_up(cinfo.image_height, 8L);
        # cinfo.min_DCT_scaled_size = 1;
        # } else if (cinfo.scale_num * 4 <= cinfo.scale_denom) {
        # /* Provide 1/4 scaling */
        # cinfo.output_width = (int)
        # jdiv_round_up(cinfo.image_width, 4L);
        # cinfo.output_height = (int)
        # jdiv_round_up(cinfo.image_height, 4L);
        # cinfo.min_DCT_scaled_size = 2;
        # } else if (cinfo.scale_num * 2 <= cinfo.scale_denom) {
        # /* Provide 1/2 scaling */
        # cinfo.output_width = (int)
        # jdiv_round_up(cinfo.image_width, 2L);
        # cinfo.output_height = (int)
        # jdiv_round_up(cinfo.image_height, 2L);
        # cinfo.min_DCT_scaled_size = 4;
        # } else {
        # /* Provide 1/1 scaling */
        # cinfo.output_width = cinfo.image_width;
        # cinfo.output_height = cinfo.image_height;
        # cinfo.min_DCT_scaled_size = DCTSIZE;
        # }
        # /* In selecting the actual DCT scaling for each component, we try to
        # * scale up the chroma components via IDCT scaling rather than upsampling.
        # * This saves time if the upsampler gets to use 1:1 scaling.
        # * Note this code assumes that the supported DCT scalings are powers of 2.
        # */
        # for (ci = 0; ci < cinfo.num_components; ci++) {
        # compptr = cinfo.comp_info[ci];
        # int ssize = cinfo.min_DCT_scaled_size;
        # while (ssize < DCTSIZE &&
        # (compptr.h_samp_factor * ssize * 2 <= cinfo.max_h_samp_factor * cinfo.min_DCT_scaled_size) &&
        # (compptr.v_samp_factor * ssize * 2 <= cinfo.max_v_samp_factor * cinfo.min_DCT_scaled_size))
        # {
        # ssize = ssize * 2;
        # }
        # compptr.DCT_scaled_size = ssize;
        # }
        # 
        # /* Recompute downsampled dimensions of components;
        # * application needs to know these if using raw downsampled data.
        # */
        # for (ci = 0; ci < cinfo.num_components; ci++) {
        # compptr = cinfo.comp_info[ci];
        # /* Size in samples, after IDCT scaling */
        # compptr.downsampled_width = (int)
        # jdiv_round_up((long) cinfo.image_width * (long) (compptr.h_samp_factor * compptr.DCT_scaled_size),
        # (cinfo.max_h_samp_factor * DCTSIZE));
        # compptr.downsampled_height = (int)
        # jdiv_round_up((long) cinfo.image_height * (long) (compptr.v_samp_factor * compptr.DCT_scaled_size),
        # (cinfo.max_v_samp_factor * DCTSIZE));
        # }
        # 
        # #else /* !IDCT_SCALING_SUPPORTED */
        # Hardwire it to "no scaling"
        cinfo.attr_output_width = cinfo.attr_image_width
        cinfo.attr_output_height = cinfo.attr_image_height
        # jdinput.c has already initialized DCT_scaled_size to DCTSIZE,
        # and has computed unscaled downsampled_width and downsampled_height.
        # 
        # #endif /* IDCT_SCALING_SUPPORTED */
        # Report number of components in selected colorspace.
        # Probably this should be in the color conversion module...
        case (cinfo.attr_out_color_space)
        # FALLTHROUGH
        when JCS_GRAYSCALE
          cinfo.attr_out_color_components = 1
        when JCS_RGB
          if (!(RGB_PIXELSIZE).equal?(3))
            cinfo.attr_out_color_components = RGB_PIXELSIZE
          end
        when JCS_YCbCr
          cinfo.attr_out_color_components = 3
        when JCS_CMYK, JCS_YCCK
          cinfo.attr_out_color_components = 4
        else
          # else must be same colorspace as in file
          cinfo.attr_out_color_components = cinfo.attr_num_components
        end
        cinfo.attr_output_components = (cinfo.attr_quantize_colors ? 1 : cinfo.attr_out_color_components)
        # See if upsampler will want to emit more than one row at a time
        if (use_merged_upsample(cinfo))
          cinfo.attr_rec_outbuf_height = cinfo.attr_max_v_samp_factor
        else
          cinfo.attr_rec_outbuf_height = 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def use_merged_upsample(cinfo)
        # #ifdef UPSAMPLE_MERGING_SUPPORTED
        # Merging is the equivalent of plain box-filter upsampling
        if (cinfo.attr_do_fancy_upsampling || cinfo.attr_ccir601_sampling)
          return false
        end
        # jdmerge.c only supports YCC=>RGB color conversion
        if (!(cinfo.attr_jpeg_color_space).equal?(JCS_YCbCr) || !(cinfo.attr_num_components).equal?(3) || !(cinfo.attr_out_color_space).equal?(JCS_RGB) || !(cinfo.attr_out_color_components).equal?(RGB_PIXELSIZE))
          return false
        end
        # and it only handles 2h1v or 2h2v sampling ratios
        if (!(cinfo.attr_comp_info[0].attr_h_samp_factor).equal?(2) || !(cinfo.attr_comp_info[1].attr_h_samp_factor).equal?(1) || !(cinfo.attr_comp_info[2].attr_h_samp_factor).equal?(1) || cinfo.attr_comp_info[0].attr_v_samp_factor > 2 || !(cinfo.attr_comp_info[1].attr_v_samp_factor).equal?(1) || !(cinfo.attr_comp_info[2].attr_v_samp_factor).equal?(1))
          return false
        end
        # furthermore, it doesn't work if we've scaled the IDCTs differently
        if (!(cinfo.attr_comp_info[0].attr_dct_scaled_size).equal?(cinfo.attr_min_dct_scaled_size) || !(cinfo.attr_comp_info[1].attr_dct_scaled_size).equal?(cinfo.attr_min_dct_scaled_size) || !(cinfo.attr_comp_info[2].attr_dct_scaled_size).equal?(cinfo.attr_min_dct_scaled_size))
          return false
        end
        # ??? also need to test for upsample-time rescaling, when & if supported
        return true
        # by golly, it'll work...
        # #else
        # return false;
        # #endif
      end
      
      typesig { [Jpeg_decompress_struct] }
      def prepare_range_limit_table(cinfo)
        # Allocate and fill in the sample_range_limit table
        table = nil
        i = 0
        table = Array.typed(::Java::Byte).new(5 * (MAXJSAMPLE + 1) + CENTERJSAMPLE) { 0 }
        offset = (MAXJSAMPLE + 1)
        # allow negative subscripts of simple table
        cinfo.attr_sample_range_limit_offset = offset
        cinfo.attr_sample_range_limit = table
        # First segment of "simple" table: limit[x] = 0 for x < 0
        # Main part of "simple" table: limit[x] = x
        i = 0
        while i <= MAXJSAMPLE
          table[i + offset] = i
          i += 1
        end
        offset += CENTERJSAMPLE
        # Point to where post-IDCT table starts
        # End of simple table, rest of first half of post-IDCT table
        i = CENTERJSAMPLE
        while i < 2 * (MAXJSAMPLE + 1)
          table[i + offset] = MAXJSAMPLE
          i += 1
        end
        # Second half of post-IDCT table
        System.arraycopy(cinfo.attr_sample_range_limit, cinfo.attr_sample_range_limit_offset, table, offset + (4 * (MAXJSAMPLE + 1) - CENTERJSAMPLE), CENTERJSAMPLE)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def build_ycc_rgb_table(cinfo)
        cconvert = cinfo.attr_cconvert
        i = 0
        x = 0
        # SHIFT_TEMPS
        cconvert.attr_cr_r_tab = Array.typed(::Java::Int).new(MAXJSAMPLE + 1) { 0 }
        cconvert.attr_cb_b_tab = Array.typed(::Java::Int).new(MAXJSAMPLE + 1) { 0 }
        cconvert.attr_cr_g_tab = Array.typed(::Java::Int).new(MAXJSAMPLE + 1) { 0 }
        cconvert.attr_cb_g_tab = Array.typed(::Java::Int).new(MAXJSAMPLE + 1) { 0 }
        i = 0
        x = -CENTERJSAMPLE
        while i <= MAXJSAMPLE
          # i is the actual input pixel value, in the range 0..MAXJSAMPLE
          # The Cb or Cr value we are thinking of is x = i - CENTERJSAMPLE
          # Cr=>R value is nearest int to 1.40200 * x
          cconvert.attr_cr_r_tab[i] = (RJava.cast_to_int((1.40200 * (1 << SCALEBITS) + 0.5)) * x + ONE_HALF) >> SCALEBITS
          # Cb=>B value is nearest int to 1.77200 * x
          cconvert.attr_cb_b_tab[i] = (RJava.cast_to_int((1.77200 * (1 << SCALEBITS) + 0.5)) * x + ONE_HALF) >> SCALEBITS
          # Cr=>G value is scaled-up -0.71414 * x
          cconvert.attr_cr_g_tab[i] = (RJava.cast_to_int((-(0.71414 * (1 << SCALEBITS) + 0.5))) * x)
          # Cb=>G value is scaled-up -0.34414 * x
          # We also add in ONE_HALF so that need not do it in inner loop
          cconvert.attr_cb_g_tab[i] = (RJava.cast_to_int((-(0.34414 * (1 << SCALEBITS) + 0.5))) * x + ONE_HALF)
          i += 1
          x += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_color_deconverter(cinfo)
        cconvert = cinfo.attr_cconvert = Jpeg_color_deconverter.new
        # cconvert.start_pass = start_pass_dcolor;
        # Make sure num_components agrees with jpeg_color_space
        case (cinfo.attr_jpeg_color_space)
        when JCS_GRAYSCALE
          if (!(cinfo.attr_num_components).equal?(1))
            error
          end
          # ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
        when JCS_RGB, JCS_YCbCr
          if (!(cinfo.attr_num_components).equal?(3))
            error
          end
          # ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
        when JCS_CMYK, JCS_YCCK
          if (!(cinfo.attr_num_components).equal?(4))
            error
          end
          # ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
        else
          # JCS_UNKNOWN can be anything
          if (cinfo.attr_num_components < 1)
            error
          end
          # ERREXIT(cinfo, JERR_BAD_J_COLORSPACE);
        end
        # Set out_color_components and conversion method based on requested space.
        # Also clear the component_needed flags for any unused components,
        # so that earlier pipeline stages can avoid useless computation.
        ci = 0
        case (cinfo.attr_out_color_space)
        when JCS_GRAYSCALE
          cinfo.attr_out_color_components = 1
          if ((cinfo.attr_jpeg_color_space).equal?(JCS_GRAYSCALE) || (cinfo.attr_jpeg_color_space).equal?(JCS_YCbCr))
            cconvert.attr_color_convert = GRAYSCALE_CONVERT
            # For color.grayscale conversion, only the Y (0) component is needed
            ci = 1
            while ci < cinfo.attr_num_components
              cinfo.attr_comp_info[ci].attr_component_needed = false
              ci += 1
            end
          else
            error
          end
          # ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
        when JCS_RGB
          cinfo.attr_out_color_components = RGB_PIXELSIZE
          if ((cinfo.attr_jpeg_color_space).equal?(JCS_YCbCr))
            cconvert.attr_color_convert = YCC_RGB_CONVERT
            build_ycc_rgb_table(cinfo)
          else
            if ((cinfo.attr_jpeg_color_space).equal?(JCS_GRAYSCALE))
              cconvert.attr_color_convert = GRAY_RGB_CONVERT
            else
              if ((cinfo.attr_jpeg_color_space).equal?(JCS_RGB) && (RGB_PIXELSIZE).equal?(3))
                cconvert.attr_color_convert = NULL_CONVERT
              else
                error
              end
            end
          end
          # ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
        when JCS_CMYK
          cinfo.attr_out_color_components = 4
          if ((cinfo.attr_jpeg_color_space).equal?(JCS_YCCK))
            cconvert.attr_color_convert = YCCK_CMYK_CONVERT
            build_ycc_rgb_table(cinfo)
          else
            if ((cinfo.attr_jpeg_color_space).equal?(JCS_CMYK))
              cconvert.attr_color_convert = NULL_CONVERT
            else
              error
            end
          end
          # ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
        else
          # Permit null conversion to same output space
          if ((cinfo.attr_out_color_space).equal?(cinfo.attr_jpeg_color_space))
            cinfo.attr_out_color_components = cinfo.attr_num_components
            cconvert.attr_color_convert = NULL_CONVERT
          else
            # unsupported non-null conversion
            error
          end
          # ERREXIT(cinfo, JERR_CONVERSION_NOTIMPL);
        end
        if (cinfo.attr_quantize_colors)
          cinfo.attr_output_components = 1
        # single colormapped output component
        else
          cinfo.attr_output_components = cinfo.attr_out_color_components
        end
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Boolean] }
      def jinit_d_post_controller(cinfo, need_full_buffer)
        post = cinfo.attr_post = Jpeg_d_post_controller.new
        # post.pub.start_pass = start_pass_dpost;
        post.attr_whole_image = nil
        # flag for no virtual arrays
        post.attr_buffer = nil
        # flag for no strip buffer
        # Create the quantization buffer, if needed
        if (cinfo.attr_quantize_colors)
          error(SWT::ERROR_NOT_IMPLEMENTED)
          # /* The buffer strip height is max_v_samp_factor, which is typically
          # * an efficient number of rows for upsampling to return.
          # * (In the presence of output rescaling, we might want to be smarter?)
          # */
          # post.strip_height = cinfo.max_v_samp_factor;
          # if (need_full_buffer) {
          # /* Two-pass color quantization: need full-image storage. */
          # /* We round up the number of rows to a multiple of the strip height. */
          # #ifdef QUANT_2PASS_SUPPORTED
          # post.whole_image = (*cinfo.mem.request_virt_sarray)
          # ((j_common_ptr) cinfo, JPOOL_IMAGE, FALSE,
          # cinfo.output_width * cinfo.out_color_components,
          # (JDIMENSION) jround_up((long) cinfo.output_height,
          # (long) post.strip_height),
          # post.strip_height);
          # #else
          # ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);
          # #endif /* QUANT_2PASS_SUPPORTED */
          # } else {
          # /* One-pass color quantization: just make a strip buffer. */
          # post.buffer = (*cinfo.mem.alloc_sarray)
          # ((j_common_ptr) cinfo, JPOOL_IMAGE,
          # cinfo.output_width * cinfo.out_color_components,
          # post.strip_height);
          # }
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def make_funny_pointers(cinfo)
        # Create the funny pointer lists discussed in the comments above.
        # The actual workspace is already allocated (in main.buffer),
        # and the space for the pointer lists is allocated too.
        # This routine just fills in the curiously ordered lists.
        # This will be repeated at the beginning of each pass.
        main = cinfo.attr_main
        ci = 0
        i = 0
        rgroup = 0
        m = cinfo.attr_min_dct_scaled_size
        compptr = nil
        buf = nil
        xbuf0 = nil
        xbuf1 = nil
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          rgroup = (compptr.attr_v_samp_factor * compptr.attr_dct_scaled_size) / cinfo.attr_min_dct_scaled_size
          # height of a row group of component
          xbuf0 = main.attr_xbuffer[0][ci]
          xbuf0_offset = main.attr_xbuffer_offset[0][ci]
          xbuf1 = main.attr_xbuffer[1][ci]
          xbuf1_offset = main.attr_xbuffer_offset[1][ci]
          # First copy the workspace pointers as-is
          buf = main.attr_buffer[ci]
          i = 0
          while i < rgroup * (m + 2)
            xbuf0[i + xbuf0_offset] = xbuf1[i + xbuf1_offset] = buf[i]
            i += 1
          end
          # In the second list, put the last four row groups in swapped order
          i = 0
          while i < rgroup * 2
            xbuf1[rgroup * (m - 2) + i + xbuf1_offset] = buf[rgroup * m + i]
            xbuf1[rgroup * m + i + xbuf1_offset] = buf[rgroup * (m - 2) + i]
            i += 1
          end
          # The wraparound pointers at top and bottom will be filled later
          # (see set_wraparound_pointers, below).	Initially we want the "above"
          # pointers to duplicate the first actual data line.	This only needs
          # to happen in xbuffer[0].
          i = 0
          while i < rgroup
            xbuf0[i - rgroup + xbuf0_offset] = xbuf0[0 + xbuf0_offset]
            i += 1
          end
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def alloc_funny_pointers(cinfo)
        # Allocate space for the funny pointer lists.
        # This is done only once, not once per pass.
        main = cinfo.attr_main
        ci = 0
        rgroup = 0
        m = cinfo.attr_min_dct_scaled_size
        compptr = nil
        xbuf = nil
        # Get top-level space for component array pointers.
        # We alloc both arrays with one call to save a few cycles.
        main.attr_xbuffer[0] = Array.typed(::Java::Byte).new(cinfo.attr_num_components) { 0 }
        main.attr_xbuffer[1] = Array.typed(::Java::Byte).new(cinfo.attr_num_components) { 0 }
        main.attr_xbuffer_offset[0] = Array.typed(::Java::Int).new(cinfo.attr_num_components) { 0 }
        main.attr_xbuffer_offset[1] = Array.typed(::Java::Int).new(cinfo.attr_num_components) { 0 }
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          rgroup = (compptr.attr_v_samp_factor * compptr.attr_dct_scaled_size) / cinfo.attr_min_dct_scaled_size
          # height of a row group of component
          # Get space for pointer lists --- M+4 row groups in each list.
          # We alloc both pointer lists with one call to save a few cycles.
          xbuf = Array.typed(::Java::Byte).new(2 * (rgroup * (m + 4))) { 0 }
          offset = rgroup
          main.attr_xbuffer_offset[0][ci] = offset
          main.attr_xbuffer[0][ci] = xbuf
          offset += rgroup * (m + 4)
          main.attr_xbuffer_offset[1][ci] = offset
          main.attr_xbuffer[1][ci] = xbuf
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Boolean] }
      def jinit_d_main_controller(cinfo, need_full_buffer)
        ci = 0
        rgroup = 0
        ngroups = 0
        compptr = nil
        main = cinfo.attr_main = Jpeg_d_main_controller.new
        # main.pub.start_pass = start_pass_main;
        if (need_full_buffer)
          # shouldn't happen
          error
        end
        # ERREXIT(cinfo, JERR_BAD_BUFFER_MODE);
        # Allocate the workspace.
        # ngroups is the number of row groups we need.
        if (cinfo.attr_upsample.attr_need_context_rows)
          if (cinfo.attr_min_dct_scaled_size < 2)
            # unsupported, see comments above
            error
          end
          # ERREXIT(cinfo, JERR_NOTIMPL);
          alloc_funny_pointers(cinfo)
          # Alloc space for xbuffer[] lists
          ngroups = cinfo.attr_min_dct_scaled_size + 2
        else
          ngroups = cinfo.attr_min_dct_scaled_size
        end
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          rgroup = (compptr.attr_v_samp_factor * compptr.attr_dct_scaled_size) / cinfo.attr_min_dct_scaled_size
          # height of a row group of component
          main.attr_buffer[ci] = Array.typed(::Java::Byte).new(rgroup * ngroups) { Array.typed(::Java::Byte).new(compptr.attr_width_in_blocks * compptr.attr_dct_scaled_size) { 0 } }
          ci += 1
        end
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      def jround_up(a, b)
        # Compute a rounded up to next multiple of b, ie, ceil(a/b)*b
        # Assumes a >= 0, b > 0
        a += b - 1
        return a - (a % b)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_upsampler(cinfo)
        ci = 0
        compptr = nil
        need_buffer = false
        do_fancy = false
        h_in_group = 0
        v_in_group = 0
        h_out_group = 0
        v_out_group = 0
        upsample = Jpeg_upsampler.new
        cinfo.attr_upsample = upsample
        # upsample.start_pass = start_pass_upsample;
        # upsample.upsample = sep_upsample;
        upsample.attr_need_context_rows = false
        # until we find out differently
        if (cinfo.attr_ccir601_sampling)
          # this isn't supported
          error
        end
        # ERREXIT(cinfo, JERR_CCIR601_NOTIMPL);
        # jdmainct.c doesn't support context rows when min_DCT_scaled_size = 1,
        # so don't ask for it.
        do_fancy = cinfo.attr_do_fancy_upsampling && cinfo.attr_min_dct_scaled_size > 1
        # Verify we can handle the sampling factors, select per-component methods,
        # and create storage as needed.
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          # Compute size of an "input group" after IDCT scaling.	This many samples
          # are to be converted to max_h_samp_factor * max_v_samp_factor pixels.
          h_in_group = (compptr.attr_h_samp_factor * compptr.attr_dct_scaled_size) / cinfo.attr_min_dct_scaled_size
          v_in_group = (compptr.attr_v_samp_factor * compptr.attr_dct_scaled_size) / cinfo.attr_min_dct_scaled_size
          h_out_group = cinfo.attr_max_h_samp_factor
          v_out_group = cinfo.attr_max_v_samp_factor
          upsample.attr_rowgroup_height[ci] = v_in_group
          # save for use later
          need_buffer = true
          if (!compptr.attr_component_needed)
            # Don't bother to upsample an uninteresting component.
            upsample.attr_methods[ci] = NOOP_UPSAMPLE
            need_buffer = false
          else
            if ((h_in_group).equal?(h_out_group) && (v_in_group).equal?(v_out_group))
              # Fullsize components can be processed without any work.
              upsample.attr_methods[ci] = FULLSIZE_UPSAMPLE
              need_buffer = false
            else
              if ((h_in_group * 2).equal?(h_out_group) && (v_in_group).equal?(v_out_group))
                # Special cases for 2h1v upsampling
                if (do_fancy && compptr.attr_downsampled_width > 2)
                  upsample.attr_methods[ci] = H2V1_FANCY_UPSAMPLE
                else
                  upsample.attr_methods[ci] = H2V1_UPSAMPLE
                end
              else
                if ((h_in_group * 2).equal?(h_out_group) && (v_in_group * 2).equal?(v_out_group))
                  # Special cases for 2h2v upsampling
                  if (do_fancy && compptr.attr_downsampled_width > 2)
                    upsample.attr_methods[ci] = H2V2_FANCY_UPSAMPLE
                    upsample.attr_need_context_rows = true
                  else
                    upsample.attr_methods[ci] = H2V2_UPSAMPLE
                  end
                else
                  if (((h_out_group % h_in_group)).equal?(0) && ((v_out_group % v_in_group)).equal?(0))
                    # Generic integral-factors upsampling method
                    upsample.attr_methods[ci] = INT_UPSAMPLE
                    upsample.attr_h_expand[ci] = (h_out_group / h_in_group)
                    upsample.attr_v_expand[ci] = (v_out_group / v_in_group)
                  else
                    error
                  end
                end
              end
            end
          end
          # ERREXIT(cinfo, JERR_FRACT_SAMPLE_NOTIMPL);
          if (need_buffer)
            upsample.attr_color_buf[ci] = Array.typed(::Java::Byte).new(cinfo.attr_max_v_samp_factor) { Array.typed(::Java::Byte).new(RJava.cast_to_int(jround_up(cinfo.attr_output_width, cinfo.attr_max_h_samp_factor))) { 0 } }
          end
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_phuff_decoder(cinfo)
        coef_bit_ptr = nil
        ci = 0
        i = 0
        cinfo.attr_entropy = Phuff_entropy_decoder.new
        # entropy.pub.start_pass = start_pass_phuff_decoder;
        # Create progression status table
        cinfo.attr_coef_bits = Array.typed(::Java::Int).new(cinfo.attr_num_components) { Array.typed(::Java::Int).new(DCTSIZE2) { 0 } }
        coef_bit_ptr = cinfo.attr_coef_bits
        ci = 0
        while ci < cinfo.attr_num_components
          i = 0
          while i < DCTSIZE2
            coef_bit_ptr[ci][i] = -1
            i += 1
          end
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_huff_decoder(cinfo)
        cinfo.attr_entropy = Huff_entropy_decoder.new
        # entropy.pub.start_pass = start_pass_huff_decoder;
        # entropy.pub.decode_mcu = decode_mcu;
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_inverse_dct(cinfo)
        ci = 0
        compptr = nil
        idct = cinfo.attr_idct = Jpeg_inverse_dct.new
        # idct.pub.start_pass = start_pass;
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          # Allocate and pre-zero a multiplier table for each component
          compptr.attr_dct_table = Array.typed(::Java::Int).new(DCTSIZE2) { 0 }
          # Mark multiplier table not yet set up for any method
          idct.attr_cur_method[ci] = -1
          ci += 1
        end
      end
      
      const_set_lazy(:CONST_BITS) { 13 }
      const_attr_reader  :CONST_BITS
      
      const_set_lazy(:PASS1_BITS) { 2 }
      const_attr_reader  :PASS1_BITS
      
      const_set_lazy(:RANGE_MASK) { (MAXJSAMPLE * 4 + 3) }
      const_attr_reader  :RANGE_MASK
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(::Java::Short), Array.typed(Array.typed(::Java::Byte)), ::Java::Int, ::Java::Int] }
      def jpeg_idct_islow(cinfo, compptr, coef_block, output_buf, output_buf_offset, output_col)
        tmp0 = 0
        tmp1 = 0
        tmp2 = 0
        tmp3 = 0
        tmp10 = 0
        tmp11 = 0
        tmp12 = 0
        tmp13 = 0
        z1 = 0
        z2 = 0
        z3 = 0
        z4 = 0
        z5 = 0
        inptr = nil
        quantptr = nil
        wsptr = nil
        outptr = nil
        range_limit = cinfo.attr_sample_range_limit
        range_limit_offset = cinfo.attr_sample_range_limit_offset + CENTERJSAMPLE
        ctr = 0
        workspace = cinfo.attr_workspace
        # buffers data between passes
        # SHIFT_TEMPS
        # Pass 1: process columns from input, store into work array.
        # Note results are scaled up by sqrt(8) compared to a true IDCT;
        # furthermore, we scale the results by 2**PASS1_BITS.
        inptr = coef_block
        quantptr = compptr.attr_dct_table
        wsptr = workspace
        inptr_offset = 0
        quantptr_offset = 0
        wsptr_offset = 0
        ctr = DCTSIZE
        while ctr > 0
          # Due to quantization, we will usually find that many of the input
          # coefficients are zero, especially the AC terms.	We can exploit this
          # by short-circuiting the IDCT calculation for any column in which all
          # the AC terms are zero.	In that case each output is equal to the
          # DC coefficient (with scale factor as needed).
          # With typical images and quantization tables, half or more of the
          # column DCT calculations can be simplified this way.
          if ((inptr[DCTSIZE * 1 + inptr_offset]).equal?(0) && (inptr[DCTSIZE * 2 + inptr_offset]).equal?(0) && (inptr[DCTSIZE * 3 + inptr_offset]).equal?(0) && (inptr[DCTSIZE * 4 + inptr_offset]).equal?(0) && (inptr[DCTSIZE * 5 + inptr_offset]).equal?(0) && (inptr[DCTSIZE * 6 + inptr_offset]).equal?(0) && (inptr[DCTSIZE * 7 + inptr_offset]).equal?(0))
            # AC terms all zero
            dcval = ((inptr[DCTSIZE * 0 + inptr_offset]) * quantptr[DCTSIZE * 0 + quantptr_offset]) << PASS1_BITS
            wsptr[DCTSIZE * 0 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 1 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 2 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 3 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 4 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 5 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 6 + wsptr_offset] = dcval
            wsptr[DCTSIZE * 7 + wsptr_offset] = dcval
            inptr_offset += 1
            # advance pointers to next column
            quantptr_offset += 1
            wsptr_offset += 1
            ctr -= 1
            next
          end
          # Even part: reverse the even part of the forward DCT.
          # The rotator is sqrt(2)*c(-6).
          z2 = ((inptr[DCTSIZE * 2 + inptr_offset]) * quantptr[DCTSIZE * 2 + quantptr_offset])
          z3 = ((inptr[DCTSIZE * 6 + inptr_offset]) * quantptr[DCTSIZE * 6 + quantptr_offset])
          # FIX_0_541196100
          z1 = ((z2 + z3) * 4433)
          # FIX_1_847759065
          tmp2 = z1 + (z3 * -15137)
          # FIX_0_765366865
          tmp3 = z1 + (z2 * 6270)
          z2 = ((inptr[DCTSIZE * 0 + inptr_offset]) * quantptr[DCTSIZE * 0 + quantptr_offset])
          z3 = ((inptr[DCTSIZE * 4 + inptr_offset]) * quantptr[DCTSIZE * 4 + quantptr_offset])
          tmp0 = (z2 + z3) << CONST_BITS
          tmp1 = (z2 - z3) << CONST_BITS
          tmp10 = tmp0 + tmp3
          tmp13 = tmp0 - tmp3
          tmp11 = tmp1 + tmp2
          tmp12 = tmp1 - tmp2
          # Odd part per figure 8; the matrix is unitary and hence its
          # transpose is its inverse.	i0..i3 are y7,y5,y3,y1 respectively.
          tmp0 = ((inptr[DCTSIZE * 7 + inptr_offset]) * quantptr[DCTSIZE * 7 + quantptr_offset])
          tmp1 = ((inptr[DCTSIZE * 5 + inptr_offset]) * quantptr[DCTSIZE * 5 + quantptr_offset])
          tmp2 = ((inptr[DCTSIZE * 3 + inptr_offset]) * quantptr[DCTSIZE * 3 + quantptr_offset])
          tmp3 = ((inptr[DCTSIZE * 1 + inptr_offset]) * quantptr[DCTSIZE * 1 + quantptr_offset])
          z1 = tmp0 + tmp3
          z2 = tmp1 + tmp2
          z3 = tmp0 + tmp2
          z4 = tmp1 + tmp3
          # FIX_1_175875602
          z5 = ((z3 + z4) * 9633)
          # sqrt(2) * c3
          # FIX_0_298631336
          tmp0 = (tmp0 * 2446)
          # sqrt(2) * (-c1+c3+c5-c7)
          # FIX_2_053119869
          tmp1 = (tmp1 * 16819)
          # sqrt(2) * ( c1+c3-c5+c7)
          # FIX_3_072711026
          tmp2 = (tmp2 * 25172)
          # sqrt(2) * ( c1+c3+c5-c7)
          # FIX_1_501321110
          tmp3 = (tmp3 * 12299)
          # sqrt(2) * ( c1+c3-c5-c7)
          # FIX_0_899976223
          z1 = (z1 * -7373)
          # sqrt(2) * (c7-c3)
          # FIX_2_562915447
          z2 = (z2 * -20995)
          # sqrt(2) * (-c1-c3)
          # FIX_1_961570560
          z3 = (z3 * -16069)
          # sqrt(2) * (-c3-c5)
          # FIX_0_390180644
          z4 = (z4 * -3196)
          # sqrt(2) * (c5-c3)
          z3 += z5
          z4 += z5
          tmp0 += z1 + z3
          tmp1 += z2 + z4
          tmp2 += z2 + z3
          tmp3 += z1 + z4
          # Final output stage: inputs are tmp10..tmp13, tmp0..tmp3
          # #define DESCALE(x,n)	RIGHT_SHIFT((x) + (ONE << ((n)-1)), n)
          wsptr[DCTSIZE * 0 + wsptr_offset] = (((tmp10 + tmp3) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 7 + wsptr_offset] = (((tmp10 - tmp3) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 1 + wsptr_offset] = (((tmp11 + tmp2) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 6 + wsptr_offset] = (((tmp11 - tmp2) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 2 + wsptr_offset] = (((tmp12 + tmp1) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 5 + wsptr_offset] = (((tmp12 - tmp1) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 3 + wsptr_offset] = (((tmp13 + tmp0) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          wsptr[DCTSIZE * 4 + wsptr_offset] = (((tmp13 - tmp0) + (1 << ((CONST_BITS - PASS1_BITS) - 1))) >> (CONST_BITS - PASS1_BITS))
          inptr_offset += 1
          # advance pointers to next column
          quantptr_offset += 1
          wsptr_offset += 1
          ctr -= 1
        end
        # Pass 2: process rows from work array, store into output array.
        # Note that we must descale the results by a factor of 8 == 2**3,
        # and also undo the PASS1_BITS scaling.
        outptr_offset = 0
        wsptr = workspace
        wsptr_offset = 0
        ctr = 0
        while ctr < DCTSIZE
          outptr = output_buf[ctr + output_buf_offset]
          outptr_offset = output_col
          # Rows of zeroes can be exploited in the same way as we did with columns.
          # However, the column calculation has created many nonzero AC terms, so
          # the simplification applies less often (typically 5% to 10% of the time).
          # On machines with very fast multiplication, it's possible that the
          # test takes more time than it's worth.	In that case this section
          # may be commented out.
          # 
          # #ifndef NO_ZERO_ROW_TEST
          if ((wsptr[1 + wsptr_offset]).equal?(0) && (wsptr[2 + wsptr_offset]).equal?(0) && (wsptr[3 + wsptr_offset]).equal?(0) && (wsptr[4 + wsptr_offset]).equal?(0) && (wsptr[5 + wsptr_offset]).equal?(0) && (wsptr[6 + wsptr_offset]).equal?(0) && (wsptr[7 + wsptr_offset]).equal?(0))
            # AC terms all zero
            # #define DESCALE(x,n)	RIGHT_SHIFT((x) + (ONE << ((n)-1)), n)
            dcval = range_limit[range_limit_offset + ((((wsptr[0 + wsptr_offset]) + (1 << ((PASS1_BITS + 3) - 1))) >> PASS1_BITS + 3) & RANGE_MASK)]
            outptr[0 + outptr_offset] = dcval
            outptr[1 + outptr_offset] = dcval
            outptr[2 + outptr_offset] = dcval
            outptr[3 + outptr_offset] = dcval
            outptr[4 + outptr_offset] = dcval
            outptr[5 + outptr_offset] = dcval
            outptr[6 + outptr_offset] = dcval
            outptr[7 + outptr_offset] = dcval
            wsptr_offset += DCTSIZE
            # advance pointer to next row
            ctr += 1
            next
          end
          # #endif
          # Even part: reverse the even part of the forward DCT.
          # The rotator is sqrt(2)*c(-6).
          z2 = wsptr[2 + wsptr_offset]
          z3 = wsptr[6 + wsptr_offset]
          # FIX_0_541196100
          z1 = ((z2 + z3) * 4433)
          # FIX_1_847759065
          tmp2 = z1 + (z3 * -15137)
          # FIX_0_765366865
          tmp3 = z1 + (z2 * 6270)
          tmp0 = (wsptr[0 + wsptr_offset] + wsptr[4 + wsptr_offset]) << CONST_BITS
          tmp1 = (wsptr[0 + wsptr_offset] - wsptr[4 + wsptr_offset]) << CONST_BITS
          tmp10 = tmp0 + tmp3
          tmp13 = tmp0 - tmp3
          tmp11 = tmp1 + tmp2
          tmp12 = tmp1 - tmp2
          # Odd part per figure 8; the matrix is unitary and hence its
          # transpose is its inverse.	i0..i3 are y7,y5,y3,y1 respectively.
          tmp0 = wsptr[7 + wsptr_offset]
          tmp1 = wsptr[5 + wsptr_offset]
          tmp2 = wsptr[3 + wsptr_offset]
          tmp3 = wsptr[1 + wsptr_offset]
          z1 = tmp0 + tmp3
          z2 = tmp1 + tmp2
          z3 = tmp0 + tmp2
          z4 = tmp1 + tmp3
          # FIX_1_175875602
          z5 = ((z3 + z4) * 9633)
          # sqrt(2) * c3
          # FIX_0_298631336
          tmp0 = (tmp0 * 2446)
          # sqrt(2) * (-c1+c3+c5-c7)
          # FIX_2_053119869
          tmp1 = (tmp1 * 16819)
          # sqrt(2) * ( c1+c3-c5+c7)
          # FIX_3_072711026
          tmp2 = (tmp2 * 25172)
          # sqrt(2) * ( c1+c3+c5-c7)
          # FIX_1_501321110
          tmp3 = (tmp3 * 12299)
          # sqrt(2) * ( c1+c3-c5-c7)
          # FIX_0_899976223
          z1 = (z1 * -7373)
          # sqrt(2) * (c7-c3)
          # FIX_2_562915447
          z2 = (z2 * -20995)
          # sqrt(2) * (-c1-c3)
          # FIX_1_961570560
          z3 = (z3 * -16069)
          # sqrt(2) * (-c3-c5)
          # FIX_0_390180644
          z4 = (z4 * -3196)
          # sqrt(2) * (c5-c3)
          z3 += z5
          z4 += z5
          tmp0 += z1 + z3
          tmp1 += z2 + z4
          tmp2 += z2 + z3
          tmp3 += z1 + z4
          # Final output stage: inputs are tmp10..tmp13, tmp0..tmp3
          # #define DESCALE(x,n)	RIGHT_SHIFT((x) + (ONE << ((n)-1)), n)
          outptr[0 + outptr_offset] = range_limit[range_limit_offset + ((((tmp10 + tmp3) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[7 + outptr_offset] = range_limit[range_limit_offset + ((((tmp10 - tmp3) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[1 + outptr_offset] = range_limit[range_limit_offset + ((((tmp11 + tmp2) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[6 + outptr_offset] = range_limit[range_limit_offset + ((((tmp11 - tmp2) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[2 + outptr_offset] = range_limit[range_limit_offset + ((((tmp12 + tmp1) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[5 + outptr_offset] = range_limit[range_limit_offset + ((((tmp12 - tmp1) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[3 + outptr_offset] = range_limit[range_limit_offset + ((((tmp13 + tmp0) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          outptr[4 + outptr_offset] = range_limit[range_limit_offset + ((((tmp13 - tmp0) + (1 << ((CONST_BITS + PASS1_BITS + 3) - 1))) >> CONST_BITS + PASS1_BITS + 3) & RANGE_MASK)]
          wsptr_offset += DCTSIZE
          ctr += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), Array.typed(::Java::Int), ::Java::Int] }
      def upsample(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail)
        sep_upsample(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def smoothing_ok(cinfo)
        coef = cinfo.attr_coef
        smoothing_useful = false
        ci = 0
        coefi = 0
        compptr = nil
        qtable = nil
        coef_bits = nil
        coef_bits_latch = nil
        if (!cinfo.attr_progressive_mode || (cinfo.attr_coef_bits).nil?)
          return false
        end
        # Allocate latch area if not already done
        if ((coef.attr_coef_bits_latch).nil?)
          coef.attr_coef_bits_latch = Array.typed(::Java::Int).new(cinfo.attr_num_components * SAVED_COEFS) { 0 }
        end
        coef_bits_latch = coef.attr_coef_bits_latch
        coef_bits_latch_offset = 0
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          # All components' quantization values must already be latched.
          if (((qtable = compptr.attr_quant_table)).nil?)
            return false
          end
          # Verify DC & first 5 AC quantizers are nonzero to avoid zero-divide.
          if ((qtable.attr_quantval[0]).equal?(0) || (qtable.attr_quantval[Q01_POS]).equal?(0) || (qtable.attr_quantval[Q10_POS]).equal?(0) || (qtable.attr_quantval[Q20_POS]).equal?(0) || (qtable.attr_quantval[Q11_POS]).equal?(0) || (qtable.attr_quantval[Q02_POS]).equal?(0))
            return false
          end
          # DC values must be at least partly known for all components.
          coef_bits = cinfo.attr_coef_bits[ci]
          if (coef_bits[0] < 0)
            return false
          end
          # Block smoothing is helpful if some AC coefficients remain inaccurate.
          coefi = 1
          while coefi <= 5
            coef_bits_latch[coefi + coef_bits_latch_offset] = coef_bits[coefi]
            if (!(coef_bits[coefi]).equal?(0))
              smoothing_useful = true
            end
            coefi += 1
          end
          coef_bits_latch_offset += SAVED_COEFS
          ci += 1
        end
        return smoothing_useful
      end
      
      typesig { [Jpeg_decompress_struct] }
      def master_selection(cinfo)
        master = cinfo.attr_master
        use_c_buffer = false
        samplesperrow = 0
        jd_samplesperrow = 0
        # Initialize dimensions and other stuff
        jpeg_calc_output_dimensions(cinfo)
        prepare_range_limit_table(cinfo)
        # Width of an output scanline must be representable as JDIMENSION.
        samplesperrow = cinfo.attr_output_width * cinfo.attr_out_color_components
        jd_samplesperrow = RJava.cast_to_int(samplesperrow)
        if (!(jd_samplesperrow).equal?(samplesperrow))
          error
        end
        # ERREXIT(cinfo, JERR_WIDTH_OVERFLOW);
        # Initialize my private state
        master.attr_pass_number = 0
        master.attr_using_merged_upsample = use_merged_upsample(cinfo)
        # Color quantizer selection
        master.attr_quantizer_1pass = nil
        master.attr_quantizer_2pass = nil
        # No mode changes if not using buffered-image mode.
        if (!cinfo.attr_quantize_colors || !cinfo.attr_buffered_image)
          cinfo.attr_enable_1pass_quant = false
          cinfo.attr_enable_external_quant = false
          cinfo.attr_enable_2pass_quant = false
        end
        if (cinfo.attr_quantize_colors)
          error(SWT::ERROR_NOT_IMPLEMENTED)
          # if (cinfo.raw_data_out)
          # ERREXIT(cinfo, JERR_NOTIMPL);
          # /* 2-pass quantizer only works in 3-component color space. */
          # if (cinfo.out_color_components != 3) {
          # cinfo.enable_1pass_quant = true;
          # cinfo.enable_external_quant = false;
          # cinfo.enable_2pass_quant = false;
          # cinfo.colormap = null;
          # } else if (cinfo.colormap != null) {
          # cinfo.enable_external_quant = true;
          # } else if (cinfo.two_pass_quantize) {
          # cinfo.enable_2pass_quant = true;
          # } else {
          # cinfo.enable_1pass_quant = true;
          # }
          # 
          # if (cinfo.enable_1pass_quant) {
          # #ifdef QUANT_1PASS_SUPPORTED
          # jinit_1pass_quantizer(cinfo);
          # master.quantizer_1pass = cinfo.cquantize;
          # #else
          # ERREXIT(cinfo, JERR_NOT_COMPILED);
          # #endif
          # }
          # 
          # /* We use the 2-pass code to map to external colormaps. */
          # if (cinfo.enable_2pass_quant || cinfo.enable_external_quant) {
          # #ifdef QUANT_2PASS_SUPPORTED
          # jinit_2pass_quantizer(cinfo);
          # master.quantizer_2pass = cinfo.cquantize;
          # #else
          # ERREXIT(cinfo, JERR_NOT_COMPILED);
          # #endif
          # }
          # /* If both quantizers are initialized, the 2-pass one is left active;
          # * this is necessary for starting with quantization to an external map.
          # */
        end
        # Post-processing: in particular, color conversion first
        if (!cinfo.attr_raw_data_out)
          if (master.attr_using_merged_upsample)
            # #ifdef UPSAMPLE_MERGING_SUPPORTED
            # jinit_merged_upsampler(cinfo); /* does color conversion too */
            # #else
            error
            # ERREXIT(cinfo, JERR_NOT_COMPILED);
            # #endif
          else
            jinit_color_deconverter(cinfo)
            jinit_upsampler(cinfo)
          end
          jinit_d_post_controller(cinfo, cinfo.attr_enable_2pass_quant)
        end
        # Inverse DCT
        jinit_inverse_dct(cinfo)
        # Entropy decoding: either Huffman or arithmetic coding.
        if (cinfo.attr_arith_code)
          error
          # ERREXIT(cinfo, JERR_ARITH_NOTIMPL);
        else
          if (cinfo.attr_progressive_mode)
            # #ifdef D_PROGRESSIVE_SUPPORTED
            jinit_phuff_decoder(cinfo)
            # #else
            # ERREXIT(cinfo, JERR_NOT_COMPILED);
            # #endif
          else
            jinit_huff_decoder(cinfo)
          end
        end
        # Initialize principal buffer controllers.
        use_c_buffer = cinfo.attr_inputctl.attr_has_multiple_scans || cinfo.attr_buffered_image
        jinit_d_coef_controller(cinfo, use_c_buffer)
        if (!cinfo.attr_raw_data_out)
          # never need full buffer here
          jinit_d_main_controller(cinfo, false)
        end
        # Initialize input side of decompressor to consume first scan.
        start_input_pass(cinfo)
        # #ifdef D_MULTISCAN_FILES_SUPPORTED
        # If jpeg_start_decompress will read the whole file, initialize
        # progress monitoring appropriately.	The input step is counted
        # as one pass.
        # 
        # if (cinfo.progress != null && ! cinfo.buffered_image &&
        # cinfo.inputctl.has_multiple_scans) {
        # int nscans;
        # /* Estimate number of scans to set pass_limit. */
        # if (cinfo.progressive_mode) {
        # /* Arbitrarily estimate 2 interleaved DC scans + 3 AC scans/component. */
        # nscans = 2 + 3 * cinfo.num_components;
        # } else {
        # /* For a nonprogressive multiscan file, estimate 1 scan per component. */
        # nscans = cinfo.num_components;
        # }
        # cinfo.progress.pass_counter = 0L;
        # cinfo.progress.pass_limit = (long) cinfo.total_iMCU_rows * nscans;
        # cinfo.progress.completed_passes = 0;
        # cinfo.progress.total_passes = (cinfo.enable_2pass_quant ? 3 : 2);
        # /* Count the input pass as done */
        # master.pass_number++;
        # }
        # #endif /* D_MULTISCAN_FILES_SUPPORTED */
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_master_decompress(cinfo)
        master = Jpeg_decomp_master.new
        cinfo.attr_master = master
        # master.prepare_for_output_pass = prepare_for_output_pass;
        # master.finish_output_pass = finish_output_pass;
        master.attr_is_dummy_pass = false
        master_selection(cinfo)
      end
      
      typesig { [Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, ::Java::Int, ::Java::Int] }
      def jcopy_sample_rows(input_array, source_row, output_array, dest_row, num_rows, num_cols)
        # Copy some rows of samples from one place to another.
        # num_rows rows are copied from input_array[source_row++]
        # to output_array[dest_row++]; these areas may overlap for duplication.
        # The source and destination arrays must be at least as wide as num_cols.
        inptr = nil
        outptr = nil
        count = num_cols
        row = 0
        input_array_offset = source_row
        output_array_offset = dest_row
        row = num_rows
        while row > 0
          inptr = input_array[((input_array_offset += 1) - 1)]
          outptr = output_array[((output_array_offset += 1) - 1)]
          System.arraycopy(inptr, 0, outptr, 0, count)
          row -= 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_start_decompress(cinfo)
        if ((cinfo.attr_global_state).equal?(DSTATE_READY))
          # First call: initialize master control, select active modules
          jinit_master_decompress(cinfo)
          if (cinfo.attr_buffered_image)
            # No more work here; expecting jpeg_start_output next
            cinfo.attr_global_state = DSTATE_BUFIMAGE
            return true
          end
          cinfo.attr_global_state = DSTATE_PRELOAD
        end
        if ((cinfo.attr_global_state).equal?(DSTATE_PRELOAD))
          # If file has multiple scans, absorb them all into the coef buffer
          if (cinfo.attr_inputctl.attr_has_multiple_scans)
            # #ifdef D_MULTISCAN_FILES_SUPPORTED
            loop do
              retcode = 0
              # Call progress monitor hook if present
              # if (cinfo.progress != null)
              # (*cinfo.progress.progress_monitor) ((j_common_ptr) cinfo);
              # Absorb some more input
              retcode = consume_input(cinfo)
              if ((retcode).equal?(JPEG_SUSPENDED))
                return false
              end
              if ((retcode).equal?(JPEG_REACHED_EOI))
                break
              end
            end
            # #else
            # ERREXIT(cinfo, JERR_NOT_COMPILED);
            # #endif /* D_MULTISCAN_FILES_SUPPORTED */
          end
          cinfo.attr_output_scan_number = cinfo.attr_input_scan_number
        else
          if (!(cinfo.attr_global_state).equal?(DSTATE_PRESCAN))
            error
          end
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        # Perform any dummy output passes, and set up for the final pass
        return output_pass_setup(cinfo)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def prepare_for_output_pass(cinfo)
        master = cinfo.attr_master
        if (master.attr_is_dummy_pass)
          # #ifdef QUANT_2PASS_SUPPORTED
          # /* Final pass of 2-pass quantization */
          # master.pub.is_dummy_pass = FALSE;
          # (*cinfo.cquantize.start_pass) (cinfo, FALSE);
          # (*cinfo.post.start_pass) (cinfo, JBUF_CRANK_DEST);
          # (*cinfo.main.start_pass) (cinfo, JBUF_CRANK_DEST);
          # #else
          error(SWT::ERROR_NOT_IMPLEMENTED)
          # ERREXIT(cinfo, JERR_NOT_COMPILED);
          # #endif /* QUANT_2PASS_SUPPORTED */
        else
          if (cinfo.attr_quantize_colors && (cinfo.attr_colormap).nil?)
            # Select new quantization method
            if (cinfo.attr_two_pass_quantize && cinfo.attr_enable_2pass_quant)
              cinfo.attr_cquantize = master.attr_quantizer_2pass
              master.attr_is_dummy_pass = true
            else
              if (cinfo.attr_enable_1pass_quant)
                cinfo.attr_cquantize = master.attr_quantizer_1pass
              else
                error
                # ERREXIT(cinfo, JERR_MODE_CHANGE);
              end
            end
          end
          cinfo.attr_idct.start_pass(cinfo)
          start_output_pass(cinfo)
          if (!cinfo.attr_raw_data_out)
            if (!master.attr_using_merged_upsample)
              cinfo.attr_cconvert.start_pass(cinfo)
            end
            cinfo.attr_upsample.start_pass(cinfo)
            if (cinfo.attr_quantize_colors)
              cinfo.attr_cquantize.start_pass(cinfo, master.attr_is_dummy_pass)
            end
            cinfo.attr_post.start_pass(cinfo, (master.attr_is_dummy_pass ? JBUF_SAVE_AND_PASS : JBUF_PASS_THRU))
            cinfo.attr_main.start_pass(cinfo, JBUF_PASS_THRU)
          end
        end
        # /* Set up progress monitor's pass info if present */
        # if (cinfo.progress != NULL) {
        # cinfo.progress.completed_passes = master.pass_number;
        # cinfo.progress.total_passes = master.pass_number +
        # (master.pub.is_dummy_pass ? 2 : 1);
        # /* In buffered-image mode, we assume one more output pass if EOI not
        # * yet reached, but no more passes if EOI has been reached.
        # */
        # if (cinfo.buffered_image && ! cinfo.inputctl.eoi_reached) {
        # cinfo.progress.total_passes += (cinfo.enable_2pass_quant ? 2 : 1);
        # }
        # }
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Int] }
      def jpeg_resync_to_restart(cinfo, desired)
        marker = cinfo.attr_unread_marker
        action = 1
        # Always put up a warning.
        # WARNMS2(cinfo, JWRN_MUST_RESYNC, marker, desired);
        # Outer loop handles repeated decision after scanning forward.
        loop do
          if (marker < M_SOF0)
            action = 2
          # invalid marker
          else
            if (marker < M_RST0 || marker > M_RST7)
              action = 3
            # valid non-restart marker
            else
              if ((marker).equal?((M_RST0 + ((desired + 1) & 7))) || (marker).equal?((M_RST0 + ((desired + 2) & 7))))
                action = 3
              # one of the next two expected restarts
              else
                if ((marker).equal?((M_RST0 + ((desired - 1) & 7))) || (marker).equal?((M_RST0 + ((desired - 2) & 7))))
                  action = 2
                # a prior restart, so advance
                else
                  action = 1
                end
              end
              # desired restart or too far away
            end
          end
          # TRACEMS2(cinfo, 4, JTRC_RECOVERY_ACTION, marker, action);
          case (action)
          when 1
            # Discard marker and let entropy decoder resume processing.
            cinfo.attr_unread_marker = 0
            return true
          when 2
            # Scan to the next marker, and repeat the decision loop.
            if (!next_marker(cinfo))
              return false
            end
            marker = cinfo.attr_unread_marker
          when 3
            # Return without advancing past this marker.
            # Entropy decoder will be forced to process an empty segment.
            return true
          end
        end
        # end loop
      end
      
      typesig { [Jpeg_decompress_struct] }
      def read_restart_marker(cinfo)
        # Obtain a marker unless we already did.
        # Note that next_marker will complain if it skips any data.
        if ((cinfo.attr_unread_marker).equal?(0))
          if (!next_marker(cinfo))
            return false
          end
        end
        if ((cinfo.attr_unread_marker).equal?((M_RST0 + cinfo.attr_marker.attr_next_restart_num)))
          # Normal case --- swallow the marker and let entropy decoder continue
          # TRACEMS1(cinfo, 3, JTRC_RST, cinfo.marker.next_restart_num);
          cinfo.attr_unread_marker = 0
        else
          # Uh-oh, the restart markers have been messed up.
          # Let the data source manager determine how to resync.
          if (!jpeg_resync_to_restart(cinfo, cinfo.attr_marker.attr_next_restart_num))
            return false
          end
        end
        # Update next-restart state
        cinfo.attr_marker.attr_next_restart_num = (cinfo.attr_marker.attr_next_restart_num + 1) & 7
        return true
      end
      
      typesig { [Bitread_working_state, ::Java::Int, ::Java::Int, ::Java::Int] }
      def jpeg_fill_bit_buffer(state, get_buffer, bits_left, nbits)
        # Load up the bit buffer to a depth of at least nbits
        # Copy heavily used state fields into locals (hopefully registers)
        buffer = state.attr_buffer
        bytes_in_buffer = state.attr_bytes_in_buffer
        bytes_offset = state.attr_bytes_offset
        cinfo = state.attr_cinfo
        # Attempt to load at least MIN_GET_BITS bits into get_buffer.
        # (It is assumed that no request will be for more than that many bits.)
        # We fail to do so only if we hit a marker or are forced to suspend.
        if ((cinfo.attr_unread_marker).equal?(0))
          # cannot advance past a marker
          while (bits_left < MIN_GET_BITS)
            c = 0
            # Attempt to read a byte
            if ((bytes_offset).equal?(bytes_in_buffer))
              if (!fill_input_buffer(cinfo))
                return false
              end
              buffer = cinfo.attr_buffer
              bytes_in_buffer = cinfo.attr_bytes_in_buffer
              bytes_offset = cinfo.attr_bytes_offset
            end
            c = buffer[((bytes_offset += 1) - 1)] & 0xff
            # If it's 0xFF, check and discard stuffed zero byte
            if ((c).equal?(0xff))
              # Loop here to discard any padding FF's on terminating marker,
              # so that we can save a valid unread_marker value.	NOTE: we will
              # accept multiple FF's followed by a 0 as meaning a single FF data
              # byte.	This data pattern is not valid according to the standard.
              begin
                if ((bytes_offset).equal?(bytes_in_buffer))
                  if (!fill_input_buffer(cinfo))
                    return false
                  end
                  buffer = cinfo.attr_buffer
                  bytes_in_buffer = cinfo.attr_bytes_in_buffer
                  bytes_offset = cinfo.attr_bytes_offset
                end
                c = buffer[((bytes_offset += 1) - 1)] & 0xff
              end while ((c).equal?(0xff))
              if ((c).equal?(0))
                # Found FF/00, which represents an FF data byte
                c = 0xff
              else
                # Oops, it's actually a marker indicating end of compressed data.
                # Save the marker code for later use.
                # Fine point: it might appear that we should save the marker into
                # bitread working state, not straight into permanent state.	But
                # once we have hit a marker, we cannot need to suspend within the
                # current MCU, because we will read no more bytes from the data
                # source.	So it is OK to update permanent state right away.
                cinfo.attr_unread_marker = c
                # See if we need to insert some fake zero bits.
                # goto no_more_bytes;
                if (nbits > bits_left)
                  # Uh-oh.	Report corrupted data to user and stuff zeroes into
                  # the data stream, so that we can produce some kind of image.
                  # We use a nonvolatile flag to ensure that only one warning message
                  # appears per data segment.
                  if (!cinfo.attr_entropy.attr_insufficient_data)
                    # WARNMS(cinfo, JWRN_HIT_MARKER);
                    cinfo.attr_entropy.attr_insufficient_data = true
                  end
                  # Fill the buffer with zero bits
                  get_buffer <<= MIN_GET_BITS - bits_left
                  bits_left = MIN_GET_BITS
                end
                # Unload the local registers
                state.attr_buffer = buffer
                state.attr_bytes_in_buffer = bytes_in_buffer
                state.attr_bytes_offset = bytes_offset
                state.attr_get_buffer = get_buffer
                state.attr_bits_left = bits_left
                return true
              end
            end
            # OK, load c into get_buffer
            get_buffer = (get_buffer << 8) | c
            bits_left += 8
          end
          # end while
        else
          # no_more_bytes:
          # We get here if we've read the marker that terminates the compressed
          # data segment.	There should be enough bits in the buffer register
          # to satisfy the request; if so, no problem.
          if (nbits > bits_left)
            # Uh-oh.	Report corrupted data to user and stuff zeroes into
            # the data stream, so that we can produce some kind of image.
            # We use a nonvolatile flag to ensure that only one warning message
            # appears per data segment.
            if (!cinfo.attr_entropy.attr_insufficient_data)
              # WARNMS(cinfo, JWRN_HIT_MARKER);
              cinfo.attr_entropy.attr_insufficient_data = true
            end
            # Fill the buffer with zero bits
            get_buffer <<= MIN_GET_BITS - bits_left
            bits_left = MIN_GET_BITS
          end
        end
        # Unload the local registers
        state.attr_buffer = buffer
        state.attr_bytes_in_buffer = bytes_in_buffer
        state.attr_bytes_offset = bytes_offset
        state.attr_get_buffer = get_buffer
        state.attr_bits_left = bits_left
        return true
      end
      
      typesig { [Bitread_working_state, ::Java::Int, ::Java::Int, D_derived_tbl, ::Java::Int] }
      def jpeg_huff_decode(state, get_buffer, bits_left, htbl, min_bits)
        l = min_bits
        code = 0
        # HUFF_DECODE has determined that the code is at least min_bits
        # bits long, so fetch that many bits in one swoop.
        # CHECK_BIT_BUFFER(*state, l, return -1);
        if (bits_left < (l))
          if (!jpeg_fill_bit_buffer(state, get_buffer, bits_left, l))
            return -1
          end
          get_buffer = (state).attr_get_buffer
          bits_left = (state).attr_bits_left
        end
        # code = GET_BITS(l);
        code = (((get_buffer >> (bits_left -= (l)))) & ((1 << (l)) - 1))
        # Collect the rest of the Huffman code one bit at a time.
        # This is per Figure F.16 in the JPEG spec.
        while (code > htbl.attr_maxcode[l])
          code <<= 1
          # CHECK_BIT_BUFFER(*state, 1, return -1);
          if (bits_left < (1))
            if (!jpeg_fill_bit_buffer(state, get_buffer, bits_left, 1))
              return -1
            end
            get_buffer = (state).attr_get_buffer
            bits_left = (state).attr_bits_left
          end
          # code |= GET_BITS(1);
          code |= (((get_buffer >> (bits_left -= (1)))) & ((1 << (1)) - 1))
          l += 1
        end
        # Unload the local registers
        state.attr_get_buffer = get_buffer
        state.attr_bits_left = bits_left
        # With garbage input we may reach the sentinel value l = 17.
        if (l > 16)
          # WARNMS(state.cinfo, JWRN_HUFF_BAD_CODE);
          return 0
          # fake a zero as the safest result
        end
        return htbl.attr_pub.attr_huffval[(code + htbl.attr_valoffset[l])] & 0xff
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int)] }
      def decompress_onepass(cinfo, output_buf, output_buf_offset)
        coef = cinfo.attr_coef
        mcu_col_num = 0
        # index of current MCU within row
        last_mcu_col = cinfo.attr_mcus_per_row - 1
        last_i_mcu_row = cinfo.attr_total_i_mcu_rows - 1
        blkn = 0
        ci = 0
        xindex = 0
        yindex = 0
        yoffset = 0
        useful_width = 0
        output_ptr = nil
        start_col = 0
        output_col = 0
        compptr = nil
        # inverse_DCT_method_ptr inverse_DCT;
        # Loop to process as much as one whole iMCU row
        yoffset = coef.attr_mcu_vert_offset
        while yoffset < coef.attr_mcu_rows_per_i_mcu_row
          mcu_col_num = coef.attr_mcu_ctr
          while mcu_col_num <= last_mcu_col
            # Try to fetch an MCU.	Entropy decoder expects buffer to be zeroed.
            i = 0
            while i < cinfo.attr_blocks_in_mcu
              blk = coef.attr_mcu_buffer[i]
              j = 0
              while j < blk.attr_length
                blk[j] = 0
                j += 1
              end
              i += 1
            end
            if (!cinfo.attr_entropy.decode_mcu(cinfo, coef.attr_mcu_buffer))
              # Suspension forced; update state counters and exit
              coef.attr_mcu_vert_offset = yoffset
              coef.attr_mcu_ctr = mcu_col_num
              return JPEG_SUSPENDED
            end
            # Determine where data should go in output_buf and do the IDCT thing.
            # We skip dummy blocks at the right and bottom edges (but blkn gets
            # incremented past them!).	Note the inner loop relies on having
            # allocated the MCU_buffer[] blocks sequentially.
            blkn = 0
            # index of current DCT block within MCU
            ci = 0
            while ci < cinfo.attr_comps_in_scan
              compptr = cinfo.attr_cur_comp_info[ci]
              # Don't bother to IDCT an uninteresting component.
              if (!compptr.attr_component_needed)
                blkn += compptr.attr_mcu_blocks
                ci += 1
                next
              end
              # inverse_DCT = cinfo.idct.inverse_DCT[compptr.component_index];
              useful_width = (mcu_col_num < last_mcu_col) ? compptr.attr_mcu_width : compptr.attr_last_col_width
              output_ptr = output_buf[compptr.attr_component_index]
              output_ptr_offset = output_buf_offset[compptr.attr_component_index] + yoffset * compptr.attr_dct_scaled_size
              start_col = mcu_col_num * compptr.attr_mcu_sample_width
              yindex = 0
              while yindex < compptr.attr_mcu_height
                if (cinfo.attr_input_i_mcu_row < last_i_mcu_row || yoffset + yindex < compptr.attr_last_row_height)
                  output_col = start_col
                  xindex = 0
                  while xindex < useful_width
                    jpeg_idct_islow(cinfo, compptr, coef.attr_mcu_buffer[blkn + xindex], output_ptr, output_ptr_offset, output_col)
                    output_col += compptr.attr_dct_scaled_size
                    xindex += 1
                  end
                end
                blkn += compptr.attr_mcu_width
                output_ptr_offset += compptr.attr_dct_scaled_size
                yindex += 1
              end
              ci += 1
            end
            mcu_col_num += 1
          end
          # Completed an MCU row, but perhaps not an iMCU row
          coef.attr_mcu_ctr = 0
          yoffset += 1
        end
        # Completed the iMCU row, advance counters for next one
        cinfo.attr_output_i_mcu_row += 1
        if (((cinfo.attr_input_i_mcu_row) += 1) < cinfo.attr_total_i_mcu_rows)
          coef.start_i_mcu_row(cinfo)
          return JPEG_ROW_COMPLETED
        end
        # Completed the scan
        finish_input_pass(cinfo)
        return JPEG_SCAN_COMPLETED
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int)] }
      def decompress_smooth_data(cinfo, output_buf, output_buf_offset)
        coef = cinfo.attr_coef
        last_i_mcu_row = cinfo.attr_total_i_mcu_rows - 1
        block_num = 0
        last_block_column = 0
        ci = 0
        block_row = 0
        block_rows = 0
        access_rows = 0
        buffer = nil
        buffer_ptr = nil
        prev_block_row = nil
        next_block_row = nil
        output_ptr = nil
        output_col = 0
        compptr = nil
        # inverse_DCT_method_ptr inverse_DCT;
        first_row = false
        last_row = false
        workspace = coef.attr_workspace
        if ((workspace).nil?)
          workspace = coef.attr_workspace = Array.typed(::Java::Short).new(DCTSIZE2) { 0 }
        end
        coef_bits = nil
        quanttbl = nil
        q00 = 0
        q01 = 0
        q02 = 0
        q10 = 0
        q11 = 0
        q20 = 0
        num = 0
        dc1 = 0
        dc2 = 0
        dc3 = 0
        dc4 = 0
        dc5 = 0
        dc6 = 0
        dc7 = 0
        dc8 = 0
        dc9 = 0
        al = 0
        pred = 0
        # Force some input to be done if we are getting ahead of the input.
        while (cinfo.attr_input_scan_number <= cinfo.attr_output_scan_number && !cinfo.attr_inputctl.attr_eoi_reached)
          if ((cinfo.attr_input_scan_number).equal?(cinfo.attr_output_scan_number))
            # If input is working on current scan, we ordinarily want it to
            # have completed the current row.	But if input scan is DC,
            # we want it to keep one row ahead so that next block row's DC
            # values are up to date.
            delta = ((cinfo.attr_ss).equal?(0)) ? 1 : 0
            if (cinfo.attr_input_i_mcu_row > cinfo.attr_output_i_mcu_row + delta)
              break
            end
          end
          if ((consume_input(cinfo)).equal?(JPEG_SUSPENDED))
            return JPEG_SUSPENDED
          end
        end
        # OK, output from the virtual arrays.
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          # Don't bother to IDCT an uninteresting component.
          if (!compptr.attr_component_needed)
            ci += 1
            next
          end
          # Count non-dummy DCT block rows in this iMCU row.
          if (cinfo.attr_output_i_mcu_row < last_i_mcu_row)
            block_rows = compptr.attr_v_samp_factor
            access_rows = block_rows * 2
            # this and next iMCU row
            last_row = false
          else
            # NB: can't use last_row_height here; it is input-side-dependent!
            block_rows = (compptr.attr_height_in_blocks % compptr.attr_v_samp_factor)
            if ((block_rows).equal?(0))
              block_rows = compptr.attr_v_samp_factor
            end
            access_rows = block_rows
            # this iMCU row only
            last_row = true
          end
          # Align the virtual buffer for this component.
          buffer_offset = 0
          if (cinfo.attr_output_i_mcu_row > 0)
            access_rows += compptr.attr_v_samp_factor
            # prior iMCU row too
            buffer = coef.attr_whole_image[ci]
            buffer_offset = (cinfo.attr_output_i_mcu_row - 1) * compptr.attr_v_samp_factor
            buffer_offset += compptr.attr_v_samp_factor
            # point to current iMCU row
            first_row = false
          else
            buffer = coef.attr_whole_image[ci]
            buffer_offset = 0
            first_row = true
          end
          # Fetch component-dependent info
          coef_bits = coef.attr_coef_bits_latch
          coef_offset = (ci * SAVED_COEFS)
          quanttbl = compptr.attr_quant_table
          q00 = quanttbl.attr_quantval[0]
          q01 = quanttbl.attr_quantval[Q01_POS]
          q10 = quanttbl.attr_quantval[Q10_POS]
          q20 = quanttbl.attr_quantval[Q20_POS]
          q11 = quanttbl.attr_quantval[Q11_POS]
          q02 = quanttbl.attr_quantval[Q02_POS]
          # inverse_DCT = cinfo.idct.inverse_DCT[ci];
          output_ptr = output_buf[ci]
          output_ptr_offset = output_buf_offset[ci]
          # Loop over all DCT blocks to be processed.
          block_row = 0
          while block_row < block_rows
            buffer_ptr = buffer[block_row + buffer_offset]
            buffer_ptr_offset = 0
            prev_block_row_offset = 0
            next_block_row_offset = 0
            if (first_row && (block_row).equal?(0))
              prev_block_row = buffer_ptr
              prev_block_row_offset = buffer_ptr_offset
            else
              prev_block_row = buffer[block_row - 1 + buffer_offset]
              prev_block_row_offset = 0
            end
            if (last_row && (block_row).equal?(block_rows - 1))
              next_block_row = buffer_ptr
              next_block_row_offset = buffer_ptr_offset
            else
              next_block_row = buffer[block_row + 1 + buffer_offset]
              next_block_row_offset = 0
            end
            # We fetch the surrounding DC values using a sliding-register approach.
            # Initialize all nine here so as to do the right thing on narrow pics.
            dc1 = dc2 = dc3 = prev_block_row[0 + prev_block_row_offset][0]
            dc4 = dc5 = dc6 = buffer_ptr[0 + buffer_ptr_offset][0]
            dc7 = dc8 = dc9 = next_block_row[0 + next_block_row_offset][0]
            output_col = 0
            last_block_column = compptr.attr_width_in_blocks - 1
            block_num = 0
            while block_num <= last_block_column
              # Fetch current DCT block into workspace so we can modify it.
              # jcopy_block_row(buffer_ptr, workspace, 1);
              System.arraycopy(buffer_ptr[buffer_ptr_offset], 0, workspace, 0, workspace.attr_length)
              # Update DC values
              if (block_num < last_block_column)
                dc3 = prev_block_row[1 + prev_block_row_offset][0]
                dc6 = buffer_ptr[1 + buffer_ptr_offset][0]
                dc9 = next_block_row[1 + next_block_row_offset][0]
              end
              # Compute coefficient estimates per K.8.
              # An estimate is applied only if coefficient is still zero,
              # and is not known to be fully accurate.
              # 
              # AC01
              if (!((al = coef_bits[1 + coef_offset])).equal?(0) && (workspace[1]).equal?(0))
                num = 36 * q00 * (dc4 - dc6)
                if (num >= 0)
                  pred = (((q01 << 7) + num) / (q01 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                else
                  pred = (((q01 << 7) - num) / (q01 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                  pred = -pred
                end
                workspace[1] = RJava.cast_to_short(pred)
              end
              # AC10
              if (!((al = coef_bits[2 + coef_offset])).equal?(0) && (workspace[8]).equal?(0))
                num = 36 * q00 * (dc2 - dc8)
                if (num >= 0)
                  pred = (((q10 << 7) + num) / (q10 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                else
                  pred = (((q10 << 7) - num) / (q10 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                  pred = -pred
                end
                workspace[8] = RJava.cast_to_short(pred)
              end
              # AC20
              if (!((al = coef_bits[3 + coef_offset])).equal?(0) && (workspace[16]).equal?(0))
                num = 9 * q00 * (dc2 + dc8 - 2 * dc5)
                if (num >= 0)
                  pred = (((q20 << 7) + num) / (q20 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                else
                  pred = (((q20 << 7) - num) / (q20 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                  pred = -pred
                end
                workspace[16] = RJava.cast_to_short(pred)
              end
              # AC11
              if (!((al = coef_bits[4 + coef_offset])).equal?(0) && (workspace[9]).equal?(0))
                num = 5 * q00 * (dc1 - dc3 - dc7 + dc9)
                if (num >= 0)
                  pred = (((q11 << 7) + num) / (q11 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                else
                  pred = (((q11 << 7) - num) / (q11 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                  pred = -pred
                end
                workspace[9] = RJava.cast_to_short(pred)
              end
              # AC02
              if (!((al = coef_bits[5 + coef_offset])).equal?(0) && (workspace[2]).equal?(0))
                num = 9 * q00 * (dc4 + dc6 - 2 * dc5)
                if (num >= 0)
                  pred = (((q02 << 7) + num) / (q02 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                else
                  pred = (((q02 << 7) - num) / (q02 << 8))
                  if (al > 0 && pred >= (1 << al))
                    pred = (1 << al) - 1
                  end
                  pred = -pred
                end
                workspace[2] = RJava.cast_to_short(pred)
              end
              # OK, do the IDCT
              jpeg_idct_islow(cinfo, compptr, workspace, output_ptr, output_ptr_offset, output_col)
              # Advance for next column
              dc1 = dc2
              dc2 = dc3
              dc4 = dc5
              dc5 = dc6
              dc7 = dc8
              dc8 = dc9
              buffer_ptr_offset += 1
              prev_block_row_offset += 1
              next_block_row_offset += 1
              output_col += compptr.attr_dct_scaled_size
              block_num += 1
            end
            output_ptr_offset += compptr.attr_dct_scaled_size
            block_row += 1
          end
          ci += 1
        end
        if (((cinfo.attr_output_i_mcu_row) += 1) < cinfo.attr_total_i_mcu_rows)
          return JPEG_ROW_COMPLETED
        end
        return JPEG_SCAN_COMPLETED
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int)] }
      def decompress_data(cinfo, output_buf, output_buf_offset)
        coef = cinfo.attr_coef
        last_i_mcu_row = cinfo.attr_total_i_mcu_rows - 1
        block_num = 0
        ci = 0
        block_row = 0
        block_rows = 0
        buffer = nil
        buffer_ptr = nil
        output_ptr = nil
        output_col = 0
        compptr = nil
        # inverse_DCT_method_ptr inverse_DCT;
        # Force some input to be done if we are getting ahead of the input.
        while (cinfo.attr_input_scan_number < cinfo.attr_output_scan_number || ((cinfo.attr_input_scan_number).equal?(cinfo.attr_output_scan_number) && cinfo.attr_input_i_mcu_row <= cinfo.attr_output_i_mcu_row))
          if ((consume_input(cinfo)).equal?(JPEG_SUSPENDED))
            return JPEG_SUSPENDED
          end
        end
        # OK, output from the virtual arrays.
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          # Don't bother to IDCT an uninteresting component.
          if (!compptr.attr_component_needed)
            ci += 1
            next
          end
          # Align the virtual buffer for this component.
          buffer = coef.attr_whole_image[ci]
          buffer_offset = cinfo.attr_output_i_mcu_row * compptr.attr_v_samp_factor
          # Count non-dummy DCT block rows in this iMCU row.
          if (cinfo.attr_output_i_mcu_row < last_i_mcu_row)
            block_rows = compptr.attr_v_samp_factor
          else
            # NB: can't use last_row_height here; it is input-side-dependent!
            block_rows = (compptr.attr_height_in_blocks % compptr.attr_v_samp_factor)
            if ((block_rows).equal?(0))
              block_rows = compptr.attr_v_samp_factor
            end
          end
          # inverse_DCT = cinfo.idct.inverse_DCT[ci];
          output_ptr = output_buf[ci]
          output_ptr_offset = output_buf_offset[ci]
          # Loop over all DCT blocks to be processed.
          block_row = 0
          while block_row < block_rows
            buffer_ptr = buffer[block_row + buffer_offset]
            buffer_ptr_offset = 0
            output_col = 0
            block_num = 0
            while block_num < compptr.attr_width_in_blocks
              jpeg_idct_islow(cinfo, compptr, buffer_ptr[buffer_ptr_offset], output_ptr, output_ptr_offset, output_col)
              buffer_ptr_offset += 1
              output_col += compptr.attr_dct_scaled_size
              block_num += 1
            end
            output_ptr_offset += compptr.attr_dct_scaled_size
            block_row += 1
          end
          ci += 1
        end
        if (((cinfo.attr_output_i_mcu_row) += 1) < cinfo.attr_total_i_mcu_rows)
          return JPEG_ROW_COMPLETED
        end
        return JPEG_SCAN_COMPLETED
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), Array.typed(::Java::Int), ::Java::Int] }
      def post_process_data(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail)
        upsample(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def set_bottom_pointers(cinfo)
        # Change the pointer lists to duplicate the last sample row at the bottom
        # of the image.	whichptr indicates which xbuffer holds the final iMCU row.
        # Also sets rowgroups_avail to indicate number of nondummy row groups in row.
        main = cinfo.attr_main
        ci = 0
        i = 0
        rgroup = 0
        i_mcuheight = 0
        rows_left = 0
        compptr = nil
        xbuf = nil
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          # Count sample rows in one iMCU row and in one row group
          i_mcuheight = compptr.attr_v_samp_factor * compptr.attr_dct_scaled_size
          rgroup = i_mcuheight / cinfo.attr_min_dct_scaled_size
          # Count nondummy sample rows remaining for this component
          rows_left = (compptr.attr_downsampled_height % i_mcuheight)
          if ((rows_left).equal?(0))
            rows_left = i_mcuheight
          end
          # Count nondummy row groups.	Should get same answer for each component,
          # so we need only do it once.
          if ((ci).equal?(0))
            main.attr_rowgroups_avail = ((rows_left - 1) / rgroup + 1)
          end
          # Duplicate the last real sample row rgroup*2 times; this pads out the
          # last partial rowgroup and ensures at least one full rowgroup of context.
          xbuf = main.attr_xbuffer[main.attr_whichptr][ci]
          xbuf_offset = main.attr_xbuffer_offset[main.attr_whichptr][ci]
          i = 0
          while i < rgroup * 2
            xbuf[rows_left + i + xbuf_offset] = xbuf[rows_left - 1 + xbuf_offset]
            i += 1
          end
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def set_wraparound_pointers(cinfo)
        # Set up the "wraparound" pointers at top and bottom of the pointer lists.
        # This changes the pointer list state from top-of-image to the normal state.
        main = cinfo.attr_main
        ci = 0
        i = 0
        rgroup = 0
        m = cinfo.attr_min_dct_scaled_size
        compptr = nil
        xbuf0 = nil
        xbuf1 = nil
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          rgroup = (compptr.attr_v_samp_factor * compptr.attr_dct_scaled_size) / cinfo.attr_min_dct_scaled_size
          # height of a row group of component
          xbuf0 = main.attr_xbuffer[0][ci]
          xbuf0_offset = main.attr_xbuffer_offset[0][ci]
          xbuf1 = main.attr_xbuffer[1][ci]
          xbuf1_offset = main.attr_xbuffer_offset[1][ci]
          i = 0
          while i < rgroup
            xbuf0[i - rgroup + xbuf0_offset] = xbuf0[rgroup * (m + 1) + i + xbuf0_offset]
            xbuf1[i - rgroup + xbuf1_offset] = xbuf1[rgroup * (m + 1) + i + xbuf1_offset]
            xbuf0[rgroup * (m + 2) + i + xbuf0_offset] = xbuf0[i + xbuf0_offset]
            xbuf1[rgroup * (m + 2) + i + xbuf1_offset] = xbuf1[i + xbuf1_offset]
            i += 1
          end
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Byte)), Array.typed(::Java::Int), ::Java::Int] }
      def process_data_crank_post(cinfo, output_buf, out_row_ctr, out_rows_avail)
        error
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Byte)), Array.typed(::Java::Int), ::Java::Int] }
      def process_data_context_main(cinfo, output_buf, out_row_ctr, out_rows_avail)
        main = cinfo.attr_main
        # Read input data if we haven't filled the main buffer yet
        if (!main.attr_buffer_full)
          result = 0
          case (cinfo.attr_coef.attr_decompress_data)
          when DECOMPRESS_DATA
            result = decompress_data(cinfo, main.attr_xbuffer[main.attr_whichptr], main.attr_xbuffer_offset[main.attr_whichptr])
          when DECOMPRESS_SMOOTH_DATA
            result = decompress_smooth_data(cinfo, main.attr_xbuffer[main.attr_whichptr], main.attr_xbuffer_offset[main.attr_whichptr])
          when DECOMPRESS_ONEPASS
            result = decompress_onepass(cinfo, main.attr_xbuffer[main.attr_whichptr], main.attr_xbuffer_offset[main.attr_whichptr])
          else
            result = 0
          end
          if ((result).equal?(0))
            return
          end
          # suspension forced, can do nothing more
          main.attr_buffer_full = true
          # OK, we have an iMCU row to work with
          main.attr_i_mcu_row_ctr += 1
          # count rows received
        end
        # Postprocessor typically will not swallow all the input data it is handed
        # in one call (due to filling the output buffer first).	Must be prepared
        # to exit and restart.	This switch lets us keep track of how far we got.
        # Note that each case falls through to the next on successful completion.
        case (main.attr_context_state)
        # Postprocessor exactly filled output buf
        # FALLTHROUGH
        # FALLTHROUGH
        when CTX_POSTPONED_ROW
          # Call postprocessor using previously set pointers for postponed row
          post_process_data(cinfo, main.attr_xbuffer[main.attr_whichptr], main.attr_xbuffer_offset[main.attr_whichptr], main.attr_rowgroup_ctr, main.attr_rowgroups_avail, output_buf, out_row_ctr, out_rows_avail)
          if (main.attr_rowgroup_ctr[0] < main.attr_rowgroups_avail)
            return
          end
          # Need to suspend
          main.attr_context_state = CTX_PREPARE_FOR_IMCU
          if (out_row_ctr[0] >= out_rows_avail)
            return
          end
        when CTX_PREPARE_FOR_IMCU
          # Prepare to process first M-1 row groups of this iMCU row
          main.attr_rowgroup_ctr[0] = 0
          main.attr_rowgroups_avail = (cinfo.attr_min_dct_scaled_size - 1)
          # Check for bottom of image: if so, tweak pointers to "duplicate"
          # the last sample row, and adjust rowgroups_avail to ignore padding rows.
          if ((main.attr_i_mcu_row_ctr).equal?(cinfo.attr_total_i_mcu_rows))
            set_bottom_pointers(cinfo)
          end
          main.attr_context_state = CTX_PROCESS_IMCU
          # Call postprocessor using previously set pointers
          post_process_data(cinfo, main.attr_xbuffer[main.attr_whichptr], main.attr_xbuffer_offset[main.attr_whichptr], main.attr_rowgroup_ctr, main.attr_rowgroups_avail, output_buf, out_row_ctr, out_rows_avail)
          if (main.attr_rowgroup_ctr[0] < main.attr_rowgroups_avail)
            return
          end
          # Need to suspend
          # After the first iMCU, change wraparound pointers to normal state
          if ((main.attr_i_mcu_row_ctr).equal?(1))
            set_wraparound_pointers(cinfo)
          end
          # Prepare to load new iMCU row using other xbuffer list
          main.attr_whichptr ^= 1
          # 0=>1 or 1=>0
          main.attr_buffer_full = false
          # Still need to process last row group of this iMCU row,
          # which is saved at index M+1 of the other xbuffer
          main.attr_rowgroup_ctr[0] = (cinfo.attr_min_dct_scaled_size + 1)
          main.attr_rowgroups_avail = (cinfo.attr_min_dct_scaled_size + 2)
          main.attr_context_state = CTX_POSTPONED_ROW
        when CTX_PROCESS_IMCU
          # Call postprocessor using previously set pointers
          post_process_data(cinfo, main.attr_xbuffer[main.attr_whichptr], main.attr_xbuffer_offset[main.attr_whichptr], main.attr_rowgroup_ctr, main.attr_rowgroups_avail, output_buf, out_row_ctr, out_rows_avail)
          if (main.attr_rowgroup_ctr[0] < main.attr_rowgroups_avail)
            return
          end
          # Need to suspend
          # After the first iMCU, change wraparound pointers to normal state
          if ((main.attr_i_mcu_row_ctr).equal?(1))
            set_wraparound_pointers(cinfo)
          end
          # Prepare to load new iMCU row using other xbuffer list
          main.attr_whichptr ^= 1
          # 0=>1 or 1=>0
          main.attr_buffer_full = false
          # Still need to process last row group of this iMCU row,
          # which is saved at index M+1 of the other xbuffer
          main.attr_rowgroup_ctr[0] = (cinfo.attr_min_dct_scaled_size + 1)
          main.attr_rowgroups_avail = (cinfo.attr_min_dct_scaled_size + 2)
          main.attr_context_state = CTX_POSTPONED_ROW
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Byte)), Array.typed(::Java::Int), ::Java::Int] }
      def process_data_simple_main(cinfo, output_buf, out_row_ctr, out_rows_avail)
        main = cinfo.attr_main
        rowgroups_avail = 0
        # Read input data if we haven't filled the main buffer yet
        if (!main.attr_buffer_full)
          result = 0
          case (cinfo.attr_coef.attr_decompress_data)
          when DECOMPRESS_DATA
            result = decompress_data(cinfo, main.attr_buffer, main.attr_buffer_offset)
          when DECOMPRESS_SMOOTH_DATA
            result = decompress_smooth_data(cinfo, main.attr_buffer, main.attr_buffer_offset)
          when DECOMPRESS_ONEPASS
            result = decompress_onepass(cinfo, main.attr_buffer, main.attr_buffer_offset)
          else
            result = 0
          end
          if ((result).equal?(0))
            return
          end
          # suspension forced, can do nothing more
          main.attr_buffer_full = true
          # OK, we have an iMCU row to work with
        end
        # There are always min_DCT_scaled_size row groups in an iMCU row.
        rowgroups_avail = cinfo.attr_min_dct_scaled_size
        # Note: at the bottom of the image, we may pass extra garbage row groups
        # to the postprocessor.	The postprocessor has to check for bottom
        # of image anyway (at row resolution), so no point in us doing it too.
        # 
        # Feed the postprocessor
        post_process_data(cinfo, main.attr_buffer, main.attr_buffer_offset, main.attr_rowgroup_ctr, rowgroups_avail, output_buf, out_row_ctr, out_rows_avail)
        # Has postprocessor consumed all the data yet? If so, mark buffer empty
        if (main.attr_rowgroup_ctr[0] >= rowgroups_avail)
          main.attr_buffer_full = false
          main.attr_rowgroup_ctr[0] = 0
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(::Java::Byte)), ::Java::Int] }
      def jpeg_read_scanlines(cinfo, scanlines, max_lines)
        if (!(cinfo.attr_global_state).equal?(DSTATE_SCANNING))
          error
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        if (cinfo.attr_output_scanline >= cinfo.attr_output_height)
          # WARNMS(cinfo, JWRN_TOO_MUCH_DATA);
          return 0
        end
        # Call progress monitor hook if present
        # if (cinfo.progress != NULL) {
        # cinfo.progress.pass_counter = (long) cinfo.output_scanline;
        # cinfo.progress.pass_limit = (long) cinfo.output_height;
        # (*cinfo.progress.progress_monitor) ((j_common_ptr) cinfo);
        # }
        # Process some data
        cinfo.attr_row_ctr[0] = 0
        case (cinfo.attr_main.attr_process_data)
        when PROCESS_DATA_SIMPLE_MAIN
          process_data_simple_main(cinfo, scanlines, cinfo.attr_row_ctr, max_lines)
        when PROCESS_DATA_CONTEXT_MAIN
          process_data_context_main(cinfo, scanlines, cinfo.attr_row_ctr, max_lines)
        when PROCESS_DATA_CRANK_POST
          process_data_crank_post(cinfo, scanlines, cinfo.attr_row_ctr, max_lines)
        else
          error
        end
        cinfo.attr_output_scanline += cinfo.attr_row_ctr[0]
        return cinfo.attr_row_ctr[0]
      end
      
      typesig { [Jpeg_decompress_struct] }
      def output_pass_setup(cinfo)
        if (!(cinfo.attr_global_state).equal?(DSTATE_PRESCAN))
          # First call: do pass setup
          prepare_for_output_pass(cinfo)
          cinfo.attr_output_scanline = 0
          cinfo.attr_global_state = DSTATE_PRESCAN
        end
        # Loop over any required dummy passes
        while (cinfo.attr_master.attr_is_dummy_pass)
          error
        end
        # Ready for application to drive output pass through
        # jpeg_read_scanlines or jpeg_read_raw_data.
        cinfo.attr_global_state = cinfo.attr_raw_data_out ? DSTATE_RAW_OK : DSTATE_SCANNING
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_dht(cinfo)
        # Process a DHT marker
        length = 0
        bits = Array.typed(::Java::Byte).new(17) { 0 }
        huffval = Array.typed(::Java::Byte).new(256) { 0 }
        i = 0
        index = 0
        count = 0
        htblptr = nil
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        length -= 2
        while (length > 16)
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          index = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          # TRACEMS1(cinfo, 1, JTRC_DHT, index);
          bits[0] = 0
          count = 0
          i = 1
          while i <= 16
            if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
              fill_input_buffer(cinfo)
            end
            bits[i] = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)]
            count += bits[i] & 0xff
            i += 1
          end
          length -= 1 + 16
          # TRACEMS8(cinfo, 2, JTRC_HUFFBITS,
          # bits[1], bits[2], bits[3], bits[4],
          # bits[5], bits[6], bits[7], bits[8]);
          # TRACEMS8(cinfo, 2, JTRC_HUFFBITS,
          # bits[9], bits[10], bits[11], bits[12],
          # bits[13], bits[14], bits[15], bits[16]);
          # Here we just do minimal validation of the counts to avoid walking
          # off the end of our table space.	jdhuff.c will check more carefully.
          if (count > 256 || (count) > length)
            error
          end
          # ERREXIT(cinfo, JERR_BAD_HUFF_TABLE);
          i = 0
          while i < count
            if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
              fill_input_buffer(cinfo)
            end
            huffval[i] = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)]
            i += 1
          end
          length -= count
          if (!((index & 0x10)).equal?(0))
            # AC table definition
            index -= 0x10
            htblptr = cinfo.attr_ac_huff_tbl_ptrs[index] = JHUFF_TBL.new
          else
            # DC table definition
            htblptr = cinfo.attr_dc_huff_tbl_ptrs[index] = JHUFF_TBL.new
          end
          if (index < 0 || index >= NUM_HUFF_TBLS)
            error
          end
          # ERREXIT1(cinfo, JERR_DHT_INDEX, index);
          System.arraycopy(bits, 0, htblptr.attr_bits, 0, bits.attr_length)
          System.arraycopy(huffval, 0, htblptr.attr_huffval, 0, huffval.attr_length)
        end
        if (!(length).equal?(0))
          error
        end
        # ERREXIT(cinfo, JERR_BAD_LENGTH);
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_dqt(cinfo)
        # Process a DQT marker
        length = 0
        n = 0
        i = 0
        prec = 0
        tmp = 0
        quant_ptr = nil
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        length -= 2
        while (length > 0)
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          n = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          prec = n >> 4
          n &= 0xf
          # TRACEMS2(cinfo, 1, JTRC_DQT, n, prec);
          if (n >= NUM_QUANT_TBLS)
            error
          end
          # ERREXIT1(cinfo, JERR_DQT_INDEX, n);
          if ((cinfo.attr_quant_tbl_ptrs[n]).nil?)
            cinfo.attr_quant_tbl_ptrs[n] = JQUANT_TBL.new
          end
          quant_ptr = cinfo.attr_quant_tbl_ptrs[n]
          i = 0
          while i < DCTSIZE2
            if (!(prec).equal?(0))
              if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
                fill_input_buffer(cinfo)
              end
              tmp = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
              if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
                fill_input_buffer(cinfo)
              end
              tmp |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
            else
              if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
                fill_input_buffer(cinfo)
              end
              tmp = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
            end
            # We convert the zigzag-order table to natural array order.
            quant_ptr.attr_quantval[self.attr_jpeg_natural_order[i]] = RJava.cast_to_short(tmp)
            i += 1
          end
          # if (cinfo.err.trace_level >= 2) {
          # for (i = 0; i < DCTSIZE2; i += 8) {
          # TRACEMS8(cinfo, 2, JTRC_QUANTVALS,
          # quant_ptr.quantval[i],	 quant_ptr.quantval[i+1],
          # quant_ptr.quantval[i+2], quant_ptr.quantval[i+3],
          # quant_ptr.quantval[i+4], quant_ptr.quantval[i+5],
          # quant_ptr.quantval[i+6], quant_ptr.quantval[i+7]);
          # }
          # }
          length -= (DCTSIZE2 + 1)
          if (!(prec).equal?(0))
            length -= DCTSIZE2
          end
        end
        if (!(length).equal?(0))
          error
        end
        # ERREXIT(cinfo, JERR_BAD_LENGTH);
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_dri(cinfo)
        # Process a DRI marker
        length = 0
        tmp = 0
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if (!(length).equal?(4))
          error
        end
        # ERREXIT(cinfo, JERR_BAD_LENGTH);
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        tmp = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        tmp |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        # TRACEMS1(cinfo, 1, JTRC_DRI, tmp);
        cinfo.attr_restart_interval = tmp
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_dac(cinfo)
        # Process a DAC marker
        length = 0
        index = 0
        val = 0
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        length -= 2
        while (length > 0)
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          index = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          val = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          length -= 2
          # TRACEMS2(cinfo, 1, JTRC_DAC, index, val);
          if (index < 0 || index >= (2 * NUM_ARITH_TBLS))
            error
          end
          # ERREXIT1(cinfo, JERR_DAC_INDEX, index);
          if (index >= NUM_ARITH_TBLS)
            # define AC table
            cinfo.attr_arith_ac_k[index - NUM_ARITH_TBLS] = val
          else
            # define DC table
            cinfo.attr_arith_dc_l[index] = (val & 0xf)
            cinfo.attr_arith_dc_u[index] = (val >> 4)
            if (cinfo.attr_arith_dc_l[index] > cinfo.attr_arith_dc_u[index])
              error
            end
            # ERREXIT1(cinfo, JERR_DAC_VALUE, val);
          end
        end
        if (!(length).equal?(0))
          error
        end
        # ERREXIT(cinfo, JERR_BAD_LENGTH);
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_sos(cinfo)
        # Process a SOS marker
        length = 0
        i = 0
        ci = 0
        n = 0
        c = 0
        cc = 0
        compptr = nil
        if (!cinfo.attr_marker.attr_saw_sof)
          error
        end
        # ERREXIT(cinfo, JERR_SOS_NO_SOF);
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        n = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        # TRACEMS1(cinfo, 1, JTRC_SOS, n);
        if (!(length).equal?((n * 2 + 6)) || n < 1 || n > MAX_COMPS_IN_SCAN)
          error
        end
        # ERREXIT(cinfo, JERR_BAD_LENGTH);
        cinfo.attr_comps_in_scan = n
        # Collect the component-spec parameters
        i = 0
        while i < n
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          cc = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          ci = 0
          while ci < cinfo.attr_num_components
            compptr = cinfo.attr_comp_info[ci]
            if ((cc).equal?(compptr.attr_component_id))
              break
            end
            ci += 1
          end
          if ((ci).equal?(cinfo.attr_num_components))
            error
          end
          # ERREXIT1(cinfo, JERR_BAD_COMPONENT_ID, cc);
          cinfo.attr_cur_comp_info[i] = compptr
          compptr.attr_dc_tbl_no = (c >> 4) & 15
          compptr.attr_ac_tbl_no = (c) & 15
          i += 1
        end
        # Collect the additional scan parameters Ss, Se, Ah/Al.
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        cinfo.attr_ss = c
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        cinfo.attr_se = c
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        cinfo.attr_ah = (c >> 4) & 15
        cinfo.attr_al = (c) & 15
        # TRACEMS4(cinfo, 1, JTRC_SOS_PARAMS, cinfo.Ss, cinfo.Se, cinfo.Ah, cinfo.Al);
        # Prepare to scan data & restart markers
        cinfo.attr_marker.attr_next_restart_num = 0
        # Count another SOS marker
        cinfo.attr_input_scan_number += 1
        return true
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Boolean, ::Java::Boolean] }
      def get_sof(cinfo, is_prog, is_arith)
        length = 0
        c = 0
        ci = 0
        cinfo.attr_progressive_mode = is_prog
        cinfo.attr_arith_code = is_arith
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        cinfo.attr_data_precision = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        cinfo.attr_image_height = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        cinfo.attr_image_height |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        cinfo.attr_image_width = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        cinfo.attr_image_width |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        cinfo.attr_num_components = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        length -= 8
        # TRACEMS4(cinfo, 1, JTRC_SOF, cinfo.unread_marker,
        # (int) cinfo.image_width, (int) cinfo.image_height,
        # cinfo.num_components);
        if (cinfo.attr_marker.attr_saw_sof)
          error
        end
        # ERREXIT(cinfo, JERR_SOF_DUPLICATE);
        # We don't support files in which the image height is initially specified
        # as 0 and is later redefined by DNL.	As long as we have to check that,
        # might as well have a general sanity check.
        if (cinfo.attr_image_height <= 0 || cinfo.attr_image_width <= 0 || cinfo.attr_num_components <= 0)
          error
        end
        # ERREXIT(cinfo, JERR_EMPTY_IMAGE);
        if (!(length).equal?((cinfo.attr_num_components * 3)))
          error
        end
        # ERREXIT(cinfo, JERR_BAD_LENGTH);
        if ((cinfo.attr_comp_info).nil?)
          # do only once, even if suspend
          cinfo.attr_comp_info = Array.typed(Jpeg_component_info).new(cinfo.attr_num_components) { nil }
        end
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci] = Jpeg_component_info.new
          compptr.attr_component_index = ci
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          compptr.attr_component_id = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          compptr.attr_h_samp_factor = (c >> 4) & 15
          compptr.attr_v_samp_factor = (c) & 15
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          compptr.attr_quant_tbl_no = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          ci += 1
        end
        cinfo.attr_marker.attr_saw_sof = true
        return true
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), Array.typed(::Java::Int), ::Java::Int] }
      def sep_upsample(cinfo, input_buf, input_buf_offset, in_row_group_ctr, in_row_groups_avail, output_buf, out_row_ctr, out_rows_avail)
        upsample_ = cinfo.attr_upsample
        ci = 0
        compptr = nil
        num_rows = 0
        # Fill the conversion buffer, if it's empty
        if (upsample_.attr_next_row_out >= cinfo.attr_max_v_samp_factor)
          ci = 0
          while ci < cinfo.attr_num_components
            compptr = cinfo.attr_comp_info[ci]
            # Invoke per-component upsample method.	Notice we pass a POINTER
            # to color_buf[ci], so that fullsize_upsample can change it.
            offset = input_buf_offset[ci] + (in_row_group_ctr[0] * upsample_.attr_rowgroup_height[ci])
            case (upsample_.attr_methods[ci])
            when NOOP_UPSAMPLE
              noop_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            when FULLSIZE_UPSAMPLE
              fullsize_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            when H2V1_FANCY_UPSAMPLE
              h2v1_fancy_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            when H2V1_UPSAMPLE
              h2v1_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            when H2V2_FANCY_UPSAMPLE
              h2v2_fancy_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            when H2V2_UPSAMPLE
              h2v2_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            when INT_UPSAMPLE
              int_upsample(cinfo, compptr, input_buf[ci], offset, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, ci)
            end
            ci += 1
          end
          upsample_.attr_next_row_out = 0
        end
        # Color-convert and emit rows
        # How many we have in the buffer:
        num_rows = (cinfo.attr_max_v_samp_factor - upsample_.attr_next_row_out)
        # Not more than the distance to the end of the image.	Need this test
        # in case the image height is not a multiple of max_v_samp_factor:
        if (num_rows > upsample_.attr_rows_to_go)
          num_rows = upsample_.attr_rows_to_go
        end
        # And not more than what the client can accept:
        out_rows_avail -= out_row_ctr[0]
        if (num_rows > out_rows_avail)
          num_rows = out_rows_avail
        end
        case (cinfo.attr_cconvert.attr_color_convert)
        when NULL_CONVERT
          null_convert(cinfo, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, upsample_.attr_next_row_out, output_buf, out_row_ctr[0], num_rows)
        when GRAYSCALE_CONVERT
          grayscale_convert(cinfo, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, upsample_.attr_next_row_out, output_buf, out_row_ctr[0], num_rows)
        when YCC_RGB_CONVERT
          ycc_rgb_convert(cinfo, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, upsample_.attr_next_row_out, output_buf, out_row_ctr[0], num_rows)
        when GRAY_RGB_CONVERT
          gray_rgb_convert(cinfo, upsample_.attr_color_buf, upsample_.attr_color_buf_offset, upsample_.attr_next_row_out, output_buf, out_row_ctr[0], num_rows)
        when YCCK_CMYK_CONVERT
          error
        end
        # Adjust counts
        out_row_ctr[0] += num_rows
        upsample_.attr_rows_to_go -= num_rows
        upsample_.attr_next_row_out += num_rows
        # When the buffer is emptied, declare this input row group consumed
        if (upsample_.attr_next_row_out >= cinfo.attr_max_v_samp_factor)
          in_row_group_ctr[0] += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def noop_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        output_data_ptr[output_data_index] = nil
        # safety check
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def fullsize_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        output_data_ptr[output_data_index] = input_data
        output_data_offset[output_data_index] = input_data_offset
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def h2v1_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        output_data = output_data_ptr[output_data_index]
        inptr = nil
        outptr = nil
        invalue = 0
        outend = 0
        inrow = 0
        output_data_offset[output_data_index] = 0
        inrow = 0
        while inrow < cinfo.attr_max_v_samp_factor
          inptr = input_data[inrow + input_data_offset]
          outptr = output_data[inrow]
          inptr_offset = 0
          outptr_offset = 0
          outend = outptr_offset + cinfo.attr_output_width
          while (outptr_offset < outend)
            invalue = inptr[((inptr_offset += 1) - 1)]
            # don't need GETJSAMPLE() here
            outptr[((outptr_offset += 1) - 1)] = invalue
            outptr[((outptr_offset += 1) - 1)] = invalue
          end
          inrow += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def h2v2_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        output_data = output_data_ptr[output_data_index]
        inptr = nil
        outptr = nil
        invalue = 0
        outend = 0
        inrow = 0
        outrow = 0
        output_data_offset[output_data_index] = 0
        inrow = outrow = 0
        while (outrow < cinfo.attr_max_v_samp_factor)
          inptr = input_data[inrow + input_data_offset]
          outptr = output_data[outrow]
          inptr_offset = 0
          outptr_offset = 0
          outend = outptr_offset + cinfo.attr_output_width
          while (outptr_offset < outend)
            invalue = inptr[((inptr_offset += 1) - 1)]
            # don't need GETJSAMPLE() here
            outptr[((outptr_offset += 1) - 1)] = invalue
            outptr[((outptr_offset += 1) - 1)] = invalue
          end
          jcopy_sample_rows(output_data, outrow, output_data, outrow + 1, 1, cinfo.attr_output_width)
          inrow += 1
          outrow += 2
        end
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def h2v1_fancy_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        output_data = output_data_ptr[output_data_index]
        inptr = nil
        outptr = nil
        invalue = 0
        colctr = 0
        inrow = 0
        output_data_offset[output_data_index] = 0
        inrow = 0
        while inrow < cinfo.attr_max_v_samp_factor
          inptr = input_data[inrow + input_data_offset]
          outptr = output_data[inrow]
          inptr_offset = 0
          outptr_offset = 0
          # Special case for first column
          invalue = inptr[((inptr_offset += 1) - 1)] & 0xff
          outptr[((outptr_offset += 1) - 1)] = invalue
          outptr[((outptr_offset += 1) - 1)] = ((invalue * 3 + (inptr[inptr_offset] & 0xff) + 2) >> 2)
          colctr = compptr.attr_downsampled_width - 2
          while colctr > 0
            # General case: 3/4 * nearer pixel + 1/4 * further pixel
            invalue = (inptr[((inptr_offset += 1) - 1)] & 0xff) * 3
            outptr[((outptr_offset += 1) - 1)] = ((invalue + (inptr[inptr_offset - 2] & 0xff) + 1) >> 2)
            outptr[((outptr_offset += 1) - 1)] = ((invalue + (inptr[inptr_offset] & 0xff) + 2) >> 2)
            colctr -= 1
          end
          # Special case for last column
          invalue = (inptr[inptr_offset] & 0xff)
          outptr[((outptr_offset += 1) - 1)] = ((invalue * 3 + (inptr[inptr_offset - 1] & 0xff) + 1) >> 2)
          outptr[((outptr_offset += 1) - 1)] = invalue
          inrow += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def h2v2_fancy_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        output_data = output_data_ptr[output_data_index]
        inptr0 = nil
        inptr1 = nil
        outptr = nil
        thiscolsum = 0
        lastcolsum = 0
        nextcolsum = 0
        colctr = 0
        inrow = 0
        outrow = 0
        v = 0
        output_data_offset[output_data_index] = 0
        inrow = outrow = 0
        while (outrow < cinfo.attr_max_v_samp_factor)
          v = 0
          while v < 2
            # inptr0 points to nearest input row, inptr1 points to next nearest
            inptr0 = input_data[inrow + input_data_offset]
            if ((v).equal?(0))
              # next nearest is row above
              inptr1 = input_data[inrow - 1 + input_data_offset]
            else
              # next nearest is row below
              inptr1 = input_data[inrow + 1 + input_data_offset]
            end
            outptr = output_data[((outrow += 1) - 1)]
            inptr0_offset = 0
            inptr1_offset = 0
            outptr_offset = 0
            # Special case for first column
            thiscolsum = (inptr0[((inptr0_offset += 1) - 1)] & 0xff) * 3 + (inptr1[((inptr1_offset += 1) - 1)] & 0xff)
            nextcolsum = (inptr0[((inptr0_offset += 1) - 1)] & 0xff) * 3 + (inptr1[((inptr1_offset += 1) - 1)] & 0xff)
            outptr[((outptr_offset += 1) - 1)] = ((thiscolsum * 4 + 8) >> 4)
            outptr[((outptr_offset += 1) - 1)] = ((thiscolsum * 3 + nextcolsum + 7) >> 4)
            lastcolsum = thiscolsum
            thiscolsum = nextcolsum
            colctr = compptr.attr_downsampled_width - 2
            while colctr > 0
              # General case: 3/4 * nearer pixel + 1/4 * further pixel in each
              # dimension, thus 9/16, 3/16, 3/16, 1/16 overall
              nextcolsum = (inptr0[((inptr0_offset += 1) - 1)] & 0xff) * 3 + (inptr1[((inptr1_offset += 1) - 1)] & 0xff)
              outptr[((outptr_offset += 1) - 1)] = ((thiscolsum * 3 + lastcolsum + 8) >> 4)
              outptr[((outptr_offset += 1) - 1)] = ((thiscolsum * 3 + nextcolsum + 7) >> 4)
              lastcolsum = thiscolsum
              thiscolsum = nextcolsum
              colctr -= 1
            end
            # Special case for last column
            outptr[((outptr_offset += 1) - 1)] = ((thiscolsum * 3 + lastcolsum + 8) >> 4)
            outptr[((outptr_offset += 1) - 1)] = ((thiscolsum * 4 + 7) >> 4)
            v += 1
          end
          inrow += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Jpeg_component_info, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int] }
      def int_upsample(cinfo, compptr, input_data, input_data_offset, output_data_ptr, output_data_offset, output_data_index)
        upsample_ = cinfo.attr_upsample
        output_data = output_data_ptr[output_data_index]
        inptr = nil
        outptr = nil
        invalue = 0
        h = 0
        outend = 0
        h_expand = 0
        v_expand = 0
        inrow = 0
        outrow = 0
        output_data_offset[output_data_index] = 0
        h_expand = upsample_.attr_h_expand[compptr.attr_component_index]
        v_expand = upsample_.attr_v_expand[compptr.attr_component_index]
        inrow = outrow = 0
        while (outrow < cinfo.attr_max_v_samp_factor)
          # Generate one output row with proper horizontal expansion
          inptr = input_data[inrow + input_data_offset]
          inptr_offset = 0
          outptr = output_data[outrow]
          outptr_offset = 0
          outend = outptr_offset + cinfo.attr_output_width
          while (outptr_offset < outend)
            invalue = inptr[((inptr_offset += 1) - 1)]
            # don't need GETJSAMPLE() here
            h = h_expand
            while h > 0
              outptr[((outptr_offset += 1) - 1)] = invalue
              h -= 1
            end
          end
          # Generate any additional output rows by duplicating the first one
          if (v_expand > 1)
            jcopy_sample_rows(output_data, outrow, output_data, outrow + 1, v_expand - 1, cinfo.attr_output_width)
          end
          inrow += 1
          outrow += v_expand
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, ::Java::Int] }
      def null_convert(cinfo, input_buf, input_buf_offset, input_row, output_buf, output_buf_offset, num_rows)
        inptr = nil
        outptr = nil
        count = 0
        num_components = cinfo.attr_num_components
        num_cols = cinfo.attr_output_width
        ci = 0
        while ((num_rows -= 1) >= 0)
          ci = 0
          while ci < num_components
            inptr = input_buf[ci][input_row + input_buf_offset[0]]
            outptr = output_buf[output_buf_offset]
            # BGR instead of RGB
            offset = 0
            case (ci)
            when 2
              offset = RGB_BLUE
            when 1
              offset = RGB_GREEN
            when 0
              offset = RGB_RED
            end
            outptr_offset = offset
            inptr_offset = 0
            count = num_cols
            while count > 0
              outptr[outptr_offset] = inptr[((inptr_offset += 1) - 1)]
              # needn't bother with GETJSAMPLE() here
              outptr_offset += num_components
              count -= 1
            end
            ci += 1
          end
          input_row += 1
          output_buf_offset += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, ::Java::Int] }
      def grayscale_convert(cinfo, input_buf, input_buf_offset, input_row, output_buf, output_buf_offset, num_rows)
        jcopy_sample_rows(input_buf[0], input_row + input_buf_offset[0], output_buf, output_buf_offset, num_rows, cinfo.attr_output_width)
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, ::Java::Int] }
      def gray_rgb_convert(cinfo, input_buf, input_buf_offset, input_row, output_buf, output_buf_offset, num_rows)
        inptr = nil
        outptr = nil
        col = 0
        num_cols = cinfo.attr_output_width
        while ((num_rows -= 1) >= 0)
          inptr = input_buf[0][((input_row += 1) - 1) + input_buf_offset[0]]
          outptr = output_buf[((output_buf_offset += 1) - 1)]
          outptr_offset = 0
          col = 0
          while col < num_cols
            # We can dispense with GETJSAMPLE() here
            outptr[RGB_RED + outptr_offset] = outptr[RGB_GREEN + outptr_offset] = outptr[RGB_BLUE + outptr_offset] = inptr[col]
            outptr_offset += RGB_PIXELSIZE
            col += 1
          end
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(Array.typed(Array.typed(::Java::Byte))), Array.typed(::Java::Int), ::Java::Int, Array.typed(Array.typed(::Java::Byte)), ::Java::Int, ::Java::Int] }
      def ycc_rgb_convert(cinfo, input_buf, input_buf_offset, input_row, output_buf, output_buf_offset, num_rows)
        cconvert = cinfo.attr_cconvert
        y = 0
        cb = 0
        cr = 0
        outptr = nil
        inptr0 = nil
        inptr1 = nil
        inptr2 = nil
        col = 0
        num_cols = cinfo.attr_output_width
        # copy these pointers into registers if possible
        range_limit = cinfo.attr_sample_range_limit
        range_limit_offset = cinfo.attr_sample_range_limit_offset
        crrtab = cconvert.attr_cr_r_tab
        cbbtab = cconvert.attr_cb_b_tab
        crgtab = cconvert.attr_cr_g_tab
        cbgtab = cconvert.attr_cb_g_tab
        # SHIFT_TEMPS
        while ((num_rows -= 1) >= 0)
          inptr0 = input_buf[0][input_row + input_buf_offset[0]]
          inptr1 = input_buf[1][input_row + input_buf_offset[1]]
          inptr2 = input_buf[2][input_row + input_buf_offset[2]]
          input_row += 1
          outptr = output_buf[((output_buf_offset += 1) - 1)]
          outptr_offset = 0
          col = 0
          while col < num_cols
            y = (inptr0[col] & 0xff)
            cb = (inptr1[col] & 0xff)
            cr = (inptr2[col] & 0xff)
            # Range-limiting is essential due to noise introduced by DCT losses.
            outptr[outptr_offset + RGB_RED] = range_limit[y + crrtab[cr] + range_limit_offset]
            outptr[outptr_offset + RGB_GREEN] = range_limit[y + ((cbgtab[cb] + crgtab[cr] >> SCALEBITS)) + range_limit_offset]
            outptr[outptr_offset + RGB_BLUE] = range_limit[y + cbbtab[cb] + range_limit_offset]
            outptr_offset += RGB_PIXELSIZE
            col += 1
          end
        end
      end
      
      typesig { [::Java::Int, Jpeg_decompress_struct] }
      def process__appn(n, cinfo)
        if ((n).equal?(0) || (n).equal?(14))
          return get_interesting_appn(cinfo)
        end
        return skip_variable(cinfo)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def process__com(cinfo)
        return skip_variable(cinfo)
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Int] }
      def skip_input_data(cinfo, num_bytes)
        if (num_bytes > 0)
          while (num_bytes > cinfo.attr_bytes_in_buffer - cinfo.attr_bytes_offset)
            num_bytes -= cinfo.attr_bytes_in_buffer - cinfo.attr_bytes_offset
            if (!fill_input_buffer(cinfo))
              error
            end
          end
          cinfo.attr_bytes_offset += num_bytes
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def skip_variable(cinfo)
        # Skip over an unknown or uninteresting variable-length marker
        length = 0
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        length -= 2
        # TRACEMS2(cinfo, 1, JTRC_MISC_MARKER, cinfo.unread_marker, (int) length);
        if (length > 0)
          skip_input_data(cinfo, length)
        end
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_interesting_appn(cinfo)
        # Process an APP0 or APP14 marker without saving it
        length = 0
        b = Array.typed(::Java::Byte).new(APPN_DATA_LEN) { 0 }
        i = 0
        numtoread = 0
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length = (cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff) << 8
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        length |= cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        length -= 2
        # get the interesting part of the marker data
        if (length >= APPN_DATA_LEN)
          numtoread = APPN_DATA_LEN
        else
          if (length > 0)
            numtoread = length
          else
            numtoread = 0
          end
        end
        i = 0
        while i < numtoread
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          b[i] = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)]
          i += 1
        end
        length -= numtoread
        # process it
        case (cinfo.attr_unread_marker)
        when M_APP0
          examine_app0(cinfo, b, numtoread, length)
        when M_APP14
          examine_app14(cinfo, b, numtoread, length)
        else
          # can't get here unless jpeg_save_markers chooses wrong processor
          error
          # ERREXIT1(cinfo, JERR_UNKNOWN_MARKER, cinfo.unread_marker);
        end
        # skip any remaining data -- could be lots
        if (length > 0)
          skip_input_data(cinfo, length)
        end
        return true
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def examine_app0(cinfo, data, datalen, remaining)
        # Examine first few bytes from an APP0.
        # Take appropriate action if it is a JFIF marker.
        # datalen is # of bytes at data[], remaining is length of rest of marker data.
        totallen = datalen + remaining
        if (datalen >= APP0_DATA_LEN && ((data[0] & 0xff)).equal?(0x4a) && ((data[1] & 0xff)).equal?(0x46) && ((data[2] & 0xff)).equal?(0x49) && ((data[3] & 0xff)).equal?(0x46) && ((data[4] & 0xff)).equal?(0))
          # Found JFIF APP0 marker: save info
          cinfo.attr_saw_jfif_marker = true
          cinfo.attr_jfif_major_version = (data[5])
          cinfo.attr_jfif_minor_version = (data[6] & 0xff)
          cinfo.attr_density_unit = (data[7] & 0xff)
          cinfo.attr_x_density = RJava.cast_to_short((((data[8] & 0xff) << 8) + (data[9] & 0xff)))
          cinfo.attr_y_density = RJava.cast_to_short((((data[10] & 0xff) << 8) + (data[11] & 0xff)))
          # Check version.
          # Major version must be 1, anything else signals an incompatible change.
          # (We used to treat this as an error, but now it's a nonfatal warning,
          # because some bozo at Hijaak couldn't read the spec.)
          # Minor version should be 0..2, but process anyway if newer.
          if (!(cinfo.attr_jfif_major_version).equal?(1))
            # WARNMS2(cinfo, JWRN_JFIF_MAJOR,
            # cinfo.JFIF_major_version, cinfo.JFIF_minor_version);
          end
          # Generate trace messages
          # TRACEMS5(cinfo, 1, JTRC_JFIF,
          # cinfo.JFIF_major_version, cinfo.JFIF_minor_version,
          # cinfo.X_density, cinfo.Y_density, cinfo.density_unit);
          # Validate thumbnail dimensions and issue appropriate messages
          if (!(((data[12] & 0xff) | (data[13]) & 0xff)).equal?(0))
            # TRACEMS2(cinfo, 1, JTRC_JFIF_THUMBNAIL,
            # GETJOCTET(data[12]), GETJOCTET(data[13]));
          end
          totallen -= APP0_DATA_LEN
          if (!(totallen).equal?(((data[12] & 0xff) * (data[13] & 0xff) * 3)))
            # TRACEMS1(cinfo, 1, JTRC_JFIF_BADTHUMBNAILSIZE, (int) totallen);
          end
        else
          if (datalen >= 6 && ((data[0] & 0xff)).equal?(0x4a) && ((data[1] & 0xff)).equal?(0x46) && ((data[2] & 0xff)).equal?(0x58) && ((data[3] & 0xff)).equal?(0x58) && ((data[4] & 0xff)).equal?(0))
            # Found JFIF "JFXX" extension APP0 marker
            # The library doesn't actually do anything with these,
            # but we try to produce a helpful trace message.
            case ((data[5]) & 0xff)
            when 0x10
              # TRACEMS1(cinfo, 1, JTRC_THUMB_JPEG, (int) totallen);
            when 0x11
              # TRACEMS1(cinfo, 1, JTRC_THUMB_PALETTE, (int) totallen);
            when 0x13
              # TRACEMS1(cinfo, 1, JTRC_THUMB_RGB, (int) totallen);
            else
              # TRACEMS2(cinfo, 1, JTRC_JFIF_EXTENSION, GETJOCTET(data[5]), (int) totallen);
            end
          else
            # Start of APP0 does not match "JFIF" or "JFXX", or too short
            # TRACEMS1(cinfo, 1, JTRC_APP0, (int) totallen);
          end
        end
      end
      
      typesig { [Jpeg_decompress_struct, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def examine_app14(cinfo, data, datalen, remaining)
        # Examine first few bytes from an APP14.
        # Take appropriate action if it is an Adobe marker.
        # datalen is # of bytes at data[], remaining is length of rest of marker data.
        # 
        # version, flags0, flags1,
        transform = 0
        if (datalen >= APP14_DATA_LEN && ((data[0] & 0xff)).equal?(0x41) && ((data[1] & 0xff)).equal?(0x64) && ((data[2] & 0xff)).equal?(0x6f) && ((data[3] & 0xff)).equal?(0x62) && ((data[4] & 0xff)).equal?(0x65))
          # Found Adobe APP14 marker
          # version = ((data[5] & 0xFF) << 8) + (data[6] & 0xFF);
          # flags0 = ((data[7] & 0xFF) << 8) + (data[8] & 0xFF);
          # flags1 = ((data[9] & 0xFF) << 8) + (data[10] & 0xFF);
          transform = (data[11] & 0xff)
          # TRACEMS4(cinfo, 1, JTRC_ADOBE, version, flags0, flags1, transform);
          cinfo.attr_saw_adobe_marker = true
          cinfo.attr_adobe_transform = transform
        else
          # Start of APP14 does not match "Adobe", or too short
          # TRACEMS1(cinfo, 1, JTRC_APP14, (int) (datalen + remaining));
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def get_soi(cinfo)
        # Process an SOI marker
        i = 0
        # TRACEMS(cinfo, 1, JTRC_SOI);
        if (cinfo.attr_marker.attr_saw_soi)
          error
        end
        # ERREXIT(cinfo, JERR_SOI_DUPLICATE);
        # Reset all parameters that are defined to be reset by SOI
        i = 0
        while i < NUM_ARITH_TBLS
          cinfo.attr_arith_dc_l[i] = 0
          cinfo.attr_arith_dc_u[i] = 1
          cinfo.attr_arith_ac_k[i] = 5
          i += 1
        end
        cinfo.attr_restart_interval = 0
        # Set initial assumptions for colorspace etc
        cinfo.attr_jpeg_color_space = JCS_UNKNOWN
        cinfo.attr_ccir601_sampling = false
        # Assume non-CCIR sampling???
        cinfo.attr_saw_jfif_marker = false
        cinfo.attr_jfif_major_version = 1
        # set default JFIF APP0 values
        cinfo.attr_jfif_minor_version = 1
        cinfo.attr_density_unit = 0
        cinfo.attr_x_density = 1
        cinfo.attr_y_density = 1
        cinfo.attr_saw_adobe_marker = false
        cinfo.attr_adobe_transform = 0
        cinfo.attr_marker.attr_saw_soi = true
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jinit_input_controller(cinfo)
        # Initialize state: can't use reset_input_controller since we don't
        # want to try to reset other modules yet.
        inputctl = cinfo.attr_inputctl = Jpeg_input_controller.new
        inputctl.attr_has_multiple_scans = false
        # "unknown" would be better
        inputctl.attr_eoi_reached = false
        inputctl.attr_inheaders = true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def reset_marker_reader(cinfo)
        marker = cinfo.attr_marker
        cinfo.attr_comp_info = nil
        # until allocated by get_sof
        cinfo.attr_input_scan_number = 0
        # no SOS seen yet
        cinfo.attr_unread_marker = 0
        # no pending marker
        marker.attr_saw_soi = false
        # set internal state too
        marker.attr_saw_sof = false
        marker.attr_discarded_bytes = 0
        # marker.cur_marker = null;
      end
      
      typesig { [Jpeg_decompress_struct] }
      def reset_input_controller(cinfo)
        inputctl = cinfo.attr_inputctl
        inputctl.attr_has_multiple_scans = false
        # "unknown" would be better
        inputctl.attr_eoi_reached = false
        inputctl.attr_inheaders = true
        # Reset other modules
        reset_marker_reader(cinfo)
        # Reset progression state -- would be cleaner if entropy decoder did this
        cinfo.attr_coef_bits = nil
      end
      
      typesig { [Jpeg_decompress_struct] }
      def finish_output_pass(cinfo)
        master = cinfo.attr_master
        if (cinfo.attr_quantize_colors)
          error(SWT::ERROR_NOT_IMPLEMENTED)
          # (*cinfo.cquantize.finish_pass) (cinfo);
        end
        master.attr_pass_number += 1
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_destroy(cinfo)
        # We need only tell the memory manager to release everything.
        # NB: mem pointer is NULL if memory mgr failed to initialize.
        # if (cinfo.mem != NULL)
        # (*cinfo.mem.self_destruct) (cinfo);
        # cinfo.mem = NULL;		/* be safe if jpeg_destroy is called twice */
        cinfo.attr_global_state = 0
        # mark it destroyed
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_destroy_decompress(cinfo)
        jpeg_destroy(cinfo)
        # use common routine
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_input_complete(cinfo)
        # Check for valid jpeg object
        if (cinfo.attr_global_state < DSTATE_START || cinfo.attr_global_state > DSTATE_STOPPING)
          error
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        return cinfo.attr_inputctl.attr_eoi_reached
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Int] }
      def jpeg_start_output(cinfo, scan_number)
        if (!(cinfo.attr_global_state).equal?(DSTATE_BUFIMAGE) && !(cinfo.attr_global_state).equal?(DSTATE_PRESCAN))
          error
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        # Limit scan number to valid range
        if (scan_number <= 0)
          scan_number = 1
        end
        if (cinfo.attr_inputctl.attr_eoi_reached && scan_number > cinfo.attr_input_scan_number)
          scan_number = cinfo.attr_input_scan_number
        end
        cinfo.attr_output_scan_number = scan_number
        # Perform any dummy output passes, and set up for the real pass
        return output_pass_setup(cinfo)
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_finish_output(cinfo)
        if (((cinfo.attr_global_state).equal?(DSTATE_SCANNING) || (cinfo.attr_global_state).equal?(DSTATE_RAW_OK)) && cinfo.attr_buffered_image)
          # Terminate this pass.
          # We do not require the whole pass to have been completed.
          finish_output_pass(cinfo)
          cinfo.attr_global_state = DSTATE_BUFPOST
        else
          if (!(cinfo.attr_global_state).equal?(DSTATE_BUFPOST))
            # BUFPOST = repeat call after a suspension, anything else is error
            error
            # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
          end
        end
        # Read markers looking for SOS or EOI
        while (cinfo.attr_input_scan_number <= cinfo.attr_output_scan_number && !cinfo.attr_inputctl.attr_eoi_reached)
          if ((consume_input(cinfo)).equal?(JPEG_SUSPENDED))
            return false
          end
        end
        cinfo.attr_global_state = DSTATE_BUFIMAGE
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_finish_decompress(cinfo)
        if (((cinfo.attr_global_state).equal?(DSTATE_SCANNING) || (cinfo.attr_global_state).equal?(DSTATE_RAW_OK)) && !cinfo.attr_buffered_image)
          # Terminate final pass of non-buffered mode
          if (cinfo.attr_output_scanline < cinfo.attr_output_height)
            error
          end
          # ERREXIT(cinfo, JERR_TOO_LITTLE_DATA);
          finish_output_pass(cinfo)
          cinfo.attr_global_state = DSTATE_STOPPING
        else
          if ((cinfo.attr_global_state).equal?(DSTATE_BUFIMAGE))
            # Finishing after a buffered-image operation
            cinfo.attr_global_state = DSTATE_STOPPING
          else
            if (!(cinfo.attr_global_state).equal?(DSTATE_STOPPING))
              # STOPPING = repeat call after a suspension, anything else is error
              error
              # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
            end
          end
        end
        # Read until EOI
        while (!cinfo.attr_inputctl.attr_eoi_reached)
          if ((consume_input(cinfo)).equal?(JPEG_SUSPENDED))
            return false
          end
        end
        # Do final cleanup
        # (*cinfo.src.term_source) (cinfo);
        # We can use jpeg_abort to release memory and reset global_state
        jpeg_abort(cinfo)
        return true
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Boolean] }
      def jpeg_read_header(cinfo, require_image)
        retcode = 0
        if (!(cinfo.attr_global_state).equal?(DSTATE_START) && !(cinfo.attr_global_state).equal?(DSTATE_INHEADER))
          error
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        retcode = jpeg_consume_input(cinfo)
        case (retcode)
        when JPEG_REACHED_SOS
          retcode = JPEG_HEADER_OK
        when JPEG_REACHED_EOI
          if (require_image)
            # Complain if application wanted an image
            error
          end
          # ERREXIT(cinfo, JERR_NO_IMAGE);
          # Reset to start state; it would be safer to require the application to
          # call jpeg_abort, but we can't change it now for compatibility reasons.
          # A side effect is to free any temporary memory (there shouldn't be any).
          jpeg_abort(cinfo)
          # sets state = DSTATE_START
          retcode = JPEG_HEADER_TABLES_ONLY
        when JPEG_SUSPENDED
          # no work
        end
        return retcode
      end
      
      typesig { [Jpeg_decompress_struct] }
      def dummy_consume_data(cinfo)
        return JPEG_SUSPENDED
        # Always indicate nothing was done
      end
      
      typesig { [Jpeg_decompress_struct] }
      def consume_data(cinfo)
        coef = cinfo.attr_coef
        mcu_col_num = 0
        # index of current MCU within row
        blkn = 0
        ci = 0
        xindex = 0
        yindex = 0
        yoffset = 0
        start_col = 0
        # short[][][][] buffer = new short[MAX_COMPS_IN_SCAN][][][];
        buffer_ptr = nil
        compptr = nil
        # /* Align the virtual buffers for the components used in this scan. */
        # for (ci = 0; ci < cinfo.comps_in_scan; ci++) {
        # compptr = cinfo.cur_comp_info[ci];
        # buffer[ci] = coef.whole_image[compptr.component_index];
        # /* Note: entropy decoder expects buffer to be zeroed,
        # * but this is handled automatically by the memory manager
        # * because we requested a pre-zeroed array.
        # */
        # }
        # Loop to process one whole iMCU row
        yoffset = coef.attr_mcu_vert_offset
        while yoffset < coef.attr_mcu_rows_per_i_mcu_row
          mcu_col_num = coef.attr_mcu_ctr
          while mcu_col_num < cinfo.attr_mcus_per_row
            # Construct list of pointers to DCT blocks belonging to this MCU
            blkn = 0
            # index of current DCT block within MCU
            ci = 0
            while ci < cinfo.attr_comps_in_scan
              compptr = cinfo.attr_cur_comp_info[ci]
              start_col = mcu_col_num * compptr.attr_mcu_width
              yindex = 0
              while yindex < compptr.attr_mcu_height
                # buffer_ptr = buffer[ci][yindex+yoffset] + start_col;
                buffer_ptr = coef.attr_whole_image[compptr.attr_component_index][yindex + yoffset + cinfo.attr_input_i_mcu_row * compptr.attr_v_samp_factor]
                buffer_ptr_offset = start_col
                xindex = 0
                while xindex < compptr.attr_mcu_width
                  coef.attr_mcu_buffer[((blkn += 1) - 1)] = buffer_ptr[((buffer_ptr_offset += 1) - 1)]
                  xindex += 1
                end
                yindex += 1
              end
              ci += 1
            end
            # Try to fetch the MCU.
            if (!cinfo.attr_entropy.decode_mcu(cinfo, coef.attr_mcu_buffer))
              # Suspension forced; update state counters and exit
              coef.attr_mcu_vert_offset = yoffset
              coef.attr_mcu_ctr = mcu_col_num
              return JPEG_SUSPENDED
            end
            mcu_col_num += 1
          end
          # Completed an MCU row, but perhaps not an iMCU row
          coef.attr_mcu_ctr = 0
          yoffset += 1
        end
        # Completed the iMCU row, advance counters for next one
        if (((cinfo.attr_input_i_mcu_row) += 1) < cinfo.attr_total_i_mcu_rows)
          coef.start_i_mcu_row(cinfo)
          return JPEG_ROW_COMPLETED
        end
        # Completed the scan
        finish_input_pass(cinfo)
        return JPEG_SCAN_COMPLETED
      end
      
      typesig { [Jpeg_decompress_struct] }
      def consume_input(cinfo)
        case (cinfo.attr_inputctl.attr_consume_input)
        when COEF_CONSUME_INPUT
          case (cinfo.attr_coef.attr_consume_data)
          when CONSUME_DATA
            return consume_data(cinfo)
          when DUMMY_CONSUME_DATA
            return dummy_consume_data(cinfo)
          else
            error
          end
        when INPUT_CONSUME_INPUT
          return consume_markers(cinfo)
        else
          error
        end
        return 0
      end
      
      typesig { [Jpeg_decompress_struct] }
      def fill_input_buffer(cinfo)
        begin
          input_stream = cinfo.attr_input_stream
          nbytes = input_stream.read(cinfo.attr_buffer)
          if (nbytes <= 0)
            if (cinfo.attr_start_of_file)
              # Treat empty input file as fatal error
              error
            end
            # ERREXIT(cinfo, JERR_INPUT_EMPTY);
            # WARNMS(cinfo, JWRN_JPEG_EOF);
            # Insert a fake EOI marker
            cinfo.attr_buffer[0] = 0xff
            cinfo.attr_buffer[1] = M_EOI
            nbytes = 2
          end
          cinfo.attr_bytes_in_buffer = nbytes
          cinfo.attr_bytes_offset = 0
          cinfo.attr_start_of_file = false
        rescue IOException => e
          error(SWT::ERROR_IO)
          return false
        end
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def first_marker(cinfo)
        # Like next_marker, but used to obtain the initial SOI marker.
        # For this marker, we do not allow preceding garbage or fill; otherwise,
        # we might well scan an entire input file before realizing it ain't JPEG.
        # If an application wants to process non-JFIF files, it must seek to the
        # SOI before calling the JPEG library.
        c = 0
        c2 = 0
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
          fill_input_buffer(cinfo)
        end
        c2 = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
        if (!(c).equal?(0xff) || !(c2).equal?(M_SOI))
          error
        end
        # ERREXIT2(cinfo, JERR_NO_SOI, c, c2);
        cinfo.attr_unread_marker = c2
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def next_marker(cinfo)
        c = 0
        loop do
          if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
            fill_input_buffer(cinfo)
          end
          c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          # Skip any non-FF bytes.
          # This may look a bit inefficient, but it will not occur in a valid file.
          # We sync after each discarded byte so that a suspending data source
          # can discard the byte from its buffer.
          while (!(c).equal?(0xff))
            cinfo.attr_marker.attr_discarded_bytes += 1
            if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
              fill_input_buffer(cinfo)
            end
            c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          end
          # This loop swallows any duplicate FF bytes.	Extra FFs are legal as
          # pad bytes, so don't count them in discarded_bytes.	We assume there
          # will not be so many consecutive FF bytes as to overflow a suspending
          # data source's input buffer.
          begin
            if ((cinfo.attr_bytes_offset).equal?(cinfo.attr_bytes_in_buffer))
              fill_input_buffer(cinfo)
            end
            c = cinfo.attr_buffer[((cinfo.attr_bytes_offset += 1) - 1)] & 0xff
          end while ((c).equal?(0xff))
          if (!(c).equal?(0))
            break
          end
          # found a valid marker, exit loop
          # Reach here if we found a stuffed-zero data sequence (FF/00).
          # Discard it and loop back to try again.
          cinfo.attr_marker.attr_discarded_bytes += 2
        end
        if (!(cinfo.attr_marker.attr_discarded_bytes).equal?(0))
          # WARNMS2(cinfo, JWRN_EXTRANEOUS_DATA, cinfo.marker.discarded_bytes, c);
          cinfo.attr_marker.attr_discarded_bytes = 0
        end
        cinfo.attr_unread_marker = c
        return true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def read_markers(cinfo)
        # Outer loop repeats once for each marker.
        loop do
          # Collect the marker proper, unless we already did.
          # NB: first_marker() enforces the requirement that SOI appear first.
          if ((cinfo.attr_unread_marker).equal?(0))
            if (!cinfo.attr_marker.attr_saw_soi)
              if (!first_marker(cinfo))
                return JPEG_SUSPENDED
              end
            else
              if (!next_marker(cinfo))
                return JPEG_SUSPENDED
              end
            end
          end
          # At this point cinfo.unread_marker contains the marker code and the
          # input point is just past the marker proper, but before any parameters.
          # A suspension will cause us to return with this state still true.
          case (cinfo.attr_unread_marker)
          # Baseline
          # Currently unsupported SOFn types
          # Lossless, Huffman
          # Differential sequential, Huffman
          # Differential progressive, Huffman
          # Differential lossless, Huffman
          # Reserved for JPEG extensions
          # Lossless, arithmetic
          # Differential sequential, arithmetic
          # Differential progressive, arithmetic
          # these are all parameterless
          when M_SOI
            if (!get_soi(cinfo))
              return JPEG_SUSPENDED
            end
          when M_SOF0, M_SOF1
            # Extended sequential, Huffman
            if (!get_sof(cinfo, false, false))
              return JPEG_SUSPENDED
            end
          when M_SOF2
            # Progressive, Huffman
            if (!get_sof(cinfo, true, false))
              return JPEG_SUSPENDED
            end
          when M_SOF9
            # Extended sequential, arithmetic
            if (!get_sof(cinfo, false, true))
              return JPEG_SUSPENDED
            end
          when M_SOF10
            # Progressive, arithmetic
            if (!get_sof(cinfo, true, true))
              return JPEG_SUSPENDED
            end
          when M_SOF3, M_SOF5, M_SOF6, M_SOF7, M_JPG, M_SOF11, M_SOF13, M_SOF14, M_SOF15
            # Differential lossless, arithmetic
            error
            # ERREXIT1(cinfo, JERR_SOF_UNSUPPORTED, cinfo.unread_marker);
          when M_SOS
            if (!get_sos(cinfo))
              return JPEG_SUSPENDED
            end
            cinfo.attr_unread_marker = 0
            # processed the marker
            return JPEG_REACHED_SOS
          when M_EOI
            # TRACEMS(cinfo, 1, JTRC_EOI);
            cinfo.attr_unread_marker = 0
            # processed the marker
            return JPEG_REACHED_EOI
          when M_DAC
            if (!get_dac(cinfo))
              return JPEG_SUSPENDED
            end
          when M_DHT
            if (!get_dht(cinfo))
              return JPEG_SUSPENDED
            end
          when M_DQT
            if (!get_dqt(cinfo))
              return JPEG_SUSPENDED
            end
          when M_DRI
            if (!get_dri(cinfo))
              return JPEG_SUSPENDED
            end
          when M_APP0, M_APP1, M_APP2, M_APP3, M_APP4, M_APP5, M_APP6, M_APP7, M_APP8, M_APP9, M_APP10, M_APP11, M_APP12, M_APP13, M_APP14, M_APP15
            if (!process__appn(cinfo.attr_unread_marker - M_APP0, cinfo))
              return JPEG_SUSPENDED
            end
          when M_COM
            if (!process__com(cinfo))
              return JPEG_SUSPENDED
            end
          when M_RST0, M_RST1, M_RST2, M_RST3, M_RST4, M_RST5, M_RST6, M_RST7, M_TEM
            # TRACEMS1(cinfo, 1, JTRC_PARMLESS_MARKER, cinfo.unread_marker);
          when M_DNL
            # Ignore DNL ... perhaps the wrong thing
            if (!skip_variable(cinfo))
              return JPEG_SUSPENDED
            end
          else
            # must be DHP, EXP, JPGn, or RESn
            # For now, we treat the reserved markers as fatal errors since they are
            # likely to be used to signal incompatible JPEG Part 3 extensions.
            # Once the JPEG 3 version-number marker is well defined, this code
            # ought to change!
            error
            # ERREXIT1(cinfo, JERR_UNKNOWN_MARKER, cinfo.unread_marker);
          end
          # Successfully processed marker, so reset state variable
          cinfo.attr_unread_marker = 0
        end
        # end loop
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      def jdiv_round_up(a, b)
        # Compute a/b rounded up to next integer, ie, ceil(a/b)
        # Assumes a >= 0, b > 0
        return (a + b - 1) / b
      end
      
      typesig { [Jpeg_decompress_struct] }
      def initial_setup(cinfo)
        # Called once, when first SOS marker is reached
        ci = 0
        compptr = nil
        # Make sure image isn't bigger than I can handle
        if (cinfo.attr_image_height > JPEG_MAX_DIMENSION || cinfo.attr_image_width > JPEG_MAX_DIMENSION)
          error
        end
        # ERREXIT1(cinfo, JERR_IMAGE_TOO_BIG, (unsigned int) JPEG_MAX_DIMENSION);
        # For now, precision must match compiled-in value...
        if (!(cinfo.attr_data_precision).equal?(BITS_IN_JSAMPLE))
          error(" [data precision=" + (cinfo.attr_data_precision).to_s + "]")
        end
        # ERREXIT1(cinfo, JERR_BAD_PRECISION, cinfo.data_precision);
        # Check that number of components won't exceed internal array sizes
        if (cinfo.attr_num_components > MAX_COMPONENTS)
          error
        end
        # ERREXIT2(cinfo, JERR_COMPONENT_COUNT, cinfo.num_components, MAX_COMPONENTS);
        # Compute maximum sampling factors; check factor validity
        cinfo.attr_max_h_samp_factor = 1
        cinfo.attr_max_v_samp_factor = 1
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          if (compptr.attr_h_samp_factor <= 0 || compptr.attr_h_samp_factor > MAX_SAMP_FACTOR || compptr.attr_v_samp_factor <= 0 || compptr.attr_v_samp_factor > MAX_SAMP_FACTOR)
            error
          end
          # ERREXIT(cinfo, JERR_BAD_SAMPLING);
          cinfo.attr_max_h_samp_factor = Math.max(cinfo.attr_max_h_samp_factor, compptr.attr_h_samp_factor)
          cinfo.attr_max_v_samp_factor = Math.max(cinfo.attr_max_v_samp_factor, compptr.attr_v_samp_factor)
          ci += 1
        end
        # We initialize DCT_scaled_size and min_DCT_scaled_size to DCTSIZE.
        # In the full decompressor, this will be overridden by jdmaster.c;
        # but in the transcoder, jdmaster.c is not used, so we must do it here.
        cinfo.attr_min_dct_scaled_size = DCTSIZE
        # Compute dimensions of components
        ci = 0
        while ci < cinfo.attr_num_components
          compptr = cinfo.attr_comp_info[ci]
          compptr.attr_dct_scaled_size = DCTSIZE
          # Size in DCT blocks
          compptr.attr_width_in_blocks = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_width * compptr.attr_h_samp_factor, (cinfo.attr_max_h_samp_factor * DCTSIZE)))
          compptr.attr_height_in_blocks = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_height * compptr.attr_v_samp_factor, (cinfo.attr_max_v_samp_factor * DCTSIZE)))
          # downsampled_width and downsampled_height will also be overridden by
          # jdmaster.c if we are doing full decompression.	The transcoder library
          # doesn't use these values, but the calling application might.
          # 
          # Size in samples
          compptr.attr_downsampled_width = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_width * compptr.attr_h_samp_factor, cinfo.attr_max_h_samp_factor))
          compptr.attr_downsampled_height = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_height * compptr.attr_v_samp_factor, cinfo.attr_max_v_samp_factor))
          # Mark component needed, until color conversion says otherwise
          compptr.attr_component_needed = true
          # Mark no quantization table yet saved for component
          compptr.attr_quant_table = nil
          ci += 1
        end
        # Compute number of fully interleaved MCU rows.
        cinfo.attr_total_i_mcu_rows = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_height, (cinfo.attr_max_v_samp_factor * DCTSIZE)))
        # Decide whether file contains multiple scans
        if (cinfo.attr_comps_in_scan < cinfo.attr_num_components || cinfo.attr_progressive_mode)
          cinfo.attr_inputctl.attr_has_multiple_scans = true
        else
          cinfo.attr_inputctl.attr_has_multiple_scans = false
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def per_scan_setup(cinfo)
        # Do computations that are needed before processing a JPEG scan
        # cinfo.comps_in_scan and cinfo.cur_comp_info[] were set from SOS marker
        ci = 0
        mcublks = 0
        tmp = 0
        compptr = nil
        if ((cinfo.attr_comps_in_scan).equal?(1))
          # Noninterleaved (single-component) scan
          compptr = cinfo.attr_cur_comp_info[0]
          # Overall image size in MCUs
          cinfo.attr_mcus_per_row = compptr.attr_width_in_blocks
          cinfo.attr_mcu_rows_in_scan = compptr.attr_height_in_blocks
          # For noninterleaved scan, always one block per MCU
          compptr.attr_mcu_width = 1
          compptr.attr_mcu_height = 1
          compptr.attr_mcu_blocks = 1
          compptr.attr_mcu_sample_width = compptr.attr_dct_scaled_size
          compptr.attr_last_col_width = 1
          # For noninterleaved scans, it is convenient to define last_row_height
          # as the number of block rows present in the last iMCU row.
          tmp = (compptr.attr_height_in_blocks % compptr.attr_v_samp_factor)
          if ((tmp).equal?(0))
            tmp = compptr.attr_v_samp_factor
          end
          compptr.attr_last_row_height = tmp
          # Prepare array describing MCU composition
          cinfo.attr_blocks_in_mcu = 1
          cinfo.attr_mcu_membership[0] = 0
        else
          # Interleaved (multi-component) scan
          if (cinfo.attr_comps_in_scan <= 0 || cinfo.attr_comps_in_scan > MAX_COMPS_IN_SCAN)
            error
          end
          # ERREXIT2(cinfo, JERR_COMPONENT_COUNT, cinfo.comps_in_scan, MAX_COMPS_IN_SCAN);
          # Overall image size in MCUs
          cinfo.attr_mcus_per_row = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_width, (cinfo.attr_max_h_samp_factor * DCTSIZE)))
          cinfo.attr_mcu_rows_in_scan = RJava.cast_to_int(jdiv_round_up(cinfo.attr_image_height, (cinfo.attr_max_v_samp_factor * DCTSIZE)))
          cinfo.attr_blocks_in_mcu = 0
          ci = 0
          while ci < cinfo.attr_comps_in_scan
            compptr = cinfo.attr_cur_comp_info[ci]
            # Sampling factors give # of blocks of component in each MCU
            compptr.attr_mcu_width = compptr.attr_h_samp_factor
            compptr.attr_mcu_height = compptr.attr_v_samp_factor
            compptr.attr_mcu_blocks = compptr.attr_mcu_width * compptr.attr_mcu_height
            compptr.attr_mcu_sample_width = compptr.attr_mcu_width * compptr.attr_dct_scaled_size
            # Figure number of non-dummy blocks in last MCU column & row
            tmp = (compptr.attr_width_in_blocks % compptr.attr_mcu_width)
            if ((tmp).equal?(0))
              tmp = compptr.attr_mcu_width
            end
            compptr.attr_last_col_width = tmp
            tmp = (compptr.attr_height_in_blocks % compptr.attr_mcu_height)
            if ((tmp).equal?(0))
              tmp = compptr.attr_mcu_height
            end
            compptr.attr_last_row_height = tmp
            # Prepare array describing MCU composition
            mcublks = compptr.attr_mcu_blocks
            if (cinfo.attr_blocks_in_mcu + mcublks > D_MAX_BLOCKS_IN_MCU)
              error
            end
            # ERREXIT(cinfo, JERR_BAD_MCU_SIZE);
            while (((mcublks -= 1) + 1) > 0)
              cinfo.attr_mcu_membership[((cinfo.attr_blocks_in_mcu += 1) - 1)] = ci
            end
            ci += 1
          end
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def latch_quant_tables(cinfo)
        ci = 0
        qtblno = 0
        compptr = nil
        qtbl = nil
        ci = 0
        while ci < cinfo.attr_comps_in_scan
          compptr = cinfo.attr_cur_comp_info[ci]
          # No work if we already saved Q-table for this component
          if (!(compptr.attr_quant_table).nil?)
            ci += 1
            next
          end
          # Make sure specified quantization table is present
          qtblno = compptr.attr_quant_tbl_no
          if (qtblno < 0 || qtblno >= NUM_QUANT_TBLS || (cinfo.attr_quant_tbl_ptrs[qtblno]).nil?)
            error
          end
          # ERREXIT1(cinfo, JERR_NO_QUANT_TABLE, qtblno);
          # OK, save away the quantization table
          qtbl = JQUANT_TBL.new
          System.arraycopy(cinfo.attr_quant_tbl_ptrs[qtblno].attr_quantval, 0, qtbl.attr_quantval, 0, qtbl.attr_quantval.attr_length)
          qtbl.attr_sent_table = cinfo.attr_quant_tbl_ptrs[qtblno].attr_sent_table
          compptr.attr_quant_table = qtbl
          ci += 1
        end
      end
      
      typesig { [Jpeg_decompress_struct, ::Java::Boolean, ::Java::Int, D_derived_tbl] }
      def jpeg_make_d_derived_tbl(cinfo, is_dc, tblno, dtbl)
        htbl = nil
        p = 0
        i = 0
        l = 0
        si = 0
        numsymbols = 0
        lookbits = 0
        ctr = 0
        huffsize = Array.typed(::Java::Byte).new(257) { 0 }
        huffcode = Array.typed(::Java::Int).new(257) { 0 }
        code = 0
        # Note that huffsize[] and huffcode[] are filled in code-length order,
        # paralleling the order of the symbols themselves in htbl.huffval[].
        # 
        # Find the input Huffman table
        if (tblno < 0 || tblno >= NUM_HUFF_TBLS)
          error
        end
        # ERREXIT1(cinfo, JERR_NO_HUFF_TABLE, tblno);
        htbl = is_dc ? cinfo.attr_dc_huff_tbl_ptrs[tblno] : cinfo.attr_ac_huff_tbl_ptrs[tblno]
        if ((htbl).nil?)
          error
        end
        # ERREXIT1(cinfo, JERR_NO_HUFF_TABLE, tblno);
        # Allocate a workspace if we haven't already done so.
        dtbl.attr_pub = htbl
        # fill in back link
        # Figure C.1: make table of Huffman code length for each symbol
        p = 0
        l = 1
        while l <= 16
          i = htbl.attr_bits[l] & 0xff
          if (i < 0 || p + i > 256)
            # protect against table overrun
            error
          end
          # ERREXIT(cinfo, JERR_BAD_HUFF_TABLE);
          while (!(((i -= 1) + 1)).equal?(0))
            huffsize[((p += 1) - 1)] = l
          end
          l += 1
        end
        huffsize[p] = 0
        numsymbols = p
        # Figure C.2: generate the codes themselves
        # We also validate that the counts represent a legal Huffman code tree.
        code = 0
        si = huffsize[0]
        p = 0
        while (!((huffsize[p])).equal?(0))
          while (((huffsize[p])).equal?(si))
            huffcode[((p += 1) - 1)] = code
            code += 1
          end
          # code is now 1 more than the last code used for codelength si; but
          # it must still fit in si bits, since no code is allowed to be all ones.
          if ((code) >= ((1) << si))
            error
          end
          # ERREXIT(cinfo, JERR_BAD_HUFF_TABLE);
          code <<= 1
          si += 1
        end
        # Figure F.15: generate decoding tables for bit-sequential decoding
        p = 0
        l = 1
        while l <= 16
          if (!((htbl.attr_bits[l] & 0xff)).equal?(0))
            # valoffset[l] = huffval[] index of 1st symbol of code length l,
            # minus the minimum code of length l
            dtbl.attr_valoffset[l] = p - huffcode[p]
            p += (htbl.attr_bits[l] & 0xff)
            dtbl.attr_maxcode[l] = huffcode[p - 1]
            # maximum code of length l
          else
            dtbl.attr_maxcode[l] = -1
            # -1 if no codes of this length
          end
          l += 1
        end
        dtbl.attr_maxcode[17] = 0xfffff
        # ensures jpeg_huff_decode terminates
        # Compute lookahead tables to speed up decoding.
        # First we set all the table entries to 0, indicating "too long";
        # then we iterate through the Huffman codes that are short enough and
        # fill in all the entries that correspond to bit sequences starting
        # with that code.
        j = 0
        while j < dtbl.attr_look_nbits.attr_length
          dtbl.attr_look_nbits[j] = 0
          j += 1
        end
        p = 0
        l = 1
        while l <= HUFF_LOOKAHEAD
          i = 1
          while i <= (htbl.attr_bits[l] & 0xff)
            # l = current code's length, p = its index in huffcode[] & huffval[].
            # Generate left-justified code followed by all possible bit sequences
            lookbits = huffcode[p] << (HUFF_LOOKAHEAD - l)
            ctr = 1 << (HUFF_LOOKAHEAD - l)
            while ctr > 0
              dtbl.attr_look_nbits[lookbits] = l
              dtbl.attr_look_sym[lookbits] = htbl.attr_huffval[p]
              lookbits += 1
              ctr -= 1
            end
            i += 1
            p += 1
          end
          l += 1
        end
        # Validate symbols as being reasonable.
        # For AC tables, we make no check, but accept all byte values 0..255.
        # For DC tables, we require the symbols to be in range 0..15.
        # (Tighter bounds could be applied depending on the data depth and mode,
        # but this is sufficient to ensure safe decoding.)
        if (is_dc)
          i = 0
          while i < numsymbols
            sym = htbl.attr_huffval[i] & 0xff
            if (sym < 0 || sym > 15)
              error
            end
            i += 1
          end
        end
      end
      
      typesig { [Jpeg_decompress_struct] }
      def start_input_pass(cinfo)
        per_scan_setup(cinfo)
        latch_quant_tables(cinfo)
        cinfo.attr_entropy.start_pass(cinfo)
        cinfo.attr_coef.start_input_pass(cinfo)
        cinfo.attr_inputctl.attr_consume_input = COEF_CONSUME_INPUT
      end
      
      typesig { [Jpeg_decompress_struct] }
      def finish_input_pass(cinfo)
        cinfo.attr_inputctl.attr_consume_input = INPUT_CONSUME_INPUT
      end
      
      typesig { [Jpeg_decompress_struct] }
      def consume_markers(cinfo)
        inputctl = cinfo.attr_inputctl
        val = 0
        if (inputctl.attr_eoi_reached)
          # After hitting EOI, read no further
          return JPEG_REACHED_EOI
        end
        val = read_markers(cinfo)
        case (val)
        when JPEG_REACHED_SOS
          # Found SOS
          if (inputctl.attr_inheaders)
            # 1st SOS
            initial_setup(cinfo)
            inputctl.attr_inheaders = false
            # Note: start_input_pass must be called by jdmaster.c
            # before any more input can be consumed.	jdapimin.c is
            # responsible for enforcing this sequencing.
          else
            # 2nd or later SOS marker
            if (!inputctl.attr_has_multiple_scans)
              error
            end
            # ERREXIT(cinfo, JERR_EOI_EXPECTED); /* Oops, I wasn't expecting this! */
            start_input_pass(cinfo)
          end
        when JPEG_REACHED_EOI
          # Found EOI
          inputctl.attr_eoi_reached = true
          if (inputctl.attr_inheaders)
            # Tables-only datastream, apparently
            if (cinfo.attr_marker.attr_saw_sof)
              error
            end
            # ERREXIT(cinfo, JERR_SOF_NO_SOS);
          else
            # Prevent infinite loop in coef ctlr's decompress_data routine
            # if user set output_scan_number larger than number of scans.
            if (cinfo.attr_output_scan_number > cinfo.attr_input_scan_number)
              cinfo.attr_output_scan_number = cinfo.attr_input_scan_number
            end
          end
        when JPEG_SUSPENDED
        end
        return val
      end
      
      typesig { [Jpeg_decompress_struct] }
      def default_decompress_parms(cinfo)
        # Guess the input colorspace, and set output colorspace accordingly.
        # (Wish JPEG committee had provided a real way to specify this...)
        # Note application may override our guesses.
        case (cinfo.attr_num_components)
        when 1
          cinfo.attr_jpeg_color_space = JCS_GRAYSCALE
          cinfo.attr_out_color_space = JCS_GRAYSCALE
        when 3
          if (cinfo.attr_saw_jfif_marker)
            cinfo.attr_jpeg_color_space = JCS_YCbCr
            # JFIF implies YCbCr
          else
            if (cinfo.attr_saw_adobe_marker)
              case (cinfo.attr_adobe_transform)
              when 0
                cinfo.attr_jpeg_color_space = JCS_RGB
              when 1
                cinfo.attr_jpeg_color_space = JCS_YCbCr
              else
                # WARNMS1(cinfo, JWRN_ADOBE_XFORM, cinfo.Adobe_transform);
                cinfo.attr_jpeg_color_space = JCS_YCbCr
                # assume it's YCbCr
              end
            else
              # Saw no special markers, try to guess from the component IDs
              cid0 = cinfo.attr_comp_info[0].attr_component_id
              cid1 = cinfo.attr_comp_info[1].attr_component_id
              cid2 = cinfo.attr_comp_info[2].attr_component_id
              if ((cid0).equal?(1) && (cid1).equal?(2) && (cid2).equal?(3))
                cinfo.attr_jpeg_color_space = JCS_YCbCr
              # assume JFIF w/out marker
              else
                if ((cid0).equal?(82) && (cid1).equal?(71) && (cid2).equal?(66))
                  cinfo.attr_jpeg_color_space = JCS_RGB
                # ASCII 'R', 'G', 'B'
                else
                  # TRACEMS3(cinfo, 1, JTRC_UNKNOWN_IDS, cid0, cid1, cid2);
                  cinfo.attr_jpeg_color_space = JCS_YCbCr
                  # assume it's YCbCr
                end
              end
            end
          end
          # Always guess RGB is proper output colorspace.
          cinfo.attr_out_color_space = JCS_RGB
        when 4
          if (cinfo.attr_saw_adobe_marker)
            case (cinfo.attr_adobe_transform)
            when 0
              cinfo.attr_jpeg_color_space = JCS_CMYK
            when 2
              cinfo.attr_jpeg_color_space = JCS_YCCK
            else
              # WARNMS1(cinfo, JWRN_ADOBE_XFORM, cinfo.Adobe_transform);
              cinfo.attr_jpeg_color_space = JCS_YCCK
              # assume it's YCCK
            end
          else
            # No special markers, assume straight CMYK.
            cinfo.attr_jpeg_color_space = JCS_CMYK
          end
          cinfo.attr_out_color_space = JCS_CMYK
        else
          cinfo.attr_jpeg_color_space = JCS_UNKNOWN
          cinfo.attr_out_color_space = JCS_UNKNOWN
        end
        # Set defaults for other decompression parameters.
        cinfo.attr_scale_num = 1
        # 1:1 scaling
        cinfo.attr_scale_denom = 1
        cinfo.attr_output_gamma = 1.0
        cinfo.attr_buffered_image = false
        cinfo.attr_raw_data_out = false
        cinfo.attr_dct_method = JDCT_DEFAULT
        cinfo.attr_do_fancy_upsampling = true
        cinfo.attr_do_block_smoothing = true
        cinfo.attr_quantize_colors = false
        # We set these in case application only sets quantize_colors.
        cinfo.attr_dither_mode = JDITHER_FS
        cinfo.attr_two_pass_quantize = true
        cinfo.attr_desired_number_of_colors = 256
        cinfo.attr_colormap = nil
        # Initialize for no mode change in buffered-image mode.
        cinfo.attr_enable_1pass_quant = false
        cinfo.attr_enable_external_quant = false
        cinfo.attr_enable_2pass_quant = false
      end
      
      typesig { [Jpeg_decompress_struct] }
      def init_source(cinfo)
        cinfo.attr_buffer = Array.typed(::Java::Byte).new(INPUT_BUFFER_SIZE) { 0 }
        cinfo.attr_bytes_in_buffer = 0
        cinfo.attr_bytes_offset = 0
        cinfo.attr_start_of_file = true
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_consume_input(cinfo)
        retcode = JPEG_SUSPENDED
        # NB: every possible DSTATE value should be listed in this switch
        case (cinfo.attr_global_state)
        # FALLTHROUGH
        when DSTATE_START
          # Start-of-datastream actions: reset appropriate modules
          reset_input_controller(cinfo)
          # Initialize application's data source module
          init_source(cinfo)
          cinfo.attr_global_state = DSTATE_INHEADER
          retcode = consume_input(cinfo)
          if ((retcode).equal?(JPEG_REACHED_SOS))
            # Found SOS, prepare to decompress
            # Set up default parameters based on header data
            default_decompress_parms(cinfo)
            # Set global state: ready for start_decompress
            cinfo.attr_global_state = DSTATE_READY
          end
        when DSTATE_INHEADER
          retcode = consume_input(cinfo)
          if ((retcode).equal?(JPEG_REACHED_SOS))
            # Found SOS, prepare to decompress
            # Set up default parameters based on header data
            default_decompress_parms(cinfo)
            # Set global state: ready for start_decompress
            cinfo.attr_global_state = DSTATE_READY
          end
        when DSTATE_READY
          # Can't advance past first SOS until start_decompress is called
          retcode = JPEG_REACHED_SOS
        when DSTATE_PRELOAD, DSTATE_PRESCAN, DSTATE_SCANNING, DSTATE_RAW_OK, DSTATE_BUFIMAGE, DSTATE_BUFPOST, DSTATE_STOPPING
          retcode = consume_input(cinfo)
        else
          error
        end
        # ERREXIT1(cinfo, JERR_BAD_STATE, cinfo.global_state);
        return retcode
      end
      
      typesig { [Jpeg_decompress_struct] }
      def jpeg_abort(cinfo)
        # int pool;
        # 
        # /* Releasing pools in reverse order might help avoid fragmentation
        # * with some (brain-damaged) malloc libraries.
        # */
        # for (pool = JPOOL_NUMPOOLS-1; pool > JPOOL_PERMANENT; pool--) {
        # (*cinfo.mem.free_pool) (cinfo, pool);
        # }
        # Reset overall state for possible reuse of object
        if (cinfo.attr_is_decompressor)
          cinfo.attr_global_state = DSTATE_START
          # Try to keep application from accessing now-deleted marker list.
          # A bit kludgy to do it here, but this is the most central place.
          # 
          # ((j_decompress_ptr) cinfo).marker_list = null;
        else
          cinfo.attr_global_state = CSTATE_START
        end
      end
      
      typesig { [LEDataInputStream] }
      def is_file_format(stream)
        begin
          buffer = Array.typed(::Java::Byte).new(2) { 0 }
          stream.read(buffer)
          stream.unread(buffer)
          return ((buffer[0] & 0xff)).equal?(0xff) && ((buffer[1] & 0xff)).equal?(M_SOI)
        rescue Exception => e
          return false
        end
      end
      
      typesig { [InputStream, ImageLoader] }
      def load_from_byte_stream(input_stream, loader)
        cinfo = Jpeg_decompress_struct.new
        cinfo.attr_input_stream = input_stream
        jpeg_create_decompress(cinfo)
        jpeg_read_header(cinfo, true)
        cinfo.attr_buffered_image = cinfo.attr_progressive_mode && loader.has_listeners
        jpeg_start_decompress(cinfo)
        palette = nil
        case (cinfo.attr_out_color_space)
        when JCS_RGB
          palette = PaletteData.new(0xff, 0xff00, 0xff0000)
        when JCS_GRAYSCALE
          colors = Array.typed(RGB).new(256) { nil }
          i = 0
          while i < colors.attr_length
            colors[i] = RGB.new(i, i, i)
            i += 1
          end
          palette = PaletteData.new(colors)
        else
          error
        end
        scanline_pad = 4
        row_stride = (((cinfo.attr_output_width * cinfo.attr_out_color_components * 8 + 7) / 8) + (scanline_pad - 1)) / scanline_pad * scanline_pad
        buffer = Array.typed(::Java::Byte).new(1) { Array.typed(::Java::Byte).new(row_stride) { 0 } }
        data = Array.typed(::Java::Byte).new(row_stride * cinfo.attr_output_height) { 0 }
        image_data = ImageData.internal_new(cinfo.attr_output_width, cinfo.attr_output_height, palette.attr_is_direct ? 24 : 8, palette, scanline_pad, data, 0, nil, nil, -1, -1, SWT::IMAGE_JPEG, 0, 0, 0, 0)
        if (cinfo.attr_buffered_image)
          done = false
          begin
            increment_count = cinfo.attr_input_scan_number - 1
            jpeg_start_output(cinfo, cinfo.attr_input_scan_number)
            while (cinfo.attr_output_scanline < cinfo.attr_output_height)
              offset = row_stride * cinfo.attr_output_scanline
              jpeg_read_scanlines(cinfo, buffer, 1)
              System.arraycopy(buffer[0], 0, data, offset, row_stride)
            end
            jpeg_finish_output(cinfo)
            loader.notify_listeners(ImageLoaderEvent.new(loader, image_data.clone, increment_count, done = jpeg_input_complete(cinfo)))
          end while (!done)
        else
          while (cinfo.attr_output_scanline < cinfo.attr_output_height)
            offset = row_stride * cinfo.attr_output_scanline
            jpeg_read_scanlines(cinfo, buffer, 1)
            System.arraycopy(buffer[0], 0, data, offset, row_stride)
          end
        end
        jpeg_finish_decompress(cinfo)
        jpeg_destroy_decompress(cinfo)
        return Array.typed(ImageData).new([image_data])
      end
    }
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__jpegdecoder, :initialize
  end
  
end
