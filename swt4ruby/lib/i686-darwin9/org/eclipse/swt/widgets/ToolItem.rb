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
  module ToolItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlButtonContentInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlFontStyleRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HMHelpContentRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeSeparatorDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemePopupArrowDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTextInfo
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
  class ToolItem < ToolItemImports.const_get :Item
    include_class_members ToolItemImports
    
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :icon_handle
    alias_method :attr_icon_handle, :icon_handle
    undef_method :icon_handle
    alias_method :attr_icon_handle=, :icon_handle=
    undef_method :icon_handle=
    
    attr_accessor :label_handle
    alias_method :attr_label_handle, :label_handle
    undef_method :label_handle
    alias_method :attr_label_handle=, :label_handle=
    undef_method :label_handle=
    
    attr_accessor :c_icon
    alias_method :attr_c_icon, :c_icon
    undef_method :c_icon
    alias_method :attr_c_icon=, :c_icon=
    undef_method :c_icon=
    
    attr_accessor :visible_rgn
    alias_method :attr_visible_rgn, :visible_rgn
    undef_method :visible_rgn
    alias_method :attr_visible_rgn=, :visible_rgn=
    undef_method :visible_rgn=
    
    attr_accessor :part_code
    alias_method :attr_part_code, :part_code
    undef_method :part_code
    alias_method :attr_part_code=, :part_code=
    undef_method :part_code=
    
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
      
      const_set_lazy(:ARROW_WIDTH) { 9 }
      const_attr_reader  :ARROW_WIDTH
      
      const_set_lazy(:INSET) { 3 }
      const_attr_reader  :INSET
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axdescription_attribute, OS.attr_k_axtitle_attribute, OS.attr_k_axvalue_attribute, ]) }
      const_attr_reader  :AX_ATTRIBUTES
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
      @handle = 0
      @icon_handle = 0
      @label_handle = 0
      @c_icon = 0
      @visible_rgn = 0
      @part_code = 0
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
      @handle = 0
      @icon_handle = 0
      @label_handle = 0
      @c_icon = 0
      @visible_rgn = 0
      @part_code = 0
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def action_proc(the_control, part_code)
      result = @parent.action_proc(the_control, part_code)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (is_disposed)
        return OS.attr_no_err
      end
      @part_code = part_code
      if (self.attr_text.length > 0 && (the_control).equal?(@label_handle))
        if (!(self.attr_image).nil? && !(@icon_handle).equal?(0))
          transform = !(part_code).equal?(0) ? OS.attr_k_transform_selected : 0
          OS._set_control_data(@icon_handle, OS.attr_k_control_entire_control, OS.attr_k_control_icon_transform_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(transform)]))
          redraw_widget(@icon_handle, false)
        end
        redraw_widget(@label_handle, false)
      end
      if (!(self.attr_image).nil? && (the_control).equal?(@icon_handle))
        redraw_widget(@label_handle, false)
      end
      if ((the_control).equal?(@handle))
        if (!(self.attr_image).nil? && !(@icon_handle).equal?(0))
          transform = !(part_code).equal?(0) ? OS.attr_k_transform_selected : 0
          OS._set_control_data(@icon_handle, OS.attr_k_control_entire_control, OS.attr_k_control_icon_transform_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(transform)]))
          redraw_widget(@icon_handle, false)
        end
        if (!(@label_handle).equal?(0))
          redraw_widget(@label_handle, false)
        end
      end
      return result
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def call_paint_event_handler(control, damage_rgn, visible_rgn, the_event, next_handler)
      if ((control).equal?(@label_handle) && (!(@part_code).equal?(0) || (!((self.attr_state & DISABLED)).equal?(0) && OS::VERSION >= 0x1040)))
        info = HIThemeTextInfo.new
        if (!(@part_code).equal?(0))
          info.attr_state = OS.attr_k_theme_state_pressed
        else
          if (OS._is_control_active(@label_handle))
            info.attr_state = ((self.attr_state & DISABLED)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_unavailable
          else
            info.attr_state = ((self.attr_state & DISABLED)).equal?(0) ? OS.attr_k_theme_state_inactive : OS.attr_k_theme_state_unavailable_inactive
          end
        end
        font = @parent.attr_font
        if (!(font).nil?)
          family = Array.typed(::Java::Short).new(1) { 0 }
          style = Array.typed(::Java::Short).new(1) { 0 }
          OS._fmget_font_family_instance_from_font(font.attr_handle, family, style)
          OS._text_font(family[0])
          OS._text_face(RJava.cast_to_short((style[0] | font.attr_style)))
          OS._text_size(RJava.cast_to_short(font.attr_size))
          info.attr_font_id = RJava.cast_to_short(OS.attr_k_theme_current_port_font)
        else
          info.attr_font_id = RJava.cast_to_short(@parent.default_theme_font)
        end
        rect = CGRect.new
        OS._hiview_get_bounds(@label_handle, rect)
        context = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, context)
        if (!((self.attr_state & DISABLED)).equal?(0) && OS::VERSION >= 0x1040)
          OS._hitheme_set_text_fill(OS.attr_k_theme_text_color_menu_item_disabled, 0, context[0], OS.attr_k_hitheme_orientation_normal)
        else
          colorspace = OS._cgcolor_space_create_device_rgb
          OS._cgcontext_set_fill_color_space(context[0], colorspace)
          OS._cgcolor_space_release(colorspace)
          OS._cgcontext_set_fill_color(context[0], @parent.get_foreground_color.attr_handle)
        end
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_control_data(@label_handle, RJava.cast_to_short(0), OS.attr_k_control_static_text_cfstring_tag, 4, ptr, nil)
        OS._hitheme_draw_text_box(ptr[0], rect, info, context[0], OS.attr_k_hitheme_orientation_normal)
        OS._cfrelease(ptr[0])
        return OS.attr_no_err
      end
      if ((control).equal?(@icon_handle) && OS::VERSION >= 0x1040)
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
        if (!(image).nil?)
          image_handle = image.attr_handle
          alpha_info = OS._cgimage_get_alpha_info(image_handle)
          if ((alpha_info).equal?(OS.attr_k_cgimage_alpha_first))
            buffer = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, buffer)
            context = buffer[0]
            rect = CGRect.new
            OS._hiview_get_bounds(@icon_handle, rect)
            if (!(@part_code).equal?(0))
              OS._hicreate_transformed_cgimage(image_handle, OS.attr_k_hitransform_selected, buffer)
              image_handle = buffer[0]
            else
              if (!((self.attr_state & DISABLED)).equal?(0))
                OS._hicreate_transformed_cgimage(image_handle, OS.attr_k_hitransform_disabled, buffer)
                image_handle = buffer[0]
              end
            end
            OS._hiview_draw_cgimage(context, rect, image_handle)
            if (!(image_handle).equal?(image.attr_handle))
              OS._cgimage_release(image_handle)
            end
            return OS.attr_no_err
          end
        end
      end
      return super(control, damage_rgn, visible_rgn, the_event, next_handler)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def color_proc(in_control, in_message, in_draw_depth, in_draw_in_color)
      case (in_message)
      when OS.attr_k_control_msg_apply_text_color
        if (!(@parent.attr_foreground).nil?)
          OS._rgbfore_color(to_rgbcolor(@parent.attr_foreground))
        else
          OS._set_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_dialog_active), RJava.cast_to_short(in_draw_depth), !(in_draw_in_color).equal?(0))
        end
        return OS.attr_no_err
      when OS.attr_k_control_msg_set_up_background
        background = !(@parent.attr_background).nil? ? @parent.attr_background : @parent.get_parent_background
        if (!(background).nil?)
          OS._rgbback_color(to_rgbcolor(background))
        else
          OS._set_theme_background(RJava.cast_to_short(OS.attr_k_theme_brush_dialog_background_active), RJava.cast_to_short(in_draw_depth), !(in_draw_in_color).equal?(0))
        end
        return OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [] }
    def compute_size
      # checkWidget();
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
        space = 0
        if (!(self.attr_text.length).equal?(0) || !(self.attr_image).nil?)
          string_width = 0
          string_height = 0
          if (!(self.attr_text.length).equal?(0))
            size = text_extent
            string_width = size.attr_x
            string_height = size.attr_y
          end
          image_width = 0
          image_height = 0
          if (!(self.attr_image).nil?)
            if (!(self.attr_text.length).equal?(0))
              space = 2
            end
            rect = self.attr_image.get_bounds
            image_width = rect.attr_width
            image_height = rect.attr_height
          end
          if (!((@parent.attr_style & SWT::RIGHT)).equal?(0))
            width = string_width + image_width + space
            height = Math.max(string_height, image_height)
          else
            width = Math.max(string_width, image_width)
            height = string_height + image_height + space
          end
        else
          width = DEFAULT_WIDTH
          height = DEFAULT_HEIGHT
        end
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          width += ARROW_WIDTH
        end
        width += INSET * 2
        height += INSET * 2
      end
      return Point.new(width, height)
    end
    
    typesig { [Array.typed(String), String] }
    def contains(array, element)
      i = 0
      while i < array.attr_length
        if ((array[i] == element))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [] }
    def create_handle
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(@parent.attr_handle)
      features = OS.attr_k_control_supports_embedding | OS.attr_k_control_wants_activate
      OS._create_user_pane_control(window, nil, features, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @handle = out_control[0]
      OS._hiobject_set_accessibility_ignored(@handle, true)
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        in_content = ControlButtonContentInfo.new
        OS._create_icon_control(window, nil, in_content, false, out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @icon_handle = out_control[0]
        OS._hiobject_set_accessibility_ignored(@icon_handle, true)
        font_style = ControlFontStyleRec.new
        font = @parent.attr_font
        if (!(font).nil?)
          family = Array.typed(::Java::Short).new(1) { 0 }
          style = Array.typed(::Java::Short).new(1) { 0 }
          OS._fmget_font_family_instance_from_font(font.attr_handle, family, style)
          font_style.attr_flags |= OS.attr_k_control_use_font_mask | OS.attr_k_control_use_size_mask | OS.attr_k_control_use_face_mask
          font_style.attr_font = family[0]
          font_style.attr_style = RJava.cast_to_short((style[0] | font.attr_style))
          font_style.attr_size = RJava.cast_to_short(font.attr_size)
        else
          font_style.attr_flags = RJava.cast_to_short(OS.attr_k_control_use_theme_font_idmask)
          font_style.attr_font = RJava.cast_to_short(@parent.default_theme_font)
        end
        OS._create_static_text_control(window, nil, 0, font_style, out_control)
        if ((out_control[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @label_handle = out_control[0]
        OS._hiobject_set_accessibility_ignored(@label_handle, true)
      end
    end
    
    typesig { [] }
    def create_widget
      super
      set_zorder
      @tool_tip_text = ""
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@handle)
      if (!(@icon_handle).equal?(0))
        self.attr_display.remove_widget(@icon_handle)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.remove_widget(@label_handle)
      end
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      the_control = @handle
      release_handle
      if (!(the_control).equal?(0))
        OS._dispose_control(the_control)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      if ((control).equal?(@handle) && get_selection)
        rect = CGRect.new
        OS._hiview_get_bounds(@handle, rect)
        OS._cgcontext_save_gstate(context)
        OS._cgcontext_set_fill_color(context, Array.typed(::Java::Float).new([0.1, 0.1, 0.1, 0.1]))
        OS._cgcontext_fill_rect(context, rect)
        OS._cgcontext_set_stroke_color(context, Array.typed(::Java::Float).new([0.2, 0.2, 0.2, 0.2]))
        rect.attr_x += 0.5
        rect.attr_y += 0.5
        rect.attr_width -= 1
        rect.attr_height -= 1
        OS._cgcontext_stroke_rect(context, rect)
        OS._cgcontext_restore_gstate(context)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      if ((control).equal?(@handle) && !((self.attr_style & (SWT::DROP_DOWN | SWT::SEPARATOR))).equal?(0))
        state = 0
        if (OS._is_control_enabled(control))
          state = OS._is_control_active(control) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_inactive
        else
          state = OS._is_control_active(control) ? OS.attr_k_theme_state_unavailable : OS.attr_k_theme_state_unavailable_inactive
        end
        rect = CGRect.new
        OS._hiview_get_bounds(@handle, rect)
        if (!((self.attr_style & SWT::SEPARATOR)).equal?(0) && (@control).nil?)
          rect.attr_y += 2
          rect.attr_height -= 4
          info = HIThemeSeparatorDrawInfo.new
          info.attr_state = state
          OS._hitheme_draw_separator(rect, info, context, OS.attr_k_hitheme_orientation_normal)
        end
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          rect.attr_y = rect.attr_height / 2 - 1
          rect.attr_x = rect.attr_width - ARROW_WIDTH
          info = HIThemePopupArrowDrawInfo.new
          info.attr_state = state
          info.attr_orientation = RJava.cast_to_short(OS.attr_k_theme_arrow_down)
          info.attr_size = RJava.cast_to_short(OS.attr_k_theme_arrow5pt)
          OS._hitheme_draw_popup_arrow(rect, info, context, OS.attr_k_hitheme_orientation_normal)
        end
      end
    end
    
    typesig { [] }
    def get_ax_attributes
      return AX_ATTRIBUTES
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
      return get_control_bounds(@handle)
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
    
    typesig { [::Java::Int] }
    def get_draw_count(control)
      return @parent.get_draw_count(control)
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
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_visible_region(control, clip_children)
      if ((@visible_rgn).equal?(0))
        @visible_rgn = OS._new_rgn
        calculate_visible_region(control, @visible_rgn, false)
      end
      result = OS._new_rgn
      OS._copy_rgn(@visible_rgn, result)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
      if ((@parent.attr_tool_tip_text).nil?)
        case (in_request)
        when OS.attr_k_hmsupply_content
          content_provided = Array.typed(::Java::Short).new([OS.attr_k_hmcontent_not_provided])
          if (!(@tool_tip_text).nil? && !(@tool_tip_text.length).equal?(0))
            buffer = CharArray.new(@tool_tip_text.length)
            @tool_tip_text.get_chars(0, buffer.attr_length, buffer, 0)
            length_ = fix_mnemonic(buffer)
            if (!(self.attr_display.attr_help_string).equal?(0))
              OS._cfrelease(self.attr_display.attr_help_string)
            end
            self.attr_display.attr_help_string = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
            help_content = HMHelpContentRec.new
            OS.memmove(help_content, io_help_content, HMHelpContentRec.attr_sizeof)
            help_content.attr_version = OS.attr_k_mac_help_version
            help_content.attr_tag_side = RJava.cast_to_short(OS.attr_k_hmdefault_side)
            self.attr_display.attr_help_widget = nil
            help_content.attr_abs_hot_rect_left = RJava.cast_to_short(0)
            help_content.attr_abs_hot_rect_top = RJava.cast_to_short(0)
            help_content.attr_abs_hot_rect_right = RJava.cast_to_short(0)
            help_content.attr_abs_hot_rect_bottom = RJava.cast_to_short(0)
            help_content.attr_content0_content_type = OS.attr_k_hmcfstring_content
            help_content.attr_content0_tag_cfstring = self.attr_display.attr_help_string
            help_content.attr_content1_content_type = OS.attr_k_hmcfstring_content
            help_content.attr_content1_tag_cfstring = self.attr_display.attr_help_string
            OS.memmove(io_help_content, help_content, HMHelpContentRec.attr_sizeof)
            content_provided[0] = OS.attr_k_hmcontent_provided
          end
          OS.memmove(out_content_provided, content_provided, 2)
        when OS.attr_k_hmdispose_content
          if (!(self.attr_display.attr_help_string).equal?(0))
            OS._cfrelease(self.attr_display.attr_help_string)
          end
          self.attr_display.attr_help_widget = nil
          self.attr_display.attr_help_string = 0
        end
        return OS.attr_no_err
      end
      return @parent.help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
    end
    
    typesig { [] }
    def hook_events
      super
      control_proc = self.attr_display.attr_control_proc
      color_proc = self.attr_display.attr_color_proc
      mask1 = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_draw, OS.attr_k_event_class_control, OS.attr_k_event_control_hit, OS.attr_k_event_class_control, OS.attr_k_event_control_hit_test, OS.attr_k_event_class_control, OS.attr_k_event_control_track, ])
      control_target = OS._get_control_event_target(@handle)
      OS._install_event_handler(control_target, control_proc, mask1.attr_length / 2, mask1, @handle, nil)
      mask2 = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_draw, OS.attr_k_event_class_control, OS.attr_k_event_control_hit_test, OS.attr_k_event_class_control, OS.attr_k_event_control_track, OS.attr_k_event_class_control, OS.attr_k_event_control_get_click_activation, ])
      accessibility_proc = self.attr_display.attr_accessibility_proc
      mask3 = Array.typed(::Java::Int).new([OS.attr_k_event_class_accessibility, OS.attr_k_event_accessible_get_all_attribute_names, OS.attr_k_event_class_accessibility, OS.attr_k_event_accessible_get_named_attribute, ])
      if (!(@icon_handle).equal?(0))
        control_target = OS._get_control_event_target(@icon_handle)
        OS._install_event_handler(control_target, control_proc, mask2.attr_length / 2, mask2, @icon_handle, nil)
        OS._set_control_color_proc(@icon_handle, color_proc)
        OS._set_control_action(@icon_handle, self.attr_display.attr_action_proc)
        OS._install_event_handler(control_target, accessibility_proc, mask3.attr_length / 2, mask3, @icon_handle, nil)
      end
      if (!(@label_handle).equal?(0))
        control_target = OS._get_control_event_target(@label_handle)
        OS._install_event_handler(control_target, control_proc, mask2.attr_length / 2, mask2, @label_handle, nil)
        OS._set_control_color_proc(@label_handle, color_proc)
        OS._set_control_action(@label_handle, self.attr_display.attr_action_proc)
      end
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        OS._set_control_action(@handle, self.attr_display.attr_action_proc)
      end
      help_proc_ = self.attr_display.attr_help_proc
      OS._hminstall_control_content_callback(@handle, help_proc_)
      OS._set_control_color_proc(@handle, color_proc)
    end
    
    typesig { [::Java::Int] }
    def invalidate_visible_region(control)
      reset_visible_region(control)
      @parent.reset_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def inval_window_rgn(window, rgn)
      @parent.inval_window_rgn(window, rgn)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_all_attribute_names(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      attributes = get_ax_attributes
      if (!(attributes).nil?)
        OS._call_next_event_handler(next_handler, the_event)
        array_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_names, OS.attr_type_cfmutable_array_ref, nil, 4, nil, array_ref)
        attributes_array_ref = array_ref[0]
        length_ = OS._cfarray_get_count(attributes_array_ref)
        os_attributes = Array.typed(String).new(length_) { nil }
        i = 0
        while i < length_
          string_ref = OS._cfarray_get_value_at_index(attributes_array_ref, i)
          str_length = OS._cfstring_get_length(string_ref)
          buffer = CharArray.new(str_length)
          range = CFRange.new
          range.attr_length = str_length
          OS._cfstring_get_characters(string_ref, range, buffer)
          os_attributes[i] = String.new(buffer)
          i += 1
        end
        i_ = 0
        while i_ < attributes.attr_length
          if (!contains(os_attributes, attributes[i_]))
            string = attributes[i_]
            buffer = CharArray.new(string.length)
            string.get_chars(0, buffer.attr_length, buffer, 0)
            string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
            OS._cfarray_append_value(attributes_array_ref, string_ref)
            OS._cfrelease(string_ref)
          end
          i_ += 1
        end
        code = OS.attr_no_err
      end
      if (!(@parent.attr_accessible).nil?)
        code = @parent.attr_accessible.internal_k_event_accessible_get_all_attribute_names(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
      length_ = 0
      if (!(string_ref[0]).equal?(0))
        length_ = OS._cfstring_get_length(string_ref[0])
      end
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(string_ref[0], range, buffer)
      attribute_name = String.new(buffer)
      if ((attribute_name == OS.attr_k_axrole_attribute) || (attribute_name == OS.attr_k_axrole_description_attribute))
        role_text = (!((self.attr_style & SWT::PUSH)).equal?(0)) ? OS.attr_k_axbutton_role : (!((self.attr_style & SWT::RADIO)).equal?(0)) ? OS.attr_k_axradio_button_role : (!((self.attr_style & SWT::CHECK)).equal?(0)) ? OS.attr_k_axcheck_box_role : (!((self.attr_style & SWT::DROP_DOWN)).equal?(0)) ? OS.attr_k_axmenu_button_role : nil # SEPARATOR
        if (!(role_text).nil?)
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
      else
        if ((attribute_name == OS.attr_k_axtitle_attribute) || (attribute_name == OS.attr_k_axdescription_attribute))
          accessible_text = @tool_tip_text
          if ((accessible_text).nil? || (accessible_text == ""))
            accessible_text = RJava.cast_to_string(self.attr_text)
          end
          if (!((accessible_text).nil? || (accessible_text == "")))
            buffer = CharArray.new(accessible_text.length)
            accessible_text.get_chars(0, buffer.attr_length, buffer, 0)
            ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([ref]))
            OS._cfrelease(ref)
            code = OS.attr_no_err
          end
        else
          if ((attribute_name == OS.attr_k_axvalue_attribute) && !((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([@selection ? 1 : 0]))
            code = OS.attr_no_err
          end
        end
      end
      if (!(@parent.attr_accessible).nil?)
        code = @parent.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_click_activation(next_handler, the_event, user_data)
      return @parent.k_event_control_get_click_activation(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((@parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        set_selection(!get_selection)
      end
      post_event(SWT::Selection)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit_test(next_handler, the_event, user_data)
      # Feature in the Macintosh.  When kWindowCompositingAttribute is
      # set in the window, controls within the window are selected when
      # any button is pressed, not just the left one.  When the control
      # has a menu, this causes both selection and a menu to be displayed.
      # The fix is to check for button two and avoid setting the part
      # code, which stops the selection from happening.
      if ((self.attr_display.attr_click_count_button).equal?(2))
        return OS.attr_no_err
      end
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_control_ref, nil, 4, nil, the_control)
      if ((the_control[0]).equal?(@label_handle) || ((the_control[0]).equal?(@handle) && ((self.attr_style & SWT::SEPARATOR)).equal?(0)))
        rect = CGRect.new
        OS._hiview_get_bounds(the_control[0], rect)
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        if (!(OS._cgrect_contains_point(rect, pt)).equal?(0) && (!(the_control[0]).equal?(@handle) || ((self.attr_style & SWT::DROP_DOWN)).equal?(0) || rect.attr_width - pt.attr_x >= ARROW_WIDTH + INSET))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(1)]))
          return OS.attr_no_err
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_track(next_handler, the_event, user_data)
      result = @parent.k_event_control_track(next_handler, the_event, user_data)
      if (is_disposed)
        return OS.attr_no_err
      end
      @part_code = 0
      if (self.attr_text.length > 0 && !(@label_handle).equal?(0))
        redraw_widget(@label_handle, false)
      end
      if (!(self.attr_image).nil? && !(@icon_handle).equal?(0))
        OS._set_control_data(@icon_handle, OS.attr_k_control_entire_control, OS.attr_k_control_icon_transform_tag, 2, Array.typed(::Java::Short).new([RJava.cast_to_short(0)]))
        redraw_widget(@icon_handle, false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      result = @parent.k_event_mouse_down(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_window_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        OS._hiview_convert_point(pt, 0, @handle)
        rect = CGRect.new
        OS._hiview_get_frame(@handle, rect)
        x = RJava.cast_to_int(pt.attr_x)
        width = RJava.cast_to_int(rect.attr_width)
        if (width - x < ARROW_WIDTH + INSET)
          OS._hiview_convert_point(pt, @handle, @parent.attr_handle)
          event = Event.new
          event.attr_detail = SWT::ARROW
          event.attr_x = RJava.cast_to_int(rect.attr_x)
          event.attr_y = RJava.cast_to_int((rect.attr_y + rect.attr_height))
          post_event(SWT::Selection, event)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_dragged(next_handler, the_event, user_data)
      return @parent.k_event_mouse_dragged(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_moved(next_handler, the_event, user_data)
      return @parent.k_event_mouse_moved(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_up(next_handler, the_event, user_data)
      return @parent.k_event_mouse_up(next_handler, the_event, user_data)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@handle, self)
      if (!(@icon_handle).equal?(0))
        self.attr_display.add_widget(@icon_handle, self)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.add_widget(@label_handle, self)
      end
    end
    
    typesig { [] }
    def release_parent
      super
      set_visible(false)
    end
    
    typesig { [] }
    def release_handle
      super
      @handle = @icon_handle = @label_handle = 0
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@c_icon).equal?(0))
        destroy_cicon(@c_icon)
      end
      @c_icon = 0
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
      end
      @visible_rgn = 0
      @control = nil
      @tool_tip_text = RJava.cast_to_string(nil)
      self.attr_image = @disabled_image = @hot_image = nil
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
    
    typesig { [::Java::Int] }
    def reset_visible_region(control)
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
        @visible_rgn = 0
      end
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
    
    typesig { [Array.typed(::Java::Float)] }
    def set_background(color)
      @parent.set_background(@handle, color)
      if (!(@label_handle).equal?(0))
        @parent.set_background(@label_handle, color)
      end
      if (!(@icon_handle).equal?(0))
        @parent.set_background(@icon_handle, color)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height)
      set_bounds(@handle, x, y, width, height, true, true, false)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      space = 0
      string_width = 0
      string_height = 0
      if (!(self.attr_text.length).equal?(0))
        size = text_extent
        string_width = size.attr_x
        string_height = size.attr_y
      end
      image_width = 0
      image_height = 0
      if (!(self.attr_image).nil?)
        if (!(self.attr_text.length).equal?(0))
          space = 2
        end
        rect = self.attr_image.get_bounds
        image_width = rect.attr_width
        image_height = rect.attr_height
      end
      arrow_width = 0
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        arrow_width = ARROW_WIDTH
      end
      if (!((@parent.attr_style & SWT::RIGHT)).equal?(0))
        image_x = INSET
        image_y = INSET + (height - (INSET * 2) - image_height) / 2
        set_bounds(@icon_handle, image_x, image_y, image_width, image_height, true, true, false)
        label_x = image_x + image_width + space
        label_y = INSET + (height - (INSET * 2) - string_height) / 2
        set_bounds(@label_handle, label_x, label_y, string_width, string_height, true, true, false)
      else
        image_x = INSET + (width - (INSET * 2) - arrow_width - image_width) / 2
        image_y = INSET + (height - image_height - string_height - INSET * 2) / 2
        set_bounds(@icon_handle, image_x, image_y, image_width, image_height, true, true, false)
        label_x = INSET + (width - (INSET * 2) - arrow_width - string_width) / 2
        label_y = image_y + image_height + space
        set_bounds(@label_handle, label_x, label_y, string_width, string_height, true, true, false)
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
      @control = control
      redraw_widget(@handle, false)
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
        OS._enable_control(@handle)
      else
        self.attr_state |= DISABLED
        OS._disable_control(@handle)
      end
    end
    
    typesig { [Font] }
    def set_font_style(font)
      @parent.set_font_style(@label_handle, font)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_foreground(color)
      @parent.set_foreground(@handle, color)
      if (!(@label_handle).equal?(0))
        @parent.set_foreground(@label_handle, color)
      end
      if (!(@icon_handle).equal?(0))
        @parent.set_foreground(@icon_handle, color)
      end
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
      OS._hiobject_set_accessibility_ignored(@icon_handle, (image).nil?)
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
      redraw_widget(@handle, true)
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
      buffer = CharArray.new(self.attr_text.length)
      self.attr_text.get_chars(0, buffer.attr_length, buffer, 0)
      length_ = fix_mnemonic(buffer)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
      if ((ptr).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_control_data(@label_handle, 0, OS.attr_k_control_static_text_cfstring_tag, 4, Array.typed(::Java::Int).new([ptr]))
      OS._cfrelease(ptr)
      redraw_widget(@label_handle, false)
      @parent.relayout
      OS._hiobject_set_accessibility_ignored(@label_handle, (string == ""))
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that no tool tip text should be shown.
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
      set_visible(@handle, visible)
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
      redraw_widget(@handle, false)
      @parent.relayout
    end
    
    typesig { [] }
    def set_zorder
      OS._hiview_add_subview(@parent.attr_handle, @handle)
      if (!(@icon_handle).equal?(0))
        OS._hiview_add_subview(@handle, @icon_handle)
      end
      if (!(@label_handle).equal?(0))
        OS._hiview_add_subview(@handle, @label_handle)
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_image(layout)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (!(@c_icon).equal?(0))
        destroy_cicon(@c_icon)
      end
      @c_icon = 0
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
      in_content = ControlButtonContentInfo.new
      if (!(image).nil?)
        @c_icon = create_cicon(image)
        in_content.attr_content_type = RJava.cast_to_short(OS.attr_k_control_content_cicon_handle)
        in_content.attr_icon_ref = @c_icon
      end
      OS._set_bevel_button_content_info(@icon_handle, in_content)
      if (layout)
        redraw_widget(@icon_handle, false)
        @parent.relayout
      end
    end
    
    typesig { [] }
    def text_extent
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_control_data(@label_handle, RJava.cast_to_short(0), OS.attr_k_control_static_text_cfstring_tag, 4, ptr, nil)
      result = @parent.text_extent(ptr[0], 0)
      if (!(ptr[0]).equal?(0))
        OS._cfrelease(ptr[0])
      end
      return result
    end
    
    private
    alias_method :initialize__tool_item, :initialize
  end
  
end
