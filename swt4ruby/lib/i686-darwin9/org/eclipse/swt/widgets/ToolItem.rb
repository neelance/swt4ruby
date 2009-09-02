require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module ToolItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents a button in a tool bar.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>PUSH, CHECK, RADIO, SEPARATOR, DROP_DOWN</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles CHECK, PUSH, RADIO, SEPARATOR and DROP_DOWN
  # may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#toolbar">ToolBar, ToolItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class ToolItem < ToolItemImports.const_get :Item
    include_class_members ToolItemImports
    
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
    attr_accessor :button
    alias_method :attr_button, :button
    undef_method :button
    alias_method :attr_button=, :button=
    undef_method :button=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :hot_image
    alias_method :attr_hot_image, :hot_image
    undef_method :hot_image
    alias_method :attr_hot_image=, :hot_image=
    undef_method :hot_image=
    
    attr_accessor :disabled_image
    alias_method :attr_disabled_image, :disabled_image
    undef_method :disabled_image
    alias_method :attr_disabled_image=, :disabled_image=
    undef_method :disabled_image=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :selection
    alias_method :attr_selection, :selection
    undef_method :selection
    alias_method :attr_selection=, :selection=
    undef_method :selection=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_WIDTH) { 24 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 22 }
      const_attr_reader  :DEFAULT_HEIGHT
      
      const_set_lazy(:DEFAULT_SEPARATOR_WIDTH) { 6 }
      const_attr_reader  :DEFAULT_SEPARATOR_WIDTH
      
      const_set_lazy(:INSET) { 3 }
      const_attr_reader  :INSET
      
      const_set_lazy(:ARROW_WIDTH) { 5 }
      const_attr_reader  :ARROW_WIDTH
    }
    
    typesig { [ToolBar, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>ToolBar</code>) and a style value
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
    # @see SWT#PUSH
    # @see SWT#CHECK
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @view = nil
      @button = nil
      @width = 0
      @parent = nil
      @hot_image = nil
      @disabled_image = nil
      @tool_tip_text = nil
      @control = nil
      @selection = false
      super(parent, check_style(style))
      @width = DEFAULT_SEPARATOR_WIDTH
      @parent = parent
      parent.create_item(self, parent.get_item_count)
    end
    
    typesig { [ToolBar, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>ToolBar</code>), a style value
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
    # @param index the zero-relative index to store the receiver in its parent
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
    # @see SWT#PUSH
    # @see SWT#CHECK
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @view = nil
      @button = nil
      @width = 0
      @parent = nil
      @hot_image = nil
      @disabled_image = nil
      @tool_tip_text = nil
      @control = nil
      @selection = false
      super(parent, check_style(style))
      @width = DEFAULT_SEPARATOR_WIDTH
      @parent = parent
      parent.create_item(self, index)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      ns_attribute_name = NSString.new(arg0)
      if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute) || ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleDescriptionAttribute))
        role_text = (!((self.attr_style & SWT::PUSH)).equal?(0)) ? OS::NSAccessibilityButtonRole : (!((self.attr_style & SWT::RADIO)).equal?(0)) ? OS::NSAccessibilityRadioButtonRole : (!((self.attr_style & SWT::CHECK)).equal?(0)) ? OS::NSAccessibilityCheckBoxRole : (!((self.attr_style & SWT::DROP_DOWN)).equal?(0)) ? OS::NSAccessibilityMenuButtonRole : nil # SEPARATOR
        if (!(role_text).nil?)
          if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute))
            return role_text.attr_id
          else
            # NSAccessibilityRoleDescriptionAttribute
            # long
            description = OS._nsaccessibility_role_description(role_text.attr_id, 0)
            return description
          end
        end
      else
        if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityTitleAttribute) || ns_attribute_name.is_equal_to_string(OS::NSAccessibilityDescriptionAttribute))
          accessible_text = @tool_tip_text
          if ((accessible_text).nil? || (accessible_text == ""))
            accessible_text = RJava.cast_to_string(self.attr_text)
          end
          if (!((accessible_text).nil? || (accessible_text == "")))
            return NSString.string_with(accessible_text).attr_id
          else
            return NSString.string_with("").attr_id
          end
        else
          if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityValueAttribute) && !((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
            value = NSNumber.number_with_int(@selection ? 1 : 0)
            return value.attr_id
          else
            if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityEnabledAttribute))
              value = NSNumber.number_with_int(get_enabled ? 1 : 0)
              return value.attr_id
            end
          end
        end
      end
      return super(id, sel, arg0)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called when the mouse is over the arrow portion of a drop-down tool,
    # the event object detail field contains the value <code>SWT.ARROW</code>.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user,
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
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::PUSH, SWT::CHECK, SWT::RADIO, SWT::SEPARATOR, SWT::DROP_DOWN, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def compute_size
      check_widget
      width = 0
      height = 0
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        if (!((@parent.attr_style & SWT::HORIZONTAL)).equal?(0))
          width = get_width
          height = DEFAULT_HEIGHT
        else
          width = DEFAULT_WIDTH
          height = get_width
        end
        if (!(@control).nil?)
          height = Math.max(height, @control.get_mininum_height)
        end
      else
        if (!(self.attr_text.length).equal?(0) || !(self.attr_image).nil?)
          widget = @button
          size = widget.cell.cell_size
          width = RJava.cast_to_int(Math.ceil(size.attr_width))
          height = RJava.cast_to_int(Math.ceil(size.attr_height))
        else
          width = DEFAULT_WIDTH
          height = DEFAULT_HEIGHT
        end
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          width += ARROW_WIDTH + INSET
        end
        width += INSET * 2
        height += INSET * 2
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        widget = SWTBox.new.alloc
        widget.init
        widget.set_box_type(OS::NSBoxSeparator)
        widget.set_border_width(0)
        @view = widget
      else
        widget = SWTView.new.alloc
        widget.init
        @button = SWTButton.new.alloc
        @button.init
        # Feature in Cocoa.  NSButtons without borders do not leave any margin
        # between their edge and their image.  The workaround is to provide a
        # custom cell that displays the image in a better position.
        cell_ = SWTButtonCell.new.alloc.init
        @button.set_cell(cell_)
        cell_.release
        @button.set_bordered(false)
        @button.set_action(OS.attr_sel_send_selection)
        @button.set_target(@button)
        font = !(@parent.attr_font).nil? ? @parent.attr_font : @parent.default_font
        @button.set_font(font.attr_handle)
        @button.set_image_position(OS::NSImageOverlaps)
        empty_str = NSString.string_with("")
        @button.set_title(empty_str)
        @button.set_enabled(@parent.get_enabled)
        widget.add_subview(@button)
        @view = widget
      end
    end
    
    typesig { [] }
    def create_string
      attrib_str = @parent.create_string(self.attr_text, nil, @parent.attr_foreground, SWT::CENTER, true, true)
      attrib_str.autorelease
      return attrib_str
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@view)
      if (!(@button).nil?)
        self.attr_display.remove_widget(@button)
        self.attr_display.remove_widget(@button.cell)
      end
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      super
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    # long
    def draw_image_with_frame_in_view(id, sel, image, rect, view)
      if (self.attr_text.length > 0)
        if (!((@parent.attr_style & SWT::RIGHT)).equal?(0))
          rect.attr_x += 3
        else
          rect.attr_y += 3
        end
      end
      call_super(id, sel, image, rect, view)
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_widget(id, context, rect)
      if ((id).equal?(@view.attr_id))
        if (get_selection)
          bounds_ = @view.bounds
          context.save_graphics_state
          NSColor.color_with_device_red(0.1, 0.1, 0.1, 0.1).set_fill
          NSColor.color_with_device_red(0.2, 0.2, 0.2, 0.2).set_stroke
          NSBezierPath.fill_rect(bounds_)
          bounds_.attr_x += 0.5
          bounds_.attr_y += 0.5
          bounds_.attr_width -= 1
          bounds_.attr_height -= 1
          NSBezierPath.stroke_rect(bounds_)
          context.restore_graphics_state
        end
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          bounds_ = @view.bounds
          context.save_graphics_state
          path = NSBezierPath.bezier_path
          pt = NSPoint.new
          path.move_to_point(pt)
          pt.attr_x += ARROW_WIDTH
          path.line_to_point(pt)
          pt.attr_y += ARROW_WIDTH - 1
          pt.attr_x -= ARROW_WIDTH / 2
          path.line_to_point(pt)
          path.close_path
          transform_ = NSAffineTransform.transform
          transform_.translate_xby(RJava.cast_to_int(bounds_.attr_width) - ARROW_WIDTH - INSET, RJava.cast_to_int((bounds_.attr_height - ARROW_WIDTH / 2)) / 2)
          transform_.concat
          color = is_enabled ? NSColor.black_color : NSColor.disabled_control_text_color
          color.set
          path.fill
          context.restore_graphics_state
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        (@button).set_enabled(enabled)
      end
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
      rect = @view.frame
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def set_clip_region(x, y)
      frame_ = @view.frame
      @parent.set_clip_region(frame_.attr_x + x, frame_.attr_y + y)
    end
    
    typesig { [] }
    # Returns the control that is used to fill the bounds of
    # the item when the item is a <code>SEPARATOR</code>.
    # 
    # @return the control
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
    # Returns the receiver's disabled image if it has one, or null
    # if it does not.
    # <p>
    # The disabled image is displayed when the receiver is disabled.
    # </p>
    # 
    # @return the receiver's disabled image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_disabled_image
      check_widget
      return @disabled_image
    end
    
    typesig { [] }
    def get_drawing
      return @parent.get_drawing
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #isEnabled
    def get_enabled
      check_widget
      return ((self.attr_state & DISABLED)).equal?(0)
    end
    
    typesig { [] }
    # Returns the receiver's hot image if it has one, or null
    # if it does not.
    # <p>
    # The hot image is displayed when the mouse enters the receiver.
    # </p>
    # 
    # @return the receiver's hot image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_hot_image
      check_widget
      return @hot_image
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>ToolBar</code>.
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
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked (which some platforms draw as a
    # pushed in button). If the receiver is of any other type, this method
    # returns false.
    # </p>
    # 
    # @return the selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        return false
      end
      return @selection
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has not been set.
    # 
    # @return the receiver's tool tip text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_tool_tip_text
      check_widget
      return @tool_tip_text
    end
    
    typesig { [] }
    # Gets the width of the receiver.
    # 
    # @return the width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_width
      check_widget
      return @width
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled control is typically not selectable from the
    # user interface and draws with an inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getEnabled
    def is_enabled
      check_widget
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [] }
    def is_drawing
      return get_drawing && @parent.is_drawing
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def menu_for_event(id, sel, the_event)
      return @parent.menu_for_event(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseDown))
        return
      end
      display = self.attr_display
      display.attr_tracking_control = @parent
      super(id, sel, the_event)
      display.attr_tracking_control = nil
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && (id).equal?(@view.attr_id))
        frame_ = @view.frame
        event = Event.new
        event.attr_detail = SWT::ARROW
        event.attr_x = RJava.cast_to_int(frame_.attr_x)
        event.attr_y = RJava.cast_to_int((frame_.attr_y + frame_.attr_height))
        post_event(SWT::Selection, event)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_up(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseUp))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_dragged(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseMove))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_down(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseDown))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_up(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseUp))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_dragged(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseMove))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_down(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseDown))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_up(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseUp))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_dragged(id, sel, the_event)
      if (!@parent.mouse_event(@parent.attr_view.attr_id, sel, the_event, SWT::MouseMove))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@view, self)
      if (!(@button).nil?)
        self.attr_display.add_widget(@button, self)
        self.attr_display.add_widget(@button.cell, self)
      end
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
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
    
    typesig { [] }
    def release_parent
      super
      set_visible(false)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@view).nil?)
        @view.release
      end
      if (!(@button).nil?)
        @button.release
      end
      @view = @button = nil
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @control = nil
      @tool_tip_text = RJava.cast_to_string(nil)
      self.attr_image = @disabled_image = @hot_image = nil
    end
    
    typesig { [] }
    def select_radio
      index = 0
      items = @parent.get_items
      while (index < items.attr_length && !(items[index]).equal?(self))
        index += 1
      end
      i = index - 1
      while (i >= 0 && items[i].set_radio_selection(false))
        (i -= 1)
      end
      j = index + 1
      while (j < items.attr_length && items[j].set_radio_selection(false))
        j += 1
      end
      set_selection(true)
    end
    
    typesig { [] }
    def send_selection
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((@parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        set_selection(!get_selection)
      end
      post_event(SWT::Selection)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height)
      rect = NSRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      @view.set_frame(rect)
      if (!(@button).nil?)
        rect.attr_x = 0
        rect.attr_y = 0
        rect.attr_width = width
        rect.attr_height = height
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          rect.attr_width -= ARROW_WIDTH + INSET
        end
        @button.set_frame(rect)
      end
    end
    
    typesig { [Control] }
    # Sets the control that is used to fill the bounds of
    # the item when the item is a <code>SEPARATOR</code>.
    # 
    # @param control the new control
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
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if ((@control).equal?(control))
        return
      end
      widget = @view
      if ((control).nil?)
        widget.set_box_type(OS::NSBoxSeparator)
      else
        widget.set_box_type(OS::NSBoxCustom)
      end
      @control = control
      @view.set_hidden(!(control).nil?)
      if (!(control).nil? && !control.is_disposed)
        control.move_above(nil)
      end
      @parent.relayout
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise.
    # <p>
    # A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # </p>
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      if (((self.attr_state & DISABLED)).equal?(0) && enabled)
        return
      end
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      enable_widget(enabled)
    end
    
    typesig { [Image] }
    # Sets the receiver's disabled image to the argument, which may be
    # null indicating that no disabled image should be displayed.
    # <p>
    # The disabled image is displayed when the receiver is disabled.
    # </p>
    # 
    # @param image the disabled image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_disabled_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      @disabled_image = image
      update_image(true)
    end
    
    typesig { [Image] }
    # Sets the receiver's hot image to the argument, which may be
    # null indicating that no hot image should be displayed.
    # <p>
    # The hot image is displayed when the mouse enters the receiver.
    # </p>
    # 
    # @param image the hot image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_hot_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      @hot_image = image
      update_image(true)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      super(image)
      update_image(true)
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        return false
      end
      if (!(get_selection).equal?(value))
        set_selection(value)
        post_event(SWT::Selection)
      end
      return true
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked (which some platforms draw as a
    # pushed in button).
    # </p>
    # 
    # @param selected the new selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selected)
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        return
      end
      @selection = selected
      @view.set_needs_display(true)
    end
    
    typesig { [String] }
    # Sets the receiver's text. The string may include
    # the mnemonic character.
    # </p>
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, a selection
    # event occurs. On most platforms, the mnemonic appears
    # underlined but may be emphasised in a platform specific
    # manner.  The mnemonic indicator character '&amp;' can be
    # escaped by doubling it in the string, causing a single
    # '&amp;' to be displayed.
    # </p>
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      super(string)
      widget = @button
      widget.set_attributed_title(create_string)
      if (!(self.attr_text.length).equal?(0) && !(self.attr_image).nil?)
        if (!((@parent.attr_style & SWT::RIGHT)).equal?(0))
          widget.set_image_position(OS::NSImageLeft)
        else
          widget.set_image_position(OS::NSImageAbove)
        end
      else
        widget.set_image_position(!(self.attr_text.length).equal?(0) ? OS::NSNoImage : OS::NSImageOnly)
      end
      @parent.relayout
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that the default tool tip for the
    # control will be shown. For a control that has a default
    # tool tip, such as the Tree control on Windows, setting
    # the tool tip text to an empty string replaces the default,
    # causing no tool tip text to be shown.
    # <p>
    # The mnemonic indicator (character '&amp;') is not displayed in a tool tip.
    # To display a single '&amp;' in the tool tip, the character '&amp;' can be
    # escaped by doubling it in the string.
    # </p>
    # 
    # @param string the new tool tip text (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tool_tip_text(string)
      check_widget
      @tool_tip_text = string
      @parent.check_tool_tip(self)
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      if (visible)
        if (((self.attr_state & HIDDEN)).equal?(0))
          return
        end
        self.attr_state &= ~HIDDEN
      else
        if (!((self.attr_state & HIDDEN)).equal?(0))
          return
        end
        self.attr_state |= HIDDEN
      end
      @view.set_hidden(!visible)
    end
    
    typesig { [::Java::Int] }
    # Sets the width of the receiver, for <code>SEPARATOR</code> ToolItems.
    # 
    # @param width the new width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_width(width)
      check_widget
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (width < 0 || (@width).equal?(width))
        return
      end
      @width = width
      @parent.relayout
    end
    
    typesig { [] }
    def tooltip_text
      return @tool_tip_text
    end
    
    typesig { [::Java::Boolean] }
    def update_image(layout)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      image = nil
      if (!(@hot_image).nil?)
        image = @hot_image
      else
        if (!(self.attr_image).nil?)
          image = self.attr_image
        else
          image = @disabled_image
        end
      end
      widget = @button
      # Feature in Cocoa.  If the NSImage object being set into the button is
      # the same NSImage object that is already there then the button does not
      # redraw itself.  This results in the button's image not visually updating
      # if the NSImage object's content has changed since it was last set
      # into the button.  The workaround is to explicitly redraw the button.
      widget.set_image(!(image).nil? ? image.attr_handle : nil)
      widget.set_needs_display(true)
      if (!(self.attr_text.length).equal?(0) && !(image).nil?)
        if (!((@parent.attr_style & SWT::RIGHT)).equal?(0))
          widget.set_image_position(OS::NSImageLeft)
        else
          (@button).set_image_position(OS::NSImageAbove)
        end
      else
        widget.set_image_position(!(self.attr_text.length).equal?(0) ? OS::NSNoImage : OS::NSImageOnly)
      end
      @parent.relayout
    end
    
    private
    alias_method :initialize__tool_item, :initialize
  end
  
end
