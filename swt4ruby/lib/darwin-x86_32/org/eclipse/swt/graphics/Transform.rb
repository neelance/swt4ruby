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
  module TransformImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class represent transformation matrices for
  # points expressed as (x, y) pairs of floating point numbers.
  # <p>
  # Application code must explicitly invoke the <code>Transform.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # <p>
  # This class requires the operating system's advanced graphics subsystem
  # which may not be available on some platforms.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: GraphicsExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  class Transform < TransformImports.const_get :Resource
    include_class_members TransformImports
    
    # the OS resource for the Transform
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    typesig { [Device] }
    # Constructs a new identity Transform.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the Transform
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the Transform could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device)
      initialize__transform(device, 1, 0, 0, 1, 0, 0)
    end
    
    typesig { [Device, Array.typed(::Java::Float)] }
    # Constructs a new Transform given an array of elements that represent the
    # matrix that describes the transformation.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the Transform
    # @param elements an array of floats that describe the transformation matrix
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device, or the elements array is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the elements array is too small to hold the matrix values</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the Transform could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device, elements)
      initialize__transform(device, check_transform(elements)[0], elements[1], elements[2], elements[3], elements[4], elements[5])
    end
    
    typesig { [Device, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
    # Constructs a new Transform given all of the elements that represent the
    # matrix that describes the transformation.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param device the device on which to allocate the Transform
    # @param m11 the first element of the first row of the matrix
    # @param m12 the second element of the first row of the matrix
    # @param m21 the first element of the second row of the matrix
    # @param m22 the second element of the second row of the matrix
    # @param dx the third element of the first row of the matrix
    # @param dy the third element of the second row of the matrix
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle for the Transform could not be obtained</li>
    # </ul>
    # 
    # @see #dispose()
    def initialize(device, m11, m12, m21, m22, dx, dy)
      @handle = nil
      super(device)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle = NSAffineTransform.transform
        if ((@handle).nil?)
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @handle.retain
        set_elements(m11, m12, m21, m22, dx, dy)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Float)] }
      def check_transform(elements)
        if ((elements).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if (elements.attr_length < 6)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        return elements
      end
    }
    
    typesig { [] }
    def destroy
      @handle.release
      @handle = nil
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # Fills the parameter with the values of the transformation matrix
    # that the receiver represents, in the order {m11, m12, m21, m22, dx, dy}.
    # 
    # @param elements array to hold the matrix values
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter is too small to hold the matrix values</li>
    # </ul>
    def get_elements(elements)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((elements).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (elements.attr_length < 6)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        struct = @handle.transform_struct
        # 64
        elements[0] = (struct.attr_m11).to_f
        # 64
        elements[1] = (struct.attr_m12).to_f
        # 64
        elements[2] = (struct.attr_m21).to_f
        # 64
        elements[3] = (struct.attr_m22).to_f
        # 64
        elements[4] = (struct.attr_t_x).to_f
        # 64
        elements[5] = (struct.attr_t_y).to_f
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    # Modifies the receiver such that the matrix it represents becomes the
    # identity matrix.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.4
    def identity
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        struct = NSAffineTransformStruct.new
        struct.attr_m11 = 1
        struct.attr_m22 = 1
        @handle.set_transform_struct(struct)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    # Modifies the receiver such that the matrix it represents becomes
    # the mathematical inverse of the matrix it previously represented.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_CANNOT_INVERT_MATRIX - if the matrix is not invertible</li>
    # </ul>
    def invert
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        struct = @handle.transform_struct
        if (((struct.attr_m11 * struct.attr_m22 - struct.attr_m12 * struct.attr_m21)).equal?(0))
          SWT.error(SWT::ERROR_CANNOT_INVERT_MATRIX)
        end
        @handle.invert
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the Transform has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the Transform.
    # When a Transform has been disposed, it is an error to
    # invoke any other method using the Transform.
    # 
    # @return <code>true</code> when the Transform is disposed, and <code>false</code> otherwise
    def is_disposed
      return (@handle).nil?
    end
    
    typesig { [] }
    # Returns <code>true</code> if the Transform represents the identity matrix
    # and false otherwise.
    # 
    # @return <code>true</code> if the receiver is an identity Transform, and <code>false</code> otherwise
    def is_identity
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        struct = @handle.transform_struct
        return (struct.attr_m11).equal?(1) && (struct.attr_m12).equal?(0) && (struct.attr_m21).equal?(0) && (struct.attr_m22).equal?(1) && (struct.attr_t_x).equal?(0) && (struct.attr_t_y).equal?(0)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Transform] }
    # Modifies the receiver such that the matrix it represents becomes the
    # the result of multiplying the matrix it previously represented by the
    # argument.
    # 
    # @param matrix the matrix to multiply the receiver by
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    def multiply(matrix)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((matrix).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (matrix.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.prepend_transform(matrix.attr_handle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Float] }
    # Modifies the receiver so that it represents a transformation that is
    # equivalent to its previous transformation rotated by the specified angle.
    # The angle is specified in degrees and for the identity transform 0 degrees
    # is at the 3 o'clock position. A positive value indicates a clockwise rotation
    # while a negative value indicates a counter-clockwise rotation.
    # 
    # @param angle the angle to rotate the transformation by
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def rotate(angle)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.rotate_by_degrees(angle)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # Modifies the receiver so that it represents a transformation that is
    # equivalent to its previous transformation scaled by (scaleX, scaleY).
    # 
    # @param scaleX the amount to scale in the X direction
    # @param scaleY the amount to scale in the Y direction
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def scale(scale_x, scale_y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.scale_xby(scale_x, scale_y)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float, ::Java::Float] }
    # Modifies the receiver to represent a new transformation given all of
    # the elements that represent the matrix that describes that transformation.
    # 
    # @param m11 the first element of the first row of the matrix
    # @param m12 the second element of the first row of the matrix
    # @param m21 the first element of the second row of the matrix
    # @param m22 the second element of the second row of the matrix
    # @param dx the third element of the first row of the matrix
    # @param dy the third element of the second row of the matrix
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_elements(m11, m12, m21, m22, dx, dy)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        struct = NSAffineTransformStruct.new
        struct.attr_m11 = m11
        struct.attr_m12 = m12
        struct.attr_m21 = m21
        struct.attr_m22 = m22
        struct.attr_t_x = dx
        struct.attr_t_y = dy
        @handle.set_transform_struct(struct)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # Modifies the receiver so that it represents a transformation that is
    # equivalent to its previous transformation sheared by (shearX, shearY).
    # 
    # @param shearX the shear factor in the X direction
    # @param shearY the shear factor in the Y direction
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.4
    def shear(shear_x, shear_y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        struct = NSAffineTransformStruct.new
        struct.attr_m11 = 1
        struct.attr_m12 = shear_x
        struct.attr_m21 = shear_y
        struct.attr_m22 = 1
        matrix = NSAffineTransform.transform
        matrix.set_transform_struct(struct)
        @handle.prepend_transform(matrix)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # Given an array containing points described by alternating x and y values,
    # modify that array such that each point has been replaced with the result of
    # applying the transformation represented by the receiver to that point.
    # 
    # @param pointArray an array of alternating x and y values to be transformed
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def transform(point_array)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        point = NSPoint.new
        length = point_array.attr_length / 2
        i = 0
        j = 0
        while i < length
          point.attr_x = point_array[j]
          point.attr_y = point_array[j + 1]
          point = @handle.transform_point(point)
          # 64
          point_array[j] = (point.attr_x).to_f
          # 64
          point_array[j + 1] = (point.attr_y).to_f
          i += 1
          j += 2
        end
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # Modifies the receiver so that it represents a transformation that is
    # equivalent to its previous transformation translated by (offsetX, offsetY).
    # 
    # @param offsetX the distance to translate in the X direction
    # @param offsetY the distance to translate in the Y direction
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def translate(offset_x, offset_y)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @handle.translate_xby(offset_x, offset_y)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "Transform {*DISPOSED*}"
      end
      elements = Array.typed(::Java::Float).new(6) { 0.0 }
      get_elements(elements)
      return "Transform {" + RJava.cast_to_string(elements[0]) + ", " + RJava.cast_to_string(elements[1]) + ", " + RJava.cast_to_string(elements[2]) + ", " + RJava.cast_to_string(elements[3]) + ", " + RJava.cast_to_string(elements[4]) + ", " + RJava.cast_to_string(elements[5]) + "}"
    end
    
    private
    alias_method :initialize__transform, :initialize
  end
  
end
