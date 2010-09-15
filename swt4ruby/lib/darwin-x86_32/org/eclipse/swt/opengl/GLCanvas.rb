require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include_const ::Org::Eclipse::Swt::Opengl, :GLData
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
      
      const_set_lazy(:GLCONTEXT_KEY) { "org.eclipse.swt.internal.cocoa.glcontext" }
      const_attr_reader  :GLCONTEXT_KEY
    }
    
    typesig { [Composite, ::Java::Int, GLData] }
    # $NON-NLS-1$
    # 
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
      @context = nil
      @pixel_format = nil
      super(parent, style)
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      attrib = Array.typed(::Java::Int).new(MAX_ATTRIBUTES) { 0 }
      pos = 0
      if (data.attr_double_buffer)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFADoubleBuffer
      end
      if (data.attr_stereo)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFAStereo
      end
      # Feature in Cocoa: NSOpenGL/CoreOpenGL only supports specifying the total number of bits
      # in the size of the color component. If specified, the color size is the sum of the red, green
      # and blue values in the GLData.
      if ((data.attr_red_size + data.attr_blue_size + data.attr_green_size) > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFAColorSize
        attrib[((pos += 1) - 1)] = data.attr_red_size + data.attr_green_size + data.attr_blue_size
      end
      if (data.attr_alpha_size > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFAAlphaSize
        attrib[((pos += 1) - 1)] = data.attr_alpha_size
      end
      if (data.attr_depth_size > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFADepthSize
        attrib[((pos += 1) - 1)] = data.attr_depth_size
      end
      if (data.attr_stencil_size > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFAStencilSize
        attrib[((pos += 1) - 1)] = data.attr_stencil_size
      end
      # Feature in Cocoa: NSOpenGL/CoreOpenGL only supports specifying the total number of bits
      # in the size of the color accumulator component. If specified, the color size is the sum of the red, green,
      # blue and alpha accum values in the GLData.
      if ((data.attr_accum_red_size + data.attr_accum_blue_size + data.attr_accum_green_size) > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFAAccumSize
        attrib[((pos += 1) - 1)] = data.attr_accum_red_size + data.attr_accum_green_size + data.attr_accum_blue_size + data.attr_accum_alpha_size
      end
      if (data.attr_sample_buffers > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFASampleBuffers
        attrib[((pos += 1) - 1)] = data.attr_sample_buffers
      end
      if (data.attr_samples > 0)
        attrib[((pos += 1) - 1)] = OS::NSOpenGLPFASamples
        attrib[((pos += 1) - 1)] = data.attr_samples
      end
      attrib[((pos += 1) - 1)] = 0
      @pixel_format = NSOpenGLPixelFormat.new.alloc
      if ((@pixel_format).nil?)
        dispose
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      @pixel_format.init_with_attributes(attrib)
      ctx = !(data.attr_share_context).nil? ? data.attr_share_context.attr_context : nil
      @context = NSOpenGLContext.new.alloc
      if ((@context).nil?)
        dispose
        SWT.error(SWT::ERROR_UNSUPPORTED_DEPTH)
      end
      @context = @context.init_with_format(@pixel_format, ctx)
      set_data(GLCONTEXT_KEY, @context)
      NSNotificationCenter.default_center.add_observer(self.attr_view, OS.attr_sel_update_open_glcontext_, OS::NSViewGlobalFrameDidChangeNotification, self.attr_view)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in GLCanvas
        include_class_members GLCanvas
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            set_data(GLCONTEXT_KEY, nil)
            NSNotificationCenter.default_center.remove_observer(self.attr_view)
            if (!(self.attr_context).nil?)
              self.attr_context.clear_drawable
              self.attr_context.release
            end
            self.attr_context = nil
            if (!(self.attr_pixel_format).nil?)
              self.attr_pixel_format.release
            end
            self.attr_pixel_format = nil
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
      # long
      # long
      value = Array.typed(::Java::Int).new(1) { 0 }
      @pixel_format.get_values(value, OS::NSOpenGLPFADoubleBuffer, 0)
      data.attr_double_buffer = !(value[0]).equal?(0)
      @pixel_format.get_values(value, OS::NSOpenGLPFAStereo, 0)
      data.attr_stereo = !(value[0]).equal?(0)
      @pixel_format.get_values(value, OS::NSOpenGLPFAAlphaSize, 0)
      # 64
      data.attr_alpha_size = RJava.cast_to_int(value[0])
      # Feature in Cocoa: NSOpenGL/CoreOpenGL only supports specifying the total number of bits
      # in the size of the color component. For compatibility we split the color size less any alpha
      # into thirds and allocate a third to each color.
      @pixel_format.get_values(value, OS::NSOpenGLPFAColorSize, 0)
      # 64
      color_size = (RJava.cast_to_int((value[0] - data.attr_alpha_size))) / 3
      data.attr_red_size = color_size
      data.attr_green_size = color_size
      data.attr_blue_size = color_size
      @pixel_format.get_values(value, OS::NSOpenGLPFADepthSize, 0)
      # 64
      data.attr_depth_size = RJava.cast_to_int(value[0])
      @pixel_format.get_values(value, OS::NSOpenGLPFAStencilSize, 0)
      # 64
      data.attr_stencil_size = RJava.cast_to_int(value[0])
      # Feature(?) in Cocoa: NSOpenGL/CoreOpenGL doesn't support setting an accumulation buffer alpha, but
      # has an alpha if the color values for the accumulation buffer were set. Allocate the values evenly
      # in that case.
      @pixel_format.get_values(value, OS::NSOpenGLPFAAccumSize, 0)
      # 64
      accum_color_size = RJava.cast_to_int((value[0])) / 4
      data.attr_accum_red_size = accum_color_size
      data.attr_accum_green_size = accum_color_size
      data.attr_accum_blue_size = accum_color_size
      data.attr_accum_alpha_size = accum_color_size
      @pixel_format.get_values(value, OS::NSOpenGLPFASampleBuffers, 0)
      # 64
      data.attr_sample_buffers = RJava.cast_to_int(value[0])
      @pixel_format.get_values(value, OS::NSOpenGLPFASamples, 0)
      # 64
      data.attr_samples = RJava.cast_to_int(value[0])
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
      current = NSOpenGLContext.current_context
      return !(current).nil? && (current.attr_id).equal?(@context.attr_id)
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
      @context.make_current_context
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
      @context.flush_buffer
    end
    
    private
    alias_method :initialize__glcanvas, :initialize
  end
  
end
