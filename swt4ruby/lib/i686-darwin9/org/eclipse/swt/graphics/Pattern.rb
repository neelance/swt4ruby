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
  module PatternImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :color
    alias_method :attr_color, :color
    undef_method :color
    alias_method :attr_color=, :color=
    undef_method :color=
    
    attr_accessor :gradient
    alias_method :attr_gradient, :gradient
    undef_method :gradient
    alias_method :attr_gradient=, :gradient=
    undef_method :gradient=
    
    attr_accessor :pt1
    alias_method :attr_pt1, :pt1
    undef_method :pt1
    alias_method :attr_pt1=, :pt1=
    undef_method :pt1=
    
    attr_accessor :pt2
    alias_method :attr_pt2, :pt2
    undef_method :pt2
    alias_method :attr_pt2=, :pt2=
    undef_method :pt2=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    # double
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
      @color = nil
      @gradient = nil
      @pt1 = nil
      @pt2 = nil
      @image = nil
      @color1 = nil
      @color2 = nil
      @alpha1 = 0
      @alpha2 = 0
      super(device)
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @image = image
        @color = NSColor.color_with_pattern_image(image.attr_handle)
        @color.retain
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      @color = nil
      @gradient = nil
      @pt1 = nil
      @pt2 = nil
      @image = nil
      @color1 = nil
      @color2 = nil
      @alpha1 = 0
      @alpha2 = 0
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @pt1 = NSPoint.new
        @pt2 = NSPoint.new
        @pt1.attr_x = x1
        @pt1.attr_y = y1
        @pt2.attr_x = x2
        @pt2.attr_y = y2
        @color1 = color1.attr_handle
        @color2 = color2.attr_handle
        @alpha1 = alpha1
        @alpha2 = alpha2
        start = NSColor.color_with_device_red(color1.attr_handle[0], color1.attr_handle[1], color1.attr_handle[2], alpha1 / 255)
        end_ = NSColor.color_with_device_red(color2.attr_handle[0], color2.attr_handle[1], color2.attr_handle[2], alpha2 / 255)
        @gradient = (NSGradient.new.alloc).init_with_starting_color(start, end_)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    def destroy
      if (!(@color).nil?)
        @color.release
      end
      @color = nil
      if (!(@gradient).nil?)
        @gradient.release
      end
      @gradient = nil
      @image = nil
      @color1 = @color2 = nil
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
      return (self.attr_device).nil?
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
      return "Pattern {" + RJava.cast_to_string((!(@color).nil? ? @color.attr_id : @gradient.attr_id)) + "}"
    end
    
    private
    alias_method :initialize__pattern, :initialize
  end
  
end
