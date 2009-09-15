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
  module SashImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
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
    }
    
    attr_accessor :accessibility_attributes
    alias_method :attr_accessibility_attributes, :accessibility_attributes
    undef_method :accessibility_attributes
    alias_method :attr_accessibility_attributes=, :accessibility_attributes=
    undef_method :accessibility_attributes=
    
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
    # @see SWT#SMOOTH
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @size_cursor = nil
      @dragging = false
      @last_x = 0
      @last_y = 0
      @start_x = 0
      @start_y = 0
      @accessibility_attributes = nil
      super(parent, check_style(style))
      @accessibility_attributes = nil
      cursor_style = !((style & SWT::VERTICAL)).equal?(0) ? SWT::CURSOR_SIZEWE : SWT::CURSOR_SIZENS
      @size_cursor = Cursor.new(self.attr_display, cursor_style)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_attribute_names(id, sel)
      if ((@accessibility_attributes).nil?)
        our_attributes = NSMutableArray.array_with_capacity(10)
        our_attributes.add_object(OS::NSAccessibilityRoleAttribute)
        our_attributes.add_object(OS::NSAccessibilityRoleDescriptionAttribute)
        our_attributes.add_object(OS::NSAccessibilityParentAttribute)
        our_attributes.add_object(OS::NSAccessibilityPositionAttribute)
        our_attributes.add_object(OS::NSAccessibilitySizeAttribute)
        our_attributes.add_object(OS::NSAccessibilityWindowAttribute)
        our_attributes.add_object(OS::NSAccessibilityTopLevelUIElementAttribute)
        our_attributes.add_object(OS::NSAccessibilityFocusedAttribute)
        our_attributes.add_object(OS::NSAccessibilityValueAttribute)
        our_attributes.add_object(OS::NSAccessibilityMaxValueAttribute)
        our_attributes.add_object(OS::NSAccessibilityMinValueAttribute)
        # The accessibility documentation says that these next two are optional, but the
        # Accessibility Verifier says they are required.
        our_attributes.add_object(OS::NSAccessibilityNextContentsAttribute)
        our_attributes.add_object(OS::NSAccessibilityPreviousContentsAttribute)
        our_attributes.add_object(OS::NSAccessibilityOrientationAttribute)
        if (!(self.attr_accessible).nil?)
          # See if the accessible will override or augment the standard list.
          # Help, title, and description can be overridden.
          extra_attributes = NSMutableArray.array_with_capacity(3)
          extra_attributes.add_object(OS::NSAccessibilityHelpAttribute)
          extra_attributes.add_object(OS::NSAccessibilityDescriptionAttribute)
          extra_attributes.add_object(OS::NSAccessibilityTitleAttribute)
          # 64
          i = RJava.cast_to_int(extra_attributes.count) - 1
          while i >= 0
            attribute = NSString.new(extra_attributes.object_at_index(i).attr_id)
            if (!(self.attr_accessible.internal_accessibility_attribute_value(attribute, ACC::CHILDID_SELF)).nil?)
              our_attributes.add_object(extra_attributes.object_at_index(i))
            end
            i -= 1
          end
        end
        @accessibility_attributes = our_attributes
        @accessibility_attributes.retain
      end
      return @accessibility_attributes.attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      # long
      return_value = 0
      attribute_name = NSString.new(arg0)
      if (!(self.attr_accessible).nil?)
        return_object = self.attr_accessible.internal_accessibility_attribute_value(attribute_name, ACC::CHILDID_SELF)
        if (!(return_object).nil?)
          return_value = return_object.attr_id
        end
      end
      if (!(return_value).equal?(0))
        return return_value
      end
      if (attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute) || attribute_name.is_equal_to_string(OS::NSAccessibilityRoleDescriptionAttribute))
        role_text = OS::NSAccessibilitySplitterRole
        if (attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute))
          return role_text.attr_id
        else
          # NSAccessibilityRoleDescriptionAttribute
          return OS._nsaccessibility_role_description(role_text.attr_id, 0)
        end
      else
        if (attribute_name.is_equal_to_string(OS::NSAccessibilityEnabledAttribute))
          return NSNumber.number_with_bool(is_enabled).attr_id
        else
          if (attribute_name.is_equal_to_string(OS::NSAccessibilityOrientationAttribute))
            orientation = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? OS::NSAccessibilityVerticalOrientationValue : OS::NSAccessibilityHorizontalOrientationValue
            return orientation.attr_id
          else
            if (attribute_name.is_equal_to_string(OS::NSAccessibilityValueAttribute))
              location = get_location
              value = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? location.attr_x : location.attr_y
              return NSNumber.number_with_int(value).attr_id
            else
              if (attribute_name.is_equal_to_string(OS::NSAccessibilityMaxValueAttribute))
                parent_bounds = self.attr_view.bounds
                # double
                max_value = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? parent_bounds.attr_width : parent_bounds.attr_height
                return NSNumber.number_with_int(RJava.cast_to_int(max_value)).attr_id
              else
                if (attribute_name.is_equal_to_string(OS::NSAccessibilityMinValueAttribute))
                  return NSNumber.number_with_int(0).attr_id
                else
                  if (attribute_name.is_equal_to_string(OS::NSAccessibilityNextContentsAttribute))
                    children = self.attr_parent.__get_children
                    next_view = nil
                    i = 0
                    while i < children.attr_length
                      if ((children[i]).equal?(self))
                        if (i < children.attr_length - 1)
                          next_view = children[i + 1]
                          break
                        end
                      end
                      i += 1
                    end
                    if (!(next_view).nil?)
                      return NSArray.array_with_object(next_view.attr_view).attr_id
                    else
                      return NSArray.array.attr_id
                    end
                  else
                    if (attribute_name.is_equal_to_string(OS::NSAccessibilityPreviousContentsAttribute))
                      children = self.attr_parent.__get_children
                      next_view = nil
                      i = 0
                      while i < children.attr_length
                        if ((children[i]).equal?(self))
                          if (i > 0)
                            next_view = children[i - 1]
                            break
                          end
                        end
                        i += 1
                      end
                      if (!(next_view).nil?)
                        return NSArray.array_with_object(next_view.attr_view).attr_id
                      else
                        return NSArray.array.attr_id
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      return super(id, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      return false
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
    # long
    # long
    def become_first_responder(id, sel)
      result = super(id, sel)
      frame_ = self.attr_view.frame
      @last_x = RJava.cast_to_int(frame_.attr_x)
      @last_y = RJava.cast_to_int(frame_.attr_y)
      return result
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
      self.attr_state |= THEME_BACKGROUND
      widget = SWTView.new.alloc
      widget.init
      self.attr_view = widget
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_background(id, context, rect)
      if (!(id).equal?(self.attr_view.attr_id))
        return
      end
      fill_background(self.attr_view, context, rect, -1)
    end
    
    typesig { [] }
    def find_cursor
      cursor = super
      if ((cursor).nil?)
        cursor_type = !((self.attr_style & SWT::HORIZONTAL)).equal?(0) ? SWT::CURSOR_SIZENS : SWT::CURSOR_SIZEWE
        cursor = self.attr_display.get_system_cursor(cursor_type)
      end
      return cursor
    end
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      super(ns_event, type)
      if ((type).equal?(SWT::KeyDown))
        key_code_ = ns_event.key_code
        catch(:break_case) do
          case (key_code_)
          # Up arrow
          # Left arrow
          # Down arrow
          when 126, 123, 125, 124
            # Right arrow
            x_change = 0
            y_change = 0
            step_size = PAGE_INCREMENT
            # long
            modifiers = ns_event.modifier_flags
            if (!((modifiers & OS::NSControlKeyMask)).equal?(0))
              step_size = INCREMENT
            end
            if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
              if ((key_code_).equal?(126) || (key_code_).equal?(125))
                throw :break_case, :thrown
              end
              x_change = (key_code_).equal?(123) ? -step_size : step_size
            else
              if ((key_code_).equal?(123) || (key_code_).equal?(124))
                throw :break_case, :thrown
              end
              y_change = (key_code_).equal?(126) ? -step_size : step_size
            end
            bounds_ = get_bounds
            width = bounds_.attr_width
            height = bounds_.attr_height
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
              return true
            end
            event = Event.new
            event.attr_x = new_x
            event.attr_y = new_y
            event.attr_width = width
            event.attr_height = height
            send_event___org_eclipse_swt_widgets_sash_1(SWT::Selection, event)
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
                return false
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
      end
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      # TODO use sendMouseEvent
      super(id, sel, the_event)
      if (is_disposed)
        return
      end
      ns_event = NSEvent.new(the_event)
      if (!(ns_event.click_count).equal?(1))
        return
      end
      location = ns_event.location_in_window
      point = self.attr_view.convert_point_from_view_(location, nil)
      @start_x = RJava.cast_to_int(point.attr_x)
      @start_y = RJava.cast_to_int(point.attr_y)
      frame_ = self.attr_view.frame
      event = Event.new
      event.attr_x = RJava.cast_to_int(frame_.attr_x)
      event.attr_y = RJava.cast_to_int(frame_.attr_y)
      event.attr_width = RJava.cast_to_int(frame_.attr_width)
      event.attr_height = RJava.cast_to_int(frame_.attr_height)
      send_event___org_eclipse_swt_widgets_sash_3(SWT::Selection, event)
      if (is_disposed)
        return
      end
      if (event.attr_doit)
        @last_x = event.attr_x
        @last_y = event.attr_y
        @dragging = true
        set_location(event.attr_x, event.attr_y)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_event(id, sel, the_event, type)
      super(id, sel, the_event, type)
      return !(NSEvent.new(the_event).type).equal?(OS::NSLeftMouseDown)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_dragged(id, sel, the_event)
      # TODO use sendMouseEvent
      super(id, sel, the_event)
      if (is_disposed)
        return
      end
      if (!@dragging)
        return
      end
      ns_event = NSEvent.new(the_event)
      location = ns_event.location_in_window
      point = self.attr_view.convert_point_from_view_(location, nil)
      frame_ = self.attr_view.frame
      parent_frame = self.attr_parent.top_view.frame
      new_x = @last_x
      new_y = @last_y
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        new_x = Math.min(Math.max(0, RJava.cast_to_int((point.attr_x + frame_.attr_x - @start_x))), RJava.cast_to_int((parent_frame.attr_width - frame_.attr_width)))
      else
        new_y = Math.min(Math.max(0, RJava.cast_to_int((point.attr_y + frame_.attr_y - @start_y))), RJava.cast_to_int((parent_frame.attr_height - frame_.attr_height)))
      end
      if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
        return
      end
      event = Event.new
      event.attr_x = new_x
      event.attr_y = new_y
      event.attr_width = RJava.cast_to_int(frame_.attr_width)
      event.attr_height = RJava.cast_to_int(frame_.attr_height)
      send_event___org_eclipse_swt_widgets_sash_5(SWT::Selection, event)
      if (is_disposed)
        return
      end
      if (event.attr_doit)
        @last_x = event.attr_x
        @last_y = event.attr_y
        set_bounds(event.attr_x, event.attr_y, RJava.cast_to_int(frame_.attr_width), RJava.cast_to_int(frame_.attr_height))
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_up(id, sel, the_event)
      # TODO use sendMouseEvent
      super(id, sel, the_event)
      if (is_disposed)
        return
      end
      if (!@dragging)
        return
      end
      @dragging = false
      frame_ = self.attr_view.frame
      event = Event.new
      event.attr_x = @last_x
      event.attr_y = @last_y
      event.attr_width = RJava.cast_to_int(frame_.attr_width)
      event.attr_height = RJava.cast_to_int(frame_.attr_height)
      send_event___org_eclipse_swt_widgets_sash_7(SWT::Selection, event)
      if (is_disposed)
        return
      end
      if (event.attr_doit)
        set_bounds(event.attr_x, event.attr_y, RJava.cast_to_int(frame_.attr_width), RJava.cast_to_int(frame_.attr_height))
      end
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@accessibility_attributes).nil?)
        @accessibility_attributes.release
      end
      @accessibility_attributes = nil
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def super_key_down(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def super_key_up(id, sel, the_event)
    end
    
    typesig { [::Java::Int, NSEvent] }
    def traversal_code(key, the_event)
      return 0
    end
    
    private
    alias_method :initialize__sash, :initialize
  end
  
end
