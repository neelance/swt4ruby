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
  module LineAttributesImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
    }
  end
  
  # <code>LineAttributes</code> defines a set of line attributes that
  # can be modified in a GC.
  # <p>
  # Application code does <em>not</em> need to explicitly release the
  # resources managed by each instance when those instances are no longer
  # required, and thus no <code>dispose()</code> method is provided.
  # </p>
  # 
  # @see GC#getLineAttributes()
  # @see GC#setLineAttributes(LineAttributes)
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class LineAttributes 
    include_class_members LineAttributesImports
    
    # The line width.
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # The line style.
    # 
    # @see org.eclipse.swt.SWT#LINE_CUSTOM
    # @see org.eclipse.swt.SWT#LINE_DASH
    # @see org.eclipse.swt.SWT#LINE_DASHDOT
    # @see org.eclipse.swt.SWT#LINE_DASHDOTDOT
    # @see org.eclipse.swt.SWT#LINE_DOT
    # @see org.eclipse.swt.SWT#LINE_SOLID
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    # The line cap style.
    # 
    # @see org.eclipse.swt.SWT#CAP_FLAT
    # @see org.eclipse.swt.SWT#CAP_ROUND
    # @see org.eclipse.swt.SWT#CAP_SQUARE
    attr_accessor :cap
    alias_method :attr_cap, :cap
    undef_method :cap
    alias_method :attr_cap=, :cap=
    undef_method :cap=
    
    # The line join style.
    # 
    # @see org.eclipse.swt.SWT#JOIN_BEVEL
    # @see org.eclipse.swt.SWT#JOIN_MITER
    # @see org.eclipse.swt.SWT#JOIN_ROUND
    attr_accessor :join
    alias_method :attr_join, :join
    undef_method :join
    alias_method :attr_join=, :join=
    undef_method :join=
    
    # The line dash style for SWT.LINE_CUSTOM.
    attr_accessor :dash
    alias_method :attr_dash, :dash
    undef_method :dash
    alias_method :attr_dash=, :dash=
    undef_method :dash=
    
    # The line dash style offset for SWT.LINE_CUSTOM.
    attr_accessor :dash_offset
    alias_method :attr_dash_offset, :dash_offset
    undef_method :dash_offset
    alias_method :attr_dash_offset=, :dash_offset=
    undef_method :dash_offset=
    
    # The line miter limit.
    attr_accessor :miter_limit
    alias_method :attr_miter_limit, :miter_limit
    undef_method :miter_limit
    alias_method :attr_miter_limit=, :miter_limit=
    undef_method :miter_limit=
    
    typesig { [::Java::Float] }
    # Create a new line attributes with the specified line width.
    # 
    # @param width the line width
    def initialize(width)
      initialize__line_attributes(width, SWT::CAP_FLAT, SWT::JOIN_MITER, SWT::LINE_SOLID, nil, 0, 10)
    end
    
    typesig { [::Java::Float, ::Java::Int, ::Java::Int] }
    # Create a new line attributes with the specified line cap, join and width.
    # 
    # @param width the line width
    # @param cap the line cap style
    # @param join the line join style
    def initialize(width, cap, join)
      initialize__line_attributes(width, cap, join, SWT::LINE_SOLID, nil, 0, 10)
    end
    
    typesig { [::Java::Float, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Float), ::Java::Float, ::Java::Float] }
    # Create a new line attributes with the specified arguments.
    # 
    # @param width the line width
    # @param cap the line cap style
    # @param join the line join style
    # @param style the line style
    # @param dash the line dash style
    # @param dashOffset the line dash style offset
    # @param miterLimit the line miter limit
    def initialize(width, cap, join, style, dash, dash_offset, miter_limit)
      @width = 0.0
      @style = 0
      @cap = 0
      @join = 0
      @dash = nil
      @dash_offset = 0.0
      @miter_limit = 0.0
      @width = width
      @cap = cap
      @join = join
      @style = style
      @dash = dash
      @dash_offset = dash_offset
      @miter_limit = miter_limit
    end
    
    private
    alias_method :initialize__line_attributes, :initialize
  end
  
end
