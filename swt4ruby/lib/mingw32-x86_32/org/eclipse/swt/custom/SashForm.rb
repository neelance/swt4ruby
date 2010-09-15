require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module SashFormImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # The SashForm is a composite control that lays out its children in a
  # row or column arrangement (as specified by the orientation) and places
  # a Sash between each child. One child may be maximized to occupy the
  # entire size of the SashForm.  The relative sizes of the children may
  # be specified using weights.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>HORIZONTAL, VERTICAL, SMOOTH</dd>
  # </dl>
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#sashform">SashForm snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: CustomControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class SashForm < SashFormImports.const_get :Composite
    include_class_members SashFormImports
    
    # The width of all sashes in the form.
    attr_accessor :sash_width
    alias_method :attr_sash_width, :sash_width
    undef_method :sash_width
    alias_method :attr_sash_width=, :sash_width=
    undef_method :sash_width=
    
    attr_accessor :sash_style
    alias_method :attr_sash_style, :sash_style
    undef_method :sash_style
    alias_method :attr_sash_style=, :sash_style=
    undef_method :sash_style=
    
    attr_accessor :sashes
    alias_method :attr_sashes, :sashes
    undef_method :sashes
    alias_method :attr_sashes=, :sashes=
    undef_method :sashes=
    
    # Remember background and foreground
    # colors to determine whether to set
    # sashes to the default color (null) or
    # a specific color
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :controls
    alias_method :attr_controls, :controls
    undef_method :controls
    alias_method :attr_controls=, :controls=
    undef_method :controls=
    
    attr_accessor :max_control
    alias_method :attr_max_control, :max_control
    undef_method :max_control
    alias_method :attr_max_control=, :max_control=
    undef_method :max_control=
    
    attr_accessor :sash_listener
    alias_method :attr_sash_listener, :sash_listener
    undef_method :sash_listener
    alias_method :attr_sash_listener=, :sash_listener=
    undef_method :sash_listener=
    
    class_module.module_eval {
      const_set_lazy(:DRAG_MINIMUM) { 20 }
      const_attr_reader  :DRAG_MINIMUM
    }
    
    typesig { [Composite, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see #getStyle()
    def initialize(parent, style)
      @sash_width = 0
      @sash_style = 0
      @sashes = nil
      @background = nil
      @foreground = nil
      @controls = nil
      @max_control = nil
      @sash_listener = nil
      super(parent, check_style(style))
      @sash_width = 3
      @sashes = Array.typed(Sash).new(0) { nil }
      @background = nil
      @foreground = nil
      @controls = Array.typed(Control).new(0) { nil }
      @max_control = nil
      Composite.instance_method(:set_layout).bind(self).call(SashFormLayout.new)
      @sash_style = (!((style & SWT::VERTICAL)).equal?(0)) ? SWT::HORIZONTAL : SWT::VERTICAL
      if (!((style & SWT::BORDER)).equal?(0))
        @sash_style |= SWT::BORDER
      end
      if (!((style & SWT::SMOOTH)).equal?(0))
        @sash_style |= SWT::SMOOTH
      end
      @sash_listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in SashForm
        include_class_members SashForm
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          on_drag_sash(e)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::BORDER | SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        return style & mask
      end
    }
    
    typesig { [] }
    def create_sash
      sash = Sash.new(self, @sash_style)
      sash.set_background(@background)
      sash.set_foreground(@foreground)
      sash.set_tool_tip_text(get_tool_tip_text)
      sash.add_listener(SWT::Selection, @sash_listener)
      return sash
    end
    
    typesig { [] }
    # Returns SWT.HORIZONTAL if the controls in the SashForm are laid out side by side
    # or SWT.VERTICAL   if the controls in the SashForm are laid out top to bottom.
    # 
    # @return SWT.HORIZONTAL or SWT.VERTICAL
    def get_orientation
      # checkWidget();
      return !((@sash_style & SWT::VERTICAL)).equal?(0) ? SWT::HORIZONTAL : SWT::VERTICAL
    end
    
    typesig { [] }
    # Returns the width of the sashes when the controls in the SashForm are
    # laid out.
    # 
    # @return the width of the sashes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_sash_width
      check_widget
      return @sash_width
    end
    
    typesig { [] }
    def get_style
      style = super
      style |= (get_orientation).equal?(SWT::VERTICAL) ? SWT::VERTICAL : SWT::HORIZONTAL
      if (!((@sash_style & SWT::SMOOTH)).equal?(0))
        style |= SWT::SMOOTH
      end
      return style
    end
    
    typesig { [] }
    # Answer the control that currently is maximized in the SashForm.
    # This value may be null.
    # 
    # @return the control that currently is maximized or null
    def get_maximized_control
      # checkWidget();
      return @max_control
    end
    
    typesig { [] }
    # Answer the relative weight of each child in the SashForm.  The weight represents the
    # percent of the total width (if SashForm has Horizontal orientation) or
    # total height (if SashForm has Vertical orientation) each control occupies.
    # The weights are returned in order of the creation of the widgets (weight[0]
    # corresponds to the weight of the first child created).
    # 
    # @return the relative weight of each child
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_weights
      check_widget
      c_array = get_controls(false)
      ratios = Array.typed(::Java::Int).new(c_array.attr_length) { 0 }
      i = 0
      while i < c_array.attr_length
        data = c_array[i].get_layout_data
        if (!(data).nil? && data.is_a?(SashFormData))
          ratios[i] = RJava.cast_to_int(((data).attr_weight * 1000 >> 16))
        else
          ratios[i] = 200
        end
        i += 1
      end
      return ratios
    end
    
    typesig { [::Java::Boolean] }
    def get_controls(only_visible)
      children = get_children
      result = Array.typed(Control).new(0) { nil }
      i = 0
      while i < children.attr_length
        if (children[i].is_a?(Sash))
          i += 1
          next
        end
        if (only_visible && !children[i].get_visible)
          i += 1
          next
        end
        new_result = Array.typed(Control).new(result.attr_length + 1) { nil }
        System.arraycopy(result, 0, new_result, 0, result.attr_length)
        new_result[result.attr_length] = children[i]
        result = new_result
        i += 1
      end
      return result
    end
    
    typesig { [Event] }
    def on_drag_sash(event)
      sash = event.attr_widget
      sash_index = -1
      i = 0
      while i < @sashes.attr_length
        if ((@sashes[i]).equal?(sash))
          sash_index = i
          break
        end
        i += 1
      end
      if ((sash_index).equal?(-1))
        return
      end
      c1 = @controls[sash_index]
      c2 = @controls[sash_index + 1]
      b1 = c1.get_bounds
      b2 = c2.get_bounds
      sash_bounds = sash.get_bounds
      area = get_client_area
      correction = false
      if ((get_orientation).equal?(SWT::HORIZONTAL))
        correction = b1.attr_width < DRAG_MINIMUM || b2.attr_width < DRAG_MINIMUM
        total_width = b2.attr_x + b2.attr_width - b1.attr_x
        shift = event.attr_x - sash_bounds.attr_x
        b1.attr_width += shift
        b2.attr_x += shift
        b2.attr_width -= shift
        if (b1.attr_width < DRAG_MINIMUM)
          b1.attr_width = DRAG_MINIMUM
          b2.attr_x = b1.attr_x + b1.attr_width + sash_bounds.attr_width
          b2.attr_width = total_width - b2.attr_x
          event.attr_x = b1.attr_x + b1.attr_width
          event.attr_doit = false
        end
        if (b2.attr_width < DRAG_MINIMUM)
          b1.attr_width = total_width - DRAG_MINIMUM - sash_bounds.attr_width
          b2.attr_x = b1.attr_x + b1.attr_width + sash_bounds.attr_width
          b2.attr_width = DRAG_MINIMUM
          event.attr_x = b1.attr_x + b1.attr_width
          event.attr_doit = false
        end
        data1 = c1.get_layout_data
        if ((data1).nil? || !(data1.is_a?(SashFormData)))
          data1 = SashFormData.new
          c1.set_layout_data(data1)
        end
        data2 = c2.get_layout_data
        if ((data2).nil? || !(data2.is_a?(SashFormData)))
          data2 = SashFormData.new
          c2.set_layout_data(data2)
        end
        (data1).attr_weight = ((b1.attr_width << 16) + area.attr_width - 1) / area.attr_width
        (data2).attr_weight = ((b2.attr_width << 16) + area.attr_width - 1) / area.attr_width
      else
        correction = b1.attr_height < DRAG_MINIMUM || b2.attr_height < DRAG_MINIMUM
        total_height = b2.attr_y + b2.attr_height - b1.attr_y
        shift = event.attr_y - sash_bounds.attr_y
        b1.attr_height += shift
        b2.attr_y += shift
        b2.attr_height -= shift
        if (b1.attr_height < DRAG_MINIMUM)
          b1.attr_height = DRAG_MINIMUM
          b2.attr_y = b1.attr_y + b1.attr_height + sash_bounds.attr_height
          b2.attr_height = total_height - b2.attr_y
          event.attr_y = b1.attr_y + b1.attr_height
          event.attr_doit = false
        end
        if (b2.attr_height < DRAG_MINIMUM)
          b1.attr_height = total_height - DRAG_MINIMUM - sash_bounds.attr_height
          b2.attr_y = b1.attr_y + b1.attr_height + sash_bounds.attr_height
          b2.attr_height = DRAG_MINIMUM
          event.attr_y = b1.attr_y + b1.attr_height
          event.attr_doit = false
        end
        data1 = c1.get_layout_data
        if ((data1).nil? || !(data1.is_a?(SashFormData)))
          data1 = SashFormData.new
          c1.set_layout_data(data1)
        end
        data2 = c2.get_layout_data
        if ((data2).nil? || !(data2.is_a?(SashFormData)))
          data2 = SashFormData.new
          c2.set_layout_data(data2)
        end
        (data1).attr_weight = ((b1.attr_height << 16) + area.attr_height - 1) / area.attr_height
        (data2).attr_weight = ((b2.attr_height << 16) + area.attr_height - 1) / area.attr_height
      end
      if (correction || (event.attr_doit && !(event.attr_detail).equal?(SWT::DRAG)))
        c1.set_bounds(b1)
        sash.set_bounds(event.attr_x, event.attr_y, event.attr_width, event.attr_height)
        c2.set_bounds(b2)
      end
    end
    
    typesig { [::Java::Int] }
    # If orientation is SWT.HORIZONTAL, lay the controls in the SashForm
    # out side by side.  If orientation is SWT.VERTICAL, lay the
    # controls in the SashForm out top to bottom.
    # 
    # @param orientation SWT.HORIZONTAL or SWT.VERTICAL
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the value of orientation is not SWT.HORIZONTAL or SWT.VERTICAL
    # </ul>
    def set_orientation(orientation)
      check_widget
      if ((get_orientation).equal?(orientation))
        return
      end
      if (!(orientation).equal?(SWT::HORIZONTAL) && !(orientation).equal?(SWT::VERTICAL))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @sash_style &= ~(SWT::HORIZONTAL | SWT::VERTICAL)
      @sash_style |= (orientation).equal?(SWT::VERTICAL) ? SWT::HORIZONTAL : SWT::VERTICAL
      i = 0
      while i < @sashes.attr_length
        @sashes[i].dispose
        @sashes[i] = create_sash
        i += 1
      end
      layout(false)
    end
    
    typesig { [Color] }
    def set_background(color)
      super(color)
      @background = color
      i = 0
      while i < @sashes.attr_length
        @sashes[i].set_background(@background)
        i += 1
      end
    end
    
    typesig { [Color] }
    def set_foreground(color)
      super(color)
      @foreground = color
      i = 0
      while i < @sashes.attr_length
        @sashes[i].set_foreground(@foreground)
        i += 1
      end
    end
    
    typesig { [SwtLayout] }
    # Sets the layout which is associated with the receiver to be
    # the argument which may be null.
    # <p>
    # Note: No Layout can be set on this Control because it already
    # manages the size and position of its children.
    # </p>
    # 
    # @param layout the receiver's new layout or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout(layout_)
      check_widget
      return
    end
    
    typesig { [Control] }
    # Specify the control that should take up the entire client area of the SashForm.
    # If one control has been maximized, and this method is called with a different control,
    # the previous control will be minimized and the new control will be maximized.
    # If the value of control is null, the SashForm will minimize all controls and return to
    # the default layout where all controls are laid out separated by sashes.
    # 
    # @param control the control to be maximized or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_maximized_control(control)
      check_widget
      if ((control).nil?)
        if (!(@max_control).nil?)
          @max_control = nil
          layout(false)
          i = 0
          while i < @sashes.attr_length
            @sashes[i].set_visible(true)
            i += 1
          end
        end
        return
      end
      i = 0
      while i < @sashes.attr_length
        @sashes[i].set_visible(false)
        i += 1
      end
      @max_control = control
      layout(false)
    end
    
    typesig { [::Java::Int] }
    # Specify the width of the sashes when the controls in the SashForm are
    # laid out.
    # 
    # @param width the width of the sashes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_sash_width(width)
      check_widget
      if ((@sash_width).equal?(width))
        return
      end
      @sash_width = width
      layout(false)
    end
    
    typesig { [String] }
    def set_tool_tip_text(string)
      super(string)
      i = 0
      while i < @sashes.attr_length
        @sashes[i].set_tool_tip_text(string)
        i += 1
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Specify the relative weight of each child in the SashForm.  This will determine
    # what percent of the total width (if SashForm has Horizontal orientation) or
    # total height (if SashForm has Vertical orientation) each control will occupy.
    # The weights must be positive values and there must be an entry for each
    # non-sash child of the SashForm.
    # 
    # @param weights the relative weight of each child
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the weights value is null or of incorrect length (must match the number of children)</li>
    # </ul>
    def set_weights(weights)
      check_widget
      c_array = get_controls(false)
      if ((weights).nil? || !(weights.attr_length).equal?(c_array.attr_length))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      total = 0
      i = 0
      while i < weights.attr_length
        if (weights[i] < 0)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        total += weights[i]
        i += 1
      end
      if ((total).equal?(0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i_ = 0
      while i_ < c_array.attr_length
        data = c_array[i_].get_layout_data
        if ((data).nil? || !(data.is_a?(SashFormData)))
          data = SashFormData.new
          c_array[i_].set_layout_data(data)
        end
        (data).attr_weight = ((weights[i_] << 16) + total - 1) / total
        i_ += 1
      end
      layout(false)
    end
    
    private
    alias_method :initialize__sash_form, :initialize
  end
  
end
