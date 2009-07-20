require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Opengl::Carbon
  module AGLImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Opengl::Carbon
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class AGL < AGLImports.const_get :Platform
    include_class_members AGLImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-agl")
      end
      
      # Attributes
      const_set_lazy(:AGL_NONE) { 0 }
      const_attr_reader  :AGL_NONE
      
      const_set_lazy(:AGL_BUFFER_SIZE) { 2 }
      const_attr_reader  :AGL_BUFFER_SIZE
      
      const_set_lazy(:AGL_LEVEL) { 3 }
      const_attr_reader  :AGL_LEVEL
      
      const_set_lazy(:AGL_RGBA) { 4 }
      const_attr_reader  :AGL_RGBA
      
      const_set_lazy(:AGL_DOUBLEBUFFER) { 5 }
      const_attr_reader  :AGL_DOUBLEBUFFER
      
      const_set_lazy(:AGL_STEREO) { 6 }
      const_attr_reader  :AGL_STEREO
      
      const_set_lazy(:AGL_AUX_BUFFERS) { 7 }
      const_attr_reader  :AGL_AUX_BUFFERS
      
      const_set_lazy(:AGL_RED_SIZE) { 8 }
      const_attr_reader  :AGL_RED_SIZE
      
      const_set_lazy(:AGL_GREEN_SIZE) { 9 }
      const_attr_reader  :AGL_GREEN_SIZE
      
      const_set_lazy(:AGL_BLUE_SIZE) { 10 }
      const_attr_reader  :AGL_BLUE_SIZE
      
      const_set_lazy(:AGL_ALPHA_SIZE) { 11 }
      const_attr_reader  :AGL_ALPHA_SIZE
      
      const_set_lazy(:AGL_DEPTH_SIZE) { 12 }
      const_attr_reader  :AGL_DEPTH_SIZE
      
      const_set_lazy(:AGL_STENCIL_SIZE) { 13 }
      const_attr_reader  :AGL_STENCIL_SIZE
      
      const_set_lazy(:AGL_ACCUM_RED_SIZE) { 14 }
      const_attr_reader  :AGL_ACCUM_RED_SIZE
      
      const_set_lazy(:AGL_ACCUM_GREEN_SIZE) { 15 }
      const_attr_reader  :AGL_ACCUM_GREEN_SIZE
      
      const_set_lazy(:AGL_ACCUM_BLUE_SIZE) { 16 }
      const_attr_reader  :AGL_ACCUM_BLUE_SIZE
      
      const_set_lazy(:AGL_ACCUM_ALPHA_SIZE) { 17 }
      const_attr_reader  :AGL_ACCUM_ALPHA_SIZE
      
      const_set_lazy(:AGL_SAMPLE_BUFFERS_ARB) { 55 }
      const_attr_reader  :AGL_SAMPLE_BUFFERS_ARB
      
      const_set_lazy(:AGL_SAMPLES_ARB) { 56 }
      const_attr_reader  :AGL_SAMPLES_ARB
      
      # Integer parameters
      const_set_lazy(:AGL_BUFFER_RECT) { 202 }
      const_attr_reader  :AGL_BUFFER_RECT
      
      const_set_lazy(:AGL_SWAP_INTERVAL) { 222 }
      const_attr_reader  :AGL_SWAP_INTERVAL
      
      const_set_lazy(:AGL_BUFFER_NAME) { 231 }
      const_attr_reader  :AGL_BUFFER_NAME
      
      const_set_lazy(:AGL_CLIP_REGION) { 254 }
      const_attr_reader  :AGL_CLIP_REGION
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglChoosePixelFormat, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def agl_choose_pixel_format(gdevs, ndev, attribs)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglChoosePixelFormat, JNI.env, self.jni_id, gdevs.to_int, ndev.to_int, attribs.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglCreateContext, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def agl_create_context(pix, share)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglCreateContext, JNI.env, self.jni_id, pix.to_int, share.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglDescribePixelFormat, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def agl_describe_pixel_format(pix, attrib, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglDescribePixelFormat, JNI.env, self.jni_id, pix.to_int, attrib.to_int, value.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglDestroyContext, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def agl_destroy_context(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglDestroyContext, JNI.env, self.jni_id, ctx.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglDestroyPixelFormat, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def agl_destroy_pixel_format(pix)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglDestroyPixelFormat, JNI.env, self.jni_id, pix.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglEnable, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def agl_enable(ctx, pname)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglEnable, JNI.env, self.jni_id, ctx.to_int, pname.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglGetCurrentContext, [:pointer, :long], :int32
      typesig { [] }
      def agl_get_current_context
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglGetCurrentContext, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglGetDrawable, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def agl_get_drawable(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglGetDrawable, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetCurrentContext, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def agl_set_current_context(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetCurrentContext, JNI.env, self.jni_id, ctx.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetDrawable, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def agl_set_drawable(ctx, draw)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetDrawable, JNI.env, self.jni_id, ctx.to_int, draw.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetInteger__II_3I, [:pointer, :long, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def agl_set_integer(ctx, pname, params)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetInteger__II_3I, JNI.env, self.jni_id, ctx.to_int, pname.to_int, params.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetInteger__III, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def agl_set_integer(ctx, pname, param)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSetInteger__III, JNI.env, self.jni_id, ctx.to_int, pname.to_int, param.to_int) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSwapBuffers, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def agl_swap_buffers(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglSwapBuffers, JNI.env, self.jni_id, ctx.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglUpdateContext, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def agl_update_context(ctx)
        JNI.__send__(:Java_org_eclipse_swt_internal_opengl_carbon_AGL_aglUpdateContext, JNI.env, self.jni_id, ctx.to_int) != 0
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__agl, :initialize
  end
  
end
