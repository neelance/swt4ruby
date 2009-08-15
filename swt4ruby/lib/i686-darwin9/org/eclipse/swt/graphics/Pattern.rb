require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module PatternImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  # Instances of this class represent patterns to use while drawing. Patterns
  # can be specified either as bitmaps or gradients.
  # <p>
  # Application code must explicitly invoke the <code>Pattern.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # <p>
  # This class requires the operating system's advanced graphics subsystem
  # which may not be available on some platforms.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#path">Path, Pattern snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: GraphicsExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  class Pattern < PatternImports.const_get :Resource
    include_class_members PatternImports
    
    attr_accessor :jni_ref
    alias_method :attr_jni_ref, :jni_ref
    undef_method :jni_ref
    alias_method :attr_jni_ref=, :jni_ref=
    undef_method :jni_ref=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :color1
    alias_method :attr_color1, :color1
    undef_method :color1
    alias_method :attr_color1=, :color1=
    undef_method :color1=
    
    attr_accessor :color2
    alias_method :attr_color2, :color2
    undef_method :color2
    alias_method :attr_color2=, :color2=
    undef_method :color2=
    
    attr_accessor :alpha1
    alias_method :attr_alpha1, :alpha1
    undef_method :alpha1
    alias_method :attr_alpha1=, :alpha1=
    undef_method :alpha1=
    
    attr_accessor :alpha2
    alias_method :attr_alpha2, :alpha2
    undef_method :alpha2
    alias_method :attr_alpha2=, :alpha2=
    undef_method :alpha2=
    
    attr_accessor :x1
    alias_method :attr_x1, :x1
    undef_method :x1
    alias_method :attr_x1=, :x1=
    undef_method :x1=
    
    attr_accessor :y1
    alias_method :attr_y1, :y1
    undef_method :y1
    alias_method :attr_y1=, :y1=
    undef_method :y1=
    
    attr_accessor :x2
    alias_method :attr_x2, :x2
    undef_method :x2
    alias_method :attr_x2=, :x2=
    undef_method :x2=
    
    attr_accessor :y2
    alias_method :attr_y2, :y2
    undef_method :y2
    alias_method :attr_y2=, :y2=
    undef_method :y2=
    
    attr_accessor :shading
    alias_method :attr_shading, :shading
    undef_method :shading
    alias_method :attr_shading=, :shading=
    undef_method :shading=
    
    attr_accessor :draw_rect
    alias_method :attr_draw_rect, :draw_rect
    undef_method :draw_rect
    alias_method :attr_draw_rect=, :draw_rect=
    undef_method :draw_rect=
    
    typesig { [Device, Image] }
    # Constructs a new Pattern given an image. Drawing with the resulting
    # pattern will cause the image to be tiled over the resulting area.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the pattern
    # @param image the image that the pattern will draw
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the device is null and there is no current device, or the image is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the pattern could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device, image)
      @jni_ref = 0
      @image = nil
      @color1 = nil
      @color2 = nil
      @alpha1 = 0
      @alpha2 = 0
      @x1 = 0.0
      @y1 = 0.0
      @x2 = 0.0
      @y2 = 0.0
      @shading = 0
      @draw_rect = nil
      super(device)
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      device = self.attr_device
      @image = image
      device.create_pattern_callbacks
      @jni_ref = OS._new_global_ref(self)
      if ((@jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [Device, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, Color, Color] }
    # Constructs a new Pattern that represents a linear, two color
    # gradient. Drawing with the pattern will cause the resulting area to be
    # tiled with the gradient specified by the arguments.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the pattern
    # @param x1 the x coordinate of the starting corner of the gradient
    # @param y1 the y coordinate of the starting corner of the gradient
    # @param x2 the x coordinate of the ending corner of the gradient
    # @param y2 the y coordinate of the ending corner of the gradient
    # @param color1 the starting color of the gradient
    # @param color2 the ending color of the gradient
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the device is null and there is no current device,
    # or if either color1 or color2 is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if either color1 or color2 has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the pattern could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device, x1, y1, x2, y2, color1, color2)
      initialize__pattern(device, x1, y1, x2, y2, color1, 0xff, color2, 0xff)
    end
    
    typesig { [Device, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, Color, ::Java::Int, Color, ::Java::Int] }
    # Constructs a new Pattern that represents a linear, two color
    # gradient. Drawing with the pattern will cause the resulting area to be
    # tiled with the gradient specified by the arguments.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the pattern
    # @param x1 the x coordinate of the starting corner of the gradient
    # @param y1 the y coordinate of the starting corner of the gradient
    # @param x2 the x coordinate of the ending corner of the gradient
    # @param y2 the y coordinate of the ending corner of the gradient
    # @param color1 the starting color of the gradient
    # @param alpha1 the starting alpha value of the gradient
    # @param color2 the ending color of the gradient
    # @param alpha2 the ending alpha value of the gradient
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the device is null and there is no current device,
    # or if either color1 or color2 is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if either color1 or color2 has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the pattern could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    # 
    # @since 3.2
    def initialize(device, x1, y1, x2, y2, color1, alpha1, color2, alpha2)
      @jni_ref = 0
      @image = nil
      @color1 = nil
      @color2 = nil
      @alpha1 = 0
      @alpha2 = 0
      @x1 = 0.0
      @y1 = 0.0
      @x2 = 0.0
      @y2 = 0.0
      @shading = 0
      @draw_rect = nil
      super(device)
      if ((color1).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (color1.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((color2).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (color2.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      device = self.attr_device
      @x1 = x1
      @y1 = y1
      @x2 = x2
      @y2 = y2
      @color1 = color1.attr_handle
      @color2 = color2.attr_handle
      @alpha1 = alpha1
      @alpha2 = alpha2
      device.create_pattern_callbacks
      @jni_ref = OS._new_global_ref(self)
      if ((@jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      start = CGPoint.new
      start.attr_x = x1
      start.attr_y = y1
      end_ = CGPoint.new
      end_.attr_x = x2
      end_.attr_y = y2
      f_callbacks = CGFunctionCallbacks.new
      f_callbacks.attr_evaluate = device.attr_axial_shading_proc
      function = OS._cgfunction_create(@jni_ref, 1, Array.typed(::Java::Float).new([0, 1]), 4, Array.typed(::Java::Float).new([0, 1, 0, 1, 0, 1, 0, 1]), f_callbacks)
      if ((function).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @shading = OS._cgshading_create_axial(device.attr_colorspace, start, end_, function, true, true)
      OS._cgfunction_release(function)
      if ((@shading).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def axial_shading_proc(ref, in_, out)
      buffer = Array.typed(::Java::Float).new(4) { 0.0 }
      OS.memmove(buffer, in_, 4)
      factor2 = buffer[0]
      factor1 = 1 - factor2
      c1 = @color1
      c2 = @color2
      a1 = ((@alpha1 & 0xff) / (0xff).to_f)
      a2 = ((@alpha2 & 0xff) / (0xff).to_f)
      buffer[0] = (c2[0] * factor2) + (c1[0] * factor1)
      buffer[1] = (c2[1] * factor2) + (c1[1] * factor1)
      buffer[2] = (c2[2] * factor2) + (c1[2] * factor1)
      buffer[3] = (a2 * factor2) + (a1 * factor1)
      OS.memmove(out, buffer, buffer.attr_length * 4)
      return 0
    end
    
    typesig { [::Java::Int] }
    def create_pattern(context)
      transform = Array.typed(::Java::Float).new(6) { 0.0 }
      OS._cgcontext_get_ctm(context, transform)
      rect = CGRect.new
      if (!(@image).nil?)
        image_handle = @image.attr_handle
        rect.attr_width = OS._cgimage_get_width(image_handle)
        rect.attr_height = OS._cgimage_get_height(image_handle)
      else
        rect.attr_x = @x1 - 0.5
        rect.attr_y = @y1 - 0.5
        rect.attr_width = @x2 - @x1 + 1
        rect.attr_height = @y2 - @y1 + 1
      end
      callbacks = CGPatternCallbacks.new
      callbacks.attr_draw_pattern = self.attr_device.attr_draw_pattern_proc
      pattern = OS._cgpattern_create(@jni_ref, rect, transform, rect.attr_width, rect.attr_height, OS.attr_k_cgpattern_tiling_no_distortion, 0, callbacks)
      if ((pattern).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      return pattern
    end
    
    typesig { [] }
    def destroy
      if (!(@jni_ref).equal?(0))
        OS._delete_global_ref(@jni_ref)
      end
      if (!(@shading).equal?(0))
        OS._cgshading_release(@shading)
      end
      @jni_ref = @shading = 0
      @image = nil
      @color1 = @color2 = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_pattern_proc(ref, context)
      if (!(@image).nil?)
        if (@image.is_disposed)
          return 0
        end
        image_handle = @image.attr_handle
        image_width = OS._cgimage_get_width(image_handle)
        image_height = OS._cgimage_get_height(image_handle)
        rect = CGRect.new
        rect.attr_width = image_width
        rect.attr_height = image_height
        OS._cgcontext_scale_ctm(context, 1, -1)
        if (!(@draw_rect).nil? && (@draw_rect.attr_x % image_width) + @draw_rect.attr_width < image_width && (@draw_rect.attr_y % image_height) + @draw_rect.attr_height < image_height)
          rect.attr_x = @draw_rect.attr_x % image_width
          rect.attr_y = @draw_rect.attr_y % image_height
          rect.attr_width = @draw_rect.attr_width
          rect.attr_height = @draw_rect.attr_height
          if (OS::VERSION >= 0x1040)
            image_handle = OS._cgimage_create_with_image_in_rect(image_handle, rect)
          else
            src_x = RJava.cast_to_int(@draw_rect.attr_x)
            src_y = RJava.cast_to_int(@draw_rect.attr_y)
            src_width = RJava.cast_to_int(@draw_rect.attr_width)
            src_height = RJava.cast_to_int(@draw_rect.attr_height)
            bpc = OS._cgimage_get_bits_per_component(image_handle)
            bpp = OS._cgimage_get_bits_per_pixel(image_handle)
            bpr = OS._cgimage_get_bytes_per_row(image_handle)
            colorspace = OS._cgimage_get_color_space(image_handle)
            alpha_info = OS._cgimage_get_alpha_info(image_handle)
            data = @image.attr_data + (src_y * bpr) + src_x * 4
            provider = OS._cgdata_provider_create_with_data(0, data, src_height * bpr, 0)
            if (!(provider).equal?(0))
              image_handle = OS._cgimage_create(src_width, src_height, bpc, bpp, bpr, colorspace, alpha_info, provider, nil, true, 0)
              OS._cgdata_provider_release(provider)
            end
          end
        end
        OS._cgcontext_translate_ctm(context, 0, -(rect.attr_height + 2 * rect.attr_y))
        OS._cgcontext_draw_image(context, rect, image_handle)
        if (!(image_handle).equal?(0) && !(image_handle).equal?(@image.attr_handle))
          OS._cgimage_release(image_handle)
        end
      else
        OS._cgcontext_draw_shading(context, @shading)
      end
      return 0
    end
    
    typesig { [] }
    # Returns <code>true</code> if the Pattern has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the Pattern.
    # When a Pattern has been disposed, it is an error to
    # invoke any other method using the Pattern.
    # 
    # @return <code>true</code> when the Pattern is disposed, and <code>false</code> otherwise
    def is_disposed
      return (@jni_ref).equal?(0)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "Pattern {*DISPOSED*}"
      end
      return "Pattern {" + RJava.cast_to_string(@jni_ref) + "}"
    end
    
    private
    alias_method :initialize__pattern, :initialize
  end
  
end
