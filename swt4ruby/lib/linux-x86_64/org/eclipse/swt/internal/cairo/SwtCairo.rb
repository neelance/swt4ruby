require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Cairo and SWT
# -  Copyright (C) 2005, 2008 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Cairo
  module CairoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cairo
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class SwtCairo < CairoImports.const_get :Platform
    include_class_members CairoImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-cairo")
      end
      
      # Constants
      const_set_lazy(:CAIRO_ANTIALIAS_DEFAULT) { 0 }
      const_attr_reader  :CAIRO_ANTIALIAS_DEFAULT
      
      const_set_lazy(:CAIRO_ANTIALIAS_NONE) { 1 }
      const_attr_reader  :CAIRO_ANTIALIAS_NONE
      
      const_set_lazy(:CAIRO_ANTIALIAS_GRAY) { 2 }
      const_attr_reader  :CAIRO_ANTIALIAS_GRAY
      
      const_set_lazy(:CAIRO_ANTIALIAS_SUBPIXEL) { 3 }
      const_attr_reader  :CAIRO_ANTIALIAS_SUBPIXEL
      
      const_set_lazy(:CAIRO_FORMAT_ARGB32) { 0 }
      const_attr_reader  :CAIRO_FORMAT_ARGB32
      
      const_set_lazy(:CAIRO_FORMAT_RGB24) { 1 }
      const_attr_reader  :CAIRO_FORMAT_RGB24
      
      const_set_lazy(:CAIRO_FORMAT_A8) { 2 }
      const_attr_reader  :CAIRO_FORMAT_A8
      
      const_set_lazy(:CAIRO_FORMAT_A1) { 3 }
      const_attr_reader  :CAIRO_FORMAT_A1
      
      const_set_lazy(:CAIRO_OPERATOR_CLEAR) { 0 }
      const_attr_reader  :CAIRO_OPERATOR_CLEAR
      
      const_set_lazy(:CAIRO_OPERATOR_SRC) { 1 }
      const_attr_reader  :CAIRO_OPERATOR_SRC
      
      const_set_lazy(:CAIRO_OPERATOR_DST) { 2 }
      const_attr_reader  :CAIRO_OPERATOR_DST
      
      const_set_lazy(:CAIRO_OPERATOR_OVER) { 3 }
      const_attr_reader  :CAIRO_OPERATOR_OVER
      
      const_set_lazy(:CAIRO_OPERATOR_OVER_REVERSE) { 4 }
      const_attr_reader  :CAIRO_OPERATOR_OVER_REVERSE
      
      const_set_lazy(:CAIRO_OPERATOR_IN) { 5 }
      const_attr_reader  :CAIRO_OPERATOR_IN
      
      const_set_lazy(:CAIRO_OPERATOR_IN_REVERSE) { 6 }
      const_attr_reader  :CAIRO_OPERATOR_IN_REVERSE
      
      const_set_lazy(:CAIRO_OPERATOR_OUT) { 7 }
      const_attr_reader  :CAIRO_OPERATOR_OUT
      
      const_set_lazy(:CAIRO_OPERATOR_OUT_REVERSE) { 8 }
      const_attr_reader  :CAIRO_OPERATOR_OUT_REVERSE
      
      const_set_lazy(:CAIRO_OPERATOR_ATOP) { 9 }
      const_attr_reader  :CAIRO_OPERATOR_ATOP
      
      const_set_lazy(:CAIRO_OPERATOR_ATOP_REVERSE) { 10 }
      const_attr_reader  :CAIRO_OPERATOR_ATOP_REVERSE
      
      const_set_lazy(:CAIRO_OPERATOR_XOR) { 11 }
      const_attr_reader  :CAIRO_OPERATOR_XOR
      
      const_set_lazy(:CAIRO_OPERATOR_ADD) { 12 }
      const_attr_reader  :CAIRO_OPERATOR_ADD
      
      const_set_lazy(:CAIRO_OPERATOR_SATURATE) { 13 }
      const_attr_reader  :CAIRO_OPERATOR_SATURATE
      
      const_set_lazy(:CAIRO_FILL_RULE_WINDING) { 0 }
      const_attr_reader  :CAIRO_FILL_RULE_WINDING
      
      const_set_lazy(:CAIRO_FILL_RULE_EVEN_ODD) { 1 }
      const_attr_reader  :CAIRO_FILL_RULE_EVEN_ODD
      
      const_set_lazy(:CAIRO_LINE_CAP_BUTT) { 0 }
      const_attr_reader  :CAIRO_LINE_CAP_BUTT
      
      const_set_lazy(:CAIRO_LINE_CAP_ROUND) { 1 }
      const_attr_reader  :CAIRO_LINE_CAP_ROUND
      
      const_set_lazy(:CAIRO_LINE_CAP_SQUARE) { 2 }
      const_attr_reader  :CAIRO_LINE_CAP_SQUARE
      
      const_set_lazy(:CAIRO_LINE_JOIN_MITER) { 0 }
      const_attr_reader  :CAIRO_LINE_JOIN_MITER
      
      const_set_lazy(:CAIRO_LINE_JOIN_ROUND) { 1 }
      const_attr_reader  :CAIRO_LINE_JOIN_ROUND
      
      const_set_lazy(:CAIRO_LINE_JOIN_BEVEL) { 2 }
      const_attr_reader  :CAIRO_LINE_JOIN_BEVEL
      
      const_set_lazy(:CAIRO_FONT_SLANT_NORMAL) { 0 }
      const_attr_reader  :CAIRO_FONT_SLANT_NORMAL
      
      const_set_lazy(:CAIRO_FONT_SLANT_ITALIC) { 1 }
      const_attr_reader  :CAIRO_FONT_SLANT_ITALIC
      
      const_set_lazy(:CAIRO_FONT_SLANT_OBLIQUE) { 2 }
      const_attr_reader  :CAIRO_FONT_SLANT_OBLIQUE
      
      const_set_lazy(:CAIRO_FONT_WEIGHT_NORMAL) { 0 }
      const_attr_reader  :CAIRO_FONT_WEIGHT_NORMAL
      
      const_set_lazy(:CAIRO_FONT_WEIGHT_BOLD) { 1 }
      const_attr_reader  :CAIRO_FONT_WEIGHT_BOLD
      
      const_set_lazy(:CAIRO_STATUS_SUCCESS) { 0 }
      const_attr_reader  :CAIRO_STATUS_SUCCESS
      
      const_set_lazy(:CAIRO_STATUS_NO_MEMORY) { 1 }
      const_attr_reader  :CAIRO_STATUS_NO_MEMORY
      
      const_set_lazy(:CAIRO_STATUS_INVALID_RESTORE) { 2 }
      const_attr_reader  :CAIRO_STATUS_INVALID_RESTORE
      
      const_set_lazy(:CAIRO_STATUS_INVALID_POP_GROUP) { 3 }
      const_attr_reader  :CAIRO_STATUS_INVALID_POP_GROUP
      
      const_set_lazy(:CAIRO_STATUS_NO_CURRENT_POINT) { 4 }
      const_attr_reader  :CAIRO_STATUS_NO_CURRENT_POINT
      
      const_set_lazy(:CAIRO_STATUS_INVALID_MATRIX) { 5 }
      const_attr_reader  :CAIRO_STATUS_INVALID_MATRIX
      
      const_set_lazy(:CAIRO_STATUS_NO_TARGET_SURFACE) { 6 }
      const_attr_reader  :CAIRO_STATUS_NO_TARGET_SURFACE
      
      const_set_lazy(:CAIRO_STATUS_NULL_POINTER) { 7 }
      const_attr_reader  :CAIRO_STATUS_NULL_POINTER
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_IMAGE) { 0 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_IMAGE
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_PDF) { 1 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_PDF
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_PS) { 2 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_PS
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_XLIB) { 3 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_XLIB
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_XCB) { 4 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_XCB
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_GLITZ) { 5 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_GLITZ
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_QUARTZ) { 6 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_QUARTZ
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_WIN32) { 7 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_WIN32
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_BEOS) { 8 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_BEOS
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_DIRECTFB) { 9 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_DIRECTFB
      
      const_set_lazy(:CAIRO_SURFACE_TYPE_SVG) { 10 }
      const_attr_reader  :CAIRO_SURFACE_TYPE_SVG
      
      const_set_lazy(:CAIRO_FILTER_FAST) { 0 }
      const_attr_reader  :CAIRO_FILTER_FAST
      
      const_set_lazy(:CAIRO_FILTER_GOOD) { 1 }
      const_attr_reader  :CAIRO_FILTER_GOOD
      
      const_set_lazy(:CAIRO_FILTER_BEST) { 2 }
      const_attr_reader  :CAIRO_FILTER_BEST
      
      const_set_lazy(:CAIRO_FILTER_NEAREST) { 3 }
      const_attr_reader  :CAIRO_FILTER_NEAREST
      
      const_set_lazy(:CAIRO_FILTER_BILINEAR) { 4 }
      const_attr_reader  :CAIRO_FILTER_BILINEAR
      
      const_set_lazy(:CAIRO_FILTER_GAUSSIAN) { 5 }
      const_attr_reader  :CAIRO_FILTER_GAUSSIAN
      
      const_set_lazy(:CAIRO_EXTEND_NONE) { 0 }
      const_attr_reader  :CAIRO_EXTEND_NONE
      
      const_set_lazy(:CAIRO_EXTEND_REPEAT) { 1 }
      const_attr_reader  :CAIRO_EXTEND_REPEAT
      
      const_set_lazy(:CAIRO_EXTEND_REFLECT) { 2 }
      const_attr_reader  :CAIRO_EXTEND_REFLECT
      
      const_set_lazy(:CAIRO_EXTEND_PAD) { 3 }
      const_attr_reader  :CAIRO_EXTEND_PAD
      
      const_set_lazy(:CAIRO_PATH_MOVE_TO) { 0 }
      const_attr_reader  :CAIRO_PATH_MOVE_TO
      
      const_set_lazy(:CAIRO_PATH_LINE_TO) { 1 }
      const_attr_reader  :CAIRO_PATH_LINE_TO
      
      const_set_lazy(:CAIRO_PATH_CURVE_TO) { 2 }
      const_attr_reader  :CAIRO_PATH_CURVE_TO
      
      const_set_lazy(:CAIRO_PATH_CLOSE_PATH) { 3 }
      const_attr_reader  :CAIRO_PATH_CLOSE_PATH
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1font_1extents_1t_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64
      def cairo_font_extents_t_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1font_1extents_1t_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1path_1data_1t_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def cairo_path_data_t_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1path_1data_1t_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1path_1t_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def cairo_path_t_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1path_1t_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1text_1extents_1t_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def cairo_text_extents_t_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1text_1extents_1t_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_CAIRO_1VERSION_1ENCODE, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # Natives
      def _cairo_version_encode(major, minor, micro)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_CAIRO_1VERSION_1ENCODE, JNI.env, self.jni_id, major.to_int, minor.to_int, micro.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1append_1path, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param path cast=(cairo_path_t *)
      # 
      # int
      # int
      def __cairo_append_path(cr, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1append_1path, JNI.env, self.jni_id, cr.to_int, path.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def cairo_append_path(cr, path)
        PLATFORM_LOCK.lock
        begin
          __cairo_append_path(cr, path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1arc, [:pointer, :long, :int64, :double, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_arc(cr, xc, yc, radius, angle1, angle2)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1arc, JNI.env, self.jni_id, cr.to_int, xc, yc, radius, angle1, angle2)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_arc(cr, xc, yc, radius, angle1, angle2)
        PLATFORM_LOCK.lock
        begin
          __cairo_arc(cr, xc, yc, radius, angle1, angle2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1arc_1negative, [:pointer, :long, :int64, :double, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_arc_negative(cr, xc, yc, radius, angle1, angle2)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1arc_1negative, JNI.env, self.jni_id, cr.to_int, xc, yc, radius, angle1, angle2)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_arc_negative(cr, xc, yc, radius, angle1, angle2)
        PLATFORM_LOCK.lock
        begin
          __cairo_arc_negative(cr, xc, yc, radius, angle1, angle2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1clip, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_clip(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1clip, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_clip(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_clip(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1clip_1preserve, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_clip_preserve(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1clip_1preserve, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_clip_preserve(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_clip_preserve(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1close_1path, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_close_path(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1close_1path, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_close_path(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_close_path(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1copy_1page, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_copy_page(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1copy_1page, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_copy_page(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_copy_page(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1copy_1path, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      # int
      def __cairo_copy_path(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1copy_1path, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_copy_path(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_copy_path(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1copy_1path_1flat, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      # int
      def __cairo_copy_path_flat(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1copy_1path_1flat, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_copy_path_flat(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_copy_path_flat(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1create, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param target cast=(cairo_surface_t *)
      # int
      # int
      def __cairo_create(target)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1create, JNI.env, self.jni_id, target.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_create(target)
        PLATFORM_LOCK.lock
        begin
          return __cairo_create(target)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1curve_1to, [:pointer, :long, :int64, :double, :double, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_curve_to(cr, x1, y1, x2, y2, x3, y3)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1curve_1to, JNI.env, self.jni_id, cr.to_int, x1, y1, x2, y2, x3, y3)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_curve_to(cr, x1, y1, x2, y2, x3, y3)
        PLATFORM_LOCK.lock
        begin
          __cairo_curve_to(cr, x1, y1, x2, y2, x3, y3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1destroy, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_destroy(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1destroy, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_destroy(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_destroy(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1device_1to_1user, [:pointer, :long, :int64, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_device_to_user(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1device_1to_1user, JNI.env, self.jni_id, cr.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_device_to_user(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_device_to_user(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1device_1to_1user_1distance, [:pointer, :long, :int64, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_device_to_user_distance(cr, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1device_1to_1user_1distance, JNI.env, self.jni_id, cr.to_int, dx.jni_id, dy.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_device_to_user_distance(cr, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __cairo_device_to_user_distance(cr, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1fill, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_fill(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1fill, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_fill(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_fill(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1fill_1extents, [:pointer, :long, :int64, :long, :long, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_fill_extents(cr, x1, y1, x2, y2)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1fill_1extents, JNI.env, self.jni_id, cr.to_int, x1.jni_id, y1.jni_id, x2.jni_id, y2.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_fill_extents(cr, x1, y1, x2, y2)
        PLATFORM_LOCK.lock
        begin
          __cairo_fill_extents(cr, x1, y1, x2, y2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1fill_1preserve, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_fill_preserve(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1fill_1preserve, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_fill_preserve(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_fill_preserve(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1extents, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Cairo_font_extents_t] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_font_extents(cr, extents)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1extents, JNI.env, self.jni_id, cr.to_int, extents.jni_id)
      end
      
      typesig { [::Java::Long, Cairo_font_extents_t] }
      # int
      def cairo_font_extents(cr, extents)
        PLATFORM_LOCK.lock
        begin
          __cairo_font_extents(cr, extents)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1create, [:pointer, :long], :int64
      typesig { [] }
      # int
      def __cairo_font_options_create
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1create, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # int
      def cairo_font_options_create
        PLATFORM_LOCK.lock
        begin
          return __cairo_font_options_create
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1destroy, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param options cast=(cairo_font_options_t *)
      # int
      def __cairo_font_options_destroy(options)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1destroy, JNI.env, self.jni_id, options.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_font_options_destroy(options)
        PLATFORM_LOCK.lock
        begin
          __cairo_font_options_destroy(options)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1get_1antialias, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param options cast=(cairo_font_options_t *)
      # int
      def __cairo_font_options_get_antialias(options)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1get_1antialias, JNI.env, self.jni_id, options.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_font_options_get_antialias(options)
        PLATFORM_LOCK.lock
        begin
          return __cairo_font_options_get_antialias(options)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1set_1antialias, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param options cast=(cairo_font_options_t *)
      # int
      def __cairo_font_options_set_antialias(options, antialias)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1font_1options_1set_1antialias, JNI.env, self.jni_id, options.to_int, antialias.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_font_options_set_antialias(options, antialias)
        PLATFORM_LOCK.lock
        begin
          __cairo_font_options_set_antialias(options, antialias)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1antialias, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_antialias(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1antialias, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_antialias(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_antialias(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1current_1point, [:pointer, :long, :int64, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_current_point(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1current_1point, JNI.env, self.jni_id, cr.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_get_current_point(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_get_current_point(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1fill_1rule, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_fill_rule(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1fill_1rule, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_fill_rule(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_fill_rule(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1font_1face, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      # int
      def __cairo_get_font_face(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1font_1face, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_get_font_face(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_font_face(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1font_1matrix, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_get_font_matrix(cr, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1font_1matrix, JNI.env, self.jni_id, cr.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_get_font_matrix(cr, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_get_font_matrix(cr, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1font_1options, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param options cast=(cairo_font_options_t *)
      # 
      # int
      # int
      def __cairo_get_font_options(cr, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1font_1options, JNI.env, self.jni_id, cr.to_int, options.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def cairo_get_font_options(cr, options)
        PLATFORM_LOCK.lock
        begin
          __cairo_get_font_options(cr, options)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1line_1cap, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_line_cap(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1line_1cap, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_line_cap(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_line_cap(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1line_1join, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_line_join(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1line_1join, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_line_join(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_line_join(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1line_1width, [:pointer, :long, :int64], :double
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_line_width(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1line_1width, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_line_width(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_line_width(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1matrix, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_get_matrix(cr, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1matrix, JNI.env, self.jni_id, cr.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_get_matrix(cr, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_get_matrix(cr, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1miter_1limit, [:pointer, :long, :int64], :double
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_miter_limit(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1miter_1limit, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_miter_limit(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_miter_limit(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1operator, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_operator(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1operator, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_operator(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_operator(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1source, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      # int
      def __cairo_get_source(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1source, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_get_source(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_source(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1target, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      # int
      def __cairo_get_target(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1target, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_get_target(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_target(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1tolerance, [:pointer, :long, :int64], :double
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_get_tolerance(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1get_1tolerance, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_get_tolerance(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_get_tolerance(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1glyph_1extents, [:pointer, :long, :int64, :int64, :int32, :int64], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param glyphs cast=(cairo_glyph_t *)
      # @param extents cast=(cairo_text_extents_t *)
      # 
      # int
      # int
      # int
      def __cairo_glyph_extents(cr, glyphs, num_glyphs, extents)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1glyph_1extents, JNI.env, self.jni_id, cr.to_int, glyphs.to_int, num_glyphs.to_int, extents.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Long] }
      # int
      # int
      # int
      def cairo_glyph_extents(cr, glyphs, num_glyphs, extents)
        PLATFORM_LOCK.lock
        begin
          __cairo_glyph_extents(cr, glyphs, num_glyphs, extents)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1glyph_1path, [:pointer, :long, :int64, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # @param glyphs cast=(cairo_glyph_t *)
      # 
      # int
      # int
      def __cairo_glyph_path(cr, glyphs, num_glyphs)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1glyph_1path, JNI.env, self.jni_id, cr.to_int, glyphs.to_int, num_glyphs.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
      # int
      # int
      def cairo_glyph_path(cr, glyphs, num_glyphs)
        PLATFORM_LOCK.lock
        begin
          __cairo_glyph_path(cr, glyphs, num_glyphs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1identity_1matrix, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_identity_matrix(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1identity_1matrix, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_identity_matrix(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_identity_matrix(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1create, [:pointer, :long, :int32, :int32, :int32], :int64
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # int
      def __cairo_image_surface_create(format, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1create, JNI.env, self.jni_id, format.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # int
      def cairo_image_surface_create(format, width, height)
        PLATFORM_LOCK.lock
        begin
          return __cairo_image_surface_create(format, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1create_1for_1data, [:pointer, :long, :int64, :int32, :int32, :int32, :int32], :int64
      typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param data cast=(unsigned char *)
      # int
      # int
      def __cairo_image_surface_create_for_data(data, format, width, height, stride)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1create_1for_1data, JNI.env, self.jni_id, data.to_int, format.to_int, width.to_int, height.to_int, stride.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # int
      # int
      def cairo_image_surface_create_for_data(data, format, width, height, stride)
        PLATFORM_LOCK.lock
        begin
          return __cairo_image_surface_create_for_data(data, format, width, height, stride)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1get_1height, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_image_surface_get_height(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1get_1height, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_image_surface_get_height(surface)
        PLATFORM_LOCK.lock
        begin
          return __cairo_image_surface_get_height(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1get_1width, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_image_surface_get_width(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1image_1surface_1get_1width, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_image_surface_get_width(surface)
        PLATFORM_LOCK.lock
        begin
          return __cairo_image_surface_get_width(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1in_1fill, [:pointer, :long, :int64, :double, :double], :int32
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_in_fill(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1in_1fill, JNI.env, self.jni_id, cr.to_int, x, y)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_in_fill(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          return __cairo_in_fill(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1in_1stroke, [:pointer, :long, :int64, :double, :double], :int32
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_in_stroke(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1in_1stroke, JNI.env, self.jni_id, cr.to_int, x, y)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_in_stroke(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          return __cairo_in_stroke(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1line_1to, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_line_to(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1line_1to, JNI.env, self.jni_id, cr.to_int, x, y)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_line_to(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_line_to(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1mask, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param pattern cast=(cairo_pattern_t *)
      # 
      # int
      # int
      def __cairo_mask(cr, pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1mask, JNI.env, self.jni_id, cr.to_int, pattern.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def cairo_mask(cr, pattern)
        PLATFORM_LOCK.lock
        begin
          __cairo_mask(cr, pattern)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1mask_1surface, [:pointer, :long, :int64, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # @param surface cast=(cairo_surface_t *)
      # 
      # int
      # int
      def __cairo_mask_surface(cr, surface, surface_x, surface_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1mask_1surface, JNI.env, self.jni_id, cr.to_int, surface.to_int, surface_x, surface_y)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      # int
      def cairo_mask_surface(cr, surface, surface_x, surface_y)
        PLATFORM_LOCK.lock
        begin
          __cairo_mask_surface(cr, surface, surface_x, surface_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init, [:pointer, :long, :long, :double, :double, :double, :double, :double, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_init(matrix, xx, yx, xy, yy, x0, y0)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init, JNI.env, self.jni_id, matrix.jni_id, xx, yx, xy, yy, x0, y0)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      def cairo_matrix_init(matrix, xx, yx, xy, yy, x0, y0)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_init(matrix, xx, yx, xy, yy, x0, y0)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1identity, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Double)] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_init_identity(matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1identity, JNI.env, self.jni_id, matrix.jni_id)
      end
      
      typesig { [Array.typed(::Java::Double)] }
      def cairo_matrix_init_identity(matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_init_identity(matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1rotate, [:pointer, :long, :long, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_init_rotate(matrix, radians)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1rotate, JNI.env, self.jni_id, matrix.jni_id, radians)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double] }
      def cairo_matrix_init_rotate(matrix, radians)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_init_rotate(matrix, radians)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1scale, [:pointer, :long, :long, :double, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_init_scale(matrix, sx, sy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1scale, JNI.env, self.jni_id, matrix.jni_id, sx, sy)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      def cairo_matrix_init_scale(matrix, sx, sy)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_init_scale(matrix, sx, sy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1translate, [:pointer, :long, :long, :double, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_init_translate(matrix, tx, ty)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1init_1translate, JNI.env, self.jni_id, matrix.jni_id, tx, ty)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      def cairo_matrix_init_translate(matrix, tx, ty)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_init_translate(matrix, tx, ty)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1invert, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Double)] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_invert(matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1invert, JNI.env, self.jni_id, matrix.jni_id)
      end
      
      typesig { [Array.typed(::Java::Double)] }
      def cairo_matrix_invert(matrix)
        PLATFORM_LOCK.lock
        begin
          return __cairo_matrix_invert(matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1multiply, [:pointer, :long, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param result cast=(cairo_matrix_t *)
      # @param a cast=(cairo_matrix_t *)
      # @param b cast=(cairo_matrix_t *)
      def __cairo_matrix_multiply(result, a, b)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1multiply, JNI.env, self.jni_id, result.jni_id, a.jni_id, b.jni_id)
      end
      
      typesig { [Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def cairo_matrix_multiply(result, a, b)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_multiply(result, a, b)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1rotate, [:pointer, :long, :long, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_rotate(matrix, radians)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1rotate, JNI.env, self.jni_id, matrix.jni_id, radians)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double] }
      def cairo_matrix_rotate(matrix, radians)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_rotate(matrix, radians)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1scale, [:pointer, :long, :long, :double, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_scale(matrix, sx, sy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1scale, JNI.env, self.jni_id, matrix.jni_id, sx, sy)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      def cairo_matrix_scale(matrix, sx, sy)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_scale(matrix, sx, sy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1transform_1distance, [:pointer, :long, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_transform_distance(matrix, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1transform_1distance, JNI.env, self.jni_id, matrix.jni_id, dx.jni_id, dy.jni_id)
      end
      
      typesig { [Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def cairo_matrix_transform_distance(matrix, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_transform_distance(matrix, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1transform_1point, [:pointer, :long, :long, :long, :long], :void
      typesig { [Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_transform_point(matrix, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1transform_1point, JNI.env, self.jni_id, matrix.jni_id, x.jni_id, y.jni_id)
      end
      
      typesig { [Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def cairo_matrix_transform_point(matrix, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_transform_point(matrix, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1translate, [:pointer, :long, :long, :double, :double], :void
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      # @param matrix cast=(cairo_matrix_t *)
      def __cairo_matrix_translate(matrix, tx, ty)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1matrix_1translate, JNI.env, self.jni_id, matrix.jni_id, tx, ty)
      end
      
      typesig { [Array.typed(::Java::Double), ::Java::Double, ::Java::Double] }
      def cairo_matrix_translate(matrix, tx, ty)
        PLATFORM_LOCK.lock
        begin
          __cairo_matrix_translate(matrix, tx, ty)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1move_1to, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_move_to(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1move_1to, JNI.env, self.jni_id, cr.to_int, x, y)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_move_to(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_move_to(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1new_1path, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_new_path(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1new_1path, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_new_path(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_new_path(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1paint, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_paint(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1paint, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_paint(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_paint(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1paint_1with_1alpha, [:pointer, :long, :int64, :double], :void
      typesig { [::Java::Long, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_paint_with_alpha(cr, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1paint_1with_1alpha, JNI.env, self.jni_id, cr.to_int, alpha)
      end
      
      typesig { [::Java::Long, ::Java::Double] }
      # int
      def cairo_paint_with_alpha(cr, alpha)
        PLATFORM_LOCK.lock
        begin
          __cairo_paint_with_alpha(cr, alpha)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1path_1destroy, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param path cast=(cairo_path_t *)
      # int
      def __cairo_path_destroy(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1path_1destroy, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_path_destroy(path)
        PLATFORM_LOCK.lock
        begin
          __cairo_path_destroy(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1add_1color_1stop_1rgb, [:pointer, :long, :int64, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_add_color_stop_rgb(pattern, offset, red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1add_1color_1stop_1rgb, JNI.env, self.jni_id, pattern.to_int, offset, red, green, blue)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_pattern_add_color_stop_rgb(pattern, offset, red, green, blue)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_add_color_stop_rgb(pattern, offset, red, green, blue)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1add_1color_1stop_1rgba, [:pointer, :long, :int64, :double, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_add_color_stop_rgba(pattern, offset, red, green, blue, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1add_1color_1stop_1rgba, JNI.env, self.jni_id, pattern.to_int, offset, red, green, blue, alpha)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_pattern_add_color_stop_rgba(pattern, offset, red, green, blue, alpha)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_add_color_stop_rgba(pattern, offset, red, green, blue, alpha)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1create_1for_1surface, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # int
      # int
      def __cairo_pattern_create_for_surface(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1create_1for_1surface, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_pattern_create_for_surface(surface)
        PLATFORM_LOCK.lock
        begin
          return __cairo_pattern_create_for_surface(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1create_1linear, [:pointer, :long, :double, :double, :double, :double], :int64
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def __cairo_pattern_create_linear(x0, y0, x1, y1)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1create_1linear, JNI.env, self.jni_id, x0, y0, x1, y1)
      end
      
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_pattern_create_linear(x0, y0, x1, y1)
        PLATFORM_LOCK.lock
        begin
          return __cairo_pattern_create_linear(x0, y0, x1, y1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1create_1radial, [:pointer, :long, :double, :double, :double, :double, :double, :double], :int64
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def __cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1create_1radial, JNI.env, self.jni_id, cx0, cy0, radius0, cx1, cy1, radius1)
      end
      
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1)
        PLATFORM_LOCK.lock
        begin
          return __cairo_pattern_create_radial(cx0, cy0, radius0, cx1, cy1, radius1)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1destroy, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_destroy(pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1destroy, JNI.env, self.jni_id, pattern.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_pattern_destroy(pattern)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_destroy(pattern)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1get_1extend, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_get_extend(pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1get_1extend, JNI.env, self.jni_id, pattern.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_pattern_get_extend(pattern)
        PLATFORM_LOCK.lock
        begin
          return __cairo_pattern_get_extend(pattern)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1get_1filter, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_get_filter(pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1get_1filter, JNI.env, self.jni_id, pattern.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_pattern_get_filter(pattern)
        PLATFORM_LOCK.lock
        begin
          return __cairo_pattern_get_filter(pattern)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1get_1matrix, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param pattern cast=(cairo_pattern_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_pattern_get_matrix(pattern, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1get_1matrix, JNI.env, self.jni_id, pattern.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_pattern_get_matrix(pattern, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_get_matrix(pattern, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1reference, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_reference(pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1reference, JNI.env, self.jni_id, pattern.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_pattern_reference(pattern)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_reference(pattern)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1set_1extend, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_set_extend(pattern, extend)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1set_1extend, JNI.env, self.jni_id, pattern.to_int, extend.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_pattern_set_extend(pattern, extend)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_set_extend(pattern, extend)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1set_1filter, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param pattern cast=(cairo_pattern_t *)
      # int
      def __cairo_pattern_set_filter(pattern, filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1set_1filter, JNI.env, self.jni_id, pattern.to_int, filter.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_pattern_set_filter(pattern, filter)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_set_filter(pattern, filter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1set_1matrix, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param pattern cast=(cairo_pattern_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_pattern_set_matrix(pattern, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pattern_1set_1matrix, JNI.env, self.jni_id, pattern.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_pattern_set_matrix(pattern, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_pattern_set_matrix(pattern, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pdf_1surface_1set_1size, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @method flags=dynamic
      # @param surface cast=(cairo_surface_t *)
      # 
      # int
      def __cairo_pdf_surface_set_size(surface, width_in_points, height_in_points)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1pdf_1surface_1set_1size, JNI.env, self.jni_id, surface.to_int, width_in_points, height_in_points)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_pdf_surface_set_size(surface, width_in_points, height_in_points)
        PLATFORM_LOCK.lock
        begin
          __cairo_pdf_surface_set_size(surface, width_in_points, height_in_points)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1ps_1surface_1set_1size, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @method flags=dynamic
      # @param surface cast=(cairo_surface_t *)
      # 
      # int
      def __cairo_ps_surface_set_size(surface, width_in_points, height_in_points)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1ps_1surface_1set_1size, JNI.env, self.jni_id, surface.to_int, width_in_points, height_in_points)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_ps_surface_set_size(surface, width_in_points, height_in_points)
        PLATFORM_LOCK.lock
        begin
          __cairo_ps_surface_set_size(surface, width_in_points, height_in_points)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rectangle, [:pointer, :long, :int64, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_rectangle(cr, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rectangle, JNI.env, self.jni_id, cr.to_int, x, y, width, height)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_rectangle(cr, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __cairo_rectangle(cr, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1reference, [:pointer, :long, :int64], :int64
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      # int
      def __cairo_reference(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1reference, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def cairo_reference(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_reference(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rel_1curve_1to, [:pointer, :long, :int64, :double, :double, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_rel_curve_to(cr, dx1, dy1, dx2, dy2, dx3, dy3)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rel_1curve_1to, JNI.env, self.jni_id, cr.to_int, dx1, dy1, dx2, dy2, dx3, dy3)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_rel_curve_to(cr, dx1, dy1, dx2, dy2, dx3, dy3)
        PLATFORM_LOCK.lock
        begin
          __cairo_rel_curve_to(cr, dx1, dy1, dx2, dy2, dx3, dy3)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rel_1line_1to, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_rel_line_to(cr, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rel_1line_1to, JNI.env, self.jni_id, cr.to_int, dx, dy)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_rel_line_to(cr, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __cairo_rel_line_to(cr, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rel_1move_1to, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_rel_move_to(cr, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rel_1move_1to, JNI.env, self.jni_id, cr.to_int, dx, dy)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_rel_move_to(cr, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __cairo_rel_move_to(cr, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1reset_1clip, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_reset_clip(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1reset_1clip, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_reset_clip(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_reset_clip(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1restore, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_restore(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1restore, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_restore(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_restore(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rotate, [:pointer, :long, :int64, :double], :void
      typesig { [::Java::Long, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_rotate(cr, angle)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1rotate, JNI.env, self.jni_id, cr.to_int, angle)
      end
      
      typesig { [::Java::Long, ::Java::Double] }
      # int
      def cairo_rotate(cr, angle)
        PLATFORM_LOCK.lock
        begin
          __cairo_rotate(cr, angle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1save, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_save(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1save, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_save(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_save(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1scale, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_scale(cr, sx, sy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1scale, JNI.env, self.jni_id, cr.to_int, sx, sy)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_scale(cr, sx, sy)
        PLATFORM_LOCK.lock
        begin
          __cairo_scale(cr, sx, sy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1select_1font_1face, [:pointer, :long, :int64, :long, :int32, :int32], :void
      typesig { [::Java::Long, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # @param family cast=(const char *)
      # 
      # int
      def __cairo_select_font_face(cr, family, slant, weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1select_1font_1face, JNI.env, self.jni_id, cr.to_int, family.jni_id, slant.to_int, weight.to_int)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # int
      def cairo_select_font_face(cr, family, slant, weight)
        PLATFORM_LOCK.lock
        begin
          __cairo_select_font_face(cr, family, slant, weight)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1antialias, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_antialias(cr, antialias)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1antialias, JNI.env, self.jni_id, cr.to_int, antialias.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_set_antialias(cr, antialias)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_antialias(cr, antialias)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1dash, [:pointer, :long, :int64, :long, :int32, :double], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), ::Java::Int, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_dash(cr, dashes, ndash, offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1dash, JNI.env, self.jni_id, cr.to_int, dashes.jni_id, ndash.to_int, offset)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), ::Java::Int, ::Java::Double] }
      # int
      def cairo_set_dash(cr, dashes, ndash, offset)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_dash(cr, dashes, ndash, offset)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1fill_1rule, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_fill_rule(cr, fill_rule)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1fill_1rule, JNI.env, self.jni_id, cr.to_int, fill_rule.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_set_fill_rule(cr, fill_rule)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_fill_rule(cr, fill_rule)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1face, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param font_face cast=(cairo_font_face_t *)
      # 
      # int
      # int
      def __cairo_set_font_face(cr, font_face)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1face, JNI.env, self.jni_id, cr.to_int, font_face.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def cairo_set_font_face(cr, font_face)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_font_face(cr, font_face)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1matrix, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_set_font_matrix(cr, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1matrix, JNI.env, self.jni_id, cr.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_set_font_matrix(cr, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_font_matrix(cr, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1options, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param options cast=(cairo_font_options_t *)
      # 
      # int
      # int
      def __cairo_set_font_options(cr, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1options, JNI.env, self.jni_id, cr.to_int, options.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def cairo_set_font_options(cr, options)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_font_options(cr, options)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1size, [:pointer, :long, :int64, :double], :void
      typesig { [::Java::Long, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_font_size(cr, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1font_1size, JNI.env, self.jni_id, cr.to_int, size)
      end
      
      typesig { [::Java::Long, ::Java::Double] }
      # int
      def cairo_set_font_size(cr, size)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_font_size(cr, size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1line_1cap, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_line_cap(cr, line_cap)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1line_1cap, JNI.env, self.jni_id, cr.to_int, line_cap.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_set_line_cap(cr, line_cap)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_line_cap(cr, line_cap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1line_1join, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_line_join(cr, line_join)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1line_1join, JNI.env, self.jni_id, cr.to_int, line_join.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_set_line_join(cr, line_join)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_line_join(cr, line_join)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1line_1width, [:pointer, :long, :int64, :double], :void
      typesig { [::Java::Long, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_line_width(cr, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1line_1width, JNI.env, self.jni_id, cr.to_int, width)
      end
      
      typesig { [::Java::Long, ::Java::Double] }
      # int
      def cairo_set_line_width(cr, width)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_line_width(cr, width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1matrix, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_set_matrix(cr, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1matrix, JNI.env, self.jni_id, cr.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_set_matrix(cr, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_matrix(cr, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1miter_1limit, [:pointer, :long, :int64, :double], :void
      typesig { [::Java::Long, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_miter_limit(cr, limit)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1miter_1limit, JNI.env, self.jni_id, cr.to_int, limit)
      end
      
      typesig { [::Java::Long, ::Java::Double] }
      # int
      def cairo_set_miter_limit(cr, limit)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_miter_limit(cr, limit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1operator, [:pointer, :long, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_operator(cr, op)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1operator, JNI.env, self.jni_id, cr.to_int, op.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int] }
      # int
      def cairo_set_operator(cr, op)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_operator(cr, op)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source, [:pointer, :long, :int64, :int64], :void
      typesig { [::Java::Long, ::Java::Long] }
      # @param cr cast=(cairo_t *)
      # @param source cast=(cairo_pattern_t *)
      # 
      # int
      # int
      def __cairo_set_source(cr, source)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source, JNI.env, self.jni_id, cr.to_int, source.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def cairo_set_source(cr, source)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_source(cr, source)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source_1rgb, [:pointer, :long, :int64, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_source_rgb(cr, red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source_1rgb, JNI.env, self.jni_id, cr.to_int, red, green, blue)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_set_source_rgb(cr, red, green, blue)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_source_rgb(cr, red, green, blue)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source_1rgba, [:pointer, :long, :int64, :double, :double, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_source_rgba(cr, red, green, blue, alpha)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source_1rgba, JNI.env, self.jni_id, cr.to_int, red, green, blue, alpha)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # int
      def cairo_set_source_rgba(cr, red, green, blue, alpha)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_source_rgba(cr, red, green, blue, alpha)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source_1surface, [:pointer, :long, :int64, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # @param surface cast=(cairo_surface_t *)
      # 
      # int
      # int
      def __cairo_set_source_surface(cr, surface, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1source_1surface, JNI.env, self.jni_id, cr.to_int, surface.to_int, x, y)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      # int
      def cairo_set_source_surface(cr, surface, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_source_surface(cr, surface, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1tolerance, [:pointer, :long, :int64, :double], :void
      typesig { [::Java::Long, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_set_tolerance(cr, tolerance)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1set_1tolerance, JNI.env, self.jni_id, cr.to_int, tolerance)
      end
      
      typesig { [::Java::Long, ::Java::Double] }
      # int
      def cairo_set_tolerance(cr, tolerance)
        PLATFORM_LOCK.lock
        begin
          __cairo_set_tolerance(cr, tolerance)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1show_1glyphs, [:pointer, :long, :int64, :int64, :int32], :void
      typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
      # @param cr cast=(cairo_t *)
      # @param glyphs cast=(cairo_glyph_t *)
      # 
      # int
      # int
      def __cairo_show_glyphs(cr, glyphs, num_glyphs)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1show_1glyphs, JNI.env, self.jni_id, cr.to_int, glyphs.to_int, num_glyphs.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
      # int
      # int
      def cairo_show_glyphs(cr, glyphs, num_glyphs)
        PLATFORM_LOCK.lock
        begin
          __cairo_show_glyphs(cr, glyphs, num_glyphs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1show_1page, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_show_page(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1show_1page, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_show_page(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_show_page(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1show_1text, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Byte)] }
      # @param cr cast=(cairo_t *)
      # @param utf8 cast=(const char *)
      # 
      # int
      def __cairo_show_text(cr, utf8)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1show_1text, JNI.env, self.jni_id, cr.to_int, utf8.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Byte)] }
      # int
      def cairo_show_text(cr, utf8)
        PLATFORM_LOCK.lock
        begin
          __cairo_show_text(cr, utf8)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1status, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_status(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1status, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_status(cr)
        PLATFORM_LOCK.lock
        begin
          return __cairo_status(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1status_1to_1string, [:pointer, :long, :int32], :int64
      typesig { [::Java::Int] }
      # int
      def __cairo_status_to_string(status)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1status_1to_1string, JNI.env, self.jni_id, status.to_int)
      end
      
      typesig { [::Java::Int] }
      # int
      def cairo_status_to_string(status)
        PLATFORM_LOCK.lock
        begin
          return __cairo_status_to_string(status)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1stroke, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_stroke(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1stroke, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_stroke(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_stroke(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1stroke_1extents, [:pointer, :long, :int64, :long, :long, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_stroke_extents(cr, x1, y1, x2, y2)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1stroke_1extents, JNI.env, self.jni_id, cr.to_int, x1.jni_id, y1.jni_id, x2.jni_id, y2.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_stroke_extents(cr, x1, y1, x2, y2)
        PLATFORM_LOCK.lock
        begin
          __cairo_stroke_extents(cr, x1, y1, x2, y2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1stroke_1preserve, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_stroke_preserve(cr)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1stroke_1preserve, JNI.env, self.jni_id, cr.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_stroke_preserve(cr)
        PLATFORM_LOCK.lock
        begin
          __cairo_stroke_preserve(cr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1create_1similar, [:pointer, :long, :int64, :int32, :int32, :int32], :int64
      typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param other cast=(cairo_surface_t *)
      # int
      # int
      def __cairo_surface_create_similar(other, format, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1create_1similar, JNI.env, self.jni_id, other.to_int, format.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
      # int
      # int
      def cairo_surface_create_similar(other, format, width, height)
        PLATFORM_LOCK.lock
        begin
          return __cairo_surface_create_similar(other, format, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1destroy, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_surface_destroy(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1destroy, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_surface_destroy(surface)
        PLATFORM_LOCK.lock
        begin
          __cairo_surface_destroy(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1finish, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_surface_finish(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1finish, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_surface_finish(surface)
        PLATFORM_LOCK.lock
        begin
          __cairo_surface_finish(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1get_1type, [:pointer, :long, :int64], :int32
      typesig { [::Java::Long] }
      # @method flags=dynamic
      # @param surface cast=(cairo_surface_t *)
      # 
      # int
      def __cairo_surface_get_type(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1get_1type, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_surface_get_type(surface)
        PLATFORM_LOCK.lock
        begin
          return __cairo_surface_get_type(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1get_1user_1data, [:pointer, :long, :int64, :int64], :int64
      typesig { [::Java::Long, ::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # @param key cast=(cairo_user_data_key_t *)
      # 
      # int
      # int
      # int
      def __cairo_surface_get_user_data(surface, key)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1get_1user_1data, JNI.env, self.jni_id, surface.to_int, key.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def cairo_surface_get_user_data(surface, key)
        PLATFORM_LOCK.lock
        begin
          return __cairo_surface_get_user_data(surface, key)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1reference, [:pointer, :long, :int64], :void
      typesig { [::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_surface_reference(surface)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1reference, JNI.env, self.jni_id, surface.to_int)
      end
      
      typesig { [::Java::Long] }
      # int
      def cairo_surface_reference(surface)
        PLATFORM_LOCK.lock
        begin
          __cairo_surface_reference(surface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1set_1device_1offset, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_surface_set_device_offset(surface, x_offset, y_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1set_1device_1offset, JNI.env, self.jni_id, surface.to_int, x_offset, y_offset)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_surface_set_device_offset(surface, x_offset, y_offset)
        PLATFORM_LOCK.lock
        begin
          __cairo_surface_set_device_offset(surface, x_offset, y_offset)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1set_1fallback_1resolution, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @method flags=dynamic
      # int
      def __cairo_surface_set_fallback_resolution(surface, x_pixels_per_inch, y_pixels_per_inch)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1set_1fallback_1resolution, JNI.env, self.jni_id, surface.to_int, x_pixels_per_inch, y_pixels_per_inch)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_surface_set_fallback_resolution(surface, x_pixels_per_inch, y_pixels_per_inch)
        PLATFORM_LOCK.lock
        begin
          __cairo_surface_set_fallback_resolution(surface, x_pixels_per_inch, y_pixels_per_inch)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1set_1user_1data, [:pointer, :long, :int64, :int64, :int64, :int64], :int32
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # @param surface cast=(cairo_surface_t *)
      # @param key cast=(cairo_user_data_key_t *)
      # @param user_data cast=(void *)
      # @param destroy cast=(cairo_destroy_func_t)
      # 
      # int
      # int
      # int
      # int
      def __cairo_surface_set_user_data(surface, key, user_data, destroy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1surface_1set_1user_1data, JNI.env, self.jni_id, surface.to_int, key.to_int, user_data.to_int, destroy.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      def cairo_surface_set_user_data(surface, key, user_data, destroy)
        PLATFORM_LOCK.lock
        begin
          return __cairo_surface_set_user_data(surface, key, user_data, destroy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1text_1extents, [:pointer, :long, :int64, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Byte), Cairo_text_extents_t] }
      # @param cr cast=(cairo_t *)
      # @param utf8 cast=(const char *)
      # @param extents cast=(cairo_text_extents_t *)
      # 
      # int
      def __cairo_text_extents(cr, utf8, extents)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1text_1extents, JNI.env, self.jni_id, cr.to_int, utf8.jni_id, extents.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Byte), Cairo_text_extents_t] }
      # int
      def cairo_text_extents(cr, utf8, extents)
        PLATFORM_LOCK.lock
        begin
          __cairo_text_extents(cr, utf8, extents)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1text_1path, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Byte)] }
      # @param cr cast=(cairo_t *)
      # @param utf8 cast=(const char *)
      # 
      # int
      def __cairo_text_path(cr, utf8)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1text_1path, JNI.env, self.jni_id, cr.to_int, utf8.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Byte)] }
      # int
      def cairo_text_path(cr, utf8)
        PLATFORM_LOCK.lock
        begin
          __cairo_text_path(cr, utf8)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1transform, [:pointer, :long, :int64, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # @param matrix cast=(cairo_matrix_t *)
      # 
      # int
      def __cairo_transform(cr, matrix)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1transform, JNI.env, self.jni_id, cr.to_int, matrix.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double)] }
      # int
      def cairo_transform(cr, matrix)
        PLATFORM_LOCK.lock
        begin
          __cairo_transform(cr, matrix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1translate, [:pointer, :long, :int64, :double, :double], :void
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_translate(cr, tx, ty)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1translate, JNI.env, self.jni_id, cr.to_int, tx, ty)
      end
      
      typesig { [::Java::Long, ::Java::Double, ::Java::Double] }
      # int
      def cairo_translate(cr, tx, ty)
        PLATFORM_LOCK.lock
        begin
          __cairo_translate(cr, tx, ty)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1user_1to_1device, [:pointer, :long, :int64, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_user_to_device(cr, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1user_1to_1device, JNI.env, self.jni_id, cr.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_user_to_device(cr, x, y)
        PLATFORM_LOCK.lock
        begin
          __cairo_user_to_device(cr, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1user_1to_1device_1distance, [:pointer, :long, :int64, :long, :long], :void
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # @param cr cast=(cairo_t *)
      # int
      def __cairo_user_to_device_distance(cr, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1user_1to_1device_1distance, JNI.env, self.jni_id, cr.to_int, dx.jni_id, dy.jni_id)
      end
      
      typesig { [::Java::Long, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # int
      def cairo_user_to_device_distance(cr, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __cairo_user_to_device_distance(cr, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1version, [:pointer, :long], :int32
      typesig { [] }
      def cairo_version
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_cairo_1version, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1xlib_1surface_1create, [:pointer, :long, :int64, :int64, :int64, :int32, :int32], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param drawable cast=(Drawable)
      # @param visual cast=(Visual *)
      # 
      # int
      # int
      # int
      # int
      def __cairo_xlib_surface_create(dpy, drawable, visual, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1xlib_1surface_1create, JNI.env, self.jni_id, dpy.to_int, drawable.to_int, visual.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int] }
      # int
      # int
      # int
      # int
      def cairo_xlib_surface_create(dpy, drawable, visual, width, height)
        PLATFORM_LOCK.lock
        begin
          return __cairo_xlib_surface_create(dpy, drawable, visual, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1xlib_1surface_1create_1for_1bitmap, [:pointer, :long, :int64, :int64, :int64, :int32, :int32], :int64
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param pixmap cast=(Pixmap)
      # @param screen cast=(Screen *)
      # 
      # int
      # int
      # int
      # int
      def __cairo_xlib_surface_create_for_bitmap(dpy, pixmap, screen, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1xlib_1surface_1create_1for_1bitmap, JNI.env, self.jni_id, dpy.to_int, pixmap.to_int, screen.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int] }
      # int
      # int
      # int
      # int
      def cairo_xlib_surface_create_for_bitmap(dpy, pixmap, screen, width, height)
        PLATFORM_LOCK.lock
        begin
          return __cairo_xlib_surface_create_for_bitmap(dpy, pixmap, screen, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1xlib_1surface_1set_1size, [:pointer, :long, :int64, :int32, :int32], :void
      typesig { [::Java::Long, ::Java::Int, ::Java::Int] }
      # @param surface cast=(cairo_surface_t *)
      # int
      def __cairo_xlib_surface_set_size(surface, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo__1cairo_1xlib_1surface_1set_1size, JNI.env, self.jni_id, surface.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Long, ::Java::Int, ::Java::Int] }
      # int
      def cairo_xlib_surface_set_size(surface, width, height)
        PLATFORM_LOCK.lock
        begin
          __cairo_xlib_surface_set_size(surface, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cairo_Cairo_memmove__L#{Cairo_path_t.jni_name}_2JJ".to_sym, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Cairo_path_t, ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_cairo_Cairo_memmove__L#{Cairo_path_t.jni_name}_2JJ".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_cairo_Cairo_memmove__L#{Cairo_path_data_t.jni_name}_2JJ".to_sym, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Cairo_path_data_t, ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_cairo_Cairo_memmove__L#{Cairo_path_data_t.jni_name}_2JJ".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_cairo_Cairo_memmove___3XdoubleXJJ, [:pointer, :long, :long, :int64, :int64], :void
      typesig { [Array.typed(::Java::Double), ::Java::Long, ::Java::Long] }
      # @param dest cast=(void *)
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # int
      # int
      def memmove(dest, src, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_cairo_Cairo_memmove___3XdoubleXJJ, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__cairo, :initialize
  end
  
end
