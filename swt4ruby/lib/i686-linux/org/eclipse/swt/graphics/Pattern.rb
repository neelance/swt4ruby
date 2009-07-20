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
      include ::Org::Eclipse::Swt::Internal::Cairo
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
    
    # long
    attr_accessor :surface
    alias_method :attr_surface, :surface
    undef_method :surface
    alias_method :attr_surface=, :surface=
    undef_method :surface=
    
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
      @surface = 0
      super(device)
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      self.attr_device.check_cairo
      image.create_surface
      @handle = Cairo.cairo_pattern_create_for_surface(image.attr_surface)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_pattern_set_extend(@handle, Cairo::CAIRO_EXTEND_REPEAT)
      @surface = image.attr_surface
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
      @surface = 0
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
      self.attr_device.check_cairo
      @handle = Cairo.cairo_pattern_create_linear(x1, y1, x2, y2)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      SwtGC.set_cairo_pattern_color(@handle, 0, color1, alpha1)
      SwtGC.set_cairo_pattern_color(@handle, 1, color2, alpha2)
      Cairo.cairo_pattern_set_extend(@handle, Cairo::CAIRO_EXTEND_REPEAT)
      init
    end
    
    typesig { [] }
    def destroy
      Cairo.cairo_pattern_destroy(@handle)
      @handle = @surface = 0
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
