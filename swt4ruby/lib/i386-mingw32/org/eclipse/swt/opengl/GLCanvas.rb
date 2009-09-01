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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Internal::Opengl::Win32
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
    
    # long
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
      pfd = PIXELFORMATDESCRIPTOR.new
      pfd.attr_n_size = RJava.cast_to_short(PIXELFORMATDESCRIPTOR.attr_sizeof)
      pfd.attr_n_version = 1
      pfd.attr_dw_flags = WGL::PFD_DRAW_TO_WINDOW | WGL::PFD_SUPPORT_OPENGL
      pfd.attr_dw_layer_mask = WGL::PFD_MAIN_PLANE
      pfd.attr_i_pixel_type = WGL::PFD_TYPE_RGBA
      if (data.attr_double_buffer)
        pfd.attr_dw_flags |= WGL::PFD_DOUBLEBUFFER
      end
      if (data.attr_stereo)
        pfd.attr_dw_flags |= WGL::PFD_STEREO
      end
      pfd.attr_c_red_bits = data.attr_red_size
      pfd.attr_c_green_bits = data.attr_green_size
      pfd.attr_c_blue_bits = data.attr_blue_size
      pfd.attr_c_alpha_bits = data.attr_alpha_size
      pfd.attr_c_depth_bits = data.attr_depth_size
      pfd.attr_c_stencil_bits = data.attr_stencil_size
      pfd.attr_c_accum_red_bits = data.attr_accum_red_size
      pfd.attr_c_accum_green_bits = data.attr_accum_green_size
      pfd.attr_c_accum_blue_bits = data.attr_accum_blue_size
      pfd.attr_c_accum_alpha_bits = data.attr_accum_alpha_size
      pfd.attr_c_accum_bits = (pfd.attr_c_accum_red_bits + pfd.attr_c_accum_green_bits + pfd.attr_c_accum_blue_bits + pfd.attr_c_accum_alpha_bits)
      # FIXME - use wglChoosePixelFormatARB
      # if (data.sampleBuffers > 0) {
      # wglAttrib [pos++] = WGL.WGL_SAMPLE_BUFFERS_ARB;
      # wglAttrib [pos++] = data.sampleBuffers;
      # }
      # if (data.samples > 0) {
      # wglAttrib [pos++] = WGL.WGL_SAMPLES_ARB;
      # wglAttrib [pos++] = data.samples;
      # }
      # long
      h_dc = OS._get_dc(self.attr_handle)
      @pixel_format = WGL._choose_pixel_format(h_dc, pfd)
      if ((@pixel_format).equal?(0) || !WGL._set_pixel_format(h_dc, @pixel_format, pfd))
        OS._release_dc(self.attr_handle, h_dc)
        dispose
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      @context = WGL.wgl_create_context(h_dc)
      if ((@context).equal?(0))
        OS._release_dc(self.attr_handle, h_dc)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._release_dc(self.attr_handle, h_dc)
      listener = # FIXME- share lists
      # if (share != null) WGL.wglShareLists (context, share.context);
      Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members GLCanvas
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            WGL.wgl_delete_context(self.attr_context)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Dispose, listener)
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
      pfd = PIXELFORMATDESCRIPTOR.new
      pfd.attr_n_size = RJava.cast_to_short(PIXELFORMATDESCRIPTOR.attr_sizeof)
      # long
      h_dc = OS._get_dc(self.attr_handle)
      WGL._describe_pixel_format(h_dc, @pixel_format, PIXELFORMATDESCRIPTOR.attr_sizeof, pfd)
      OS._release_dc(self.attr_handle, h_dc)
      data.attr_double_buffer = !((pfd.attr_dw_flags & WGL::PFD_DOUBLEBUFFER)).equal?(0)
      data.attr_stereo = !((pfd.attr_dw_flags & WGL::PFD_STEREO)).equal?(0)
      data.attr_red_size = pfd.attr_c_red_bits
      data.attr_green_size = pfd.attr_c_green_bits
      data.attr_blue_size = pfd.attr_c_blue_bits
      data.attr_alpha_size = pfd.attr_c_alpha_bits
      data.attr_depth_size = pfd.attr_c_depth_bits
      data.attr_stencil_size = pfd.attr_c_stencil_bits
      data.attr_accum_red_size = pfd.attr_c_accum_red_bits
      data.attr_accum_green_size = pfd.attr_c_accum_green_bits
      data.attr_accum_blue_size = pfd.attr_c_accum_blue_bits
      data.attr_accum_alpha_size = pfd.attr_c_accum_alpha_bits
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
      return (WGL.wgl_get_current_context).equal?(@context)
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
      if ((WGL.wgl_get_current_context).equal?(@context))
        return
      end
      # long
      h_dc = OS._get_dc(self.attr_handle)
      WGL.wgl_make_current(h_dc, @context)
      OS._release_dc(self.attr_handle, h_dc)
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
      # long
      h_dc = OS._get_dc(self.attr_handle)
      WGL._swap_buffers(h_dc)
      OS._release_dc(self.attr_handle, h_dc)
    end
    
    private
    alias_method :initialize__glcanvas, :initialize
  end
  
end
