require "rjava"

# Copyright (c) 2005, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Opengl
  module GLDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Opengl
    }
  end
  
  # The GLData class is a device-independent description
  # of the pixel format attributes of a GL drawable.
  # 
  # @see GLCanvas
  # @see <a href="http://www.eclipse.org/swt/snippets/#opengl">OpenGL snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class GLData 
    include_class_members GLDataImports
    
    # Specifies a double-buffered surface.  During context
    # creation, only double-buffered formats are considered
    # when set to true.
    attr_accessor :double_buffer
    alias_method :attr_double_buffer, :double_buffer
    undef_method :double_buffer
    alias_method :attr_double_buffer=, :double_buffer=
    undef_method :double_buffer=
    
    # Specifies a stereo surface.  During context creation,
    # only stereo formats are considered when set to true.
    attr_accessor :stereo
    alias_method :attr_stereo, :stereo
    undef_method :stereo
    alias_method :attr_stereo=, :stereo=
    undef_method :stereo=
    
    # The size in bits of the color buffer's red channel.
    # During context creation, this specifies the minimum
    # required red bits.
    attr_accessor :red_size
    alias_method :attr_red_size, :red_size
    undef_method :red_size
    alias_method :attr_red_size=, :red_size=
    undef_method :red_size=
    
    # The size in bits of the color buffer's green channel.
    # During context creation, this specifies the minimum
    # required green bits.
    attr_accessor :green_size
    alias_method :attr_green_size, :green_size
    undef_method :green_size
    alias_method :attr_green_size=, :green_size=
    undef_method :green_size=
    
    # The size in bits of the color buffer's blue channel.
    # During context creation, this specifies the minimum
    # required blue bits.
    attr_accessor :blue_size
    alias_method :attr_blue_size, :blue_size
    undef_method :blue_size
    alias_method :attr_blue_size=, :blue_size=
    undef_method :blue_size=
    
    # The size in bits of the color buffer's alpha channel.
    # During context creation, this specifies the minimum
    # required alpha bits.
    attr_accessor :alpha_size
    alias_method :attr_alpha_size, :alpha_size
    undef_method :alpha_size
    alias_method :attr_alpha_size=, :alpha_size=
    undef_method :alpha_size=
    
    # The size in bits of the depth buffer.  During context
    # creation, the smallest depth buffer of at least the
    # specified value is preferred, or zero for no depth
    # buffer.
    attr_accessor :depth_size
    alias_method :attr_depth_size, :depth_size
    undef_method :depth_size
    alias_method :attr_depth_size=, :depth_size=
    undef_method :depth_size=
    
    # The desired number of stencil bitplanes.  During
    # context creation, the smallest stencil buffer of at
    # least the specified value is preferred, or zero for
    # no stencil buffer.
    attr_accessor :stencil_size
    alias_method :attr_stencil_size, :stencil_size
    undef_method :stencil_size
    alias_method :attr_stencil_size=, :stencil_size=
    undef_method :stencil_size=
    
    # The size in bits of the accumulation buffer's red
    # channel. During context creation, this specifies the
    # minimum required red bits.
    attr_accessor :accum_red_size
    alias_method :attr_accum_red_size, :accum_red_size
    undef_method :accum_red_size
    alias_method :attr_accum_red_size=, :accum_red_size=
    undef_method :accum_red_size=
    
    # The size in bits of the accumulation buffer's green
    # channel. During context creation, this specifies the
    # minimum required green bits.
    attr_accessor :accum_green_size
    alias_method :attr_accum_green_size, :accum_green_size
    undef_method :accum_green_size
    alias_method :attr_accum_green_size=, :accum_green_size=
    undef_method :accum_green_size=
    
    # The size in bits of the accumulation buffer's blue
    # channel. During context creation, this specifies the
    # minimum required blue bits.
    attr_accessor :accum_blue_size
    alias_method :attr_accum_blue_size, :accum_blue_size
    undef_method :accum_blue_size
    alias_method :attr_accum_blue_size=, :accum_blue_size=
    undef_method :accum_blue_size=
    
    # The size in bits of the accumulation buffer's alpha
    # channel. During context creation, this specifies the
    # minimum required alpha bits.
    attr_accessor :accum_alpha_size
    alias_method :attr_accum_alpha_size, :accum_alpha_size
    undef_method :accum_alpha_size
    alias_method :attr_accum_alpha_size=, :accum_alpha_size=
    undef_method :accum_alpha_size=
    
    # The number of multisample buffers used by this context.
    # During context creation, this specifies the minimum
    # number of multisample buffers requested.
    attr_accessor :sample_buffers
    alias_method :attr_sample_buffers, :sample_buffers
    undef_method :sample_buffers
    alias_method :attr_sample_buffers=, :sample_buffers=
    undef_method :sample_buffers=
    
    # The number of samples accepted in the multisample buffer.
    # During creation, pixel formats with the smallest number of
    # samples that meets or exceeds the specified minimum number
    # are preferred.
    attr_accessor :samples
    alias_method :attr_samples, :samples
    undef_method :samples
    alias_method :attr_samples=, :samples=
    undef_method :samples=
    
    # Another GLCanvas whose texture namespace and display lists
    # should be shared.
    # 
    # @since 3.5
    attr_accessor :share_context
    alias_method :attr_share_context, :share_context
    undef_method :share_context
    alias_method :attr_share_context=, :share_context=
    undef_method :share_context=
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the data
    def to_s
      return RJava.cast_to_string((@double_buffer ? "doubleBuffer," : "") + (@stereo ? "stereo," : "")) + "r:" + RJava.cast_to_string(@red_size) + " g:" + RJava.cast_to_string(@green_size) + " b:" + RJava.cast_to_string(@blue_size) + " a:" + RJava.cast_to_string(@alpha_size) + "," + "depth:" + RJava.cast_to_string(@depth_size) + ",stencil:" + RJava.cast_to_string(@stencil_size) + ",accum r:" + RJava.cast_to_string(@accum_red_size) + "g:" + RJava.cast_to_string(@accum_green_size) + "b:" + RJava.cast_to_string(@accum_blue_size) + "a:" + RJava.cast_to_string(@accum_alpha_size) + ",sampleBuffers:" + RJava.cast_to_string(@sample_buffers) + ",samples:" + RJava.cast_to_string(@samples)
    end
    
    typesig { [] }
    def initialize
      @double_buffer = false
      @stereo = false
      @red_size = 0
      @green_size = 0
      @blue_size = 0
      @alpha_size = 0
      @depth_size = 0
      @stencil_size = 0
      @accum_red_size = 0
      @accum_green_size = 0
      @accum_blue_size = 0
      @accum_alpha_size = 0
      @sample_buffers = 0
      @samples = 0
      @share_context = nil
    end
    
    private
    alias_method :initialize__gldata, :initialize
  end
  
end
