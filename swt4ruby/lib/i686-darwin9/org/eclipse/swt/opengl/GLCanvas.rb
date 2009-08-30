require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Opengl
  module GLCanvasImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Opengl
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal::Opengl::Carbon
    }
  end
  
  # GLCanvas is a widget capable of displaying OpenGL content.
  # 
  # @see GLData
  # @see <a href="http://www.eclipse.org/swt/snippets/#opengl">OpenGL snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class GLCanvas < GLCanvasImports.const_get :Canvas
    include_class_members GLCanvasImports
    
    attr_accessor :context
    alias_method :attr_context, :context
    undef_method :context
    alias_method :attr_context=, :context=
    undef_method :context=
    
    attr_accessor :pixel_format
    alias_method :attr_pixel_format, :pixel_format
    undef_method :pixel_format
    alias_method :attr_pixel_format=, :pixel_format=
    undef_method :pixel_format=
    
    class_module.module_eval {
      const_set_lazy(:MAX_ATTRIBUTES) { 32 }
      const_attr_reader  :MAX_ATTRIBUTES
      
      const_set_lazy(:RESET_VISIBLE_REGION) { "org.eclipse.swt.internal.resetVisibleRegion" }
      const_attr_reader  :RESET_VISIBLE_REGION
    }
    
    typesig { [Composite, ::Java::Int, GLData] }
    # Create a GLCanvas widget using the attributes described in the GLData
    # object provided.
    # 
    # @param parent a composite widget
    # @param style the bitwise OR'ing of widget styles
    # @param data the requested attributes of the GLCanvas
    # 
    # @exception IllegalArgumentException
    # <ul><li>ERROR_NULL_ARGUMENT when the data is null
    # <li>ERROR_UNSUPPORTED_DEPTH when the requested attributes cannot be provided</ul>
    # </ul>
    def initialize(parent, style, data)
      @context = 0
      @pixel_format = 0
      super(parent, style)
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      agl_attrib = Array.typed(::Java::Int).new(MAX_ATTRIBUTES) { 0 }
      pos = 0
      agl_attrib[((pos += 1) - 1)] = AGL::AGL_RGBA
      if (data.attr_double_buffer)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_DOUBLEBUFFER
      end
      if (data.attr_stereo)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_STEREO
      end
      if (data.attr_red_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_RED_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_red_size
      end
      if (data.attr_green_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_GREEN_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_green_size
      end
      if (data.attr_blue_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_BLUE_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_blue_size
      end
      if (data.attr_alpha_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_ALPHA_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_alpha_size
      end
      if (data.attr_depth_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_DEPTH_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_depth_size
      end
      if (data.attr_stencil_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_STENCIL_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_stencil_size
      end
      if (data.attr_accum_red_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_ACCUM_RED_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_accum_red_size
      end
      if (data.attr_accum_green_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_ACCUM_GREEN_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_accum_green_size
      end
      if (data.attr_accum_blue_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_ACCUM_BLUE_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_accum_blue_size
      end
      if (data.attr_accum_alpha_size > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_ACCUM_ALPHA_SIZE
        agl_attrib[((pos += 1) - 1)] = data.attr_accum_alpha_size
      end
      if (data.attr_sample_buffers > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_SAMPLE_BUFFERS_ARB
        agl_attrib[((pos += 1) - 1)] = data.attr_sample_buffers
      end
      if (data.attr_samples > 0)
        agl_attrib[((pos += 1) - 1)] = AGL::AGL_SAMPLES_ARB
        agl_attrib[((pos += 1) - 1)] = data.attr_samples
      end
      agl_attrib[((pos += 1) - 1)] = AGL::AGL_NONE
      @pixel_format = AGL.agl_choose_pixel_format(0, 0, agl_attrib)
      if ((@pixel_format).equal?(0))
        dispose
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      # FIXME- share lists
      # context = AGL.aglCreateContext (pixelFormat, share == null ? 0 : share.context);
      @context = AGL.agl_create_context(@pixel_format, 0)
      window = OS._get_control_owner(self.attr_handle)
      port = OS._get_window_port(window)
      AGL.agl_set_drawable(@context, port)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members GLCanvas
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            AGL.agl_destroy_context(self.attr_context)
            AGL.agl_destroy_pixel_format(self.attr_pixel_format)
          end
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Dispose, listener)
      set_data(RESET_VISIBLE_REGION, Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members GLCanvas
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          if (is_disposed)
            return
          end
          fix_bounds
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [] }
    def fix_bounds
      bounds = Rect.new
      OS._get_control_bounds(self.attr_handle, bounds)
      window = OS._get_control_owner(self.attr_handle)
      content_view = Array.typed(::Java::Int).new(1) { 0 }
      OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
      pt = CGPoint.new
      OS._hiview_convert_point(pt, OS._hiview_get_superview(self.attr_handle), content_view[0])
      bounds.attr_left += RJava.cast_to_int(pt.attr_x)
      bounds.attr_top += RJava.cast_to_int(pt.attr_y)
      bounds.attr_right += RJava.cast_to_int(pt.attr_x)
      bounds.attr_bottom += RJava.cast_to_int(pt.attr_y)
      x = bounds.attr_left
      y = bounds.attr_top
      width = bounds.attr_right - bounds.attr_left
      height = bounds.attr_bottom - bounds.attr_top
      port = OS._get_window_port(window)
      OS._get_port_bounds(port, bounds)
      glbounds = Array.typed(::Java::Int).new(4) { 0 }
      glbounds[0] = x
      glbounds[1] = bounds.attr_bottom - bounds.attr_top - y - height
      glbounds[2] = width
      glbounds[3] = height
      AGL.agl_set_integer(@context, AGL::AGL_BUFFER_RECT, glbounds)
      AGL.agl_enable(@context, AGL::AGL_BUFFER_RECT)
      data = SwtGCData.new
      gc = internal_new__gc(data)
      AGL.agl_set_integer(@context, AGL::AGL_CLIP_REGION, data.attr_visible_rgn)
      AGL.agl_enable(@context, AGL::AGL_CLIP_REGION)
      internal_dispose__gc(gc, data)
    end
    
    typesig { [] }
    # Returns a GLData object describing the created context.
    # 
    # @return GLData description of the OpenGL context attributes
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_gldata
      check_widget
      data = GLData.new
      value = Array.typed(::Java::Int).new(1) { 0 }
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_DOUBLEBUFFER, value)
      data.attr_double_buffer = !(value[0]).equal?(0)
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_STEREO, value)
      data.attr_stereo = !(value[0]).equal?(0)
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_RED_SIZE, value)
      data.attr_red_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_GREEN_SIZE, value)
      data.attr_green_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_BLUE_SIZE, value)
      data.attr_blue_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_ALPHA_SIZE, value)
      data.attr_alpha_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_DEPTH_SIZE, value)
      data.attr_depth_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_STENCIL_SIZE, value)
      data.attr_stencil_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_ACCUM_RED_SIZE, value)
      data.attr_accum_red_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_ACCUM_GREEN_SIZE, value)
      data.attr_accum_green_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_ACCUM_BLUE_SIZE, value)
      data.attr_accum_blue_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_ACCUM_ALPHA_SIZE, value)
      data.attr_accum_alpha_size = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_SAMPLE_BUFFERS_ARB, value)
      data.attr_sample_buffers = value[0]
      AGL.agl_describe_pixel_format(@pixel_format, AGL::AGL_SAMPLES_ARB, value)
      data.attr_samples = value[0]
      return data
    end
    
    typesig { [] }
    # Returns a boolean indicating whether the receiver's OpenGL context
    # is the current context.
    # 
    # @return true if the receiver holds the current OpenGL context,
    # false otherwise
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_current
      check_widget
      return (AGL.agl_get_current_context).equal?(@context)
    end
    
    typesig { [] }
    # Sets the OpenGL context associated with this GLCanvas to be the
    # current GL context.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_current
      check_widget
      if (!(AGL.agl_get_current_context).equal?(@context))
        AGL.agl_set_current_context(@context)
      end
    end
    
    typesig { [] }
    # Swaps the front and back color buffers.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def swap_buffers
      check_widget
      AGL.agl_swap_buffers(@context)
    end
    
    private
    alias_method :initialize__glcanvas, :initialize
  end
  
end
