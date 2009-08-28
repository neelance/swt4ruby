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
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Internal::Opengl::Glx
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
    
    # long
    attr_accessor :x_window
    alias_method :attr_x_window, :x_window
    undef_method :x_window
    alias_method :attr_x_window=, :x_window=
    undef_method :x_window=
    
    # long
    attr_accessor :gl_window
    alias_method :attr_gl_window, :gl_window
    undef_method :gl_window
    alias_method :attr_gl_window=, :gl_window=
    undef_method :gl_window=
    
    attr_accessor :vinfo
    alias_method :attr_vinfo, :vinfo
    undef_method :vinfo
    alias_method :attr_vinfo=, :vinfo=
    undef_method :vinfo=
    
    class_module.module_eval {
      const_set_lazy(:MAX_ATTRIBUTES) { 32 }
      const_attr_reader  :MAX_ATTRIBUTES
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
      @x_window = 0
      @gl_window = 0
      @vinfo = nil
      super(parent, style)
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      glx_attrib = Array.typed(::Java::Int).new(MAX_ATTRIBUTES) { 0 }
      pos = 0
      glx_attrib[((pos += 1) - 1)] = GLX::GLX_RGBA
      if (data.attr_double_buffer)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_DOUBLEBUFFER
      end
      if (data.attr_stereo)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_STEREO
      end
      if (data.attr_red_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_RED_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_red_size
      end
      if (data.attr_green_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_GREEN_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_green_size
      end
      if (data.attr_blue_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_BLUE_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_blue_size
      end
      if (data.attr_alpha_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_ALPHA_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_alpha_size
      end
      if (data.attr_depth_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_DEPTH_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_depth_size
      end
      if (data.attr_stencil_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_STENCIL_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_stencil_size
      end
      if (data.attr_accum_red_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_ACCUM_RED_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_accum_red_size
      end
      if (data.attr_accum_green_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_ACCUM_GREEN_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_accum_green_size
      end
      if (data.attr_accum_blue_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_ACCUM_BLUE_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_accum_blue_size
      end
      if (data.attr_accum_alpha_size > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_ACCUM_ALPHA_SIZE
        glx_attrib[((pos += 1) - 1)] = data.attr_accum_alpha_size
      end
      if (data.attr_sample_buffers > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_SAMPLE_BUFFERS
        glx_attrib[((pos += 1) - 1)] = data.attr_sample_buffers
      end
      if (data.attr_samples > 0)
        glx_attrib[((pos += 1) - 1)] = GLX::GLX_SAMPLES
        glx_attrib[((pos += 1) - 1)] = data.attr_samples
      end
      glx_attrib[((pos += 1) - 1)] = 0
      OS.gtk_widget_realize(self.attr_handle)
      # long
      window = OS._gtk_widget_window(self.attr_handle)
      # long
      x_display = OS.gdk_x11_drawable_get_xdisplay(window)
      # long
      info_ptr = GLX.gl_xchoose_visual(x_display, OS._xdefault_screen(x_display), glx_attrib)
      if ((info_ptr).equal?(0))
        dispose
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      @vinfo = XVisualInfo.new
      GLX.memmove(@vinfo, info_ptr, XVisualInfo.attr_sizeof)
      OS._xfree(info_ptr)
      # long
      screen = OS.gdk_screen_get_default
      # long
      gdkvisual = OS.gdk_x11_screen_lookup_visual(screen, @vinfo.attr_visualid)
      # FIXME- share lists
      # context = GLX.glXCreateContext (xDisplay, info, share == null ? 0 : share.context, true);
      @context = GLX.gl_xcreate_context(x_display, @vinfo, 0, true)
      if ((@context).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      attrs = GdkWindowAttr.new
      attrs.attr_width = 1
      attrs.attr_height = 1
      attrs.attr_event_mask = OS::GDK_KEY_PRESS_MASK | OS::GDK_KEY_RELEASE_MASK | OS::GDK_FOCUS_CHANGE_MASK | OS::GDK_POINTER_MOTION_MASK | OS::GDK_BUTTON_PRESS_MASK | OS::GDK_BUTTON_RELEASE_MASK | OS::GDK_ENTER_NOTIFY_MASK | OS::GDK_LEAVE_NOTIFY_MASK | OS::GDK_EXPOSURE_MASK | OS::GDK_VISIBILITY_NOTIFY_MASK | OS::GDK_POINTER_MOTION_HINT_MASK
      attrs.attr_window_type = OS::GDK_WINDOW_CHILD
      attrs.attr_visual = gdkvisual
      @gl_window = OS.gdk_window_new(window, attrs, OS::GDK_WA_VISUAL)
      OS.gdk_window_set_user_data(@gl_window, self.attr_handle)
      if (!((style & SWT::NO_BACKGROUND)).equal?(0))
        OS.gdk_window_set_back_pixmap(window, 0, false)
      end
      @x_window = OS.gdk_x11_drawable_get_xid(@gl_window)
      OS.gdk_window_show(@gl_window)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members GLCanvas
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Paint
            # Bug in MESA.  MESA does some nasty sort of polling to try
            # and ensure that their buffer sizes match the current X state.
            # This state can be updated using glViewport().
            # FIXME: There has to be a better way of doing this.
            viewport = Array.typed(::Java::Int).new(4) { 0 }
            GLX.gl_get_integerv(GLX::GL_VIEWPORT, viewport)
            GLX.gl_viewport(viewport[0], viewport[1], viewport[2], viewport[3])
          when SWT::Resize
            client_area = get_client_area
            OS.gdk_window_move(self.attr_gl_window, client_area.attr_x, client_area.attr_y)
            OS.gdk_window_resize(self.attr_gl_window, client_area.attr_width, client_area.attr_height)
          when SWT::Dispose
            # long
            window_ = OS._gtk_widget_window(self.attr_handle)
            # long
            x_display_ = OS.gdk_x11_drawable_get_xdisplay(window_)
            if (!(self.attr_context).equal?(0))
              if ((GLX.gl_xget_current_context).equal?(self.attr_context))
                GLX.gl_xmake_current(x_display_, 0, 0)
              end
              GLX.gl_xdestroy_context(x_display_, self.attr_context)
              self.attr_context = 0
            end
            if (!(self.attr_gl_window).equal?(0))
              OS.gdk_window_destroy(self.attr_gl_window)
              self.attr_gl_window = 0
            end
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Resize, listener)
      add_listener(SWT::Paint, listener)
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
      # long
      window = OS._gtk_widget_window(self.attr_handle)
      # long
      x_display = OS.gdk_x11_drawable_get_xdisplay(window)
      data = GLData.new
      value = Array.typed(::Java::Int).new(1) { 0 }
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_DOUBLEBUFFER, value)
      data.attr_double_buffer = !(value[0]).equal?(0)
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_STEREO, value)
      data.attr_stereo = !(value[0]).equal?(0)
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_RED_SIZE, value)
      data.attr_red_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_GREEN_SIZE, value)
      data.attr_green_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_BLUE_SIZE, value)
      data.attr_blue_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_ALPHA_SIZE, value)
      data.attr_alpha_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_DEPTH_SIZE, value)
      data.attr_depth_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_STENCIL_SIZE, value)
      data.attr_stencil_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_ACCUM_RED_SIZE, value)
      data.attr_accum_red_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_ACCUM_GREEN_SIZE, value)
      data.attr_accum_green_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_ACCUM_BLUE_SIZE, value)
      data.attr_accum_blue_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_ACCUM_ALPHA_SIZE, value)
      data.attr_accum_alpha_size = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_SAMPLE_BUFFERS, value)
      data.attr_sample_buffers = value[0]
      GLX.gl_xget_config(x_display, @vinfo, GLX::GLX_SAMPLES, value)
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
      return (GLX.gl_xget_current_context).equal?(@context)
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
      if ((GLX.gl_xget_current_context).equal?(@context))
        return
      end
      # long
      window = OS._gtk_widget_window(self.attr_handle)
      # long
      x_display = OS.gdk_x11_drawable_get_xdisplay(window)
      GLX.gl_xmake_current(x_display, @x_window, @context)
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
      window = OS._gtk_widget_window(self.attr_handle)
      # long
      x_display = OS.gdk_x11_drawable_get_xdisplay(window)
      GLX.gl_xswap_buffers(x_display, @x_window)
    end
    
    private
    alias_method :initialize__glcanvas, :initialize
  end
  
end
