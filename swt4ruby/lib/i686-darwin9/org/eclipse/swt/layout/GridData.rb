require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Layout
  module GridDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # <code>GridData</code> is the layout data object associated with
  # <code>GridLayout</code>. To set a <code>GridData</code> object into a
  # control, you use the <code>Control.setLayoutData(Object)</code> method.
  # <p>
  # There are two ways to create a <code>GridData</code> object with certain
  # fields set. The first is to set the fields directly, like this:
  # <pre>
  # GridData gridData = new GridData();
  # gridData.horizontalAlignment = GridData.FILL;
  # gridData.grabExcessHorizontalSpace = true;
  # button1.setLayoutData(gridData);
  # </pre>
  # The second is to take advantage of convenience style bits defined
  # by <code>GridData</code>:
  # <pre>
  # button1.setLayoutData(new GridData(GridData.HORIZONTAL_ALIGN_FILL | GridData.GRAB_HORIZONTAL));
  # </pre>
  # </p>
  # <p>
  # NOTE: Do not reuse <code>GridData</code> objects. Every control in a
  # <code>Composite</code> that is managed by a <code>GridLayout</code>
  # must have a unique <code>GridData</code> object. If the layout data
  # for a control in a <code>GridLayout</code> is null at layout time,
  # a unique <code>GridData</code> object is created for it.
  # </p>
  # 
  # @see GridLayout
  # @see Control#setLayoutData
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class GridData 
    include_class_members GridDataImports
    
    # verticalAlignment specifies how controls will be positioned
    # vertically within a cell.
    # 
    # The default value is CENTER.
    # 
    # Possible values are: <ul>
    # <li>SWT.BEGINNING (or SWT.TOP): Position the control at the top of the cell</li>
    # <li>SWT.CENTER: Position the control in the vertical center of the cell</li>
    # <li>SWT.END (or SWT.BOTTOM): Position the control at the bottom of the cell</li>
    # <li>SWT.FILL: Resize the control to fill the cell vertically</li>
    # </ul>
    attr_accessor :vertical_alignment
    alias_method :attr_vertical_alignment, :vertical_alignment
    undef_method :vertical_alignment
    alias_method :attr_vertical_alignment=, :vertical_alignment=
    undef_method :vertical_alignment=
    
    # horizontalAlignment specifies how controls will be positioned
    # horizontally within a cell.
    # 
    # The default value is BEGINNING.
    # 
    # Possible values are: <ul>
    # <li>SWT.BEGINNING (or SWT.LEFT): Position the control at the left of the cell</li>
    # <li>SWT.CENTER: Position the control in the horizontal center of the cell</li>
    # <li>SWT.END (or SWT.RIGHT): Position the control at the right of the cell</li>
    # <li>SWT.FILL: Resize the control to fill the cell horizontally</li>
    # </ul>
    attr_accessor :horizontal_alignment
    alias_method :attr_horizontal_alignment, :horizontal_alignment
    undef_method :horizontal_alignment
    alias_method :attr_horizontal_alignment=, :horizontal_alignment=
    undef_method :horizontal_alignment=
    
    # widthHint specifies the preferred width in pixels. This value
    # is the wHint passed into Control.computeSize(int, int, boolean)
    # to determine the preferred size of the control.
    # 
    # The default value is SWT.DEFAULT.
    # 
    # @see Control#computeSize(int, int, boolean)
    attr_accessor :width_hint
    alias_method :attr_width_hint, :width_hint
    undef_method :width_hint
    alias_method :attr_width_hint=, :width_hint=
    undef_method :width_hint=
    
    # heightHint specifies the preferred height in pixels. This value
    # is the hHint passed into Control.computeSize(int, int, boolean)
    # to determine the preferred size of the control.
    # 
    # The default value is SWT.DEFAULT.
    # 
    # @see Control#computeSize(int, int, boolean)
    attr_accessor :height_hint
    alias_method :attr_height_hint, :height_hint
    undef_method :height_hint
    alias_method :attr_height_hint=, :height_hint=
    undef_method :height_hint=
    
    # horizontalIndent specifies the number of pixels of indentation
    # that will be placed along the left side of the cell.
    # 
    # The default value is 0.
    attr_accessor :horizontal_indent
    alias_method :attr_horizontal_indent, :horizontal_indent
    undef_method :horizontal_indent
    alias_method :attr_horizontal_indent=, :horizontal_indent=
    undef_method :horizontal_indent=
    
    # verticalIndent specifies the number of pixels of indentation
    # that will be placed along the top side of the cell.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    attr_accessor :vertical_indent
    alias_method :attr_vertical_indent, :vertical_indent
    undef_method :vertical_indent
    alias_method :attr_vertical_indent=, :vertical_indent=
    undef_method :vertical_indent=
    
    # horizontalSpan specifies the number of column cells that the control
    # will take up.
    # 
    # The default value is 1.
    attr_accessor :horizontal_span
    alias_method :attr_horizontal_span, :horizontal_span
    undef_method :horizontal_span
    alias_method :attr_horizontal_span=, :horizontal_span=
    undef_method :horizontal_span=
    
    # verticalSpan specifies the number of row cells that the control
    # will take up.
    # 
    # The default value is 1.
    attr_accessor :vertical_span
    alias_method :attr_vertical_span, :vertical_span
    undef_method :vertical_span
    alias_method :attr_vertical_span=, :vertical_span=
    undef_method :vertical_span=
    
    # <p>grabExcessHorizontalSpace specifies whether the width of the cell
    # changes depending on the size of the parent Composite.  If
    # grabExcessHorizontalSpace is <code>true</code>, the following rules
    # apply to the width of the cell:</p>
    # <ul>
    # <li>If extra horizontal space is available in the parent, the cell will
    # grow to be wider than its preferred width.  The new width
    # will be "preferred width + delta" where delta is the extra
    # horizontal space divided by the number of grabbing columns.</li>
    # <li>If there is not enough horizontal space available in the parent, the
    # cell will shrink until it reaches its minimum width as specified by
    # GridData.minimumWidth. The new width will be the maximum of
    # "minimumWidth" and "preferred width - delta", where delta is
    # the amount of space missing divided by the number of grabbing columns.</li>
    # <li>If the parent is packed, the cell will be its preferred width
    # as specified by GridData.widthHint.</li>
    # <li>If the control spans multiple columns and there are no other grabbing
    # controls in any of the spanned columns, the last column in the span will
    # grab the extra space.  If there is at least one other grabbing control
    # in the span, the grabbing will be spread over the columns already
    # marked as grabExcessHorizontalSpace.</li>
    # </ul>
    # 
    # <p>The default value is false.</p>
    # 
    # @see GridData#minimumWidth
    # @see GridData#widthHint
    attr_accessor :grab_excess_horizontal_space
    alias_method :attr_grab_excess_horizontal_space, :grab_excess_horizontal_space
    undef_method :grab_excess_horizontal_space
    alias_method :attr_grab_excess_horizontal_space=, :grab_excess_horizontal_space=
    undef_method :grab_excess_horizontal_space=
    
    # <p>grabExcessVerticalSpace specifies whether the height of the cell
    # changes depending on the size of the parent Composite.  If
    # grabExcessVerticalSpace is <code>true</code>, the following rules
    # apply to the height of the cell:</p>
    # <ul>
    # <li>If extra vertical space is available in the parent, the cell will
    # grow to be taller than its preferred height.  The new height
    # will be "preferred height + delta" where delta is the extra
    # vertical space divided by the number of grabbing rows.</li>
    # <li>If there is not enough vertical space available in the parent, the
    # cell will shrink until it reaches its minimum height as specified by
    # GridData.minimumHeight. The new height will be the maximum of
    # "minimumHeight" and "preferred height - delta", where delta is
    # the amount of space missing divided by the number of grabbing rows.</li>
    # <li>If the parent is packed, the cell will be its preferred height
    # as specified by GridData.heightHint.</li>
    # <li>If the control spans multiple rows and there are no other grabbing
    # controls in any of the spanned rows, the last row in the span will
    # grab the extra space.  If there is at least one other grabbing control
    # in the span, the grabbing will be spread over the rows already
    # marked as grabExcessVerticalSpace.</li>
    # </ul>
    # 
    # <p>The default value is false.</p>
    # 
    # @see GridData#minimumHeight
    # @see GridData#heightHint
    attr_accessor :grab_excess_vertical_space
    alias_method :attr_grab_excess_vertical_space, :grab_excess_vertical_space
    undef_method :grab_excess_vertical_space
    alias_method :attr_grab_excess_vertical_space=, :grab_excess_vertical_space=
    undef_method :grab_excess_vertical_space=
    
    # minimumWidth specifies the minimum width in pixels.  This value
    # applies only if grabExcessHorizontalSpace is true. A value of
    # SWT.DEFAULT means that the minimum width will be the result
    # of Control.computeSize(int, int, boolean) where wHint is
    # determined by GridData.widthHint.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    # @see Control#computeSize(int, int, boolean)
    # @see GridData#widthHint
    attr_accessor :minimum_width
    alias_method :attr_minimum_width, :minimum_width
    undef_method :minimum_width
    alias_method :attr_minimum_width=, :minimum_width=
    undef_method :minimum_width=
    
    # minimumHeight specifies the minimum height in pixels.  This value
    # applies only if grabExcessVerticalSpace is true.  A value of
    # SWT.DEFAULT means that the minimum height will be the result
    # of Control.computeSize(int, int, boolean) where hHint is
    # determined by GridData.heightHint.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    # @see Control#computeSize(int, int, boolean)
    # @see GridData#heightHint
    attr_accessor :minimum_height
    alias_method :attr_minimum_height, :minimum_height
    undef_method :minimum_height
    alias_method :attr_minimum_height=, :minimum_height=
    undef_method :minimum_height=
    
    # exclude informs the layout to ignore this control when sizing
    # and positioning controls.  If this value is <code>true</code>,
    # the size and position of the control will not be managed by the
    # layout.  If this	value is <code>false</code>, the size and
    # position of the control will be computed and assigned.
    # 
    # The default value is <code>false</code>.
    # 
    # @since 3.1
    attr_accessor :exclude
    alias_method :attr_exclude, :exclude
    undef_method :exclude
    alias_method :attr_exclude=, :exclude=
    undef_method :exclude=
    
    class_module.module_eval {
      # Value for horizontalAlignment or verticalAlignment.
      # Position the control at the top or left of the cell.
      # Not recommended. Use SWT.BEGINNING, SWT.TOP or SWT.LEFT instead.
      const_set_lazy(:BEGINNING) { SWT::BEGINNING }
      const_attr_reader  :BEGINNING
      
      # Value for horizontalAlignment or verticalAlignment.
      # Position the control in the vertical or horizontal center of the cell
      # Not recommended. Use SWT.CENTER instead.
      const_set_lazy(:CENTER) { 2 }
      const_attr_reader  :CENTER
      
      # Value for horizontalAlignment or verticalAlignment.
      # Position the control at the bottom or right of the cell
      # Not recommended. Use SWT.END, SWT.BOTTOM or SWT.RIGHT instead.
      const_set_lazy(:END_) { 3 }
      const_attr_reader  :END_
      
      # Value for horizontalAlignment or verticalAlignment.
      # Resize the control to fill the cell horizontally or vertically.
      # Not recommended. Use SWT.FILL instead.
      const_set_lazy(:FILL) { SWT::FILL }
      const_attr_reader  :FILL
      
      # Style bit for <code>new GridData(int)</code>.
      # Position the control at the top of the cell.
      # Not recommended. Use
      # <code>new GridData(int, SWT.BEGINNING, boolean, boolean)</code>
      # instead.
      const_set_lazy(:VERTICAL_ALIGN_BEGINNING) { 1 << 1 }
      const_attr_reader  :VERTICAL_ALIGN_BEGINNING
      
      # Style bit for <code>new GridData(int)</code> to position the
      # control in the vertical center of the cell.
      # Not recommended. Use
      # <code>new GridData(int, SWT.CENTER, boolean, boolean)</code>
      # instead.
      const_set_lazy(:VERTICAL_ALIGN_CENTER) { 1 << 2 }
      const_attr_reader  :VERTICAL_ALIGN_CENTER
      
      # Style bit for <code>new GridData(int)</code> to position the
      # control at the bottom of the cell.
      # Not recommended. Use
      # <code>new GridData(int, SWT.END, boolean, boolean)</code>
      # instead.
      const_set_lazy(:VERTICAL_ALIGN_END) { 1 << 3 }
      const_attr_reader  :VERTICAL_ALIGN_END
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fill the cell vertically.
      # Not recommended. Use
      # <code>new GridData(int, SWT.FILL, boolean, boolean)</code>
      # instead
      const_set_lazy(:VERTICAL_ALIGN_FILL) { 1 << 4 }
      const_attr_reader  :VERTICAL_ALIGN_FILL
      
      # Style bit for <code>new GridData(int)</code> to position the
      # control at the left of the cell.
      # Not recommended. Use
      # <code>new GridData(SWT.BEGINNING, int, boolean, boolean)</code>
      # instead.
      const_set_lazy(:HORIZONTAL_ALIGN_BEGINNING) { 1 << 5 }
      const_attr_reader  :HORIZONTAL_ALIGN_BEGINNING
      
      # Style bit for <code>new GridData(int)</code> to position the
      # control in the horizontal center of the cell.
      # Not recommended. Use
      # <code>new GridData(SWT.CENTER, int, boolean, boolean)</code>
      # instead.
      const_set_lazy(:HORIZONTAL_ALIGN_CENTER) { 1 << 6 }
      const_attr_reader  :HORIZONTAL_ALIGN_CENTER
      
      # Style bit for <code>new GridData(int)</code> to position the
      # control at the right of the cell.
      # Not recommended. Use
      # <code>new GridData(SWT.END, int, boolean, boolean)</code>
      # instead.
      const_set_lazy(:HORIZONTAL_ALIGN_END) { 1 << 7 }
      const_attr_reader  :HORIZONTAL_ALIGN_END
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fill the cell horizontally.
      # Not recommended. Use
      # <code>new GridData(SWT.FILL, int, boolean, boolean)</code>
      # instead.
      const_set_lazy(:HORIZONTAL_ALIGN_FILL) { 1 << 8 }
      const_attr_reader  :HORIZONTAL_ALIGN_FILL
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fit the remaining horizontal space.
      # Not recommended. Use
      # <code>new GridData(int, int, true, boolean)</code>
      # instead.
      const_set_lazy(:GRAB_HORIZONTAL) { 1 << 9 }
      const_attr_reader  :GRAB_HORIZONTAL
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fit the remaining vertical space.
      # Not recommended. Use
      # <code>new GridData(int, int, boolean, true)</code>
      # instead.
      const_set_lazy(:GRAB_VERTICAL) { 1 << 10 }
      const_attr_reader  :GRAB_VERTICAL
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fill the cell vertically and to fit the remaining
      # vertical space.
      # FILL_VERTICAL = VERTICAL_ALIGN_FILL | GRAB_VERTICAL
      # Not recommended. Use
      # <code>new GridData(int, SWT.FILL, boolean, true)</code>
      # instead.
      const_set_lazy(:FILL_VERTICAL) { VERTICAL_ALIGN_FILL | GRAB_VERTICAL }
      const_attr_reader  :FILL_VERTICAL
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fill the cell horizontally and to fit the remaining
      # horizontal space.
      # FILL_HORIZONTAL = HORIZONTAL_ALIGN_FILL | GRAB_HORIZONTAL
      # Not recommended. Use
      # <code>new GridData(SWT.FILL, int, true, boolean)</code>
      # instead.
      const_set_lazy(:FILL_HORIZONTAL) { HORIZONTAL_ALIGN_FILL | GRAB_HORIZONTAL }
      const_attr_reader  :FILL_HORIZONTAL
      
      # Style bit for <code>new GridData(int)</code> to resize the
      # control to fill the cell horizontally and vertically and
      # to fit the remaining horizontal and vertical space.
      # FILL_BOTH = FILL_VERTICAL | FILL_HORIZONTAL
      # Not recommended. Use
      # <code>new GridData(SWT.FILL, SWT.FILL, true, true)</code>
      # instead.
      const_set_lazy(:FILL_BOTH) { FILL_VERTICAL | FILL_HORIZONTAL }
      const_attr_reader  :FILL_BOTH
    }
    
    attr_accessor :cache_width
    alias_method :attr_cache_width, :cache_width
    undef_method :cache_width
    alias_method :attr_cache_width=, :cache_width=
    undef_method :cache_width=
    
    attr_accessor :cache_height
    alias_method :attr_cache_height, :cache_height
    undef_method :cache_height
    alias_method :attr_cache_height=, :cache_height=
    undef_method :cache_height=
    
    attr_accessor :default_whint
    alias_method :attr_default_whint, :default_whint
    undef_method :default_whint
    alias_method :attr_default_whint=, :default_whint=
    undef_method :default_whint=
    
    attr_accessor :default_hhint
    alias_method :attr_default_hhint, :default_hhint
    undef_method :default_hhint
    alias_method :attr_default_hhint=, :default_hhint=
    undef_method :default_hhint=
    
    attr_accessor :default_width
    alias_method :attr_default_width, :default_width
    undef_method :default_width
    alias_method :attr_default_width=, :default_width=
    undef_method :default_width=
    
    attr_accessor :default_height
    alias_method :attr_default_height, :default_height
    undef_method :default_height
    alias_method :attr_default_height=, :default_height=
    undef_method :default_height=
    
    attr_accessor :current_whint
    alias_method :attr_current_whint, :current_whint
    undef_method :current_whint
    alias_method :attr_current_whint=, :current_whint=
    undef_method :current_whint=
    
    attr_accessor :current_hhint
    alias_method :attr_current_hhint, :current_hhint
    undef_method :current_hhint
    alias_method :attr_current_hhint=, :current_hhint=
    undef_method :current_hhint=
    
    attr_accessor :current_width
    alias_method :attr_current_width, :current_width
    undef_method :current_width
    alias_method :attr_current_width=, :current_width=
    undef_method :current_width=
    
    attr_accessor :current_height
    alias_method :attr_current_height, :current_height
    undef_method :current_height
    alias_method :attr_current_height=, :current_height=
    undef_method :current_height=
    
    typesig { [] }
    # Constructs a new instance of GridData using
    # default values.
    def initialize
      @vertical_alignment = CENTER
      @horizontal_alignment = BEGINNING
      @width_hint = SWT::DEFAULT
      @height_hint = SWT::DEFAULT
      @horizontal_indent = 0
      @vertical_indent = 0
      @horizontal_span = 1
      @vertical_span = 1
      @grab_excess_horizontal_space = false
      @grab_excess_vertical_space = false
      @minimum_width = 0
      @minimum_height = 0
      @exclude = false
      @cache_width = -1
      @cache_height = -1
      @default_whint = 0
      @default_hhint = 0
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
    end
    
    typesig { [::Java::Int] }
    # Constructs a new instance based on the GridData style.
    # This constructor is not recommended.
    # 
    # @param style the GridData style
    def initialize(style)
      @vertical_alignment = CENTER
      @horizontal_alignment = BEGINNING
      @width_hint = SWT::DEFAULT
      @height_hint = SWT::DEFAULT
      @horizontal_indent = 0
      @vertical_indent = 0
      @horizontal_span = 1
      @vertical_span = 1
      @grab_excess_horizontal_space = false
      @grab_excess_vertical_space = false
      @minimum_width = 0
      @minimum_height = 0
      @exclude = false
      @cache_width = -1
      @cache_height = -1
      @default_whint = 0
      @default_hhint = 0
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
      if (!((style & VERTICAL_ALIGN_BEGINNING)).equal?(0))
        @vertical_alignment = BEGINNING
      end
      if (!((style & VERTICAL_ALIGN_CENTER)).equal?(0))
        @vertical_alignment = CENTER
      end
      if (!((style & VERTICAL_ALIGN_FILL)).equal?(0))
        @vertical_alignment = FILL
      end
      if (!((style & VERTICAL_ALIGN_END)).equal?(0))
        @vertical_alignment = END_
      end
      if (!((style & HORIZONTAL_ALIGN_BEGINNING)).equal?(0))
        @horizontal_alignment = BEGINNING
      end
      if (!((style & HORIZONTAL_ALIGN_CENTER)).equal?(0))
        @horizontal_alignment = CENTER
      end
      if (!((style & HORIZONTAL_ALIGN_FILL)).equal?(0))
        @horizontal_alignment = FILL
      end
      if (!((style & HORIZONTAL_ALIGN_END)).equal?(0))
        @horizontal_alignment = END_
      end
      @grab_excess_horizontal_space = !((style & GRAB_HORIZONTAL)).equal?(0)
      @grab_excess_vertical_space = !((style & GRAB_VERTICAL)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    # Constructs a new instance of GridData according to the parameters.
    # 
    # @param horizontalAlignment how control will be positioned horizontally within a cell,
    # one of: SWT.BEGINNING (or SWT.LEFT), SWT.CENTER, SWT.END (or SWT.RIGHT), or SWT.FILL
    # @param verticalAlignment how control will be positioned vertically within a cell,
    # one of: SWT.BEGINNING (or SWT.TOP), SWT.CENTER, SWT.END (or SWT.BOTTOM), or SWT.FILL
    # @param grabExcessHorizontalSpace whether cell will be made wide enough to fit the remaining horizontal space
    # @param grabExcessVerticalSpace whether cell will be made high enough to fit the remaining vertical space
    # 
    # @since 3.0
    def initialize(horizontal_alignment, vertical_alignment, grab_excess_horizontal_space, grab_excess_vertical_space)
      initialize__grid_data(horizontal_alignment, vertical_alignment, grab_excess_horizontal_space, grab_excess_vertical_space, 1, 1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of GridData according to the parameters.
    # 
    # @param horizontalAlignment how control will be positioned horizontally within a cell,
    # one of: SWT.BEGINNING (or SWT.LEFT), SWT.CENTER, SWT.END (or SWT.RIGHT), or SWT.FILL
    # @param verticalAlignment how control will be positioned vertically within a cell,
    # one of: SWT.BEGINNING (or SWT.TOP), SWT.CENTER, SWT.END (or SWT.BOTTOM), or SWT.FILL
    # @param grabExcessHorizontalSpace whether cell will be made wide enough to fit the remaining horizontal space
    # @param grabExcessVerticalSpace whether cell will be made high enough to fit the remaining vertical space
    # @param horizontalSpan the number of column cells that the control will take up
    # @param verticalSpan the number of row cells that the control will take up
    # 
    # @since 3.0
    def initialize(horizontal_alignment, vertical_alignment, grab_excess_horizontal_space, grab_excess_vertical_space, horizontal_span, vertical_span)
      @vertical_alignment = CENTER
      @horizontal_alignment = BEGINNING
      @width_hint = SWT::DEFAULT
      @height_hint = SWT::DEFAULT
      @horizontal_indent = 0
      @vertical_indent = 0
      @horizontal_span = 1
      @vertical_span = 1
      @grab_excess_horizontal_space = false
      @grab_excess_vertical_space = false
      @minimum_width = 0
      @minimum_height = 0
      @exclude = false
      @cache_width = -1
      @cache_height = -1
      @default_whint = 0
      @default_hhint = 0
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
      @horizontal_alignment = horizontal_alignment
      @vertical_alignment = vertical_alignment
      @grab_excess_horizontal_space = grab_excess_horizontal_space
      @grab_excess_vertical_space = grab_excess_vertical_space
      @horizontal_span = horizontal_span
      @vertical_span = vertical_span
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Constructs a new instance of GridData according to the parameters.
    # A value of SWT.DEFAULT indicates that no minimum width or
    # no minimum height is specified.
    # 
    # @param width a minimum width for the column
    # @param height a minimum height for the row
    # 
    # @since 3.0
    def initialize(width, height)
      @vertical_alignment = CENTER
      @horizontal_alignment = BEGINNING
      @width_hint = SWT::DEFAULT
      @height_hint = SWT::DEFAULT
      @horizontal_indent = 0
      @vertical_indent = 0
      @horizontal_span = 1
      @vertical_span = 1
      @grab_excess_horizontal_space = false
      @grab_excess_vertical_space = false
      @minimum_width = 0
      @minimum_height = 0
      @exclude = false
      @cache_width = -1
      @cache_height = -1
      @default_whint = 0
      @default_hhint = 0
      @default_width = -1
      @default_height = -1
      @current_whint = 0
      @current_hhint = 0
      @current_width = -1
      @current_height = -1
      @width_hint = width
      @height_hint = height
    end
    
    typesig { [Control, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(control, w_hint, h_hint, flush_cache)
      if (!(@cache_width).equal?(-1) && !(@cache_height).equal?(-1))
        return
      end
      if ((w_hint).equal?(@width_hint) && (h_hint).equal?(@height_hint))
        if ((@default_width).equal?(-1) || (@default_height).equal?(-1) || !(w_hint).equal?(@default_whint) || !(h_hint).equal?(@default_hhint))
          size = control.compute_size(w_hint, h_hint, flush_cache)
          @default_whint = w_hint
          @default_hhint = h_hint
          @default_width = size.attr_x
          @default_height = size.attr_y
        end
        @cache_width = @default_width
        @cache_height = @default_height
        return
      end
      if ((@current_width).equal?(-1) || (@current_height).equal?(-1) || !(w_hint).equal?(@current_whint) || !(h_hint).equal?(@current_hhint))
        size = control.compute_size(w_hint, h_hint, flush_cache)
        @current_whint = w_hint
        @current_hhint = h_hint
        @current_width = size.attr_x
        @current_height = size.attr_y
      end
      @cache_width = @current_width
      @cache_height = @current_height
    end
    
    typesig { [] }
    def flush_cache
      @cache_width = @cache_height = -1
      @default_width = @default_height = -1
      @current_width = @current_height = -1
    end
    
    typesig { [] }
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the GridData object
    def to_s
      h_align = ""
      case (@horizontal_alignment)
      when SWT::FILL
        h_align = "SWT.FILL"
      when SWT::BEGINNING
        h_align = "SWT.BEGINNING"
      when SWT::LEFT
        h_align = "SWT.LEFT"
      when SWT::END_
        h_align = "SWT.END"
      when END_
        h_align = "GridData.END"
      when SWT::RIGHT
        h_align = "SWT.RIGHT"
      when SWT::CENTER
        h_align = "SWT.CENTER"
      when CENTER
        h_align = "GridData.CENTER"
      else
        h_align = "Undefined " + RJava.cast_to_string(@horizontal_alignment)
      end
      v_align = ""
      case (@vertical_alignment)
      when SWT::FILL
        v_align = "SWT.FILL"
      when SWT::BEGINNING
        v_align = "SWT.BEGINNING"
      when SWT::TOP
        v_align = "SWT.TOP"
      when SWT::END_
        v_align = "SWT.END"
      when END_
        v_align = "GridData.END"
      when SWT::BOTTOM
        v_align = "SWT.BOTTOM"
      when SWT::CENTER
        v_align = "SWT.CENTER"
      when CENTER
        v_align = "GridData.CENTER"
      else
        v_align = "Undefined " + RJava.cast_to_string(@vertical_alignment)
      end
      string = RJava.cast_to_string(get_name) + " {"
      string += "horizontalAlignment=" + h_align + " "
      if (!(@horizontal_indent).equal?(0))
        string += "horizontalIndent=" + RJava.cast_to_string(@horizontal_indent) + " "
      end
      if (!(@horizontal_span).equal?(1))
        string += "horizontalSpan=" + RJava.cast_to_string(@horizontal_span) + " "
      end
      if (@grab_excess_horizontal_space)
        string += "grabExcessHorizontalSpace=" + RJava.cast_to_string(@grab_excess_horizontal_space) + " "
      end
      if (!(@width_hint).equal?(SWT::DEFAULT))
        string += "widthHint=" + RJava.cast_to_string(@width_hint) + " "
      end
      if (!(@minimum_width).equal?(0))
        string += "minimumWidth=" + RJava.cast_to_string(@minimum_width) + " "
      end
      string += "verticalAlignment=" + v_align + " "
      if (!(@vertical_indent).equal?(0))
        string += "verticalIndent=" + RJava.cast_to_string(@vertical_indent) + " "
      end
      if (!(@vertical_span).equal?(1))
        string += "verticalSpan=" + RJava.cast_to_string(@vertical_span) + " "
      end
      if (@grab_excess_vertical_space)
        string += "grabExcessVerticalSpace=" + RJava.cast_to_string(@grab_excess_vertical_space) + " "
      end
      if (!(@height_hint).equal?(SWT::DEFAULT))
        string += "heightHint=" + RJava.cast_to_string(@height_hint) + " "
      end
      if (!(@minimum_height).equal?(0))
        string += "minimumHeight=" + RJava.cast_to_string(@minimum_height) + " "
      end
      if (@exclude)
        string += "exclude=" + RJava.cast_to_string(@exclude) + " "
      end
      string = RJava.cast_to_string(string.trim)
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__grid_data, :initialize
  end
  
end
