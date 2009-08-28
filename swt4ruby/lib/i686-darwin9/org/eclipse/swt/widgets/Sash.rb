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
  module SashImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of the receiver represent a selectable user interface object
  # that allows the user to drag a rubber banded outline of the sash within
  # the parent control.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>HORIZONTAL, VERTICAL, SMOOTH</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#sash">Sash snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Sash < SashImports.const_get :Control
    include_class_members SashImports
    
    attr_accessor :size_cursor
    alias_method :attr_size_cursor, :size_cursor
    undef_method :size_cursor
    alias_method :attr_size_cursor=, :size_cursor=
    undef_method :size_cursor=
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
    attr_accessor :last_x
    alias_method :attr_last_x, :last_x
    undef_method :last_x
    alias_method :attr_last_x=, :last_x=
    undef_method :last_x=
    
    attr_accessor :last_y
    alias_method :attr_last_y, :last_y
    undef_method :last_y
    alias_method :attr_last_y=, :last_y=
    undef_method :last_y=
    
    attr_accessor :start_x
    alias_method :attr_start_x, :start_x
    undef_method :start_x
    alias_method :attr_start_x=, :start_x=
    undef_method :start_x=
    
    attr_accessor :start_y
    alias_method :attr_start_y, :start_y
    undef_method :start_y
    alias_method :attr_start_y=, :start_y=
    undef_method :start_y=
    
    class_module.module_eval {
      const_set_lazy(:INCREMENT) { 1 }
      const_attr_reader  :INCREMENT
      
      const_set_lazy(:PAGE_INCREMENT) { 9 }
      const_attr_reader  :PAGE_INCREMENT
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axorientation_attribute, OS.attr_k_axvalue_attribute, OS.attr_k_axmax_value_attribute, OS.attr_k_axmin_value_attribute, ]) }
      const_attr_reader  :AX_ATTRIBUTES
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
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @size_cursor = nil
      @dragging = false
      @last_x = 0
      @last_y = 0
      @start_x = 0
      @start_y = 0
      super(parent, check_style(style))
      cursor_style = !((style & SWT::VERTICAL)).equal?(0) ? SWT::CURSOR_SIZEWE : SWT::CURSOR_SIZENS
      @size_cursor = Cursor.new(self.attr_display, cursor_style)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the x, y, width, and height fields of the event object are valid.
    # If the receiver is being dragged, the event object detail field contains the value <code>SWT.DRAG</code>.
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
        # Macintosh only supports smooth dragging.
        style |= SWT::SMOOTH
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    def call_focus_event_handler(next_handler, the_event)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        width += DEFAULT_WIDTH
        height += 5
      else
        width += 5
        height += DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= GRAB | THEME_BACKGROUND
      features = OS.attr_k_control_supports_focus
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      OS._create_user_pane_control(window, nil, features, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      fill_background(control, context, nil)
    end
    
    typesig { [] }
    def get_ax_attributes
      return AX_ATTRIBUTES
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
      length = 0
      if (!(string_ref[0]).equal?(0))
        length = OS._cfstring_get_length(string_ref[0])
      end
      buffer = CharArray.new(length)
      range = CFRange.new
      range.attr_length = length
      OS._cfstring_get_characters(string_ref[0], range, buffer)
      attribute_name = String.new(buffer)
      if ((attribute_name == OS.attr_k_axrole_attribute) || (attribute_name == OS.attr_k_axrole_description_attribute))
        role_text = OS.attr_k_axsplitter_role
        buffer = CharArray.new(role_text.length)
        role_text.get_chars(0, buffer.attr_length, buffer, 0)
        string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if (!(string_ref[0]).equal?(0))
          if ((attribute_name == OS.attr_k_axrole_attribute))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
          else
            # kAXRoleDescriptionAttribute
            string_ref2 = OS._hicopy_accessibility_role_description(string_ref[0], 0)
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref2]))
            OS._cfrelease(string_ref2)
          end
          OS._cfrelease(string_ref[0])
          code = OS.attr_no_err
        end
      else
        if ((attribute_name == OS.attr_k_axorientation_attribute))
          orientation = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? OS.attr_k_axvertical_orientation_value : OS.attr_k_axhorizontal_orientation_value
          buffer = CharArray.new(orientation.length)
          orientation.get_chars(0, buffer.attr_length, buffer, 0)
          string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
          if (!(string_ref[0]).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
            OS._cfrelease(string_ref[0])
            code = OS.attr_no_err
          end
        else
          if ((attribute_name == OS.attr_k_axvalue_attribute))
            location = get_location
            value = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? location.attr_x : location.attr_y
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([value]))
            code = OS.attr_no_err
          else
            if ((attribute_name == OS.attr_k_axmax_value_attribute))
              parent_bounds = Rect.new
              OS._get_control_bounds(self.attr_parent.attr_handle, parent_bounds)
              max_value = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? parent_bounds.attr_right - parent_bounds.attr_left : parent_bounds.attr_bottom - parent_bounds.attr_top
              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([max_value]))
              code = OS.attr_no_err
            else
              if ((attribute_name == OS.attr_k_axmin_value_attribute))
                OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([0]))
                code = OS.attr_no_err
              end
            end
          end
        end
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_click(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!is_enabled)
        return OS.attr_no_err
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_focus_part(next_handler, the_event, user_data)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_cursor(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      self.attr_display.set_cursor(@size_cursor.attr_handle)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        location = get_location
        @last_x = location.attr_x
        @last_y = location.attr_y
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_unicode_key_pressed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      catch(:break_case) do
        case (key_code[0])
        # Up arrow
        # Left arrow
        # Down arrow
        when 126, 123, 125, 124
          # Right arrow
          x_change = 0
          y_change = 0
          step_size = PAGE_INCREMENT
          modifiers = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
          if (!((modifiers[0] & OS.attr_control_key)).equal?(0))
            step_size = INCREMENT
          end
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            if ((key_code[0]).equal?(126) || (key_code[0]).equal?(125))
              throw :break_case, :thrown
            end
            x_change = (key_code[0]).equal?(123) ? -step_size : step_size
          else
            if ((key_code[0]).equal?(123) || (key_code[0]).equal?(124))
              throw :break_case, :thrown
            end
            y_change = (key_code[0]).equal?(126) ? -step_size : step_size
          end
          bounds = get_bounds
          width = bounds.attr_width
          height = bounds.attr_height
          parent_bounds = self.attr_parent.get_bounds
          parent_width = parent_bounds.attr_width
          parent_height = parent_bounds.attr_height
          new_x = @last_x
          new_y = @last_y
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            new_x = Math.min(Math.max(0, @last_x + x_change), parent_width - width)
          else
            new_y = Math.min(Math.max(0, @last_y + y_change), parent_height - height)
          end
          if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
            return result
          end
          event = Event.new
          event.attr_x = new_x
          event.attr_y = new_y
          event.attr_width = width
          event.attr_height = height
          send_event(SWT::Selection, event)
          if (is_disposed)
            throw :break_case, :thrown
          end
          if (event.attr_doit)
            set_bounds(event.attr_x, event.attr_y, width, height)
            if (is_disposed)
              throw :break_case, :thrown
            end
            @last_x = event.attr_x
            @last_y = event.attr_y
            if (is_disposed)
              return result
            end
            cursor_x = event.attr_x
            cursor_y = event.attr_y
            if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
              cursor_y += height / 2
            else
              cursor_x += width / 2
            end
            self.attr_display.set_cursor_location(self.attr_parent.to_display(cursor_x, cursor_y))
          end
        end
      end
      return result
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@size_cursor).nil?)
        @size_cursor.dispose
      end
      @size_cursor = nil
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
    
    typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Short, ::Java::Short, ::Java::Int] }
    def send_mouse_event(type, button, count, detail, send, chord, x, y, modifiers)
      result = super(type, button, count, detail, send, chord, x, y, modifiers)
      rect = Rect.new
      OS._get_control_bounds(self.attr_handle, rect)
      control_x = rect.attr_left
      control_y = rect.attr_top
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      OS._get_control_bounds(self.attr_parent.attr_handle, rect)
      parent_width = rect.attr_right - rect.attr_left
      parent_height = rect.attr_bottom - rect.attr_top
      catch(:break_case) do
        case (type)
        when SWT::MouseDown
          if (!(button).equal?(1) || !(count).equal?(1))
            throw :break_case, :thrown
          end
          @start_x = x
          @start_y = y
          event = Event.new
          event.attr_x = control_x
          event.attr_y = control_y
          event.attr_width = width
          event.attr_height = height
          send_event(SWT::Selection, event)
          if (is_disposed)
            return result
          end
          if (event.attr_doit)
            @last_x = event.attr_x
            @last_y = event.attr_y
            @dragging = true
            set_bounds(event.attr_x, event.attr_y, width, height)
          end
        when SWT::MouseUp
          if (!@dragging)
            throw :break_case, :thrown
          end
          @dragging = false
          self.attr_event = Event.new
          self.attr_event.attr_x = @last_x
          self.attr_event.attr_y = @last_y
          self.attr_event.attr_width = width
          self.attr_event.attr_height = height
          send_event(SWT::Selection, self.attr_event)
          if (is_disposed)
            return result
          end
          if (self.attr_event.attr_doit)
            set_bounds(self.attr_event.attr_x, self.attr_event.attr_y, width, height)
          end
        when SWT::MouseMove
          if (!@dragging)
            throw :break_case, :thrown
          end
          new_x = @last_x
          new_y = @last_y
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            new_x = Math.min(Math.max(0, x + control_x - @start_x), parent_width - width)
          else
            new_y = Math.min(Math.max(0, y + control_y - @start_y), parent_height - height)
          end
          if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
            return result
          end
          self.attr_event = Event.new
          self.attr_event.attr_x = new_x
          self.attr_event.attr_y = new_y
          self.attr_event.attr_width = width
          self.attr_event.attr_height = height
          send_event(SWT::Selection, self.attr_event)
          if (is_disposed)
            return result
          end
          if (self.attr_event.attr_doit)
            @last_x = self.attr_event.attr_x
            @last_y = self.attr_event.attr_y
            set_bounds(self.attr_event.attr_x, self.attr_event.attr_y, width, height)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def traversal_code(key, the_event)
      return 0
    end
    
    private
    alias_method :initialize__sash, :initialize
  end
  
end
