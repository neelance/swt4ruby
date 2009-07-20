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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :ideal
    alias_method :attr_ideal, :ideal
    undef_method :ideal
    alias_method :attr_ideal=, :ideal=
    undef_method :ideal=
    
    attr_accessor :minimum
    alias_method :attr_minimum, :minimum
    undef_method :minimum
    alias_method :attr_minimum=, :minimum=
    undef_method :minimum=
    
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
      @parent = nil
      @control = nil
      @id = 0
      @ideal = false
      @minimum = false
      super(parent, style)
      @parent = parent
      parent.create_item(self, parent.get_item_count)
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
      @parent = nil
      @control = nil
      @id = 0
      @ideal = false
      @minimum = false
      super(parent, style)
      @parent = parent
      parent.create_item(self, index)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Point.new(0, 0)
      end
      width = w_hint
      height = h_hint
      if ((w_hint).equal?(SWT::DEFAULT))
        width = 32
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        height = 32
      end
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        height += @parent.get_margin(index)
      else
        width += @parent.get_margin(index)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      # long
      hwnd = @parent.attr_handle
      rect = RECT.new
      OS._send_message(hwnd, OS::RB_GETRECT, index, rect)
      if (OS::COMCTL32_MAJOR >= 6)
        margins = MARGINS.new
        OS._send_message(hwnd, OS::RB_GETBANDMARGINS, 0, margins)
        rect.attr_left -= margins.attr_cx_left_width
        rect.attr_right += margins.attr_cx_right_width
      end
      if (!@parent.is_last_item_of_row(index))
        rect.attr_right += ((@parent.attr_style & SWT::FLAT)).equal?(0) ? CoolBar::SEPARATOR_WIDTH : 0
      end
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        return Rectangle.new(rect.attr_top, rect.attr_left, height, width)
      end
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Rectangle.new(0, 0, 0, 0)
      end
      # long
      hwnd = @parent.attr_handle
      inset_rect = RECT.new
      OS._send_message(hwnd, OS::RB_GETBANDBORDERS, index, inset_rect)
      rect = RECT.new
      OS._send_message(hwnd, OS::RB_GETRECT, index, rect)
      x = rect.attr_left + inset_rect.attr_left
      y = rect.attr_top
      width = rect.attr_right - rect.attr_left - inset_rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      if (((@parent.attr_style & SWT::FLAT)).equal?(0))
        y += inset_rect.attr_top
        width -= inset_rect.attr_right
        height -= inset_rect.attr_top + inset_rect.attr_bottom
      end
      if ((index).equal?(0))
        rb_band = REBARBANDINFO.new
        rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
        rb_band.attr_f_mask = OS::RBBIM_HEADERSIZE
        OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
        width = width - rb_band.attr_cx_header + 1
      end
      return Rectangle.new(x, y, Math.max(0, width), Math.max(0, height))
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
    def release_handle
      super
      @parent = nil
      @id = -1
      @control = nil
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      if (!(@control).nil? && @control.is_disposed)
        @control = nil
      end
      old_control = @control
      new_control = control
      # long
      hwnd = @parent.attr_handle
      # long
      hwnd_child = !(new_control).nil? ? control.top_handle : 0
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_CHILD
      rb_band.attr_hwnd_child = hwnd_child
      @control = new_control
      # Feature in Windows.  When Windows sets the rebar band child,
      # it makes the new child visible and hides the old child and
      # moves the new child to the top of the Z-order.  The fix is
      # to save and restore the visibility and Z-order.
      # 
      # long
      hwnd_above = 0
      if (!(new_control).nil?)
        hwnd_above = OS._get_window(hwnd_child, OS::GW_HWNDPREV)
      end
      hide_new = !(new_control).nil? && !new_control.get_visible
      show_old = !(old_control).nil? && old_control.get_visible
      OS._send_message(hwnd, OS::RB_SETBANDINFO, index, rb_band)
      if (hide_new)
        new_control.set_visible(false)
      end
      if (show_old)
        old_control.set_visible(true)
      end
      if (!(hwnd_above).equal?(0) && !(hwnd_above).equal?(hwnd_child))
        flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
        _set_window_pos(hwnd_child, hwnd_above, 0, 0, 0, 0, flags)
      end
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Point.new(0, 0)
      end
      # long
      hwnd = @parent.attr_handle
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE | OS::RBBIM_IDEALSIZE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      width = rb_band.attr_cx_ideal + @parent.get_margin(index)
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        return Point.new(rb_band.attr_cy_max_child, width)
      end
      return Point.new(width, rb_band.attr_cy_max_child)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      width = Math.max(0, width)
      height = Math.max(0, height)
      @ideal = true
      # long
      hwnd = @parent.attr_handle
      cx_ideal = 0
      cy_max_child = 0
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        cx_ideal = Math.max(0, height - @parent.get_margin(index))
        cy_max_child = width
      else
        cx_ideal = Math.max(0, width - @parent.get_margin(index))
        cy_max_child = height
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      # Get the child size fields first so we don't overwrite them.
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      # Set the size fields we are currently modifying.
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE | OS::RBBIM_IDEALSIZE
      rb_band.attr_cx_ideal = cx_ideal
      rb_band.attr_cy_max_child = cy_max_child
      if (!@minimum)
        rb_band.attr_cy_min_child = cy_max_child
      end
      OS._send_message(hwnd, OS::RB_SETBANDINFO, index, rb_band)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        Point.new(0, 0)
      end
      # long
      hwnd = @parent.attr_handle
      rect = RECT.new
      OS._send_message(hwnd, OS::RB_GETRECT, index, rect)
      if (OS::COMCTL32_MAJOR >= 6)
        margins = MARGINS.new
        OS._send_message(hwnd, OS::RB_GETBANDMARGINS, 0, margins)
        rect.attr_left -= margins.attr_cx_left_width
        rect.attr_right += margins.attr_cx_right_width
      end
      if (!@parent.is_last_item_of_row(index))
        rect.attr_right += ((@parent.attr_style & SWT::FLAT)).equal?(0) ? CoolBar::SEPARATOR_WIDTH : 0
      end
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        return Point.new(height, width)
      end
      return Point.new(width, height)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      width = Math.max(0, width)
      height = Math.max(0, height)
      # long
      hwnd = @parent.attr_handle
      cx = 0
      cy_child = 0
      cx_ideal = 0
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        cx = height
        cy_child = width
        cx_ideal = Math.max(0, height - @parent.get_margin(index))
      else
        cx = width
        cy_child = height
        cx_ideal = Math.max(0, width - @parent.get_margin(index))
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      # Get the child size fields first so we don't overwrite them.
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE | OS::RBBIM_IDEALSIZE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      # Set the size fields we are currently modifying.
      if (!@ideal)
        rb_band.attr_cx_ideal = cx_ideal
      end
      if (!@minimum)
        rb_band.attr_cy_min_child = cy_child
      end
      rb_band.attr_cy_child = cy_child
      # Do not set the size for the last item on the row.
      if (!@parent.is_last_item_of_row(index))
        if (OS::COMCTL32_MAJOR >= 6)
          margins = MARGINS.new
          OS._send_message(hwnd, OS::RB_GETBANDMARGINS, 0, margins)
          cx -= margins.attr_cx_left_width + margins.attr_cx_right_width
        end
        separator = ((@parent.attr_style & SWT::FLAT)).equal?(0) ? CoolBar::SEPARATOR_WIDTH : 0
        rb_band.attr_cx = cx - separator
        rb_band.attr_f_mask |= OS::RBBIM_SIZE
      end
      OS._send_message(hwnd, OS::RB_SETBANDINFO, index, rb_band)
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
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_size(size.attr_x, size.attr_y)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return Point.new(0, 0)
      end
      # long
      hwnd = @parent.attr_handle
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        return Point.new(rb_band.attr_cy_min_child, rb_band.attr_cx_min_child)
      end
      return Point.new(rb_band.attr_cx_min_child, rb_band.attr_cy_min_child)
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      width = Math.max(0, width)
      height = Math.max(0, height)
      @minimum = true
      # long
      hwnd = @parent.attr_handle
      cx_min_child = 0
      cy_min_child = 0
      if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
        cx_min_child = height
        cy_min_child = width
      else
        cx_min_child = width
        cy_min_child = height
      end
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      # Get the child size fields first so we don't overwrite them.
      rb_band.attr_f_mask = OS::RBBIM_CHILDSIZE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      # Set the size fields we are currently modifying.
      rb_band.attr_cx_min_child = cx_min_child
      rb_band.attr_cy_min_child = cy_min_child
      OS._send_message(hwnd, OS::RB_SETBANDINFO, index, rb_band)
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
    
    typesig { [] }
    def get_wrap
      index = @parent.index_of(self)
      # long
      hwnd = @parent.attr_handle
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_STYLE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      return !((rb_band.attr_f_style & OS::RBBS_BREAK)).equal?(0)
    end
    
    typesig { [::Java::Boolean] }
    def set_wrap(wrap)
      index = @parent.index_of(self)
      # long
      hwnd = @parent.attr_handle
      rb_band = REBARBANDINFO.new
      rb_band.attr_cb_size = REBARBANDINFO.attr_sizeof
      rb_band.attr_f_mask = OS::RBBIM_STYLE
      OS._send_message(hwnd, OS::RB_GETBANDINFO, index, rb_band)
      if (wrap)
        rb_band.attr_f_style |= OS::RBBS_BREAK
      else
        rb_band.attr_f_style &= ~OS::RBBS_BREAK
      end
      OS._send_message(hwnd, OS::RB_SETBANDINFO, index, rb_band)
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
    
    private
    alias_method :initialize__cool_item, :initialize
  end
  
end
