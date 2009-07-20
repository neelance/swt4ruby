require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module CoolItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are selectable user interface
  # objects that represent the dynamically positionable
  # areas of a <code>CoolBar</code>.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>DROP_DOWN</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CoolItem < CoolItemImports.const_get :Item
    include_class_members CoolItemImports
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :ideal
    alias_method :attr_ideal, :ideal
    undef_method :ideal
    alias_method :attr_ideal=, :ideal=
    undef_method :ideal=
    
    attr_accessor :preferred_width
    alias_method :attr_preferred_width, :preferred_width
    undef_method :preferred_width
    alias_method :attr_preferred_width=, :preferred_width=
    undef_method :preferred_width=
    
    attr_accessor :preferred_height
    alias_method :attr_preferred_height, :preferred_height
    undef_method :preferred_height
    alias_method :attr_preferred_height=, :preferred_height=
    undef_method :preferred_height=
    
    attr_accessor :minimum_width
    alias_method :attr_minimum_width, :minimum_width
    undef_method :minimum_width
    alias_method :attr_minimum_width=, :minimum_width=
    undef_method :minimum_width=
    
    attr_accessor :minimum_height
    alias_method :attr_minimum_height, :minimum_height
    undef_method :minimum_height
    alias_method :attr_minimum_height=, :minimum_height=
    undef_method :minimum_height=
    
    attr_accessor :requested_width
    alias_method :attr_requested_width, :requested_width
    undef_method :requested_width
    alias_method :attr_requested_width=, :requested_width=
    undef_method :requested_width=
    
    attr_accessor :item_bounds
    alias_method :attr_item_bounds, :item_bounds
    undef_method :item_bounds
    alias_method :attr_item_bounds=, :item_bounds=
    undef_method :item_bounds=
    
    class_module.module_eval {
      const_set_lazy(:MARGIN_WIDTH) { 4 }
      const_attr_reader  :MARGIN_WIDTH
      
      const_set_lazy(:GRABBER_WIDTH) { 2 }
      const_attr_reader  :GRABBER_WIDTH
      
      const_set_lazy(:MINIMUM_WIDTH) { (2 * MARGIN_WIDTH) + GRABBER_WIDTH }
      const_attr_reader  :MINIMUM_WIDTH
    }
    
    attr_accessor :chevron_horizontal_trim
    alias_method :attr_chevron_horizontal_trim, :chevron_horizontal_trim
    undef_method :chevron_horizontal_trim
    alias_method :attr_chevron_horizontal_trim=, :chevron_horizontal_trim=
    undef_method :chevron_horizontal_trim=
    
    # platform dependent values
    attr_accessor :chevron_vertical_trim
    alias_method :attr_chevron_vertical_trim, :chevron_vertical_trim
    undef_method :chevron_vertical_trim
    alias_method :attr_chevron_vertical_trim=, :chevron_vertical_trim=
    undef_method :chevron_vertical_trim=
    
    class_module.module_eval {
      const_set_lazy(:CHEVRON_LEFT_MARGIN) { 2 }
      const_attr_reader  :CHEVRON_LEFT_MARGIN
      
      const_set_lazy(:CHEVRON_IMAGE_WIDTH) { 8 }
      const_attr_reader  :CHEVRON_IMAGE_WIDTH
    }
    
    # Width to draw the double arrow
    attr_accessor :chevron
    alias_method :attr_chevron, :chevron
    undef_method :chevron
    alias_method :attr_chevron=, :chevron=
    undef_method :chevron=
    
    attr_accessor :wrap
    alias_method :attr_wrap, :wrap
    undef_method :wrap
    alias_method :attr_wrap=, :wrap=
    undef_method :wrap=
    
    attr_accessor :arrow_image
    alias_method :attr_arrow_image, :arrow_image
    undef_method :arrow_image
    alias_method :attr_arrow_image=, :arrow_image=
    undef_method :arrow_image=
    
    typesig { [CoolBar, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>CoolBar</code>) and a style value
    # describing its behavior and appearance. The item is added
    # to the end of the items maintained by its parent.
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
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @control = nil
      @parent = nil
      @ideal = false
      @preferred_width = 0
      @preferred_height = 0
      @minimum_width = 0
      @minimum_height = 0
      @requested_width = 0
      @item_bounds = nil
      @chevron_horizontal_trim = 0
      @chevron_vertical_trim = 0
      @chevron = nil
      @wrap = false
      @arrow_image = nil
      super(parent, style)
      @item_bounds = Rectangle.new(0, 0, 0, 0)
      @chevron_horizontal_trim = -1
      @chevron_vertical_trim = -1
      @arrow_image = nil
      @parent = parent
      parent.create_item(self, parent.get_item_count)
      calculate_chevron_trim
    end
    
    typesig { [CoolBar, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>CoolBar</code>), a style value
    # describing its behavior and appearance, and the index
    # at which to place it in the items maintained by its parent.
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
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # @param index the zero-relative index at which to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the parent (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @control = nil
      @parent = nil
      @ideal = false
      @preferred_width = 0
      @preferred_height = 0
      @minimum_width = 0
      @minimum_height = 0
      @requested_width = 0
      @item_bounds = nil
      @chevron_horizontal_trim = 0
      @chevron_vertical_trim = 0
      @chevron = nil
      @wrap = false
      @arrow_image = nil
      super(parent, style)
      @item_bounds = Rectangle.new(0, 0, 0, 0)
      @chevron_horizontal_trim = -1
      @chevron_vertical_trim = -1
      @arrow_image = nil
      @parent = parent
      parent.create_item(self, index)
      calculate_chevron_trim
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners that will
    # be notified when the control is selected by the user, by sending it one
    # of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # If <code>widgetSelected</code> is called when the mouse is over
    # the drop-down arrow (or 'chevron') portion of the cool item,
    # the event object detail field contains the value <code>SWT.ARROW</code>,
    # and the x and y fields in the event object represent the point at
    # the bottom left of the chevron, where the menu should be popped up.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #removeSelectionListener
    # @see SelectionEvent
    # 
    # @since 2.0
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    # Find the trim size of the Toolbar widget in the current platform.
    def calculate_chevron_trim
      tb = ToolBar.new(@parent, SWT::FLAT)
      ti = ToolItem.new(tb, SWT::PUSH)
      image = Image.new(self.attr_display, 1, 1)
      ti.set_image(image)
      size = tb.compute_size(SWT::DEFAULT, SWT::DEFAULT)
      size = @parent.fix_point(size.attr_x, size.attr_y)
      @chevron_horizontal_trim = size.attr_x - 1
      @chevron_vertical_trim = size.attr_y - 1
      tb.dispose
      ti.dispose
      image.dispose
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the preferred size of the receiver.
    # <p>
    # The <em>preferred size</em> of a <code>CoolItem</code> is the size that
    # it would best be displayed at. The width hint and height hint arguments
    # allow the caller to ask the instance questions such as "Given a particular
    # width, how high does it need to be to show all of the contents?"
    # To indicate that the caller does not wish to constrain a particular
    # dimension, the constant <code>SWT.DEFAULT</code> is passed for the hint.
    # </p>
    # 
    # @param wHint the width hint (can be <code>SWT.DEFAULT</code>)
    # @param hHint the height hint (can be <code>SWT.DEFAULT</code>)
    # @return the preferred size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Layout
    # @see #getBounds
    # @see #getSize
    # @see Control#getBorderWidth
    # @see Scrollable#computeTrim
    # @see Scrollable#getClientArea
    def compute_size(w_hint, h_hint)
      check_widget
      width = w_hint
      height = h_hint
      if ((w_hint).equal?(SWT::DEFAULT))
        width = 32
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        height = 32
      end
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        height += MINIMUM_WIDTH
      else
        width += MINIMUM_WIDTH
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def dispose
      if (is_disposed)
        return
      end
      # Must call parent.destroyItem() before super.dispose(), since it needs to
      # query the bounds to properly remove the item.
      @parent.destroy_item(self)
      super
      @parent = nil
      @control = nil
      # Although the parent for the chevron is the CoolBar (CoolItem can not be the parent)
      # it has to be disposed with the item
      if (!(@chevron).nil? && !@chevron.is_disposed)
        @chevron.dispose
      end
      @chevron = nil
      if (!(@arrow_image).nil? && !@arrow_image.is_disposed)
        @arrow_image.dispose
      end
      @arrow_image = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def create_arrow_image(width, height)
      point = @parent.fix_point(width, height)
      width = point.attr_x
      height = point.attr_y
      foreground = @parent.get_foreground
      black = self.attr_display.get_system_color(SWT::COLOR_BLACK)
      background = @parent.get_background
      palette = PaletteData.new(Array.typed(RGB).new([foreground.get_rgb, background.get_rgb, black.get_rgb]))
      image_data = ImageData.new(width, height, 4, palette)
      image_data.attr_transparent_pixel = 1
      image = Image.new(self.attr_display, image_data)
      gc = SwtGC.new(image, @parent.get_style & SWT::RIGHT_TO_LEFT)
      gc.set_background(background)
      gc.fill_rectangle(0, 0, width, height)
      gc.set_foreground(black)
      start_x = 0
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        start_x = width - CHEVRON_IMAGE_WIDTH
      end
      start_y = height / 6
      step = 2
      gc.draw_line(start_x, start_y, start_x + step, start_y + step)
      gc.draw_line(start_x, start_y + (2 * step), start_x + step, start_y + step)
      start_x += 1
      gc.draw_line(start_x, start_y, start_x + step, start_y + step)
      gc.draw_line(start_x, start_y + (2 * step), start_x + step, start_y + step)
      start_x += 3
      gc.draw_line(start_x, start_y, start_x + step, start_y + step)
      gc.draw_line(start_x, start_y + (2 * step), start_x + step, start_y + step)
      start_x += 1
      gc.draw_line(start_x, start_y, start_x + step, start_y + step)
      gc.draw_line(start_x, start_y + (2 * step), start_x + step, start_y + step)
      gc.dispose
      return image
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent.
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      check_widget
      return @parent.fix_rectangle(@item_bounds.attr_x, @item_bounds.attr_y, @item_bounds.attr_width, @item_bounds.attr_height)
    end
    
    typesig { [] }
    def internal_get_bounds
      return Rectangle.new(@item_bounds.attr_x, @item_bounds.attr_y, @item_bounds.attr_width, @item_bounds.attr_height)
    end
    
    typesig { [] }
    # Returns the control that is associated with the receiver.
    # 
    # @return the control that is contained by the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_control
      check_widget
      return @control
    end
    
    typesig { [] }
    # Returns the minimum size that the cool item can
    # be resized to using the cool item's gripper.
    # 
    # @return a point containing the minimum width and height of the cool item, in pixels
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_minimum_size
      check_widget
      return @parent.fix_point(@minimum_width, @minimum_height)
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>CoolBar</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      return @parent
    end
    
    typesig { [] }
    # Returns a point describing the receiver's ideal size.
    # The x coordinate of the result is the ideal width of the receiver.
    # The y coordinate of the result is the ideal height of the receiver.
    # 
    # @return the receiver's ideal size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_preferred_size
      check_widget
      return @parent.fix_point(@preferred_width, @preferred_height)
    end
    
    typesig { [] }
    # Returns a point describing the receiver's size. The
    # x coordinate of the result is the width of the receiver.
    # The y coordinate of the result is the height of the
    # receiver.
    # 
    # @return the receiver's size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_size
      check_widget
      return @parent.fix_point(@item_bounds.attr_width, @item_bounds.attr_height)
    end
    
    typesig { [] }
    def internal_get_minimum_width
      width = @minimum_width + MINIMUM_WIDTH
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && width < @preferred_width)
        width += CHEVRON_IMAGE_WIDTH + @chevron_horizontal_trim + CHEVRON_LEFT_MARGIN
      end
      return width
    end
    
    typesig { [Event] }
    # Called when the chevron is selected.
    def on_selection(ev)
      bounds = @chevron.get_bounds
      event = Event.new
      event.attr_detail = SWT::ARROW
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        event.attr_x = bounds.attr_x + bounds.attr_width
        event.attr_y = bounds.attr_y
      else
        event.attr_x = bounds.attr_x
        event.attr_y = bounds.attr_y + bounds.attr_height
      end
      post_event(SWT::Selection, event)
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners that
    # will be notified when the control is selected by the user.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #addSelectionListener
    # 
    # @since 2.0
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height)
      @item_bounds.attr_x = x
      @item_bounds.attr_y = y
      @item_bounds.attr_width = width
      @item_bounds.attr_height = height
      if (!(@control).nil?)
        control_width = width - MINIMUM_WIDTH
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && width < @preferred_width)
          control_width -= CHEVRON_IMAGE_WIDTH + @chevron_horizontal_trim + CHEVRON_LEFT_MARGIN
        end
        @control.set_bounds(@parent.fix_rectangle(x + MINIMUM_WIDTH, y, control_width, height))
      end
      update_chevron
    end
    
    typesig { [Control] }
    # Sets the control that is associated with the receiver
    # to the argument.
    # 
    # @param control the new control that will be contained by the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the control is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_control(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(control.attr_parent).equal?(@parent))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      @control = control
      if (!(control).nil?)
        control_width = @item_bounds.attr_width - MINIMUM_WIDTH
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && @item_bounds.attr_width < @preferred_width)
          control_width -= CHEVRON_IMAGE_WIDTH + @chevron_horizontal_trim + CHEVRON_LEFT_MARGIN
        end
        control.set_bounds(@parent.fix_rectangle(@item_bounds.attr_x + MINIMUM_WIDTH, @item_bounds.attr_y, control_width, @item_bounds.attr_height))
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the minimum size that the cool item can be resized to
    # using the cool item's gripper, to the point specified by the arguments.
    # 
    # @param width the minimum width of the cool item, in pixels
    # @param height the minimum height of the cool item, in pixels
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_minimum_size(width, height)
      check_widget
      point = @parent.fix_point(width, height)
      @minimum_width = point.attr_x
      @minimum_height = point.attr_y
    end
    
    typesig { [Point] }
    # Sets the minimum size that the cool item can be resized to
    # using the cool item's gripper, to the point specified by the argument.
    # 
    # @param size a point representing the minimum width and height of the cool item, in pixels
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_minimum_size(size)
      check_widget
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_minimum_size(size.attr_x, size.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's ideal size to the point specified by the arguments.
    # 
    # @param width the new ideal width for the receiver
    # @param height the new ideal height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_preferred_size(width, height)
      check_widget
      @ideal = true
      point = @parent.fix_point(width, height)
      @preferred_width = Math.max(point.attr_x, MINIMUM_WIDTH)
      @preferred_height = point.attr_y
    end
    
    typesig { [Point] }
    # Sets the receiver's ideal size to the point specified by the argument.
    # 
    # @param size the new ideal size for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_preferred_size(size)
      check_widget
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_preferred_size(size.attr_x, size.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's size to the point specified by the arguments.
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause that
    # value to be set to zero instead.
    # </p>
    # 
    # @param width the new width for the receiver
    # @param height the new height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_size(width, height)
      check_widget
      point = @parent.fix_point(width, height)
      width = Math.max(point.attr_x, @minimum_width + MINIMUM_WIDTH)
      height = point.attr_y
      if (!@ideal)
        @preferred_width = width
        @preferred_height = height
      end
      @item_bounds.attr_width = @requested_width = width
      @item_bounds.attr_height = height
      if (!(@control).nil?)
        control_width = width - MINIMUM_WIDTH
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && width < @preferred_width)
          control_width -= CHEVRON_IMAGE_WIDTH + @chevron_horizontal_trim + CHEVRON_LEFT_MARGIN
        end
        @control.set_size(@parent.fix_point(control_width, height))
      end
      @parent.relayout
      update_chevron
    end
    
    typesig { [Point] }
    # Sets the receiver's size to the point specified by the argument.
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause them to be
    # set to zero instead.
    # </p>
    # 
    # @param size the new size for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_size(size)
      check_widget
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_size(size.attr_x, size.attr_y)
    end
    
    typesig { [] }
    def update_chevron
      if (!(@control).nil?)
        width = @item_bounds.attr_width
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && width < @preferred_width)
          if ((@chevron).nil?)
            @chevron = ToolBar.new(@parent, SWT::FLAT | SWT::NO_FOCUS)
            tool_item = ToolItem.new(@chevron, SWT::PUSH)
            tool_item.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
              extend LocalClass
              include_class_members CoolItem
              include Listener if Listener.class == Module
              
              typesig { [Event] }
              define_method :handle_event do |event|
                @local_class_parent.on_selection(event)
              end
              
              typesig { [] }
              define_method :initialize do
                super()
              end
              
              private
              alias_method :initialize_anonymous, :initialize
            end.new_local(self))
          end
          control_height = 0
          current_image_height = 0
          if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
            control_height = @control.get_size.attr_x
            if (!(@arrow_image).nil?)
              current_image_height = @arrow_image.get_bounds.attr_width
            end
          else
            control_height = @control.get_size.attr_y
            if (!(@arrow_image).nil?)
              current_image_height = @arrow_image.get_bounds.attr_height
            end
          end
          height = Math.min(control_height, @item_bounds.attr_height)
          image_height = Math.max(1, height - @chevron_vertical_trim)
          if (!(current_image_height).equal?(image_height))
            image = create_arrow_image(CHEVRON_IMAGE_WIDTH, image_height)
            @chevron.get_item(0).set_image(image)
            if (!(@arrow_image).nil?)
              @arrow_image.dispose
            end
            @arrow_image = image
          end
          @chevron.set_background(@parent.get_background)
          @chevron.set_bounds(@parent.fix_rectangle(@item_bounds.attr_x + width - CHEVRON_LEFT_MARGIN - CHEVRON_IMAGE_WIDTH - @chevron_horizontal_trim, @item_bounds.attr_y, CHEVRON_IMAGE_WIDTH + @chevron_horizontal_trim, height))
          @chevron.set_visible(true)
        else
          if (!(@chevron).nil?)
            @chevron.set_visible(false)
          end
        end
      end
    end
    
    private
    alias_method :initialize__cool_item, :initialize
  end
  
end
