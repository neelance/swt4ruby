require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gdip
  module GdipImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class Gdip < GdipImports.const_get :Platform
    include_class_members GdipImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-gdip") # $NON-NLS-1$
      end
      
      # GdiPlus constants
      const_set_lazy(:FlatnessDefault) { 0.25 }
      const_attr_reader  :FlatnessDefault
      
      const_set_lazy(:BrushTypeSolidColor) { 0 }
      const_attr_reader  :BrushTypeSolidColor
      
      const_set_lazy(:BrushTypeHatchFill) { 1 }
      const_attr_reader  :BrushTypeHatchFill
      
      const_set_lazy(:BrushTypeTextureFill) { 2 }
      const_attr_reader  :BrushTypeTextureFill
      
      const_set_lazy(:BrushTypePathGradient) { 3 }
      const_attr_reader  :BrushTypePathGradient
      
      const_set_lazy(:BrushTypeLinearGradient) { 4 }
      const_attr_reader  :BrushTypeLinearGradient
      
      const_set_lazy(:ColorAdjustTypeBitmap) { 1 }
      const_attr_reader  :ColorAdjustTypeBitmap
      
      const_set_lazy(:ColorMatrixFlagsDefault) { 0 }
      const_attr_reader  :ColorMatrixFlagsDefault
      
      const_set_lazy(:CombineModeReplace) { 0 }
      const_attr_reader  :CombineModeReplace
      
      const_set_lazy(:CombineModeIntersect) { 1 }
      const_attr_reader  :CombineModeIntersect
      
      const_set_lazy(:CombineModeUnion) { 2 }
      const_attr_reader  :CombineModeUnion
      
      const_set_lazy(:CombineModeXor) { 3 }
      const_attr_reader  :CombineModeXor
      
      const_set_lazy(:CombineModeExclude) { 4 }
      const_attr_reader  :CombineModeExclude
      
      const_set_lazy(:CombineModeComplement) { 5 }
      const_attr_reader  :CombineModeComplement
      
      const_set_lazy(:FillModeAlternate) { 0 }
      const_attr_reader  :FillModeAlternate
      
      const_set_lazy(:FillModeWinding) { 1 }
      const_attr_reader  :FillModeWinding
      
      const_set_lazy(:DashCapFlat) { 0 }
      const_attr_reader  :DashCapFlat
      
      const_set_lazy(:DashCapRound) { 2 }
      const_attr_reader  :DashCapRound
      
      const_set_lazy(:DashCapTriangle) { 3 }
      const_attr_reader  :DashCapTriangle
      
      const_set_lazy(:DashStyleSolid) { 0 }
      const_attr_reader  :DashStyleSolid
      
      const_set_lazy(:DashStyleDash) { 1 }
      const_attr_reader  :DashStyleDash
      
      const_set_lazy(:DashStyleDot) { 2 }
      const_attr_reader  :DashStyleDot
      
      const_set_lazy(:DashStyleDashDot) { 3 }
      const_attr_reader  :DashStyleDashDot
      
      const_set_lazy(:DashStyleDashDotDot) { 4 }
      const_attr_reader  :DashStyleDashDotDot
      
      const_set_lazy(:DashStyleCustom) { 5 }
      const_attr_reader  :DashStyleCustom
      
      const_set_lazy(:FontStyleRegular) { 0 }
      const_attr_reader  :FontStyleRegular
      
      const_set_lazy(:FontStyleBold) { 1 }
      const_attr_reader  :FontStyleBold
      
      const_set_lazy(:FontStyleItalic) { 2 }
      const_attr_reader  :FontStyleItalic
      
      const_set_lazy(:FontStyleBoldItalic) { 3 }
      const_attr_reader  :FontStyleBoldItalic
      
      const_set_lazy(:FontStyleUnderline) { 4 }
      const_attr_reader  :FontStyleUnderline
      
      const_set_lazy(:FontStyleStrikeout) { 8 }
      const_attr_reader  :FontStyleStrikeout
      
      const_set_lazy(:PaletteFlagsHasAlpha) { 0x1 }
      const_attr_reader  :PaletteFlagsHasAlpha
      
      const_set_lazy(:FlushIntentionFlush) { 0 }
      const_attr_reader  :FlushIntentionFlush
      
      const_set_lazy(:FlushIntentionSync) { 1 }
      const_attr_reader  :FlushIntentionSync
      
      const_set_lazy(:HotkeyPrefixNone) { 0 }
      const_attr_reader  :HotkeyPrefixNone
      
      const_set_lazy(:HotkeyPrefixShow) { 1 }
      const_attr_reader  :HotkeyPrefixShow
      
      const_set_lazy(:HotkeyPrefixHide) { 2 }
      const_attr_reader  :HotkeyPrefixHide
      
      const_set_lazy(:LineJoinMiter) { 0 }
      const_attr_reader  :LineJoinMiter
      
      const_set_lazy(:LineJoinBevel) { 1 }
      const_attr_reader  :LineJoinBevel
      
      const_set_lazy(:LineJoinRound) { 2 }
      const_attr_reader  :LineJoinRound
      
      const_set_lazy(:LineCapFlat) { 0 }
      const_attr_reader  :LineCapFlat
      
      const_set_lazy(:LineCapSquare) { 1 }
      const_attr_reader  :LineCapSquare
      
      const_set_lazy(:LineCapRound) { 2 }
      const_attr_reader  :LineCapRound
      
      const_set_lazy(:MatrixOrderPrepend) { 0 }
      const_attr_reader  :MatrixOrderPrepend
      
      const_set_lazy(:MatrixOrderAppend) { 1 }
      const_attr_reader  :MatrixOrderAppend
      
      const_set_lazy(:QualityModeDefault) { 0 }
      const_attr_reader  :QualityModeDefault
      
      const_set_lazy(:QualityModeLow) { 1 }
      const_attr_reader  :QualityModeLow
      
      const_set_lazy(:QualityModeHigh) { 2 }
      const_attr_reader  :QualityModeHigh
      
      const_set_lazy(:InterpolationModeDefault) { QualityModeDefault }
      const_attr_reader  :InterpolationModeDefault
      
      const_set_lazy(:InterpolationModeLowQuality) { QualityModeLow }
      const_attr_reader  :InterpolationModeLowQuality
      
      const_set_lazy(:InterpolationModeHighQuality) { QualityModeHigh }
      const_attr_reader  :InterpolationModeHighQuality
      
      const_set_lazy(:InterpolationModeBilinear) { QualityModeHigh + 1 }
      const_attr_reader  :InterpolationModeBilinear
      
      const_set_lazy(:InterpolationModeBicubic) { QualityModeHigh + 2 }
      const_attr_reader  :InterpolationModeBicubic
      
      const_set_lazy(:InterpolationModeNearestNeighbor) { QualityModeHigh + 3 }
      const_attr_reader  :InterpolationModeNearestNeighbor
      
      const_set_lazy(:InterpolationModeHighQualityBilinear) { QualityModeHigh + 4 }
      const_attr_reader  :InterpolationModeHighQualityBilinear
      
      const_set_lazy(:InterpolationModeHighQualityBicubic) { QualityModeHigh + 5 }
      const_attr_reader  :InterpolationModeHighQualityBicubic
      
      const_set_lazy(:PathPointTypeStart) { 0 }
      const_attr_reader  :PathPointTypeStart
      
      const_set_lazy(:PathPointTypeLine) { 1 }
      const_attr_reader  :PathPointTypeLine
      
      const_set_lazy(:PathPointTypeBezier) { 3 }
      const_attr_reader  :PathPointTypeBezier
      
      const_set_lazy(:PathPointTypePathTypeMask) { 0x7 }
      const_attr_reader  :PathPointTypePathTypeMask
      
      const_set_lazy(:PathPointTypePathDashMode) { 0x10 }
      const_attr_reader  :PathPointTypePathDashMode
      
      const_set_lazy(:PathPointTypePathMarker) { 0x20 }
      const_attr_reader  :PathPointTypePathMarker
      
      const_set_lazy(:PathPointTypeCloseSubpath) { 0x80 }
      const_attr_reader  :PathPointTypeCloseSubpath
      
      const_set_lazy(:PathPointTypeBezier3) { 3 }
      const_attr_reader  :PathPointTypeBezier3
      
      const_set_lazy(:PixelFormatIndexed) { 0x10000 }
      const_attr_reader  :PixelFormatIndexed
      
      const_set_lazy(:PixelFormatGDI) { 0x20000 }
      const_attr_reader  :PixelFormatGDI
      
      const_set_lazy(:PixelFormatAlpha) { 0x40000 }
      const_attr_reader  :PixelFormatAlpha
      
      const_set_lazy(:PixelFormatPAlpha) { 0x80000 }
      const_attr_reader  :PixelFormatPAlpha
      
      const_set_lazy(:PixelFormatExtended) { 0x100000 }
      const_attr_reader  :PixelFormatExtended
      
      const_set_lazy(:PixelFormatCanonical) { 0x200000 }
      const_attr_reader  :PixelFormatCanonical
      
      const_set_lazy(:PixelFormat1bppIndexed) { (1 | (1 << 8) | PixelFormatIndexed | PixelFormatGDI) }
      const_attr_reader  :PixelFormat1bppIndexed
      
      const_set_lazy(:PixelFormat4bppIndexed) { (2 | (4 << 8) | PixelFormatIndexed | PixelFormatGDI) }
      const_attr_reader  :PixelFormat4bppIndexed
      
      const_set_lazy(:PixelFormat8bppIndexed) { (3 | (8 << 8) | PixelFormatIndexed | PixelFormatGDI) }
      const_attr_reader  :PixelFormat8bppIndexed
      
      const_set_lazy(:PixelFormat16bppGrayScale) { (4 | (16 << 8) | PixelFormatExtended) }
      const_attr_reader  :PixelFormat16bppGrayScale
      
      const_set_lazy(:PixelFormat16bppRGB555) { (5 | (16 << 8) | PixelFormatGDI) }
      const_attr_reader  :PixelFormat16bppRGB555
      
      const_set_lazy(:PixelFormat16bppRGB565) { (6 | (16 << 8) | PixelFormatGDI) }
      const_attr_reader  :PixelFormat16bppRGB565
      
      const_set_lazy(:PixelFormat16bppARGB1555) { (7 | (16 << 8) | PixelFormatAlpha | PixelFormatGDI) }
      const_attr_reader  :PixelFormat16bppARGB1555
      
      const_set_lazy(:PixelFormat24bppRGB) { (8 | (24 << 8) | PixelFormatGDI) }
      const_attr_reader  :PixelFormat24bppRGB
      
      const_set_lazy(:PixelFormat32bppRGB) { (9 | (32 << 8) | PixelFormatGDI) }
      const_attr_reader  :PixelFormat32bppRGB
      
      const_set_lazy(:PixelFormat32bppARGB) { (10 | (32 << 8) | PixelFormatAlpha | PixelFormatGDI | PixelFormatCanonical) }
      const_attr_reader  :PixelFormat32bppARGB
      
      const_set_lazy(:PixelFormat32bppPARGB) { (11 | (32 << 8) | PixelFormatAlpha | PixelFormatPAlpha | PixelFormatGDI) }
      const_attr_reader  :PixelFormat32bppPARGB
      
      const_set_lazy(:PixelFormat48bppRGB) { (12 | (48 << 8) | PixelFormatExtended) }
      const_attr_reader  :PixelFormat48bppRGB
      
      const_set_lazy(:PixelFormat64bppARGB) { (13 | (64 << 8) | PixelFormatAlpha | PixelFormatCanonical | PixelFormatExtended) }
      const_attr_reader  :PixelFormat64bppARGB
      
      const_set_lazy(:PixelFormat64bppPARGB) { (14 | (64 << 8) | PixelFormatAlpha | PixelFormatPAlpha | PixelFormatExtended) }
      const_attr_reader  :PixelFormat64bppPARGB
      
      const_set_lazy(:PixelFormatMax) { 15 }
      const_attr_reader  :PixelFormatMax
      
      const_set_lazy(:PixelOffsetModeNone) { QualityModeHigh + 1 }
      const_attr_reader  :PixelOffsetModeNone
      
      const_set_lazy(:PixelOffsetModeHalf) { QualityModeHigh + 2 }
      const_attr_reader  :PixelOffsetModeHalf
      
      const_set_lazy(:SmoothingModeDefault) { QualityModeDefault }
      const_attr_reader  :SmoothingModeDefault
      
      const_set_lazy(:SmoothingModeHighSpeed) { QualityModeLow }
      const_attr_reader  :SmoothingModeHighSpeed
      
      const_set_lazy(:SmoothingModeHighQuality) { QualityModeHigh }
      const_attr_reader  :SmoothingModeHighQuality
      
      const_set_lazy(:SmoothingModeNone) { 3 }
      const_attr_reader  :SmoothingModeNone
      
      const_set_lazy(:SmoothingModeAntiAlias8x4) { 4 }
      const_attr_reader  :SmoothingModeAntiAlias8x4
      
      const_set_lazy(:SmoothingModeAntiAlias) { SmoothingModeAntiAlias8x4 }
      const_attr_reader  :SmoothingModeAntiAlias
      
      const_set_lazy(:SmoothingModeAntiAlias8x8) { 5 }
      const_attr_reader  :SmoothingModeAntiAlias8x8
      
      const_set_lazy(:StringFormatFlagsDirectionRightToLeft) { 0x1 }
      const_attr_reader  :StringFormatFlagsDirectionRightToLeft
      
      const_set_lazy(:StringFormatFlagsDirectionVertical) { 0x2 }
      const_attr_reader  :StringFormatFlagsDirectionVertical
      
      const_set_lazy(:StringFormatFlagsNoFitBlackBox) { 0x4 }
      const_attr_reader  :StringFormatFlagsNoFitBlackBox
      
      const_set_lazy(:StringFormatFlagsDisplayFormatControl) { 0x20 }
      const_attr_reader  :StringFormatFlagsDisplayFormatControl
      
      const_set_lazy(:StringFormatFlagsNoFontFallback) { 0x400 }
      const_attr_reader  :StringFormatFlagsNoFontFallback
      
      const_set_lazy(:StringFormatFlagsMeasureTrailingSpaces) { 0x800 }
      const_attr_reader  :StringFormatFlagsMeasureTrailingSpaces
      
      const_set_lazy(:StringFormatFlagsNoWrap) { 0x1000 }
      const_attr_reader  :StringFormatFlagsNoWrap
      
      const_set_lazy(:StringFormatFlagsLineLimit) { 0x2000 }
      const_attr_reader  :StringFormatFlagsLineLimit
      
      const_set_lazy(:StringFormatFlagsNoClip) { 0x4000 }
      const_attr_reader  :StringFormatFlagsNoClip
      
      const_set_lazy(:TextRenderingHintSystemDefault) { 0 }
      const_attr_reader  :TextRenderingHintSystemDefault
      
      const_set_lazy(:TextRenderingHintSingleBitPerPixelGridFit) { 1 }
      const_attr_reader  :TextRenderingHintSingleBitPerPixelGridFit
      
      const_set_lazy(:TextRenderingHintSingleBitPerPixel) { 2 }
      const_attr_reader  :TextRenderingHintSingleBitPerPixel
      
      const_set_lazy(:TextRenderingHintAntiAliasGridFit) { 3 }
      const_attr_reader  :TextRenderingHintAntiAliasGridFit
      
      const_set_lazy(:TextRenderingHintAntiAlias) { 4 }
      const_attr_reader  :TextRenderingHintAntiAlias
      
      const_set_lazy(:TextRenderingHintClearTypeGridFit) { 5 }
      const_attr_reader  :TextRenderingHintClearTypeGridFit
      
      const_set_lazy(:UnitPixel) { 2 }
      const_attr_reader  :UnitPixel
      
      const_set_lazy(:WrapModeTile) { 0 }
      const_attr_reader  :WrapModeTile
      
      const_set_lazy(:WrapModeTileFlipX) { 1 }
      const_attr_reader  :WrapModeTileFlipX
      
      const_set_lazy(:WrapModeTileFlipY) { 2 }
      const_attr_reader  :WrapModeTileFlipY
      
      const_set_lazy(:WrapModeTileFlipXY) { 3 }
      const_attr_reader  :WrapModeTileFlipXY
      
      const_set_lazy(:WrapModeClamp) { 4 }
      const_attr_reader  :WrapModeClamp
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_ColorPalette_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64 bit
      def _color_palette_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_ColorPalette_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GdiplusStartupInput_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdiplus_startup_input_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GdiplusStartupInput_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GdiplusStartup, [:pointer, :long, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Int), GdiplusStartupInput, ::Java::Int] }
      # GdiPlus natives
      # long
      # long
      def _gdiplus_startup(token, input, output)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GdiplusStartup, JNI.env, self.jni_id, token.jni_id, input.jni_id, output.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GdiplusShutdown, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _gdiplus_shutdown(token)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GdiplusShutdown, JNI.env, self.jni_id, token.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _bitmap_new(hbm, hpal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new__II, JNI.env, self.jni_id, hbm.to_int, hpal.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _bitmap_new(hicon)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new__I, JNI.env, self.jni_id, hicon.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _bitmap_new(width, height, stride, format, scan0)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new__IIIII, JNI.env, self.jni_id, width.to_int, height.to_int, stride.to_int, format.to_int, scan0.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new___3CZ, [:pointer, :long, :long, :int8], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Boolean] }
      # long
      def _bitmap_new(filename, use_icm)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1new___3CZ, JNI.env, self.jni_id, filename.jni_id, use_icm ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _bitmap_delete(bitmap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1delete, JNI.env, self.jni_id, bitmap.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1GetHBITMAP, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _bitmap_get_hbitmap(bitmap, color_background, hbm_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1GetHBITMAP, JNI.env, self.jni_id, bitmap.to_int, color_background.to_int, hbm_return.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1GetHICON, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _bitmap_get_hicon(bitmap, hicon)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1GetHICON, JNI.env, self.jni_id, bitmap.to_int, hicon.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_BitmapData_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _bitmap_data_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_BitmapData_1new, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_BitmapData_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _bitmap_data_delete(bitmap_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_BitmapData_1delete, JNI.env, self.jni_id, bitmap_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1LockBits, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _bitmap_lock_bits(bitmap, rect, flags, pixel_format, locked_bitmap_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1LockBits, JNI.env, self.jni_id, bitmap.to_int, rect.to_int, flags.to_int, pixel_format.to_int, locked_bitmap_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1UnlockBits, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _bitmap_unlock_bits(bitmap, locked_bitmap_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Bitmap_1UnlockBits, JNI.env, self.jni_id, bitmap.to_int, locked_bitmap_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Brush_1Clone, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _brush_clone(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Brush_1Clone, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Brush_1GetType, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _brush_get_type(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Brush_1GetType, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Color_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _color_new(argb)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Color_1new, JNI.env, self.jni_id, argb.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Color_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _color_delete(color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Color_1delete, JNI.env, self.jni_id, color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1new__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _font_new(hdc, hfont)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1new__II, JNI.env, self.jni_id, hdc.to_int, hfont.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1new___3CXfloatXIII, [:pointer, :long, :long, :float, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Float, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _font_new(family_name, em_size, style, unit, font_collection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1new___3CXfloatXIII, JNI.env, self.jni_id, family_name.jni_id, em_size, style.to_int, unit.to_int, font_collection.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _font_delete(font)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1delete, JNI.env, self.jni_id, font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1GetFamily, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _font_get_family(font, family)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1GetFamily, JNI.env, self.jni_id, font.to_int, family.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1GetSize, [:pointer, :long, :int32], :float
      typesig { [::Java::Int] }
      # long
      def _font_get_size(font)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1GetSize, JNI.env, self.jni_id, font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1GetStyle, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _font_get_style(font)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1GetStyle, JNI.env, self.jni_id, font.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Font_1IsAvailable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def _font_is_available(font)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Font_1IsAvailable, JNI.env, self.jni_id, font.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_FontFamily_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _font_family_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_FontFamily_1new, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_FontFamily_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _font_family_delete(family)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_FontFamily_1delete, JNI.env, self.jni_id, family.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_FontFamily_1GetFamilyName, [:pointer, :long, :int32, :long, :unknown], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Char] }
      # long
      def _font_family_get_family_name(family, name, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_FontFamily_1GetFamilyName, JNI.env, self.jni_id, family.to_int, name.jni_id, language.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _graphics_new(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1new, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _graphics_delete(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1delete, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawArc, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float] }
      # long
      # long
      def _graphics_draw_arc(graphics, pen, x, y, width, height, start_angle, sweep_angle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawArc, JNI.env, self.jni_id, graphics.to_int, pen.to_int, x.to_int, y.to_int, width.to_int, height.to_int, start_angle, sweep_angle)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawEllipse, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_draw_ellipse(graphics, pen, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawEllipse, JNI.env, self.jni_id, graphics.to_int, pen.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawImage__IIII, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_draw_image(graphics, image, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawImage__IIII, JNI.env, self.jni_id, graphics.to_int, image.to_int, x.to_int, y.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawImage__IIL#{Rect.jni_name}_2IIIIIIII".to_sym, [:pointer, :long, :int32, :int32, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Rect, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def _graphics_draw_image(graphics, image, dest_rect, srcx, srcy, srcwidth, srcheight, src_unit, image_attributes, callback, callback_data)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawImage__IIL#{Rect.jni_name}_2IIIIIIII".to_sym, JNI.env, self.jni_id, graphics.to_int, image.to_int, dest_rect.jni_id, srcx.to_int, srcy.to_int, srcwidth.to_int, srcheight.to_int, src_unit.to_int, image_attributes.to_int, callback.to_int, callback_data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawLine, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_draw_line(graphics, pen, x1, y1, x2, y2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawLine, JNI.env, self.jni_id, graphics.to_int, pen.to_int, x1.to_int, y1.to_int, x2.to_int, y2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawLines, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def _graphics_draw_lines(graphics, pen, points, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawLines, JNI.env, self.jni_id, graphics.to_int, pen.to_int, points.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawPath, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _graphics_draw_path(graphics, pen, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawPath, JNI.env, self.jni_id, graphics.to_int, pen.to_int, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawPolygon, [:pointer, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def _graphics_draw_polygon(graphics, pen, points, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawPolygon, JNI.env, self.jni_id, graphics.to_int, pen.to_int, points.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawRectangle, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_draw_rectangle(graphics, pen, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawRectangle, JNI.env, self.jni_id, graphics.to_int, pen.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawString__I_3CIIL#{PointF.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, PointF, ::Java::Int] }
      # long
      # long
      # long
      def _graphics_draw_string(graphics, string, length, font, origin, brush)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawString__I_3CIIL#{PointF.jni_name}_2I".to_sym, JNI.env, self.jni_id, graphics.to_int, string.jni_id, length.to_int, font.to_int, origin.jni_id, brush.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawString__I_3CIIL#{PointF.jni_name}_2II".to_sym, [:pointer, :long, :int32, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, PointF, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _graphics_draw_string(graphics, string, length, font, origin, format, brush)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1DrawString__I_3CIIL#{PointF.jni_name}_2II".to_sym, JNI.env, self.jni_id, graphics.to_int, string.jni_id, length.to_int, font.to_int, origin.jni_id, format.to_int, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillEllipse, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_fill_ellipse(graphics, brush, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillEllipse, JNI.env, self.jni_id, graphics.to_int, brush.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillPath, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _graphics_fill_path(graphics, brush, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillPath, JNI.env, self.jni_id, graphics.to_int, brush.to_int, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1Flush, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_flush(graphics, intention)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1Flush, JNI.env, self.jni_id, graphics.to_int, intention.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillPie, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float] }
      # long
      # long
      def _graphics_fill_pie(graphics, brush, x, y, width, height, start_angle, sweep_angle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillPie, JNI.env, self.jni_id, graphics.to_int, brush.to_int, x.to_int, y.to_int, width.to_int, height.to_int, start_angle, sweep_angle)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillPolygon, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_fill_polygon(graphics, brush, points, count, fill_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillPolygon, JNI.env, self.jni_id, graphics.to_int, brush.to_int, points.jni_id, count.to_int, fill_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillRectangle, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_fill_rectangle(graphics, brush, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1FillRectangle, JNI.env, self.jni_id, graphics.to_int, brush.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetClipBounds__IL#{RectF.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, RectF] }
      # long
      def _graphics_get_clip_bounds(graphics, rect)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetClipBounds__IL#{RectF.jni_name}_2".to_sym, JNI.env, self.jni_id, graphics.to_int, rect.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetClipBounds__IL#{Rect.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect] }
      # long
      def _graphics_get_clip_bounds(graphics, rect)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetClipBounds__IL#{Rect.jni_name}_2".to_sym, JNI.env, self.jni_id, graphics.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetClip, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_get_clip(graphics, region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetClip, JNI.env, self.jni_id, graphics.to_int, region.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetHDC, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _graphics_get_hdc(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetHDC, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1ReleaseHDC, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_release_hdc(graphics, hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1ReleaseHDC, JNI.env, self.jni_id, graphics.to_int, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetInterpolationMode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_get_interpolation_mode(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetInterpolationMode, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetSmoothingMode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_get_smoothing_mode(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetSmoothingMode, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetTextRenderingHint, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_get_text_rendering_hint(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetTextRenderingHint, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetTransform, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_get_transform(graphics, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetTransform, JNI.env, self.jni_id, graphics.to_int, matrix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetVisibleClipBounds, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Rect] }
      # long
      def _graphics_get_visible_clip_bounds(graphics, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1GetVisibleClipBounds, JNI.env, self.jni_id, graphics.to_int, rect.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1MeasureString__I_3CIIL#{PointF.jni_name}_2L#{RectF.jni_name}_2".to_sym, [:pointer, :long, :int32, :long, :int32, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, PointF, RectF] }
      # long
      # long
      def _graphics_measure_string(graphics, string, length, font, origin, bounding_box)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1MeasureString__I_3CIIL#{PointF.jni_name}_2L#{RectF.jni_name}_2".to_sym, JNI.env, self.jni_id, graphics.to_int, string.jni_id, length.to_int, font.to_int, origin.jni_id, bounding_box.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1MeasureString__I_3CIIL#{PointF.jni_name}_2IL#{RectF.jni_name}_2".to_sym, [:pointer, :long, :int32, :long, :int32, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, PointF, ::Java::Int, RectF] }
      # long
      # long
      # long
      def _graphics_measure_string(graphics, string, length, font, origin, format, bounding_box)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1MeasureString__I_3CIIL#{PointF.jni_name}_2IL#{RectF.jni_name}_2".to_sym, JNI.env, self.jni_id, graphics.to_int, string.jni_id, length.to_int, font.to_int, origin.jni_id, format.to_int, bounding_box.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1ResetClip, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_reset_clip(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1ResetClip, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1Restore, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_restore(graphics, gstate)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1Restore, JNI.env, self.jni_id, graphics.to_int, gstate.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1Save, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_save(graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1Save, JNI.env, self.jni_id, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1ScaleTransform, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _graphics_scale_transform(graphics, sx, sy, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1ScaleTransform, JNI.env, self.jni_id, graphics.to_int, sx, sy, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClip__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_set_clip(graphics, hrgn, combine_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClip__III, JNI.env, self.jni_id, graphics.to_int, hrgn.to_int, combine_mode.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClip__IL#{Rect.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Rect, ::Java::Int] }
      # long
      def _graphics_set_clip(graphics, rect, combine_mode)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClip__IL#{Rect.jni_name}_2I".to_sym, JNI.env, self.jni_id, graphics.to_int, rect.jni_id, combine_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClipPath__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_set_clip_path(graphics, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClipPath__II, JNI.env, self.jni_id, graphics.to_int, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClipPath__III, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_set_clip_path(graphics, path, combine_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetClipPath__III, JNI.env, self.jni_id, graphics.to_int, path.to_int, combine_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetCompositingQuality, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_set_compositing_quality(graphics, compositing_quality)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetCompositingQuality, JNI.env, self.jni_id, graphics.to_int, compositing_quality.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetPageUnit, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_set_page_unit(graphics, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetPageUnit, JNI.env, self.jni_id, graphics.to_int, unit.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetPixelOffsetMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_set_pixel_offset_mode(graphics, pixel_offset_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetPixelOffsetMode, JNI.env, self.jni_id, graphics.to_int, pixel_offset_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetSmoothingMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_set_smoothing_mode(graphics, smoothing_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetSmoothingMode, JNI.env, self.jni_id, graphics.to_int, smoothing_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetTransform, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_set_transform(graphics, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetTransform, JNI.env, self.jni_id, graphics.to_int, matrix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetInterpolationMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_set_interpolation_mode(graphics, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetInterpolationMode, JNI.env, self.jni_id, graphics.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetTextRenderingHint, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_set_text_rendering_hint(graphics, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1SetTextRenderingHint, JNI.env, self.jni_id, graphics.to_int, mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1TranslateTransform, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _graphics_translate_transform(graphics, dx, dy, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Graphics_1TranslateTransform, JNI.env, self.jni_id, graphics.to_int, dx, dy, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1new__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_path_new(fill_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1new__I, JNI.env, self.jni_id, fill_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1new___3I_3BII, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      def _graphics_path_new(points, types, count, fill_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1new___3I_3BII, JNI.env, self.jni_id, points.jni_id, types.jni_id, count.to_int, fill_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _graphics_path_delete(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1delete, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddArc, [:pointer, :long, :int32, :float, :float, :float, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # long
      def _graphics_path_add_arc(path, x, y, width, height, start_angle, sweep_angle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddArc, JNI.env, self.jni_id, path.to_int, x, y, width, height, start_angle, sweep_angle)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddBezier, [:pointer, :long, :int32, :float, :float, :float, :float, :float, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # long
      def _graphics_path_add_bezier(path, x1, y1, x2, y2, x3, y3, x4, y4)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddBezier, JNI.env, self.jni_id, path.to_int, x1, y1, x2, y2, x3, y3, x4, y4)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddLine, [:pointer, :long, :int32, :float, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # long
      def _graphics_path_add_line(path, x1, y1, x2, y2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddLine, JNI.env, self.jni_id, path.to_int, x1, y1, x2, y2)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddPath, [:pointer, :long, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def _graphics_path_add_path(path, adding_path, connect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddPath, JNI.env, self.jni_id, path.to_int, adding_path.to_int, connect ? 1 : 0)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddRectangle, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, RectF] }
      # long
      def _graphics_path_add_rectangle(path, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddRectangle, JNI.env, self.jni_id, path.to_int, rect.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddString, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :float, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Float, PointF, ::Java::Int] }
      # long
      # long
      # long
      def _graphics_path_add_string(path, string, length, family, style, em_size, origin, format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1AddString, JNI.env, self.jni_id, path.to_int, string.jni_id, length.to_int, family.to_int, style.to_int, em_size, origin.jni_id, format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1CloseFigure, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_path_close_figure(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1CloseFigure, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1Clone, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _graphics_path_clone(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1Clone, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1Flatten, [:pointer, :long, :int32, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float] }
      # long
      # long
      def _graphics_path_flatten(path, matrix, flatness)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1Flatten, JNI.env, self.jni_id, path.to_int, matrix.to_int, flatness)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetBounds, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, RectF, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _graphics_path_get_bounds(path, bounds, matrix, pen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetBounds, JNI.env, self.jni_id, path.to_int, bounds.jni_id, matrix.to_int, pen.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetLastPoint, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PointF] }
      # long
      def _graphics_path_get_last_point(path, last_point)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetLastPoint, JNI.env, self.jni_id, path.to_int, last_point.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetPathPoints, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      # long
      def _graphics_path_get_path_points(path, points, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetPathPoints, JNI.env, self.jni_id, path.to_int, points.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetPathTypes, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def _graphics_path_get_path_types(path, types, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetPathTypes, JNI.env, self.jni_id, path.to_int, types.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetPointCount, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_path_get_point_count(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1GetPointCount, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1IsOutlineVisible, [:pointer, :long, :int32, :float, :float, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _graphics_path_is_outline_visible(path, x, y, pen, g)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1IsOutlineVisible, JNI.env, self.jni_id, path.to_int, x, y, pen.to_int, g.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1IsVisible, [:pointer, :long, :int32, :float, :float, :int32], :int8
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      # long
      def _graphics_path_is_visible(path, x, y, g)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1IsVisible, JNI.env, self.jni_id, path.to_int, x, y, g.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1SetFillMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _graphics_path_set_fill_mode(path, fillmode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1SetFillMode, JNI.env, self.jni_id, path.to_int, fillmode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1StartFigure, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _graphics_path_start_figure(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1StartFigure, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1Transform, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _graphics_path_transform(path, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_GraphicsPath_1Transform, JNI.env, self.jni_id, path.to_int, matrix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_HatchBrush_1new, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _hatch_brush_new(hatch_style, fore_color, back_color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_HatchBrush_1new, JNI.env, self.jni_id, hatch_style.to_int, fore_color.to_int, back_color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetLastStatus, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _image_get_last_status(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetLastStatus, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetPixelFormat, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _image_get_pixel_format(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetPixelFormat, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetWidth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _image_get_width(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetWidth, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetHeight, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _image_get_height(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetHeight, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetPalette, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _image_get_palette(image, palette, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetPalette, JNI.env, self.jni_id, image.to_int, palette.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetPaletteSize, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _image_get_palette_size(image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Image_1GetPaletteSize, JNI.env, self.jni_id, image.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _image_attributes_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1new, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _image_attributes_delete(attrib)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1delete, JNI.env, self.jni_id, attrib.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1SetWrapMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _image_attributes_set_wrap_mode(attrib, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1SetWrapMode, JNI.env, self.jni_id, attrib.to_int, wrap.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1SetColorMatrix, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int, ::Java::Int] }
      # long
      def _image_attributes_set_color_matrix(attrib, matrix, mode, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_ImageAttributes_1SetColorMatrix, JNI.env, self.jni_id, attrib.to_int, matrix.jni_id, mode.to_int, type.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_HatchBrush_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _hatch_brush_delete(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_HatchBrush_1delete, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1new, [:pointer, :long, :long, :long, :int32, :int32], :int32
      typesig { [PointF, PointF, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _linear_gradient_brush_new(point1, point2, color1, color2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1new, JNI.env, self.jni_id, point1.jni_id, point2.jni_id, color1.to_int, color2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _linear_gradient_brush_delete(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1delete, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1SetInterpolationColors, [:pointer, :long, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Float), ::Java::Int] }
      # long
      # long
      def _linear_gradient_brush_set_interpolation_colors(brush, preset_colors, blend_positions, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1SetInterpolationColors, JNI.env, self.jni_id, brush.to_int, preset_colors.jni_id, blend_positions.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1SetWrapMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _linear_gradient_brush_set_wrap_mode(brush, wrap_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1SetWrapMode, JNI.env, self.jni_id, brush.to_int, wrap_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1ResetTransform, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _linear_gradient_brush_reset_transform(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1ResetTransform, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1ScaleTransform, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _linear_gradient_brush_scale_transform(brush, sx, sy, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1ScaleTransform, JNI.env, self.jni_id, brush.to_int, sx, sy, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1TranslateTransform, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _linear_gradient_brush_translate_transform(brush, dx, dy, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_LinearGradientBrush_1TranslateTransform, JNI.env, self.jni_id, brush.to_int, dx, dy, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1new, [:pointer, :long, :float, :float, :float, :float, :float, :float], :int32
      typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # long
      def _matrix_new(m11, m12, m21, m22, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1new, JNI.env, self.jni_id, m11, m12, m21, m22, dx, dy)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _matrix_delete(matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1delete, JNI.env, self.jni_id, matrix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1GetElements, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float)] }
      # long
      def _matrix_get_elements(matrix, m)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1GetElements, JNI.env, self.jni_id, matrix.to_int, m.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Invert, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _matrix_invert(matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Invert, JNI.env, self.jni_id, matrix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1IsIdentity, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def _matrix_is_identity(matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1IsIdentity, JNI.env, self.jni_id, matrix.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Multiply, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _matrix_multiply(matrix, matrix1, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Multiply, JNI.env, self.jni_id, matrix.to_int, matrix1.to_int, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Rotate, [:pointer, :long, :int32, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Int] }
      # long
      def _matrix_rotate(matrix, angle, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Rotate, JNI.env, self.jni_id, matrix.to_int, angle, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Scale, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _matrix_scale(matrix, scale_x, scale_y, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Scale, JNI.env, self.jni_id, matrix.to_int, scale_x, scale_y, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Shear, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _matrix_shear(matrix, shear_x, shear_y, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Shear, JNI.env, self.jni_id, matrix.to_int, shear_x, shear_y, order.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1TransformPoints__IL#{PointF.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, PointF, ::Java::Int] }
      # long
      def _matrix_transform_points(matrix, pts, count)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1TransformPoints__IL#{PointF.jni_name}_2I".to_sym, JNI.env, self.jni_id, matrix.to_int, pts.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1TransformPoints__I_3XfloatXI, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      # long
      def _matrix_transform_points(matrix, pts, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1TransformPoints__I_3XfloatXI, JNI.env, self.jni_id, matrix.to_int, pts.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Translate, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _matrix_translate(matrix, offset_x, offset_y, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1Translate, JNI.env, self.jni_id, matrix.to_int, offset_x, offset_y, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1SetElements, [:pointer, :long, :int32, :float, :float, :float, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # long
      def _matrix_set_elements(matrix, m11, m12, m21, m22, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Matrix_1SetElements, JNI.env, self.jni_id, matrix.to_int, m11, m12, m21, m22, dx, dy)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_MoveMemory__L#{ColorPalette.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [ColorPalette, ::Java::Int, ::Java::Int] }
      # long
      def _move_memory(destination, source_ptr, length)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_MoveMemory__L#{ColorPalette.jni_name}_2II".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int, length.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gdip_Gdip_MoveMemory__L#{BitmapData.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [BitmapData, ::Java::Int] }
      # long
      def _move_memory(destination, source_ptr)
        JNI.__send__("Java_org_eclipse_swt_internal_gdip_Gdip_MoveMemory__L#{BitmapData.jni_name}_2I".to_sym, JNI.env, self.jni_id, destination.jni_id, source_ptr.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _path_gradient_brush_new(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1new, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _path_gradient_brush_delete(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1delete, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetCenterColor, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _path_gradient_brush_set_center_color(brush, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetCenterColor, JNI.env, self.jni_id, brush.to_int, color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetCenterPoint, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PointF] }
      # long
      def _path_gradient_brush_set_center_point(brush, pt)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetCenterPoint, JNI.env, self.jni_id, brush.to_int, pt.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetInterpolationColors, [:pointer, :long, :int32, :long, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Float), ::Java::Int] }
      # long
      # long
      def _path_gradient_brush_set_interpolation_colors(brush, preset_colors, blend_positions, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetInterpolationColors, JNI.env, self.jni_id, brush.to_int, preset_colors.jni_id, blend_positions.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetSurroundColors, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def _path_gradient_brush_set_surround_colors(brush, colors, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetSurroundColors, JNI.env, self.jni_id, brush.to_int, colors.jni_id, count.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetGraphicsPath, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _path_gradient_brush_set_graphics_path(brush, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetGraphicsPath, JNI.env, self.jni_id, brush.to_int, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetWrapMode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _path_gradient_brush_set_wrap_mode(brush, wrap_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_PathGradientBrush_1SetWrapMode, JNI.env, self.jni_id, brush.to_int, wrap_mode.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1new, [:pointer, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Float] }
      # long
      # long
      def _pen_new(brush, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1new, JNI.env, self.jni_id, brush.to_int, width)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _pen_delete(pen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1delete, JNI.env, self.jni_id, pen.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1GetBrush, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _pen_get_brush(pen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1GetBrush, JNI.env, self.jni_id, pen.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetBrush, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _pen_set_brush(pen, brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetBrush, JNI.env, self.jni_id, pen.to_int, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetDashOffset, [:pointer, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def _pen_set_dash_offset(pen, dash_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetDashOffset, JNI.env, self.jni_id, pen.to_int, dash_offset)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetDashPattern, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Float), ::Java::Int] }
      # long
      def _pen_set_dash_pattern(pen, dash_array, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetDashPattern, JNI.env, self.jni_id, pen.to_int, dash_array.jni_id, count.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetDashStyle, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _pen_set_dash_style(pen, dash_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetDashStyle, JNI.env, self.jni_id, pen.to_int, dash_style.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetLineCap, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def _pen_set_line_cap(pen, start_cap, end_cap, dash_cap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetLineCap, JNI.env, self.jni_id, pen.to_int, start_cap.to_int, end_cap.to_int, dash_cap.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetLineJoin, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _pen_set_line_join(pen, line_join)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetLineJoin, JNI.env, self.jni_id, pen.to_int, line_join.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetMiterLimit, [:pointer, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def _pen_set_miter_limit(pen, miter_limit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetMiterLimit, JNI.env, self.jni_id, pen.to_int, miter_limit)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetWidth, [:pointer, :long, :int32, :float], :int32
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def _pen_set_width(pen, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Pen_1SetWidth, JNI.env, self.jni_id, pen.to_int, width)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Point_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _point_new(x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Point_1new, JNI.env, self.jni_id, x.to_int, y.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Point_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _point_delete(point)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Point_1delete, JNI.env, self.jni_id, point.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Region_1new__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _region_new(h_rgn)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Region_1new__I, JNI.env, self.jni_id, h_rgn.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Region_1newGraphicsPath, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _region_new_graphics_path(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Region_1newGraphicsPath, JNI.env, self.jni_id, path.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Region_1new__, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _region_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Region_1new__, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Region_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _region_delete(region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Region_1delete, JNI.env, self.jni_id, region.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Region_1GetHRGN, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _region_get_hrgn(region, graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Region_1GetHRGN, JNI.env, self.jni_id, region.to_int, graphics.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_Region_1IsInfinite, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _region_is_infinite(region, graphics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_Region_1IsInfinite, JNI.env, self.jni_id, region.to_int, graphics.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_SolidBrush_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _solid_brush_new(color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_SolidBrush_1new, JNI.env, self.jni_id, color.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_SolidBrush_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _solid_brush_delete(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_SolidBrush_1delete, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _string_format_delete(format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1delete, JNI.env, self.jni_id, format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1Clone, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _string_format_clone(format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1Clone, JNI.env, self.jni_id, format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1GenericDefault, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _string_format_generic_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1GenericDefault, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1GenericTypographic, [:pointer, :long], :int32
      typesig { [] }
      # long
      def _string_format_generic_typographic
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1GenericTypographic, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1GetFormatFlags, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _string_format_get_format_flags(format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1GetFormatFlags, JNI.env, self.jni_id, format.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1SetHotkeyPrefix, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _string_format_set_hotkey_prefix(format, hotkey_prefix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1SetHotkeyPrefix, JNI.env, self.jni_id, format.to_int, hotkey_prefix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1SetFormatFlags, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _string_format_set_format_flags(format, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1SetFormatFlags, JNI.env, self.jni_id, format.to_int, flags.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1SetTabStops, [:pointer, :long, :int32, :float, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Int, Array.typed(::Java::Float)] }
      # long
      def _string_format_set_tab_stops(format, first_tab_offset, count, tab_stops)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_StringFormat_1SetTabStops, JNI.env, self.jni_id, format.to_int, first_tab_offset, count.to_int, tab_stops.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1new, [:pointer, :long, :int32, :int32, :float, :float, :float, :float], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
      # long
      # long
      def _texture_brush_new(image, wrap_mode, dst_x, dst_y, dst_width, dst_height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1new, JNI.env, self.jni_id, image.to_int, wrap_mode.to_int, dst_x, dst_y, dst_width, dst_height)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1delete, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def _texture_brush_delete(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1delete, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1SetTransform, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _texture_brush_set_transform(brush, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1SetTransform, JNI.env, self.jni_id, brush.to_int, matrix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1ResetTransform, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _texture_brush_reset_transform(brush)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1ResetTransform, JNI.env, self.jni_id, brush.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1ScaleTransform, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _texture_brush_scale_transform(brush, sx, sy, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1ScaleTransform, JNI.env, self.jni_id, brush.to_int, sx, sy, order.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1TranslateTransform, [:pointer, :long, :int32, :float, :float, :int32], :int32
      typesig { [::Java::Int, ::Java::Float, ::Java::Float, ::Java::Int] }
      # long
      def _texture_brush_translate_transform(brush, dx, dy, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gdip_Gdip_TextureBrush_1TranslateTransform, JNI.env, self.jni_id, brush.to_int, dx, dy, order.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__gdip, :initialize
  end
  
end
