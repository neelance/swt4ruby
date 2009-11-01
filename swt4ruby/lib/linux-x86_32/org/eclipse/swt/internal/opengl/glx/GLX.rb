require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Opengl::Glx
  module GLXImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Opengl::Glx
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class GLX < GLXImports.const_get :Platform
    include_class_members GLXImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-glx")
      end
      
      # Visual Config Attributes (glXGetConfig, glXGetFBConfigAttrib)
      const_set_lazy(:GLX_USE_GL) { 1 }
      const_attr_reader  :GLX_USE_GL
      
      # support GLX rendering
      const_set_lazy(:GLX_BUFFER_SIZE) { 2 }
      const_attr_reader  :GLX_BUFFER_SIZE
      
      # depth of the color buffer
      const_set_lazy(:GLX_LEVEL) { 3 }
      const_attr_reader  :GLX_LEVEL
      
      # level in plane stacking
      const_set_lazy(:GLX_RGBA) { 4 }
      const_attr_reader  :GLX_RGBA
      
      # true if RGBA mode
      const_set_lazy(:GLX_DOUBLEBUFFER) { 5 }
      const_attr_reader  :GLX_DOUBLEBUFFER
      
      # double buffering supported
      const_set_lazy(:GLX_STEREO) { 6 }
      const_attr_reader  :GLX_STEREO
      
      # stereo buffering supported
      const_set_lazy(:GLX_AUX_BUFFERS) { 7 }
      const_attr_reader  :GLX_AUX_BUFFERS
      
      # number of aux buffers
      const_set_lazy(:GLX_RED_SIZE) { 8 }
      const_attr_reader  :GLX_RED_SIZE
      
      # number of red component bits
      const_set_lazy(:GLX_GREEN_SIZE) { 9 }
      const_attr_reader  :GLX_GREEN_SIZE
      
      # number of green component bits
      const_set_lazy(:GLX_BLUE_SIZE) { 10 }
      const_attr_reader  :GLX_BLUE_SIZE
      
      # number of blue component bits
      const_set_lazy(:GLX_ALPHA_SIZE) { 11 }
      const_attr_reader  :GLX_ALPHA_SIZE
      
      # number of alpha component bits
      const_set_lazy(:GLX_DEPTH_SIZE) { 12 }
      const_attr_reader  :GLX_DEPTH_SIZE
      
      # number of depth bits
      const_set_lazy(:GLX_STENCIL_SIZE) { 13 }
      const_attr_reader  :GLX_STENCIL_SIZE
      
      # number of stencil bits
      const_set_lazy(:GLX_ACCUM_RED_SIZE) { 14 }
      const_attr_reader  :GLX_ACCUM_RED_SIZE
      
      # number of red accum bits
      const_set_lazy(:GLX_ACCUM_GREEN_SIZE) { 15 }
      const_attr_reader  :GLX_ACCUM_GREEN_SIZE
      
      # number of green accum bits
      const_set_lazy(:GLX_ACCUM_BLUE_SIZE) { 16 }
      const_attr_reader  :GLX_ACCUM_BLUE_SIZE
      
      # number of blue accum bits
      const_set_lazy(:GLX_ACCUM_ALPHA_SIZE) { 17 }
      const_attr_reader  :GLX_ACCUM_ALPHA_SIZE
      
      # number of alpha accum bits
      # 
      # FBConfig-specific attributes
      const_set_lazy(:GLX_X_VISUAL_TYPE) { 0x22 }
      const_attr_reader  :GLX_X_VISUAL_TYPE
      
      const_set_lazy(:GLX_CONFIG_CAVEAT) { 0x20 }
      const_attr_reader  :GLX_CONFIG_CAVEAT
      
      # Like visual_info VISUAL_CAVEAT_EXT
      const_set_lazy(:GLX_TRANSPARENT_TYPE) { 0x23 }
      const_attr_reader  :GLX_TRANSPARENT_TYPE
      
      const_set_lazy(:GLX_TRANSPARENT_INDEX_VALUE) { 0x24 }
      const_attr_reader  :GLX_TRANSPARENT_INDEX_VALUE
      
      const_set_lazy(:GLX_TRANSPARENT_RED_VALUE) { 0x25 }
      const_attr_reader  :GLX_TRANSPARENT_RED_VALUE
      
      const_set_lazy(:GLX_TRANSPARENT_GREEN_VALUE) { 0x26 }
      const_attr_reader  :GLX_TRANSPARENT_GREEN_VALUE
      
      const_set_lazy(:GLX_TRANSPARENT_BLUE_VALUE) { 0x27 }
      const_attr_reader  :GLX_TRANSPARENT_BLUE_VALUE
      
      const_set_lazy(:GLX_TRANSPARENT_ALPHA_VALUE) { 0x28 }
      const_attr_reader  :GLX_TRANSPARENT_ALPHA_VALUE
      
      const_set_lazy(:GLX_DRAWABLE_TYPE) { 0x8010 }
      const_attr_reader  :GLX_DRAWABLE_TYPE
      
      const_set_lazy(:GLX_RENDER_TYPE) { 0x8011 }
      const_attr_reader  :GLX_RENDER_TYPE
      
      const_set_lazy(:GLX_X_RENDERABLE) { 0x8012 }
      const_attr_reader  :GLX_X_RENDERABLE
      
      const_set_lazy(:GLX_FBCONFIG_ID) { 0x8013 }
      const_attr_reader  :GLX_FBCONFIG_ID
      
      const_set_lazy(:GLX_MAX_PBUFFER_WIDTH) { 0x8016 }
      const_attr_reader  :GLX_MAX_PBUFFER_WIDTH
      
      const_set_lazy(:GLX_MAX_PBUFFER_HEIGHT) { 0x8017 }
      const_attr_reader  :GLX_MAX_PBUFFER_HEIGHT
      
      const_set_lazy(:GLX_MAX_PBUFFER_PIXELS) { 0x8018 }
      const_attr_reader  :GLX_MAX_PBUFFER_PIXELS
      
      const_set_lazy(:GLX_VISUAL_ID) { 0x800b }
      const_attr_reader  :GLX_VISUAL_ID
      
      # Error return values from glXGetConfig.  Success is indicated by
      # a value of 0.
      const_set_lazy(:GLX_BAD_SCREEN) { 1 }
      const_attr_reader  :GLX_BAD_SCREEN
      
      # screen # is bad
      const_set_lazy(:GLX_BAD_ATTRIBUTE) { 2 }
      const_attr_reader  :GLX_BAD_ATTRIBUTE
      
      # attribute to get is bad
      const_set_lazy(:GLX_NO_EXTENSION) { 3 }
      const_attr_reader  :GLX_NO_EXTENSION
      
      # no glx extension on server
      const_set_lazy(:GLX_BAD_VISUAL) { 4 }
      const_attr_reader  :GLX_BAD_VISUAL
      
      # visual # not known by GLX
      const_set_lazy(:GLX_BAD_CONTEXT) { 5 }
      const_attr_reader  :GLX_BAD_CONTEXT
      
      # returned only by import_context EXT?
      const_set_lazy(:GLX_BAD_VALUE) { 6 }
      const_attr_reader  :GLX_BAD_VALUE
      
      # returned only by glXSwapIntervalSGI?
      const_set_lazy(:GLX_BAD_ENUM) { 7 }
      const_attr_reader  :GLX_BAD_ENUM
      
      # unused?
      # FBConfig attribute values
      # 
      # Generic "don't care" value for glX ChooseFBConfig attributes (except
      # GLX_LEVEL)
      const_set_lazy(:GLX_DONT_CARE) { -0x1 }
      const_attr_reader  :GLX_DONT_CARE
      
      # GLX_RENDER_TYPE bits
      const_set_lazy(:GLX_RGBA_BIT) { 0x1 }
      const_attr_reader  :GLX_RGBA_BIT
      
      const_set_lazy(:GLX_COLOR_INDEX_BIT) { 0x2 }
      const_attr_reader  :GLX_COLOR_INDEX_BIT
      
      # GLX_DRAWABLE_TYPE bits
      const_set_lazy(:GLX_WINDOW_BIT) { 0x1 }
      const_attr_reader  :GLX_WINDOW_BIT
      
      const_set_lazy(:GLX_PIXMAP_BIT) { 0x2 }
      const_attr_reader  :GLX_PIXMAP_BIT
      
      const_set_lazy(:GLX_PBUFFER_BIT) { 0x4 }
      const_attr_reader  :GLX_PBUFFER_BIT
      
      # GLX_CONFIG_CAVEAT attribute values
      const_set_lazy(:GLX_NONE) { 0x8000 }
      const_attr_reader  :GLX_NONE
      
      const_set_lazy(:GLX_SLOW_CONFIG) { 0x8001 }
      const_attr_reader  :GLX_SLOW_CONFIG
      
      const_set_lazy(:GLX_NON_CONFORMANT_CONFIG) { 0x800d }
      const_attr_reader  :GLX_NON_CONFORMANT_CONFIG
      
      # GLX_X_VISUAL_TYPE attribute values
      const_set_lazy(:GLX_TRUE_COLOR) { 0x8002 }
      const_attr_reader  :GLX_TRUE_COLOR
      
      const_set_lazy(:GLX_DIRECT_COLOR) { 0x8003 }
      const_attr_reader  :GLX_DIRECT_COLOR
      
      const_set_lazy(:GLX_PSEUDO_COLOR) { 0x8004 }
      const_attr_reader  :GLX_PSEUDO_COLOR
      
      const_set_lazy(:GLX_STATIC_COLOR) { 0x8005 }
      const_attr_reader  :GLX_STATIC_COLOR
      
      const_set_lazy(:GLX_GRAY_SCALE) { 0x8006 }
      const_attr_reader  :GLX_GRAY_SCALE
      
      const_set_lazy(:GLX_STATIC_GRAY) { 0x8007 }
      const_attr_reader  :GLX_STATIC_GRAY
      
      # GLX_TRANSPARENT_TYPE attribute values
      # public static final int GLX_NONE			   0x8000
      const_set_lazy(:GLX_TRANSPARENT_RGB) { 0x8008 }
      const_attr_reader  :GLX_TRANSPARENT_RGB
      
      const_set_lazy(:GLX_TRANSPARENT_INDEX) { 0x8009 }
      const_attr_reader  :GLX_TRANSPARENT_INDEX
      
      # glXCreateGLXPbuffer attributes
      const_set_lazy(:GLX_PRESERVED_CONTENTS) { 0x801b }
      const_attr_reader  :GLX_PRESERVED_CONTENTS
      
      const_set_lazy(:GLX_LARGEST_PBUFFER) { 0x801c }
      const_attr_reader  :GLX_LARGEST_PBUFFER
      
      const_set_lazy(:GLX_PBUFFER_HEIGHT) { 0x8040 }
      const_attr_reader  :GLX_PBUFFER_HEIGHT
      
      # New for GLX 1.3
      const_set_lazy(:GLX_PBUFFER_WIDTH) { 0x8041 }
      const_attr_reader  :GLX_PBUFFER_WIDTH
      
      # New for GLX 1.3
      # glXQueryGLXPBuffer attributes
      const_set_lazy(:GLX_WIDTH) { 0x801d }
      const_attr_reader  :GLX_WIDTH
      
      const_set_lazy(:GLX_HEIGHT) { 0x801e }
      const_attr_reader  :GLX_HEIGHT
      
      const_set_lazy(:GLX_EVENT_MASK) { 0x801f }
      const_attr_reader  :GLX_EVENT_MASK
      
      # glXCreateNewContext render_type attribute values
      const_set_lazy(:GLX_RGBA_TYPE) { 0x8014 }
      const_attr_reader  :GLX_RGBA_TYPE
      
      const_set_lazy(:GLX_COLOR_INDEX_TYPE) { 0x8015 }
      const_attr_reader  :GLX_COLOR_INDEX_TYPE
      
      # glXQueryContext attributes
      # public static final int GLX_FBCONFIG_ID		  0x8013
      # public static final int GLX_RENDER_TYPE		  0x8011
      const_set_lazy(:GLX_SCREEN) { 0x800c }
      const_attr_reader  :GLX_SCREEN
      
      # glXSelectEvent event mask bits
      const_set_lazy(:GLX_PBUFFER_CLOBBER_MASK) { 0x8000000 }
      const_attr_reader  :GLX_PBUFFER_CLOBBER_MASK
      
      # GLXPbufferClobberEvent event_type values
      const_set_lazy(:GLX_DAMAGED) { 0x8020 }
      const_attr_reader  :GLX_DAMAGED
      
      const_set_lazy(:GLX_SAVED) { 0x8021 }
      const_attr_reader  :GLX_SAVED
      
      # GLXPbufferClobberEvent draw_type values
      const_set_lazy(:GLX_WINDOW) { 0x8022 }
      const_attr_reader  :GLX_WINDOW
      
      const_set_lazy(:GLX_PBUFFER) { 0x8023 }
      const_attr_reader  :GLX_PBUFFER
      
      # GLXPbufferClobberEvent buffer_mask bits
      const_set_lazy(:GLX_FRONT_LEFT_BUFFER_BIT) { 0x1 }
      const_attr_reader  :GLX_FRONT_LEFT_BUFFER_BIT
      
      const_set_lazy(:GLX_FRONT_RIGHT_BUFFER_BIT) { 0x2 }
      const_attr_reader  :GLX_FRONT_RIGHT_BUFFER_BIT
      
      const_set_lazy(:GLX_BACK_LEFT_BUFFER_BIT) { 0x4 }
      const_attr_reader  :GLX_BACK_LEFT_BUFFER_BIT
      
      const_set_lazy(:GLX_BACK_RIGHT_BUFFER_BIT) { 0x8 }
      const_attr_reader  :GLX_BACK_RIGHT_BUFFER_BIT
      
      const_set_lazy(:GLX_AUX_BUFFERS_BIT) { 0x10 }
      const_attr_reader  :GLX_AUX_BUFFERS_BIT
      
      const_set_lazy(:GLX_DEPTH_BUFFER_BIT) { 0x20 }
      const_attr_reader  :GLX_DEPTH_BUFFER_BIT
      
      const_set_lazy(:GLX_STENCIL_BUFFER_BIT) { 0x40 }
      const_attr_reader  :GLX_STENCIL_BUFFER_BIT
      
      const_set_lazy(:GLX_ACCUM_BUFFER_BIT) { 0x80 }
      const_attr_reader  :GLX_ACCUM_BUFFER_BIT
      
      # Extension return values from glXGetConfig.  These are also
      # accepted as parameter values for glXChooseVisual.
      const_set_lazy(:GLX_X_VISUAL_TYPE_EXT) { 0x22 }
      const_attr_reader  :GLX_X_VISUAL_TYPE_EXT
      
      # visual_info extension type
      const_set_lazy(:GLX_TRANSPARENT_TYPE_EXT) { 0x23 }
      const_attr_reader  :GLX_TRANSPARENT_TYPE_EXT
      
      # visual_info extension
      const_set_lazy(:GLX_TRANSPARENT_INDEX_VALUE_EXT) { 0x24 }
      const_attr_reader  :GLX_TRANSPARENT_INDEX_VALUE_EXT
      
      # visual_info extension
      const_set_lazy(:GLX_TRANSPARENT_RED_VALUE_EXT) { 0x25 }
      const_attr_reader  :GLX_TRANSPARENT_RED_VALUE_EXT
      
      # visual_info extension
      const_set_lazy(:GLX_TRANSPARENT_GREEN_VALUE_EXT) { 0x26 }
      const_attr_reader  :GLX_TRANSPARENT_GREEN_VALUE_EXT
      
      # visual_info extension
      const_set_lazy(:GLX_TRANSPARENT_BLUE_VALUE_EXT) { 0x27 }
      const_attr_reader  :GLX_TRANSPARENT_BLUE_VALUE_EXT
      
      # visual_info extension
      const_set_lazy(:GLX_TRANSPARENT_ALPHA_VALUE_EXT) { 0x28 }
      const_attr_reader  :GLX_TRANSPARENT_ALPHA_VALUE_EXT
      
      # visual_info extension
      # Property values for visual_type
      const_set_lazy(:GLX_TRUE_COLOR_EXT) { 0x8002 }
      const_attr_reader  :GLX_TRUE_COLOR_EXT
      
      const_set_lazy(:GLX_DIRECT_COLOR_EXT) { 0x8003 }
      const_attr_reader  :GLX_DIRECT_COLOR_EXT
      
      const_set_lazy(:GLX_PSEUDO_COLOR_EXT) { 0x8004 }
      const_attr_reader  :GLX_PSEUDO_COLOR_EXT
      
      const_set_lazy(:GLX_STATIC_COLOR_EXT) { 0x8005 }
      const_attr_reader  :GLX_STATIC_COLOR_EXT
      
      const_set_lazy(:GLX_GRAY_SCALE_EXT) { 0x8006 }
      const_attr_reader  :GLX_GRAY_SCALE_EXT
      
      const_set_lazy(:GLX_STATIC_GRAY_EXT) { 0x8007 }
      const_attr_reader  :GLX_STATIC_GRAY_EXT
      
      # Property values for transparent pixel
      const_set_lazy(:GLX_NONE_EXT) { 0x8000 }
      const_attr_reader  :GLX_NONE_EXT
      
      const_set_lazy(:GLX_TRANSPARENT_RGB_EXT) { 0x8008 }
      const_attr_reader  :GLX_TRANSPARENT_RGB_EXT
      
      const_set_lazy(:GLX_TRANSPARENT_INDEX_EXT) { 0x8009 }
      const_attr_reader  :GLX_TRANSPARENT_INDEX_EXT
      
      # Property values for visual_rating
      const_set_lazy(:GLX_VISUAL_CAVEAT_EXT) { 0x20 }
      const_attr_reader  :GLX_VISUAL_CAVEAT_EXT
      
      # visual_rating extension type
      const_set_lazy(:GLX_SLOW_VISUAL_EXT) { 0x8001 }
      const_attr_reader  :GLX_SLOW_VISUAL_EXT
      
      const_set_lazy(:GLX_NON_CONFORMANT_VISUAL_EXT) { 0x800d }
      const_attr_reader  :GLX_NON_CONFORMANT_VISUAL_EXT
      
      # Names for attributes to glXGetClientString.
      const_set_lazy(:GLX_VENDOR) { 0x1 }
      const_attr_reader  :GLX_VENDOR
      
      const_set_lazy(:GLX_VERSION) { 0x2 }
      const_attr_reader  :GLX_VERSION
      
      const_set_lazy(:GLX_EXTENSIONS) { 0x3 }
      const_attr_reader  :GLX_EXTENSIONS
      
      # Names for attributes to glXQueryContextInfoEXT.
      const_set_lazy(:GLX_SHARE_CONTEXT_EXT) { 0x800a }
      const_attr_reader  :GLX_SHARE_CONTEXT_EXT
      
      # id of share context
      const_set_lazy(:GLX_VISUAL_ID_EXT) { 0x800b }
      const_attr_reader  :GLX_VISUAL_ID_EXT
      
      # id of context's visual
      const_set_lazy(:GLX_SCREEN_EXT) { 0x800c }
      const_attr_reader  :GLX_SCREEN_EXT
      
      # screen number
      # 
      # GLX 1.4
      const_set_lazy(:GLX_SAMPLE_BUFFERS) { 100000 }
      const_attr_reader  :GLX_SAMPLE_BUFFERS
      
      const_set_lazy(:GLX_SAMPLES) { 100001 }
      const_attr_reader  :GLX_SAMPLES
      
      # GL bits
      const_set_lazy(:GL_VIEWPORT) { 0xba2 }
      const_attr_reader  :GL_VIEWPORT
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX_XVisualInfo_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xvisual_info_sizeof
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX_XVisualInfo_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glGetIntegerv, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # @param pname cast=(GLenum)
      # @param params cast=(GLint *),flags=no_in
      def __gl_get_integerv(pname, params)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glGetIntegerv, JNI.env, self.jni_id, pname.to_int, params.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gl_get_integerv(pname, params)
        PLATFORM_LOCK.lock
        begin
          __gl_get_integerv(pname, params)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glViewport, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param x cast=(GLint)
      # @param y cast=(GLint)
      # @param width cast=(GLsizei)
      # @param height cast=(GLsizei)
      def __gl_viewport(x, y, width, height)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glViewport, JNI.env, self.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gl_viewport(x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gl_viewport(x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXChooseVisual, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # @param dpy cast=(Display *)
      # long
      # long
      def __gl_xchoose_visual(dpy, screen, attrib_list)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXChooseVisual, JNI.env, self.jni_id, dpy.to_int, screen.to_int, attrib_list.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gl_xchoose_visual(dpy, screen, attrib_list)
        PLATFORM_LOCK.lock
        begin
          return __gl_xchoose_visual(dpy, screen, attrib_list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXCopyContext, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param src cast=(GLXContext)
      # @param dst cast=(GLXContext)
      # 
      # long
      # long
      # long
      def __gl_xcopy_context(dpy, src, dst, mask)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXCopyContext, JNI.env, self.jni_id, dpy.to_int, src.to_int, dst.to_int, mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gl_xcopy_context(dpy, src, dst, mask)
        PLATFORM_LOCK.lock
        begin
          __gl_xcopy_context(dpy, src, dst, mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXCreateContext, [:pointer, :long, :int32, :long, :int32, :int8], :int32
      typesig { [::Java::Int, XVisualInfo, ::Java::Int, ::Java::Boolean] }
      # @param dpy cast=(Display *)
      # @param shareList cast=(GLXContext)
      # 
      # long
      # long
      # long
      def __gl_xcreate_context(dpy, vis, share_list, direct)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXCreateContext, JNI.env, self.jni_id, dpy.to_int, vis.jni_id, share_list.to_int, direct ? 1 : 0)
      end
      
      typesig { [::Java::Int, XVisualInfo, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      # long
      def gl_xcreate_context(dpy, vis, share_list, direct)
        PLATFORM_LOCK.lock
        begin
          return __gl_xcreate_context(dpy, vis, share_list, direct)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXCreateGLXPixmap, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, XVisualInfo, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param pixmap cast=(Pixmap)
      # 
      # long
      # long
      # long
      def __gl_xcreate_glxpixmap(dpy, vis, pixmap)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXCreateGLXPixmap, JNI.env, self.jni_id, dpy.to_int, vis.jni_id, pixmap.to_int)
      end
      
      typesig { [::Java::Int, XVisualInfo, ::Java::Int] }
      # long
      # long
      # long
      def gl_xcreate_glxpixmap(dpy, vis, pixmap)
        PLATFORM_LOCK.lock
        begin
          return __gl_xcreate_glxpixmap(dpy, vis, pixmap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXDestroyContext, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param ctx cast=(GLXContext)
      # 
      # long
      # long
      def __gl_xdestroy_context(dpy, ctx)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXDestroyContext, JNI.env, self.jni_id, dpy.to_int, ctx.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xdestroy_context(dpy, ctx)
        PLATFORM_LOCK.lock
        begin
          __gl_xdestroy_context(dpy, ctx)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXDestroyGLXPixmap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param pix cast=(GLXPixmap)
      # 
      # long
      # long
      def __gl_xdestroy_glxpixmap(dpy, pix)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXDestroyGLXPixmap, JNI.env, self.jni_id, dpy.to_int, pix.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xdestroy_glxpixmap(dpy, pix)
        PLATFORM_LOCK.lock
        begin
          __gl_xdestroy_glxpixmap(dpy, pix)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetClientString, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # long
      # long
      def __gl_xget_client_string(dpy, name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetClientString, JNI.env, self.jni_id, dpy.to_int, name.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xget_client_string(dpy, name)
        PLATFORM_LOCK.lock
        begin
          return __gl_xget_client_string(dpy, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetConfig, [:pointer, :long, :int32, :long, :int32, :long], :int32
      typesig { [::Java::Int, XVisualInfo, ::Java::Int, Array.typed(::Java::Int)] }
      # @param dpy cast=(Display *)
      # long
      def __gl_xget_config(dpy, vis, attrib, value)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetConfig, JNI.env, self.jni_id, dpy.to_int, vis.jni_id, attrib.to_int, value.jni_id)
      end
      
      typesig { [::Java::Int, XVisualInfo, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def gl_xget_config(dpy, vis, attrib, value)
        PLATFORM_LOCK.lock
        begin
          return __gl_xget_config(dpy, vis, attrib, value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetCurrentContext, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gl_xget_current_context
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetCurrentContext, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gl_xget_current_context
        PLATFORM_LOCK.lock
        begin
          return __gl_xget_current_context
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetCurrentDrawable, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gl_xget_current_drawable
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXGetCurrentDrawable, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gl_xget_current_drawable
        PLATFORM_LOCK.lock
        begin
          return __gl_xget_current_drawable
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXIsDirect, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param ctx cast=(GLXContext)
      # 
      # long
      # long
      def __gl_xis_direct(dpy, ctx)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXIsDirect, JNI.env, self.jni_id, dpy.to_int, ctx.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xis_direct(dpy, ctx)
        PLATFORM_LOCK.lock
        begin
          return __gl_xis_direct(dpy, ctx)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXMakeCurrent, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param drawable cast=(GLXDrawable)
      # @param ctx cast=(GLXContext)
      # 
      # long
      # long
      # long
      def __gl_xmake_current(dpy, drawable, ctx)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXMakeCurrent, JNI.env, self.jni_id, dpy.to_int, drawable.to_int, ctx.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gl_xmake_current(dpy, drawable, ctx)
        PLATFORM_LOCK.lock
        begin
          return __gl_xmake_current(dpy, drawable, ctx)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryExtension, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param dpy cast=(Display *)
      # long
      def __gl_xquery_extension(dpy, error_base, event_base)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryExtension, JNI.env, self.jni_id, dpy.to_int, error_base.jni_id, event_base.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gl_xquery_extension(dpy, error_base, event_base)
        PLATFORM_LOCK.lock
        begin
          return __gl_xquery_extension(dpy, error_base, event_base)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryExtensionsString, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # long
      # long
      def __gl_xquery_extensions_string(dpy, screen)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryExtensionsString, JNI.env, self.jni_id, dpy.to_int, screen.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xquery_extensions_string(dpy, screen)
        PLATFORM_LOCK.lock
        begin
          return __gl_xquery_extensions_string(dpy, screen)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryServerString, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # long
      # long
      def __gl_xquery_server_string(dpy, screen, name)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryServerString, JNI.env, self.jni_id, dpy.to_int, screen.to_int, name.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xquery_server_string(dpy, screen, name)
        PLATFORM_LOCK.lock
        begin
          return __gl_xquery_server_string(dpy, screen, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryVersion, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # @param dpy cast=(Display *)
      # @param major flags=no_in
      # @param minor flags=no_in
      # 
      # long
      def __gl_xquery_version(dpy, major, minor)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXQueryVersion, JNI.env, self.jni_id, dpy.to_int, major.jni_id, minor.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gl_xquery_version(dpy, major, minor)
        PLATFORM_LOCK.lock
        begin
          return __gl_xquery_version(dpy, major, minor)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXSwapBuffers, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # @param dpy cast=(Display *)
      # @param drawable cast=(GLXDrawable)
      # 
      # long
      # long
      def __gl_xswap_buffers(dpy, drawable)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXSwapBuffers, JNI.env, self.jni_id, dpy.to_int, drawable.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gl_xswap_buffers(dpy, drawable)
        PLATFORM_LOCK.lock
        begin
          __gl_xswap_buffers(dpy, drawable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXWaitGL, [:pointer, :long], :void
      typesig { [] }
      def __gl_xwait_gl
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXWaitGL, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gl_xwait_gl
        PLATFORM_LOCK.lock
        begin
          __gl_xwait_gl
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXWaitX, [:pointer, :long], :void
      typesig { [] }
      def __gl_xwait_x
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX__1glXWaitX, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gl_xwait_x
        PLATFORM_LOCK.lock
        begin
          __gl_xwait_x
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.load_native_method :Java_org_eclipse_swt_internal_opengl_glx_GLX_memmove, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XVisualInfo, ::Java::Int, ::Java::Int] }
      # @param src cast=(const void *)
      # @param size cast=(size_t)
      # 
      # long
      def memmove(dest, src, size)
        JNI.call_native_method(:Java_org_eclipse_swt_internal_opengl_glx_GLX_memmove, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__glx, :initialize
  end
  
end
