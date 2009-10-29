require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Opengl::Win32
  module WGLImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Opengl::Win32
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class WGL < WGLImports.const_get :Platform
    include_class_members WGLImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-wgl")
      end
      
      const_set_lazy(:WGL_FONT_LINES) { 0 }
      const_attr_reader  :WGL_FONT_LINES
      
      const_set_lazy(:WGL_FONT_POLYGONS) { 1 }
      const_attr_reader  :WGL_FONT_POLYGONS
      
      # LAYERPLANEDESCRIPTOR flags
      const_set_lazy(:LPD_DOUBLEBUFFER) { 0x1 }
      const_attr_reader  :LPD_DOUBLEBUFFER
      
      const_set_lazy(:LPD_STEREO) { 0x2 }
      const_attr_reader  :LPD_STEREO
      
      const_set_lazy(:LPD_SUPPORT_GDI) { 0x10 }
      const_attr_reader  :LPD_SUPPORT_GDI
      
      const_set_lazy(:LPD_SUPPORT_OPENGL) { 0x20 }
      const_attr_reader  :LPD_SUPPORT_OPENGL
      
      const_set_lazy(:LPD_SHARE_DEPTH) { 0x40 }
      const_attr_reader  :LPD_SHARE_DEPTH
      
      const_set_lazy(:LPD_SHARE_STENCIL) { 0x80 }
      const_attr_reader  :LPD_SHARE_STENCIL
      
      const_set_lazy(:LPD_SHARE_ACCUM) { 0x100 }
      const_attr_reader  :LPD_SHARE_ACCUM
      
      const_set_lazy(:LPD_SWAP_EXCHANGE) { 0x200 }
      const_attr_reader  :LPD_SWAP_EXCHANGE
      
      const_set_lazy(:LPD_SWAP_COPY) { 0x400 }
      const_attr_reader  :LPD_SWAP_COPY
      
      const_set_lazy(:LPD_TRANSPARENT) { 0x1000 }
      const_attr_reader  :LPD_TRANSPARENT
      
      const_set_lazy(:LPD_TYPE_RGBA) { 0 }
      const_attr_reader  :LPD_TYPE_RGBA
      
      const_set_lazy(:LPD_TYPE_COLORINDEX) { 1 }
      const_attr_reader  :LPD_TYPE_COLORINDEX
      
      # wglSwapLayerBuffers flags
      const_set_lazy(:WGL_SWAP_MAIN_PLANE) { 0x1 }
      const_attr_reader  :WGL_SWAP_MAIN_PLANE
      
      const_set_lazy(:WGL_SWAP_OVERLAY1) { 0x2 }
      const_attr_reader  :WGL_SWAP_OVERLAY1
      
      const_set_lazy(:WGL_SWAP_OVERLAY2) { 0x4 }
      const_attr_reader  :WGL_SWAP_OVERLAY2
      
      const_set_lazy(:WGL_SWAP_OVERLAY3) { 0x8 }
      const_attr_reader  :WGL_SWAP_OVERLAY3
      
      const_set_lazy(:WGL_SWAP_OVERLAY4) { 0x10 }
      const_attr_reader  :WGL_SWAP_OVERLAY4
      
      const_set_lazy(:WGL_SWAP_OVERLAY5) { 0x20 }
      const_attr_reader  :WGL_SWAP_OVERLAY5
      
      const_set_lazy(:WGL_SWAP_OVERLAY6) { 0x40 }
      const_attr_reader  :WGL_SWAP_OVERLAY6
      
      const_set_lazy(:WGL_SWAP_OVERLAY7) { 0x80 }
      const_attr_reader  :WGL_SWAP_OVERLAY7
      
      const_set_lazy(:WGL_SWAP_OVERLAY8) { 0x100 }
      const_attr_reader  :WGL_SWAP_OVERLAY8
      
      const_set_lazy(:WGL_SWAP_OVERLAY9) { 0x200 }
      const_attr_reader  :WGL_SWAP_OVERLAY9
      
      const_set_lazy(:WGL_SWAP_OVERLAY10) { 0x400 }
      const_attr_reader  :WGL_SWAP_OVERLAY10
      
      const_set_lazy(:WGL_SWAP_OVERLAY11) { 0x800 }
      const_attr_reader  :WGL_SWAP_OVERLAY11
      
      const_set_lazy(:WGL_SWAP_OVERLAY12) { 0x1000 }
      const_attr_reader  :WGL_SWAP_OVERLAY12
      
      const_set_lazy(:WGL_SWAP_OVERLAY13) { 0x2000 }
      const_attr_reader  :WGL_SWAP_OVERLAY13
      
      const_set_lazy(:WGL_SWAP_OVERLAY14) { 0x4000 }
      const_attr_reader  :WGL_SWAP_OVERLAY14
      
      const_set_lazy(:WGL_SWAP_OVERLAY15) { 0x8000 }
      const_attr_reader  :WGL_SWAP_OVERLAY15
      
      const_set_lazy(:WGL_SWAP_UNDERLAY1) { 0x10000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY1
      
      const_set_lazy(:WGL_SWAP_UNDERLAY2) { 0x20000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY2
      
      const_set_lazy(:WGL_SWAP_UNDERLAY3) { 0x40000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY3
      
      const_set_lazy(:WGL_SWAP_UNDERLAY4) { 0x80000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY4
      
      const_set_lazy(:WGL_SWAP_UNDERLAY5) { 0x100000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY5
      
      const_set_lazy(:WGL_SWAP_UNDERLAY6) { 0x200000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY6
      
      const_set_lazy(:WGL_SWAP_UNDERLAY7) { 0x400000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY7
      
      const_set_lazy(:WGL_SWAP_UNDERLAY8) { 0x800000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY8
      
      const_set_lazy(:WGL_SWAP_UNDERLAY9) { 0x1000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY9
      
      const_set_lazy(:WGL_SWAP_UNDERLAY10) { 0x2000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY10
      
      const_set_lazy(:WGL_SWAP_UNDERLAY11) { 0x4000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY11
      
      const_set_lazy(:WGL_SWAP_UNDERLAY12) { 0x8000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY12
      
      const_set_lazy(:WGL_SWAP_UNDERLAY13) { 0x10000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY13
      
      const_set_lazy(:WGL_SWAP_UNDERLAY14) { 0x20000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY14
      
      const_set_lazy(:WGL_SWAP_UNDERLAY15) { 0x40000000 }
      const_attr_reader  :WGL_SWAP_UNDERLAY15
      
      # pixel types
      const_set_lazy(:PFD_TYPE_RGBA) { 0 }
      const_attr_reader  :PFD_TYPE_RGBA
      
      const_set_lazy(:PFD_TYPE_COLORINDEX) { 1 }
      const_attr_reader  :PFD_TYPE_COLORINDEX
      
      # layer types
      const_set_lazy(:PFD_MAIN_PLANE) { 0 }
      const_attr_reader  :PFD_MAIN_PLANE
      
      const_set_lazy(:PFD_OVERLAY_PLANE) { 1 }
      const_attr_reader  :PFD_OVERLAY_PLANE
      
      const_set_lazy(:PFD_UNDERLAY_PLANE) { (-1) }
      const_attr_reader  :PFD_UNDERLAY_PLANE
      
      # PIXELFORMATDESCRIPTOR flags
      const_set_lazy(:PFD_DOUBLEBUFFER) { 0x1 }
      const_attr_reader  :PFD_DOUBLEBUFFER
      
      const_set_lazy(:PFD_STEREO) { 0x2 }
      const_attr_reader  :PFD_STEREO
      
      const_set_lazy(:PFD_DRAW_TO_WINDOW) { 0x4 }
      const_attr_reader  :PFD_DRAW_TO_WINDOW
      
      const_set_lazy(:PFD_DRAW_TO_BITMAP) { 0x8 }
      const_attr_reader  :PFD_DRAW_TO_BITMAP
      
      const_set_lazy(:PFD_SUPPORT_GDI) { 0x10 }
      const_attr_reader  :PFD_SUPPORT_GDI
      
      const_set_lazy(:PFD_SUPPORT_OPENGL) { 0x20 }
      const_attr_reader  :PFD_SUPPORT_OPENGL
      
      const_set_lazy(:PFD_GENERIC_FORMAT) { 0x40 }
      const_attr_reader  :PFD_GENERIC_FORMAT
      
      const_set_lazy(:PFD_NEED_PALETTE) { 0x80 }
      const_attr_reader  :PFD_NEED_PALETTE
      
      const_set_lazy(:PFD_NEED_SYSTEM_PALETTE) { 0x100 }
      const_attr_reader  :PFD_NEED_SYSTEM_PALETTE
      
      const_set_lazy(:PFD_SWAP_EXCHANGE) { 0x200 }
      const_attr_reader  :PFD_SWAP_EXCHANGE
      
      const_set_lazy(:PFD_SWAP_COPY) { 0x400 }
      const_attr_reader  :PFD_SWAP_COPY
      
      const_set_lazy(:PFD_SWAP_LAYER_BUFFERS) { 0x800 }
      const_attr_reader  :PFD_SWAP_LAYER_BUFFERS
      
      const_set_lazy(:PFD_GENERIC_ACCELERATED) { 0x1000 }
      const_attr_reader  :PFD_GENERIC_ACCELERATED
      
      const_set_lazy(:PFD_SUPPORT_DIRECTDRAW) { 0x2000 }
      const_attr_reader  :PFD_SUPPORT_DIRECTDRAW
      
      # PIXELFORMATDESCRIPTOR flags for use in ChoosePixelFormat only
      const_set_lazy(:PFD_DEPTH_DONTCARE) { 0x20000000 }
      const_attr_reader  :PFD_DEPTH_DONTCARE
      
      const_set_lazy(:PFD_DOUBLEBUFFER_DONTCARE) { 0x40000000 }
      const_attr_reader  :PFD_DOUBLEBUFFER_DONTCARE
      
      const_set_lazy(:PFD_STEREO_DONTCARE) { -0x80000000 }
      const_attr_reader  :PFD_STEREO_DONTCARE
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_ChoosePixelFormat, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, PIXELFORMATDESCRIPTOR] }
      # @param hdc cast=(HDC)
      # long
      def _choose_pixel_format(hdc, ppfd)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_ChoosePixelFormat, JNI.env, self.jni_id, hdc.to_int, ppfd.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_DescribePixelFormat, [:pointer, :long, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, PIXELFORMATDESCRIPTOR] }
      # @param hdc cast=(HDC)
      # long
      def _describe_pixel_format(hdc, i_pixel_format, n_bytes, ppfd)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_DescribePixelFormat, JNI.env, self.jni_id, hdc.to_int, i_pixel_format.to_int, n_bytes.to_int, ppfd.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_GetPixelFormat, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _get_pixel_format(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_GetPixelFormat, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_SetPixelFormat, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, PIXELFORMATDESCRIPTOR] }
      # @param hdc cast=(HDC)
      # long
      def _set_pixel_format(hdc, i_pixel_format, ppfd)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_SetPixelFormat, JNI.env, self.jni_id, hdc.to_int, i_pixel_format.to_int, ppfd.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_SwapBuffers, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def _swap_buffers(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_SwapBuffers, JNI.env, self.jni_id, hdc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglCopyContext, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param hglrcSrc cast=(HGLRC)
      # @param hglrcDst cast=(HGLRC)
      # 
      # long
      # long
      def wgl_copy_context(hglrc_src, hglrc_dst, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglCopyContext, JNI.env, self.jni_id, hglrc_src.to_int, hglrc_dst.to_int, mask.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglCreateContext, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      # long
      def wgl_create_context(hdc)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglCreateContext, JNI.env, self.jni_id, hdc.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglCreateLayerContext, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      # long
      def wgl_create_layer_context(hdc, i_layer_plane)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglCreateLayerContext, JNI.env, self.jni_id, hdc.to_int, i_layer_plane.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglDeleteContext, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # @param hglrc cast=(HGLRC)
      # long
      def wgl_delete_context(hglrc)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglDeleteContext, JNI.env, self.jni_id, hglrc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetCurrentContext, [:pointer, :long], :int32
      typesig { [] }
      # long
      def wgl_get_current_context
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetCurrentContext, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetCurrentDC, [:pointer, :long], :int32
      typesig { [] }
      # long
      def wgl_get_current_dc
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetCurrentDC, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetProcAddress, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def wgl_get_proc_address(lpsz_proc)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetProcAddress, JNI.env, self.jni_id, lpsz_proc.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglMakeCurrent, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # @param hglrc cast=(HGLRC)
      # 
      # long
      # long
      def wgl_make_current(hdc, hglrc)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglMakeCurrent, JNI.env, self.jni_id, hdc.to_int, hglrc.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglShareLists, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hglrc1 cast=(HGLRC)
      # @param hglrc2 cast=(HGLRC)
      # 
      # long
      # long
      def wgl_share_lists(hglrc1, hglrc2)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglShareLists, JNI.env, self.jni_id, hglrc1.to_int, hglrc2.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglDescribeLayerPlane, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, LAYERPLANEDESCRIPTOR] }
      # @param hdc cast=(HDC)
      # long
      def wgl_describe_layer_plane(hdc, i_pixel_format, i_layer_plane, n_bytes, plpd)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglDescribeLayerPlane, JNI.env, self.jni_id, hdc.to_int, i_pixel_format.to_int, i_layer_plane.to_int, n_bytes.to_int, plpd.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglSetLayerPaletteEntries, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param pcr cast=(COLORREF *)
      # 
      # long
      def wgl_set_layer_palette_entries(hdc, i_layer_plane, i_start, c_entries, pcr)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglSetLayerPaletteEntries, JNI.env, self.jni_id, hdc.to_int, i_layer_plane.to_int, i_start.to_int, c_entries.to_int, pcr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetLayerPaletteEntries, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param hdc cast=(HDC)
      # @param pcr cast=(COLORREF *)
      # 
      # long
      def wgl_get_layer_palette_entries(hdc, i_layer_plane, i_start, c_entries, pcr)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglGetLayerPaletteEntries, JNI.env, self.jni_id, hdc.to_int, i_layer_plane.to_int, i_start.to_int, c_entries.to_int, pcr.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglRealizeLayerPalette, [:pointer, :long, :int32, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # @param hdc cast=(HDC)
      # long
      def wgl_realize_layer_palette(hdc, i_layer_plane, b_realize)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglRealizeLayerPalette, JNI.env, self.jni_id, hdc.to_int, i_layer_plane.to_int, b_realize ? 1 : 0) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_win32_WGL_wglSwapLayerBuffers, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param hdc cast=(HDC)
      # long
      def wgl_swap_layer_buffers(hdc, fu_planes)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_win32_WGL_wglSwapLayerBuffers, JNI.env, self.jni_id, hdc.to_int, fu_planes.to_int) != 0
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__wgl, :initialize
  end
  
end
