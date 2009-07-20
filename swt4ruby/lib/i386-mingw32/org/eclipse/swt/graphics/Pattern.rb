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
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    # the OS resource for the Pattern
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
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
      @handle = 0
      super(device)
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      self.attr_device.check_gdip
      # long
      gdip_image = image.create_gdip_image
      # long
      img = gdip_image[0]
      width = Gdip._image_get_width(img)
      height = Gdip._image_get_height(img)
      @handle = Gdip._texture_brush_new(img, Gdip::WrapModeTile, 0, 0, width, height)
      Gdip._bitmap_delete(img)
      if (!(gdip_image[1]).equal?(0))
        # long
        h_heap = OS._get_process_heap
        OS._heap_free(h_heap, 0, gdip_image[1])
      end
      if ((@handle).equal?(0))
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
      @handle = 0
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
      self.attr_device.check_gdip
      color_ref1 = color1.attr_handle
      rgb = ((color_ref1 >> 16) & 0xff) | (color_ref1 & 0xff00) | ((color_ref1 & 0xff) << 16)
      # long
      fore_color = Gdip._color_new((alpha1 & 0xff) << 24 | rgb)
      if ((x1).equal?(x2) && (y1).equal?(y2))
        @handle = Gdip._solid_brush_new(fore_color)
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
      else
        color_ref2 = color2.attr_handle
        rgb = ((color_ref2 >> 16) & 0xff) | (color_ref2 & 0xff00) | ((color_ref2 & 0xff) << 16)
        # long
        back_color = Gdip._color_new((alpha2 & 0xff) << 24 | rgb)
        p1 = PointF.new
        p1.attr_x = x1
        p1.attr_y = y1
        p2 = PointF.new
        p2.attr_x = x2
        p2.attr_y = y2
        @handle = Gdip._linear_gradient_brush_new(p1, p2, fore_color, back_color)
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        if (!(alpha1).equal?(0xff) || !(alpha2).equal?(0xff))
          a = RJava.cast_to_int(((alpha1 & 0xff) * 0.5 + (alpha2 & 0xff) * 0.5))
          r = RJava.cast_to_int((((color_ref1 & 0xff) >> 0) * 0.5 + ((color_ref2 & 0xff) >> 0) * 0.5))
          g = RJava.cast_to_int((((color_ref1 & 0xff00) >> 8) * 0.5 + ((color_ref2 & 0xff00) >> 8) * 0.5))
          b = RJava.cast_to_int((((color_ref1 & 0xff0000) >> 16) * 0.5 + ((color_ref2 & 0xff0000) >> 16) * 0.5))
          # long
          mid_color = Gdip._color_new(a << 24 | r << 16 | g << 8 | b)
          # long
          Gdip._linear_gradient_brush_set_interpolation_colors(@handle, Array.typed(::Java::Int).new([fore_color, mid_color, back_color]), Array.typed(::Java::Float).new([0, 0.5, 1]), 3)
          Gdip._color_delete(mid_color)
        end
        Gdip._color_delete(back_color)
      end
      Gdip._color_delete(fore_color)
      init
    end
    
    typesig { [] }
    def destroy
      type = Gdip._brush_get_type(@handle)
      case (type)
      when Gdip::BrushTypeSolidColor
        Gdip._solid_brush_delete(@handle)
      when Gdip::BrushTypeHatchFill
        Gdip._hatch_brush_delete(@handle)
      when Gdip::BrushTypeLinearGradient
        Gdip._linear_gradient_brush_delete(@handle)
      when Gdip::BrushTypeTextureFill
        Gdip._texture_brush_delete(@handle)
      end
      @handle = 0
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
      return (@handle).equal?(0)
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
      return "Pattern {" + (@handle).to_s + "}"
    end
    
    private
    alias_method :initialize__pattern, :initialize
  end
  
end
