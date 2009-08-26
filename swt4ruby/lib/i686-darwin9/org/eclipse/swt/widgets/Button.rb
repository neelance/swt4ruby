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
  module ButtonImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Graphics, :Point
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
      include ::Org::Eclipse::Swt::Internal::Carbon
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
    
    attr_accessor :c_icon
    alias_method :attr_c_icon, :c_icon
    undef_method :c_icon
    alias_method :attr_c_icon=, :c_icon=
    undef_method :c_icon=
    
    attr_accessor :is_image
    alias_method :attr_is_image, :is_image
    undef_method :is_image
    alias_method :attr_is_image=, :is_image=
    undef_method :is_image=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
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
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text = nil
      @image = nil
      @c_icon = 0
      @is_image = false
      @grayed = false
      super(parent, check_style(style))
      @text = ""
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
      post_event(SWT::Selection)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def call_paint_event_handler(control, damage_rgn, visible_rgn, the_event, next_handler)
      context = nil
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        invert = false
        if (OS::VERSION < 0x1050)
          invert = !((self.attr_style & SWT::UP)).equal?(0)
        else
          invert = !((self.attr_style & SWT::UP)).equal?(0) || !((self.attr_style & SWT::LEFT)).equal?(0)
        end
        if (invert)
          context = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, context)
          OS._cgcontext_save_gstate(context[0])
          rect = CGRect.new
          OS._hiview_get_bounds(self.attr_handle, rect)
          OS._cgcontext_rotate_ctm(context[0], (Compatibility.attr_pi).to_f)
          OS._cgcontext_translate_ctm(context[0], -rect.attr_width, -rect.attr_height)
        end
      end
      result = super(control, damage_rgn, visible_rgn, the_event, next_handler)
      if (!(context).nil?)
        OS._cgcontext_restore_gstate(context[0])
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      # NEEDS WORK - empty string
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_triangle_height, out_metric)
        width = out_metric[0]
        height = out_metric[0]
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        return Point.new(width, height)
      end
      width = 0
      height = 0
      if (@is_image && !(@image).nil?)
        bounds = @image.get_bounds
        width = bounds.attr_width
        height = bounds.attr_height
      end
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS._copy_control_title_as_cfstring(self.attr_handle, ptr)
      if (!(ptr[0]).equal?(0))
        size = text_extent(ptr[0], 0)
        width += size.attr_x
        height = Math.max(height, size.attr_y)
        OS._cfrelease(ptr[0])
        if (!(@image).nil? && @is_image)
          width += 3
        end
      else
        if ((@image).nil?)
          width = DEFAULT_WIDTH
          height = DEFAULT_HEIGHT
        end
      end
      if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        metric = (!((self.attr_style & SWT::CHECK)).equal?(0)) ? OS.attr_k_theme_metric_check_box_width : OS.attr_k_theme_metric_radio_button_width
        OS._get_theme_metric(metric, out_metric)
        width += out_metric[0] + 3 # +3 for gap between button and text/image
        height = Math.max(out_metric[0], height)
      else
        if (!((self.attr_style & SWT::FLAT)).equal?(0) || !((self.attr_style & SWT::TOGGLE)).equal?(0))
          width += 8
          height += 8
        else
          width += 28
          out_metric = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_theme_metric(OS.attr_k_theme_metric_push_button_height, out_metric)
          height = Math.max(height, out_metric[0])
        end
      end
      inset = get_inset
      width += inset.attr_left + inset.attr_right
      height += inset.attr_top + inset.attr_bottom
      # Feature in Mac OS X. Setting the width of a bevel button
      # widget to less than 20 will fail.  This means you can not
      # make a button very small.  By forcing the width to be greater
      # than or equal to 20, the height of the button can be made
      # very small, even 0.
      width = Math.max(20, width)
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
      if (((self.attr_style & SWT::PUSH)).equal?(0))
        self.attr_state |= THEME_BACKGROUND
      end
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        orientation = OS.attr_k_theme_disclosure_right
        if (!((self.attr_style & SWT::UP)).equal?(0))
          orientation = OS.attr_k_theme_disclosure_down
        end
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          orientation = OS.attr_k_theme_disclosure_down
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          orientation = OS.attr_k_theme_disclosure_left
        end
        OS._create_bevel_button_control(window, nil, 0, RJava.cast_to_short(0), RJava.cast_to_short(OS.attr_k_control_behavior_pushbutton), 0, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(0), out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_kind_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short((OS.attr_k_theme_disclosure_button))]))
        OS._set_control32bit_maximum(self.attr_handle, 2)
        OS._set_control32bit_value(self.attr_handle, orientation)
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        # OS.CreateCheckBoxControl (window, null, 0, 0 /*initially off*/, true, outControl);
        OS._create_bevel_button_control(window, nil, 0, RJava.cast_to_short(0), RJava.cast_to_short(OS.attr_k_control_behavior_toggles), 0, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(0), out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_kind_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_theme_check_box)]))
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        # OS.CreateRadioButtonControl(window, null, 0, 0 /*initially off*/, true, outControl);
        OS._create_bevel_button_control(window, nil, 0, RJava.cast_to_short(0), RJava.cast_to_short(OS.attr_k_control_behavior_toggles), 0, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(0), out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_kind_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_theme_radio_button)]))
      end
      if (!((self.attr_style & SWT::TOGGLE)).equal?(0))
        OS._create_bevel_button_control(window, nil, 0, RJava.cast_to_short(OS.attr_k_control_bevel_button_normal_bevel), RJava.cast_to_short(OS.attr_k_control_behavior_toggles), 0, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(0), out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        if (((self.attr_style & SWT::FLAT)).equal?(0))
          OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_kind_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_theme_rounded_bevel_button)]))
        end
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        if (!((self.attr_style & SWT::FLAT)).equal?(0))
          OS._create_bevel_button_control(window, nil, 0, RJava.cast_to_short(2), RJava.cast_to_short(OS.attr_k_control_behavior_pushbutton), 0, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(0), out_control)
        else
          OS._create_push_button_control(window, nil, 0, out_control)
          # OS.CreateBevelButtonControl(window, null, 0, (short)2, (short)OS.kControlBehaviorPushbutton, 0, (short)0, (short)0, (short)0, outControl);
        end
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = out_control[0]
        if (((self.attr_style & SWT::FLAT)).equal?(0))
          OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_kind_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_theme_push_button)]))
        end
      end
      font_rec = ControlFontStyleRec.new
      font_rec.attr_flags = RJava.cast_to_short(OS.attr_k_control_use_theme_font_idmask)
      font_rec.attr_font = RJava.cast_to_short(default_theme_font)
      OS._set_control_font_style(self.attr_handle, font_rec)
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      __set_alignment(self.attr_style & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))
    end
    
    typesig { [] }
    def default_theme_font
      if (self.attr_display.attr_small_fonts)
        return OS.attr_k_theme_small_system_font
      end
      return OS.attr_k_theme_push_button_font
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      if (OS::VERSION < 0x1040 && @is_image && !(@image).nil? && !((self.attr_style & SWT::PUSH)).equal?(0) && ((self.attr_style & SWT::FLAT)).equal?(0))
        bounds = Rect.new
        content = Rect.new
        OS._get_control_bounds(self.attr_handle, bounds)
        draw_info = ThemeButtonDrawInfo.new
        if (OS._is_control_enabled(self.attr_handle))
          draw_info.attr_state = OS._is_control_active(self.attr_handle) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_inactive
        else
          draw_info.attr_state = OS._is_control_active(self.attr_handle) ? OS.attr_k_theme_state_unavailable : OS.attr_k_theme_state_unavailable_inactive
        end
        draw_info.attr_adornment = OS.attr_k_theme_adornment_default
        OS._get_theme_button_content_bounds(bounds, OS.attr_k_theme_push_button, draw_info, content)
        width = (@image).nil? ? 0 : OS._cgimage_get_width(@image.attr_handle)
        height = (@image).nil? ? 0 : OS._cgimage_get_height(@image.attr_handle)
        x = (bounds.attr_right - bounds.attr_left - width) / 2
        y = (content.attr_bottom - content.attr_top - height) / 2
        data = SwtGCData.new
        data.attr_paint_event = the_event
        data.attr_visible_rgn = visible_rgn
        gc = SwtGC.carbon_new(self, data)
        gc.draw_image(@image, x, y)
        gc.dispose
      end
      super(control, context, damage_rgn, visible_rgn, the_event)
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
      return !(OS._get_control32bit_value(self.attr_handle)).equal?(0)
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
    def get_inset
      if (((self.attr_style & SWT::PUSH)).equal?(0))
        return super
      end
      return self.attr_display.attr_button_inset
    end
    
    typesig { [] }
    def is_described_by_label
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
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
          role_text = OS.attr_k_axradio_button_role
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
        end
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((self.attr_parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      else
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          if (@grayed)
            case (OS._get_control32bit_value(self.attr_handle))
            when 0
              OS._set_control32bit_maximum(self.attr_handle, 2)
              OS._set_control32bit_value(self.attr_handle, 2)
            when 1, 2
              OS._set_control32bit_maximum(self.attr_handle, 0)
              OS._set_control32bit_value(self.attr_handle, 0)
            end
          end
        end
      end
      post_event(SWT::Selection)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@c_icon).equal?(0))
        destroy_cicon(@c_icon)
        @c_icon = 0
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
        orientation = OS.attr_k_theme_disclosure_right
        if (!((self.attr_style & SWT::UP)).equal?(0))
          orientation = OS.attr_k_theme_disclosure_down
        end
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          orientation = OS.attr_k_theme_disclosure_down
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          orientation = OS.attr_k_theme_disclosure_left
        end
        OS._set_control32bit_value(self.attr_handle, orientation)
        return
      end
      if (((alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))).equal?(0))
        return
      end
      self.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      self.attr_style |= alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      # Alignment not honoured when image and text is visible
      both_visible = !(@text).nil? && @text.length > 0 && !(@image).nil?
      if (both_visible)
        if (!((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0))
          alignment = SWT::LEFT
        end
        if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
          alignment = SWT::CENTER
        end
      end
      text_alignment = 0
      graphic_alignment = 0
      if (!((alignment & SWT::LEFT)).equal?(0))
        text_alignment = OS.attr_k_control_bevel_button_align_text_flush_left
        graphic_alignment = OS.attr_k_control_bevel_button_align_left
      end
      if (!((alignment & SWT::CENTER)).equal?(0))
        text_alignment = OS.attr_k_control_bevel_button_align_text_center
        graphic_alignment = OS.attr_k_control_bevel_button_align_center
      end
      if (!((alignment & SWT::RIGHT)).equal?(0))
        text_alignment = OS.attr_k_control_bevel_button_align_text_flush_right
        graphic_alignment = OS.attr_k_control_bevel_button_align_right
      end
      OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_text_align_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(text_alignment)]))
      OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_graphic_align_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(graphic_alignment)]))
      if (both_visible)
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_bevel_button_text_place_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_control_bevel_button_place_to_right_of_graphic)]))
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      # Bug in MacOS X. When setting the height of a bevel button
      # to a value less than 20, the button is drawn incorrectly.
      # The fix is to force the height to be greater than or equal to 20.
      if (resize && ((self.attr_style & SWT::ARROW)).equal?(0))
        height = Math.max(20, height)
      end
      return super(x, y, width, height, move, resize, events)
    end
    
    typesig { [::Java::Boolean] }
    def set_default(value)
      if (((self.attr_style & SWT::PUSH)).equal?(0))
        return
      end
      window = OS._get_control_owner(self.attr_handle)
      OS._set_window_default_button(window, value ? self.attr_handle : 0)
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
      @grayed = grayed
      if (grayed)
        if (!(OS._get_control32bit_value(self.attr_handle)).equal?(0))
          OS._set_control32bit_maximum(self.attr_handle, 2)
          OS._set_control32bit_value(self.attr_handle, 2)
        else
          OS._set_control32bit_maximum(self.attr_handle, 0)
          OS._set_control32bit_value(self.attr_handle, 0)
        end
      else
        if (!(OS._get_control32bit_value(self.attr_handle)).equal?(0))
          OS._set_control32bit_value(self.attr_handle, 1)
        end
        OS._set_control32bit_maximum(self.attr_handle, 1)
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
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@c_icon).equal?(0))
        destroy_cicon(@c_icon)
        @c_icon = 0
      end
      @image = image
      @is_image = true
      if (OS::VERSION < 0x1040)
        if (!((self.attr_style & SWT::PUSH)).equal?(0) && ((self.attr_style & SWT::FLAT)).equal?(0))
          if ((image).nil?)
            set_text(@text)
            return
          end
          if (@text.length > 0)
            ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, nil, 0)
            if ((ptr).equal?(0))
              error(SWT::ERROR_CANNOT_SET_TEXT)
            end
            OS._set_control_title_with_cfstring(self.attr_handle, ptr)
            OS._cfrelease(ptr)
          end
        end
      end
      in_content = ControlButtonContentInfo.new
      if (!(image).nil?)
        if (OS::VERSION < 0x1040)
          @c_icon = create_cicon(image)
          in_content.attr_content_type = RJava.cast_to_short(OS.attr_k_control_content_cicon_handle)
          in_content.attr_icon_ref = @c_icon
        else
          in_content.attr_content_type = RJava.cast_to_short(OS.attr_k_control_content_cgimage_ref)
          in_content.attr_icon_ref = image.attr_handle
        end
      else
        in_content.attr_content_type = RJava.cast_to_short(OS.attr_k_control_content_text_only)
      end
      OS._set_bevel_button_content_info(self.attr_handle, in_content)
      __set_alignment(self.attr_style)
      redraw
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
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        if (@grayed)
          if (selected)
            OS._set_control32bit_maximum(self.attr_handle, 2)
            OS._set_control32bit_value(self.attr_handle, 2)
          else
            OS._set_control32bit_maximum(self.attr_handle, 0)
            OS._set_control32bit_value(self.attr_handle, 0)
          end
          return
        end
        OS._set_control32bit_maximum(self.attr_handle, 1)
      end
      OS._set_control32bit_value(self.attr_handle, selected ? 1 : 0)
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
      if (OS::VERSION < 0x1040)
        if (!((self.attr_style & SWT::PUSH)).equal?(0) && ((self.attr_style & SWT::FLAT)).equal?(0))
          if (@is_image)
            in_content = ControlButtonContentInfo.new
            in_content.attr_content_type = RJava.cast_to_short(OS.attr_k_control_content_text_only)
            OS._set_bevel_button_content_info(self.attr_handle, in_content)
          end
          @is_image = false
        end
      end
      buffer = CharArray.new(@text.length)
      @text.get_chars(0, buffer.attr_length, buffer, 0)
      length_ = fix_mnemonic(buffer)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
      if ((ptr).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_control_title_with_cfstring(self.attr_handle, ptr)
      OS._cfrelease(ptr)
      __set_alignment(self.attr_style)
      redraw
    end
    
    typesig { [::Java::Int, ::Java::Int] }
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
    
    private
    alias_method :initialize__button, :initialize
  end
  
end
