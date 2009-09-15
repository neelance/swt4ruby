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
  module ButtonImports #:nodoc:
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
  
  # Instances of this class represent a selectable user interface object that
  # issues notification when pressed and released.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>ARROW, CHECK, PUSH, RADIO, TOGGLE, FLAT</dd>
  # <dd>UP, DOWN, LEFT, RIGHT, CENTER</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles ARROW, CHECK, PUSH, RADIO, and TOGGLE
  # may be specified.
  # </p><p>
  # Note: Only one of the styles LEFT, RIGHT, and CENTER may be specified.
  # </p><p>
  # Note: Only one of the styles UP, DOWN, LEFT, and RIGHT may be specified
  # when the ARROW style is specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#button">Button snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Button < ButtonImports.const_get :Control
    include_class_members ButtonImports
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
    class_module.module_eval {
      const_set_lazy(:EXTRA_HEIGHT) { 2 }
      const_attr_reader  :EXTRA_HEIGHT
      
      const_set_lazy(:EXTRA_WIDTH) { 6 }
      const_attr_reader  :EXTRA_WIDTH
      
      const_set_lazy(:IMAGE_GAP) { 2 }
      const_attr_reader  :IMAGE_GAP
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
    # @see SWT#ARROW
    # @see SWT#CHECK
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#TOGGLE
    # @see SWT#FLAT
    # @see SWT#UP
    # @see SWT#DOWN
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text = nil
      @image = nil
      @grayed = false
      super(parent, check_style(style))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      ns_attribute_name = NSString.new(arg0)
      if (!(self.attr_accessible).nil?)
        return_object = self.attr_accessible.internal_accessibility_attribute_value(ns_attribute_name, ACC::CHILDID_SELF)
        if (!(return_object).nil?)
          return return_object.attr_id
        end
      end
      if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute) || ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleDescriptionAttribute))
        role = nil
        if (!((self.attr_style & SWT::RADIO)).equal?(0))
          role = OS::NSAccessibilityRadioButtonRole
        else
          if (!((self.attr_style & SWT::ARROW)).equal?(0))
            role = OS::NSAccessibilityButtonRole
          end
        end
        if (!(role).nil?)
          if (ns_attribute_name.is_equal_to_string(OS::NSAccessibilityRoleAttribute))
            return role.attr_id
          else
            return OS._nsaccessibility_role_description(role.attr_id, 0)
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
    # <code>widgetSelected</code> is called when the control is selected by the user.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def cell_size(id, sel)
      size = super(id, sel)
      if (!(@image).nil? && (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0)))
        image_size = @image.attr_handle.size
        size.attr_width += image_size.attr_width + IMAGE_GAP
        size.attr_height = Math.max(size.attr_height, image_size.attr_height)
      end
      return size
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style = check_bits(style, SWT::PUSH, SWT::ARROW, SWT::CHECK, SWT::RADIO, SWT::TOGGLE, 0)
        if (!((style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
          return check_bits(style, SWT::CENTER, SWT::LEFT, SWT::RIGHT, 0, 0, 0)
        end
        if (!((style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          return check_bits(style, SWT::LEFT, SWT::RIGHT, SWT::CENTER, 0, 0, 0)
        end
        if (!((style & SWT::ARROW)).equal?(0))
          style |= SWT::NO_FOCUS
          return check_bits(style, SWT::UP, SWT::DOWN, SWT::LEFT, SWT::RIGHT, 0, 0)
        end
        return style
      end
    }
    
    typesig { [] }
    def click
      post_event___org_eclipse_swt_widgets_button_1(SWT::Selection)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        # TODO use some OS metric instead of hardcoded values
        width = !(w_hint).equal?(SWT::DEFAULT) ? w_hint : 14
        height = !(h_hint).equal?(SWT::DEFAULT) ? h_hint : 14
        return Point.new(width, height)
      end
      size_ = (self.attr_view).cell.cell_size
      width = RJava.cast_to_int(Math.ceil(size_.attr_width))
      height = RJava.cast_to_int(Math.ceil(size_.attr_height))
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0) && ((self.attr_style & SWT::FLAT)).equal?(0))
        if (self.attr_display.attr_small_fonts)
          height += EXTRA_HEIGHT
        end
        width += EXTRA_WIDTH
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_string
      attrib_str = create_string(@text, nil, self.attr_foreground, self.attr_style, true, true)
      attrib_str.autorelease
      return attrib_str
    end
    
    typesig { [] }
    def create_handle
      if (((self.attr_style & SWT::PUSH)).equal?(0))
        self.attr_state |= THEME_BACKGROUND
      end
      widget = SWTButton.new.alloc
      widget.init
      # Feature in Cocoa.  Images touch the edge of rounded buttons
      # when set to small size. The fix to subclass the button cell
      # and offset the image drawing.
      # 
      # if (display.smallFonts && (style & (SWT.PUSH | SWT.TOGGLE)) != 0 && (style & SWT.FLAT) == 0) {
      cell = SWTButtonCell.new.alloc.init
      widget.set_cell(cell)
      cell.release
      # }
      type = OS::NSMomentaryLightButton
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        if (!((self.attr_style & SWT::FLAT)).equal?(0))
          widget.set_bezel_style(OS::NSShadowlessSquareBezelStyle)
          # if ((style & SWT.BORDER) == 0) widget.setShowsBorderOnlyWhileMouseInside(true);
        else
          widget.set_bezel_style(OS::NSRoundedBezelStyle)
        end
      else
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          type = OS::NSSwitchButton
        else
          if (!((self.attr_style & SWT::RADIO)).equal?(0))
            type = OS::NSRadioButton
          else
            if (!((self.attr_style & SWT::TOGGLE)).equal?(0))
              type = OS::NSPushOnPushOffButton
              if (!((self.attr_style & SWT::FLAT)).equal?(0))
                widget.set_bezel_style(OS::NSShadowlessSquareBezelStyle)
                # if ((style & SWT.BORDER) == 0) widget.setShowsBorderOnlyWhileMouseInside(true);
              else
                widget.set_bezel_style(OS::NSRoundedBezelStyle)
              end
            else
              if (!((self.attr_style & SWT::ARROW)).equal?(0))
                widget.set_bezel_style(OS::NSShadowlessSquareBezelStyle)
              end
            end
          end
        end
      end
      widget.set_button_type(type)
      widget.set_title(NSString.string_with(""))
      widget.set_image_position(OS::NSImageLeft)
      widget.set_target(widget)
      widget.set_action(OS.attr_sel_send_selection)
      self.attr_view = widget
      __set_alignment(self.attr_style)
    end
    
    typesig { [] }
    def create_widget
      @text = ""
      super
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_button_font
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget((self.attr_view).cell)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      dragging = super(x, y, filter, consume)
      consume[0] = dragging
      return dragging
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    # long
    def draw_image_with_frame_in_view(id, sel, image, rect, view)
      # Feature in Cocoa.  Images touch the edge of rounded buttons
      # when set to small size. The fix to subclass the button cell
      # and offset the image drawing.
      if (self.attr_display.attr_small_fonts && !((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0) && ((self.attr_style & SWT::FLAT)).equal?(0))
        rect.attr_y += EXTRA_HEIGHT / 2
        rect.attr_height += EXTRA_HEIGHT
      end
      call_super(id, sel, image, rect, view)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def draw_interior_with_frame_in_view(id, sel, cell_rect, viewid)
      super(id, sel, cell_rect, viewid)
      if (!(@image).nil? && (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0)))
        image_size = @image.attr_handle.size
        ns_cell = NSCell.new(id)
        # double
        x = 0
        # double
        y = (image_size.attr_height - cell_rect.attr_height) / 2
        image_rect = ns_cell.image_rect_for_bounds(cell_rect)
        string_size = (self.attr_view).attributed_title.size
        case (self.attr_style & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))
        when SWT::LEFT
          x = image_rect.attr_x + image_rect.attr_width + IMAGE_GAP
        when SWT::CENTER
          x = cell_rect.attr_x + image_rect.attr_x + image_rect.attr_width + ((cell_rect.attr_width - string_size.attr_width) / 2) - image_size.attr_width - IMAGE_GAP
        when SWT::RIGHT
          x = cell_rect.attr_x + cell_rect.attr_width - string_size.attr_width - image_size.attr_width - IMAGE_GAP
        end
        dest_rect = NSRect.new
        dest_rect.attr_x = x
        dest_rect.attr_y = y
        dest_rect.attr_width = image_size.attr_width
        dest_rect.attr_height = image_size.attr_height
        NSGraphicsContext.static_save_graphics_state
        transform_ = NSAffineTransform.transform
        transform_.scale_xby(1, -1)
        transform_.translate_xby(0, -image_size.attr_height)
        transform_.concat
        @image.attr_handle.draw_in_rect(dest_rect, NSRect.new, OS::NSCompositeSourceOver, 1)
        NSGraphicsContext.static_restore_graphics_state
      end
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_widget(id, context, rect)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        frame_ = self.attr_view.frame
        arrow_size = Math.min(RJava.cast_to_int(frame_.attr_height), RJava.cast_to_int(frame_.attr_width)) / 2
        context.save_graphics_state
        p1 = NSPoint.new
        p1.attr_x = -arrow_size / 2
        p1.attr_y = -arrow_size / 2
        p2 = NSPoint.new
        p2.attr_x = arrow_size / 2
        p2.attr_y = p1.attr_y
        p3 = NSPoint.new
        p3.attr_y = arrow_size / 2
        path = NSBezierPath.bezier_path
        path.move_to_point(p1)
        path.line_to_point(p2)
        path.line_to_point(p3)
        path.close_path
        transform_ = NSAffineTransform.transform
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          transform_.rotate_by_degrees(90)
        else
          if (!((self.attr_style & SWT::UP)).equal?(0))
            transform_.rotate_by_degrees(180)
          else
            if (!((self.attr_style & SWT::RIGHT)).equal?(0))
              transform_.rotate_by_degrees(-90)
            end
          end
        end
        path.transform_using_affine_transform(transform_)
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(frame_.attr_width / 2, frame_.attr_height / 2)
        path.transform_using_affine_transform(transform_)
        color = is_enabled ? NSColor.black_color : NSColor.disabled_control_text_color
        color.set
        path.fill
        context.restore_graphics_state
      end
      super(id, context, rect)
    end
    
    typesig { [] }
    # Returns a value which describes the position of the
    # text or image in the receiver. The value will be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is an <code>ARROW</code> button, in
    # which case, the alignment will indicate the direction of
    # the arrow (one of <code>LEFT</code>, <code>RIGHT</code>,
    # <code>UP</code> or <code>DOWN</code>).
    # 
    # @return the alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_alignment
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (!((self.attr_style & SWT::UP)).equal?(0))
          return SWT::UP
        end
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          return SWT::DOWN
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          return SWT::LEFT
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          return SWT::RIGHT
        end
        return SWT::UP
      end
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        return SWT::LEFT
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        return SWT::CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        return SWT::RIGHT
      end
      return SWT::LEFT
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is grayed,
    # and false otherwise. When the widget does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_grayed
      check_widget
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @grayed
    end
    
    typesig { [] }
    # Returns the receiver's image if it has one, or null
    # if it does not.
    # 
    # @return the receiver's image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image
      check_widget
      return @image
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked. When it is of type <code>TOGGLE</code>,
    # it is selected when it is pushed in. If the receiver is of any other type,
    # this method returns false.
    # 
    # @return the selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO | SWT::TOGGLE))).equal?(0))
        return false
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0) && @grayed)
        return ((self.attr_view).state).equal?(OS::NSMixedState)
      end
      return ((self.attr_view).state).equal?(OS::NSOnState)
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set or if the receiver is
    # an <code>ARROW</code> button.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text
    end
    
    typesig { [] }
    def is_described_by_label
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Feature in Cocoa.  If a checkbox is in multi-state mode, nextState cycles from off to mixed to on and back to off again.
    # This will cause the on state to momentarily appear while clicking on the checkbox. To avoid this, we override [NSCell nextState]
    # to go directly to the desired state if we have a grayed checkbox.
    # 
    # long
    # long
    # long
    def next_state(id, sel)
      if (!((self.attr_style & SWT::CHECK)).equal?(0) && @grayed)
        return ((self.attr_view).state).equal?(OS::NSMixedState) ? OS::NSOffState : OS::NSMixedState
      end
      return super(id, sel)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget((self.attr_view).cell, self)
    end
    
    typesig { [] }
    def release_widget
      super
      @image = nil
      @text = RJava.cast_to_string(nil)
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
    def select_radio
      # This code is intentionally commented.  When two groups
      # of radio buttons with the same parent are separated by
      # another control, the correct behavior should be that
      # the two groups act independently.  This is consistent
      # with radio tool and menu items.  The commented code
      # implements this behavior.
      # 
      # int index = 0;
      # Control [] children = parent._getChildren ();
      # while (index < children.length && children [index] != this) index++;
      # int i = index - 1;
      # while (i >= 0 && children [i].setRadioSelection (false)) --i;
      # int j = index + 1;
      # while (j < children.length && children [j].setRadioSelection (false)) j++;
      # setSelection (true);
      children = self.attr_parent.__get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (!(self).equal?(child))
          child.set_radio_selection(false)
        end
        i += 1
      end
      set_selection(true)
    end
    
    typesig { [] }
    def send_selection
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((self.attr_parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        if (@grayed && ((self.attr_view).state).equal?(OS::NSOnState))
          (self.attr_view).set_state(OS::NSOffState)
        end
        if (!@grayed && ((self.attr_view).state).equal?(OS::NSMixedState))
          (self.attr_view).set_state(OS::NSOnState)
        end
      end
      post_event___org_eclipse_swt_widgets_button_3(SWT::Selection)
    end
    
    typesig { [::Java::Int] }
    # Controls how text, images and arrows will be displayed
    # in the receiver. The argument should be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is an <code>ARROW</code> button, in
    # which case, the argument indicates the direction of
    # the arrow (one of <code>LEFT</code>, <code>RIGHT</code>,
    # <code>UP</code> or <code>DOWN</code>).
    # 
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_alignment(alignment)
      check_widget
      __set_alignment(alignment)
      redraw
    end
    
    typesig { [::Java::Int] }
    def __set_alignment(alignment)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (((self.attr_style & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT))).equal?(0))
          return
        end
        self.attr_style &= ~(SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT)
        self.attr_style |= alignment & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT)
        # int orientation = OS.kThemeDisclosureRight;
        # if ((style & SWT.UP) != 0) orientation = OS.kThemeDisclosureUp;
        # if ((style & SWT.DOWN) != 0) orientation = OS.kThemeDisclosureDown;
        # if ((style & SWT.LEFT) != 0) orientation = OS.kThemeDisclosureLeft;
        # OS.SetControl32BitValue (handle, orientation);
        return
      end
      if (((alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))).equal?(0))
        return
      end
      self.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      self.attr_style |= alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      # text is still null when this is called from createHandle()
      if (!(@text).nil?)
        (self.attr_view).set_attributed_title(create_string)
      end
      # /* Alignment not honoured when image and text is visible */
      # boolean bothVisible = text != null && text.length () > 0 && image != null;
      # if (bothVisible) {
      # if ((style & (SWT.RADIO | SWT.CHECK)) != 0) alignment = SWT.LEFT;
      # if ((style & (SWT.PUSH | SWT.TOGGLE)) != 0) alignment = SWT.CENTER;
      # }
      # int textAlignment = 0;
      # int graphicAlignment = 0;
      # if ((alignment & SWT.LEFT) != 0) {
      # textAlignment = OS.kControlBevelButtonAlignTextFlushLeft;
      # graphicAlignment = OS.kControlBevelButtonAlignLeft;
      # }
      # if ((alignment & SWT.CENTER) != 0) {
      # textAlignment = OS.kControlBevelButtonAlignTextCenter;
      # graphicAlignment = OS.kControlBevelButtonAlignCenter;
      # }
      # if ((alignment & SWT.RIGHT) != 0) {
      # textAlignment = OS.kControlBevelButtonAlignTextFlushRight;
      # graphicAlignment = OS.kControlBevelButtonAlignRight;
      # }
      # OS.SetControlData (handle, OS.kControlEntireControl, OS.kControlBevelButtonTextAlignTag, 2, new short [] {(short)textAlignment});
      # OS.SetControlData (handle, OS.kControlEntireControl, OS.kControlBevelButtonGraphicAlignTag, 2, new short [] {(short)graphicAlignment});
      # if (bothVisible) {
      # OS.SetControlData (handle, OS.kControlEntireControl, OS.kControlBevelButtonTextPlaceTag, 2, new short [] {(short)OS.kControlBevelButtonPlaceToRightOfGraphic});
      # }
    end
    
    typesig { [] }
    def update_background
      ns_color = nil
      if (!(self.attr_background_image).nil?)
        ns_color = NSColor.color_with_pattern_image(self.attr_background_image.attr_handle)
      else
        if (!(self.attr_background).nil?)
          ns_color = NSColor.color_with_device_red(self.attr_background[0], self.attr_background[1], self.attr_background[2], self.attr_background[3])
        else
          return # TODO set to OS default
        end
      end
      cell = NSButtonCell.new((self.attr_view).cell)
      cell.set_background_color(ns_color)
    end
    
    typesig { [NSFont] }
    def set_font(font)
      if (!(@text).nil?)
        (self.attr_view).set_attributed_title(create_string)
      end
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      (self.attr_view).set_attributed_title(create_string)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the grayed state of the receiver.  This state change
    # only applies if the control was created with the SWT.CHECK
    # style.
    # 
    # @param grayed the new grayed state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_grayed(grayed)
      check_widget
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      checked = get_selection
      @grayed = grayed
      (self.attr_view).set_allows_mixed_state(grayed)
      if (checked)
        if (grayed)
          (self.attr_view).set_state(OS::NSMixedState)
        else
          (self.attr_view).set_state(OS::NSOnState)
        end
      end
    end
    
    typesig { [Image] }
    # Sets the receiver's image to the argument, which may be
    # <code>null</code> indicating that no image should be displayed.
    # <p>
    # Note that a Button can display an image and text simultaneously
    # on Windows (starting with XP), GTK+ and OSX.  On other platforms,
    # a Button that has an image and text set into it will display the
    # image or text that was set most recently.
    # </p>
    # @param image the image to display on the receiver (may be <code>null</code>)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      @image = image
      if (((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0))
        # Feature in Cocoa.  If the NSImage object being set into the button is
        # the same NSImage object that is already there then the button does not
        # redraw itself.  This results in the button's image not visually updating
        # if the NSImage object's content has changed since it was last set
        # into the button.  The workaround is to explicitly redraw the button.
        (self.attr_view).set_image(!(image).nil? ? image.attr_handle : nil)
        self.attr_view.set_needs_display(true)
      else
        (self.attr_view).set_attributed_title(create_string)
      end
      update_alignment
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        return false
      end
      if (!(get_selection).equal?(value))
        set_selection(value)
        post_event___org_eclipse_swt_widgets_button_5(SWT::Selection)
      end
      return true
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver, if it is of type <code>CHECK</code>,
    # <code>RADIO</code>, or <code>TOGGLE</code>.
    # 
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked. When it is of type <code>TOGGLE</code>,
    # it is selected when it is pushed in.
    # 
    # @param selected the new selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selected)
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO | SWT::TOGGLE))).equal?(0))
        return
      end
      if (@grayed)
        (self.attr_view).set_state(selected ? OS::NSMixedState : OS::NSOffState)
      else
        (self.attr_view).set_state(selected ? OS::NSOnState : OS::NSOffState)
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # This method sets the button label.  The label may include
    # the mnemonic character but must not contain line delimiters.
    # </p>
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, a selection
    # event occurs. On most platforms, the mnemonic appears
    # underlined but may be emphasized in a platform specific
    # manner.  The mnemonic indicator character '&amp;' can be
    # escaped by doubling it in the string, causing a single
    # '&amp;' to be displayed.
    # </p><p>
    # Note that a Button can display an image and text simultaneously
    # on Windows (starting with XP), GTK+ and OSX.  On other platforms,
    # a Button that has an image and text set into it will display the
    # image or text that was set most recently.
    # </p>
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
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      @text = string
      (self.attr_view).set_attributed_title(create_string)
      update_alignment
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def title_rect_for_bounds(id, sel, cell_frame)
      rect = super(id, sel, cell_frame)
      if (!(@image).nil? && (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0)))
        image_size = @image.attr_handle.size
        rect.attr_x += image_size.attr_width + IMAGE_GAP
        rect.attr_width -= (image_size.attr_width + IMAGE_GAP)
        rect.attr_width = Math.max(0, rect.attr_width)
      end
      return rect
    end
    
    typesig { [::Java::Int, NSEvent] }
    def traversal_code(key, the_event)
      code = super(key, the_event)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        code &= ~(SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS)
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        code |= SWT::TRAVERSE_ARROW_NEXT | SWT::TRAVERSE_ARROW_PREVIOUS
      end
      return code
    end
    
    typesig { [] }
    def update_alignment
      widget = self.attr_view
      if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
        if (!(@text.length).equal?(0) && !(@image).nil?)
          widget.set_image_position(OS::NSImageLeft)
        else
          widget.set_image_position(!(@text.length).equal?(0) ? OS::NSNoImage : OS::NSImageOnly)
        end
      end
    end
    
    private
    alias_method :initialize__button, :initialize
  end
  
end
