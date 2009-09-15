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
  module ControlImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Control is the abstract superclass of all windowed user interface classes.
  # <p>
  # <dl>
  # <dt><b>Styles:</b>
  # <dd>BORDER</dd>
  # <dd>LEFT_TO_RIGHT, RIGHT_TO_LEFT</dd>
  # <dt><b>Events:</b>
  # <dd>DragDetect, FocusIn, FocusOut, Help, KeyDown, KeyUp, MenuDetect, MouseDoubleClick, MouseDown, MouseEnter,
  # MouseExit, MouseHover, MouseUp, MouseMove, Move, Paint, Resize, Traverse</dd>
  # </dl>
  # </p><p>
  # Only one of LEFT_TO_RIGHT or RIGHT_TO_LEFT may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#control">Control snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Control < ControlImports.const_get :Widget
    include_class_members ControlImports
    overload_protected {
      include Drawable
    }
    
    # the handle to the OS resource
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :layout_data
    alias_method :attr_layout_data, :layout_data
    undef_method :layout_data
    alias_method :attr_layout_data=, :layout_data=
    undef_method :layout_data=
    
    attr_accessor :draw_count
    alias_method :attr_draw_count, :draw_count
    undef_method :draw_count
    alias_method :attr_draw_count=, :draw_count=
    undef_method :draw_count=
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
    # double
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :background_image
    alias_method :attr_background_image, :background_image
    undef_method :background_image
    alias_method :attr_background_image=, :background_image=
    undef_method :background_image=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    attr_accessor :region
    alias_method :attr_region, :region
    undef_method :region
    alias_method :attr_region=, :region=
    undef_method :region=
    
    attr_accessor :region_path
    alias_method :attr_region_path, :region_path
    undef_method :region_path
    alias_method :attr_region_path=, :region_path=
    undef_method :region_path=
    
    # long
    attr_accessor :visible_rgn
    alias_method :attr_visible_rgn, :visible_rgn
    undef_method :visible_rgn
    alias_method :attr_visible_rgn=, :visible_rgn=
    undef_method :visible_rgn=
    
    attr_accessor :accessible
    alias_method :attr_accessible, :accessible
    undef_method :accessible
    alias_method :attr_accessible=, :accessible=
    undef_method :accessible=
    
    class_module.module_eval {
      const_set_lazy(:CLIPPING) { 1 << 10 }
      const_attr_reader  :CLIPPING
      
      const_set_lazy(:VISIBLE_REGION) { 1 << 12 }
      const_attr_reader  :VISIBLE_REGION
      
      # Magic number comes from experience. There's no API for this value in Cocoa or Carbon.
      const_set_lazy(:DEFAULT_DRAG_HYSTERESIS) { 5 }
      const_attr_reader  :DEFAULT_DRAG_HYSTERESIS
    }
    
    typesig { [] }
    def initialize
      @view = nil
      @parent = nil
      @tool_tip_text = nil
      @layout_data = nil
      @draw_count = 0
      @menu = nil
      @foreground = nil
      @background = nil
      @background_image = nil
      @font = nil
      @cursor = nil
      @region = nil
      @region_path = nil
      @visible_rgn = 0
      @accessible = nil
      super()
      # Do nothing
    end
    
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
    # @see SWT#BORDER
    # @see SWT#LEFT_TO_RIGHT
    # @see SWT#RIGHT_TO_LEFT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @view = nil
      @parent = nil
      @tool_tip_text = nil
      @layout_data = nil
      @draw_count = 0
      @menu = nil
      @foreground = nil
      @background = nil
      @background_image = nil
      @font = nil
      @cursor = nil
      @region = nil
      @region_path = nil
      @visible_rgn = 0
      @accessible = nil
      super(parent, style)
      @parent = parent
      create_widget
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accepts_first_mouse(id, sel, the_event)
      shell = get_shell
      if (!((shell.attr_style & SWT::ON_TOP)).equal?(0))
        return true
      end
      return super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_action_names(id, sel)
      if (!(@accessible).nil?)
        return_value = @accessible.internal_accessibility_action_names(ACC::CHILDID_SELF)
        if (!(return_value).nil?)
          return return_value.attr_id
        end
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_attribute_names(id, sel)
      if ((id).equal?(@view.attr_id) || (@view.is_a?(NSControl) && !((@view).cell).nil? && ((@view).cell.attr_id).equal?(id)))
        if (!(@accessible).nil?)
          # First, see if the accessible is going to define a set of attributes for the control.
          # If it does, return that.
          return_value = @accessible.internal_accessibility_attribute_names(ACC::CHILDID_SELF)
          if (!(return_value).nil?)
            return return_value.attr_id
          end
          # If not, see if it will override or augment the standard list.
          # Help, title, and description can be overridden.
          extra_attributes = NSMutableArray.array_with_capacity(3)
          extra_attributes.add_object(OS::NSAccessibilityHelpAttribute)
          extra_attributes.add_object(OS::NSAccessibilityDescriptionAttribute)
          extra_attributes.add_object(OS::NSAccessibilityTitleAttribute)
          # 64
          i = RJava.cast_to_int(extra_attributes.count) - 1
          while i >= 0
            attribute = NSString.new(extra_attributes.object_at_index(i).attr_id)
            if ((@accessible.internal_accessibility_attribute_value(attribute, ACC::CHILDID_SELF)).nil?)
              extra_attributes.remove_object_at_index(i)
            end
            i -= 1
          end
          if (extra_attributes.count > 0)
            # long
            super_result = super(id, sel)
            base_attributes = NSArray.new(super_result)
            mutable_attributes = NSMutableArray.array_with_capacity(base_attributes.count + 1)
            mutable_attributes.add_objects_from_array(base_attributes)
            i_ = 0
            while i_ < extra_attributes.count
              curr_attribute = extra_attributes.object_at_index(i_)
              if (!mutable_attributes.contains_object(curr_attribute))
                mutable_attributes.add_object(curr_attribute)
              end
              i_ += 1
            end
            return mutable_attributes.attr_id
          end
        end
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_parameterized_attribute_names(id, sel)
      if ((id).equal?(@view.attr_id) || (@view.is_a?(NSControl) && !((@view).cell).nil? && ((@view).cell.attr_id).equal?(id)))
        if (!(@accessible).nil?)
          return_value = @accessible.internal_accessibility_parameterized_attribute_names(ACC::CHILDID_SELF)
          if (!(return_value).nil?)
            return return_value.attr_id
          end
        end
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_focused_uielement(id, sel)
      return_value = nil
      if ((id).equal?(@view.attr_id) || (@view.is_a?(NSControl) && !((@view).cell).nil? && ((@view).cell.attr_id).equal?(id)))
        if (!(@accessible).nil?)
          return_value = @accessible.internal_accessibility_focused_uielement(ACC::CHILDID_SELF)
        end
      end
      # If we had an accessible and it didn't handle the attribute request, let the
      # superclass handle it.
      if ((return_value).nil?)
        return super(id, sel)
      else
        return return_value.attr_id
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSPoint] }
    # long
    # long
    # long
    def accessibility_hit_test(id, sel, point)
      return_value = nil
      if ((id).equal?(@view.attr_id) || (@view.is_a?(NSControl) && !((@view).cell).nil? && ((@view).cell.attr_id).equal?(id)))
        if (!(@accessible).nil?)
          return_value = @accessible.internal_accessibility_hit_test(point, ACC::CHILDID_SELF)
        end
      end
      # If we had an accessible and it didn't handle the attribute request, let the
      # superclass handle it.
      if ((return_value).nil?)
        return super(id, sel, point)
      else
        return return_value.attr_id
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      attribute = NSString.new(arg0)
      # long
      return_value = 0
      return_object = nil
      if (!(@accessible).nil?)
        return_object = @accessible.internal_accessibility_attribute_value(attribute, ACC::CHILDID_SELF)
      end
      # If we had an accessible and it didn't handle the attribute request, let the
      # superclass handle it.
      if ((return_object).nil?)
        return_value = super(id, sel, arg0)
      else
        return_value = return_object.attr_id
      end
      return return_value
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def accessibility_attribute_value_for_parameter(id, sel, arg0, arg1)
      attribute = NSString.new(arg0)
      return_value = nil
      if (!(@accessible).nil?)
        parameter = Id.new(arg1)
        return_value = @accessible.internal_accessibility_attribute_value_for_parameter(attribute, parameter, ACC::CHILDID_SELF)
      end
      # If we had an accessible and it didn't handle the attribute request, let the
      # superclass handle it.
      if ((return_value).nil?)
        return super(id, sel, arg0, arg1)
      else
        return return_value.attr_id
      end
    end
    
    typesig { [ControlListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is moved or resized, by sending
    # it one of the messages defined in the <code>ControlListener</code>
    # interface.
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
    # @see ControlListener
    # @see #removeControlListener
    def add_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Resize, typed_listener)
      add_listener(SWT::Move, typed_listener)
    end
    
    typesig { [DragDetectListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when a drag gesture occurs, by sending it
    # one of the messages defined in the <code>DragDetectListener</code>
    # interface.
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
    # @see DragDetectListener
    # @see #removeDragDetectListener
    # 
    # @since 3.3
    def add_drag_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::DragDetect, typed_listener)
    end
    
    typesig { [FocusListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control gains or loses focus, by sending
    # it one of the messages defined in the <code>FocusListener</code>
    # interface.
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
    # @see FocusListener
    # @see #removeFocusListener
    def add_focus_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::FocusIn, typed_listener)
      add_listener(SWT::FocusOut, typed_listener)
    end
    
    typesig { [HelpListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when help events are generated for the control,
    # by sending it one of the messages defined in the
    # <code>HelpListener</code> interface.
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
    # @see HelpListener
    # @see #removeHelpListener
    def add_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Help, typed_listener)
    end
    
    typesig { [KeyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when keys are pressed and released on the system keyboard, by sending
    # it one of the messages defined in the <code>KeyListener</code>
    # interface.
    # <p>
    # When a key listener is added to a control, the control
    # will take part in widget traversal.  By default, all
    # traversal keys (such as the tab key and so on) are
    # delivered to the control.  In order for a control to take
    # part in traversal, it should listen for traversal events.
    # Otherwise, the user can traverse into a control but not
    # out.  Note that native controls such as table and tree
    # implement key traversal in the operating system.  It is
    # not necessary to add traversal listeners for these controls,
    # unless you want to override the default traversal.
    # </p>
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
    # @see KeyListener
    # @see #removeKeyListener
    def add_key_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::KeyUp, typed_listener)
      add_listener(SWT::KeyDown, typed_listener)
    end
    
    typesig { [MenuDetectListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the platform-specific context menu trigger
    # has occurred, by sending it one of the messages defined in
    # the <code>MenuDetectListener</code> interface.
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
    # @see MenuDetectListener
    # @see #removeMenuDetectListener
    # 
    # @since 3.3
    def add_menu_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MenuDetect, typed_listener)
    end
    
    typesig { [MouseListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when mouse buttons are pressed and released, by sending
    # it one of the messages defined in the <code>MouseListener</code>
    # interface.
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
    # @see MouseListener
    # @see #removeMouseListener
    def add_mouse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseDown, typed_listener)
      add_listener(SWT::MouseUp, typed_listener)
      add_listener(SWT::MouseDoubleClick, typed_listener)
    end
    
    typesig { [MouseTrackListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the mouse passes or hovers over controls, by sending
    # it one of the messages defined in the <code>MouseTrackListener</code>
    # interface.
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
    # @see MouseTrackListener
    # @see #removeMouseTrackListener
    def add_mouse_track_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseEnter, typed_listener)
      add_listener(SWT::MouseExit, typed_listener)
      add_listener(SWT::MouseHover, typed_listener)
    end
    
    typesig { [MouseMoveListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the mouse moves, by sending it one of the
    # messages defined in the <code>MouseMoveListener</code>
    # interface.
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
    # @see MouseMoveListener
    # @see #removeMouseMoveListener
    def add_mouse_move_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseMove, typed_listener)
    end
    
    typesig { [MouseWheelListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the mouse wheel is scrolled, by sending
    # it one of the messages defined in the
    # <code>MouseWheelListener</code> interface.
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
    # @see MouseWheelListener
    # @see #removeMouseWheelListener
    # 
    # @since 3.3
    def add_mouse_wheel_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseWheel, typed_listener)
    end
    
    typesig { [Control] }
    def add_relation(control)
    end
    
    typesig { [PaintListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver needs to be painted, by sending it
    # one of the messages defined in the <code>PaintListener</code>
    # interface.
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
    # @see PaintListener
    # @see #removePaintListener
    def add_paint_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Paint, typed_listener)
    end
    
    class_module.module_eval {
      const_set_lazy(:SYNTHETIC_BOLD) { -2.5 }
      const_attr_reader  :SYNTHETIC_BOLD
      
      const_set_lazy(:SYNTHETIC_ITALIC) { 0.2 }
      const_attr_reader  :SYNTHETIC_ITALIC
    }
    
    typesig { [NSMutableDictionary, Font] }
    def add_traits(dict, font)
      if (!((font.attr_extra_traits & OS::NSBoldFontMask)).equal?(0))
        dict.set_object(NSNumber.number_with_double(SYNTHETIC_BOLD), OS::NSStrokeWidthAttributeName)
      end
      if (!((font.attr_extra_traits & OS::NSItalicFontMask)).equal?(0))
        dict.set_object(NSNumber.number_with_double(SYNTHETIC_ITALIC), OS::NSObliquenessAttributeName)
      end
    end
    
    typesig { [TraverseListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when traversal events occur, by sending it
    # one of the messages defined in the <code>TraverseListener</code>
    # interface.
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
    # @see TraverseListener
    # @see #removeTraverseListener
    def add_traverse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Traverse, typed_listener)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def become_first_responder(id, sel)
      if (!((self.attr_state & DISABLED)).equal?(0))
        return false
      end
      return super(id, sel)
    end
    
    typesig { [NSView, ::Java::Int, ::Java::Boolean] }
    # long
    def calculate_visible_region(view, visible_rgn, clip_children)
      # long
      temp_rgn = OS._new_rgn
      if (!view.is_hidden_or_has_hidden_ancestor && is_drawing)
        # long
        child_rgn = OS._new_rgn
        window = view.window___org_eclipse_swt_widgets_control_1
        content_view_ = window.content_view
        frame_view = content_view_.superview
        bounds = content_view_.visible_rect
        bounds = content_view_.convert_rect_to_view_(bounds, view)
        rect = Array.typed(::Java::Short).new(4) { 0 }
        OS._set_rect(rect, RJava.cast_to_short(bounds.attr_x), RJava.cast_to_short(bounds.attr_y), RJava.cast_to_short((bounds.attr_x + bounds.attr_width)), RJava.cast_to_short((bounds.attr_y + bounds.attr_height)))
        OS._rect_rgn(visible_rgn, rect)
        temp_view = view
        last_control = nil
        while (!(temp_view.attr_id).equal?(frame_view.attr_id))
          bounds = temp_view.visible_rect
          bounds = temp_view.convert_rect_to_view_(bounds, view)
          OS._set_rect(rect, RJava.cast_to_short(bounds.attr_x), RJava.cast_to_short(bounds.attr_y), RJava.cast_to_short((bounds.attr_x + bounds.attr_width)), RJava.cast_to_short((bounds.attr_y + bounds.attr_height)))
          OS._rect_rgn(temp_rgn, rect)
          OS._sect_rgn(temp_rgn, visible_rgn, visible_rgn)
          if (OS._empty_rgn(visible_rgn))
            break
          end
          if (clip_children || !(temp_view.attr_id).equal?(view.attr_id))
            subviews_ = temp_view.subviews
            # long
            count_ = subviews_.count
            i = 0
            while i < count_
              child = NSView.new(subviews_.object_at_index(count_ - i - 1))
              if (!(last_control).nil? && (child.attr_id).equal?(last_control.attr_id))
                break
              end
              if (child.is_hidden)
                i += 1
                next
              end
              bounds = child.visible_rect
              bounds = child.convert_rect_to_view_(bounds, view)
              OS._set_rect(rect, RJava.cast_to_short(bounds.attr_x), RJava.cast_to_short(bounds.attr_y), RJava.cast_to_short((bounds.attr_x + bounds.attr_width)), RJava.cast_to_short((bounds.attr_y + bounds.attr_height)))
              OS._rect_rgn(temp_rgn, rect)
              OS._union_rgn(temp_rgn, child_rgn, child_rgn)
              i += 1
            end
          end
          last_control = temp_view
          temp_view = temp_view.superview
        end
        OS._diff_rgn(visible_rgn, child_rgn, visible_rgn)
        OS._dispose_rgn(child_rgn)
      else
        OS._copy_rgn(temp_rgn, visible_rgn)
      end
      OS._dispose_rgn(temp_rgn)
    end
    
    typesig { [] }
    def check_background
      shell = get_shell
      if ((self).equal?(shell))
        return
      end
      self.attr_state &= ~PARENT_BACKGROUND
      composite = @parent
      begin
        mode = composite.attr_background_mode
        if (!(mode).equal?(0))
          if ((mode).equal?(SWT::INHERIT_DEFAULT))
            control = self
            begin
              if (((control.attr_state & THEME_BACKGROUND)).equal?(0))
                return
              end
              control = control.attr_parent
            end while (!(control).equal?(composite))
          end
          self.attr_state |= PARENT_BACKGROUND
          return
        end
        if ((composite).equal?(shell))
          break
        end
        composite = composite.attr_parent
      end while (true)
    end
    
    typesig { [] }
    def check_buffered
      self.attr_style |= SWT::DOUBLE_BUFFERED
    end
    
    typesig { [Widget] }
    def check_tool_tip(target)
      if (is_visible && (self.attr_display.attr_tooltip_control).equal?(self) && ((target).nil? || (self.attr_display.attr_tooltip_target).equal?(target)))
        shell = get_shell
        shell.send_tool_tip_event(false)
        shell.send_tool_tip_event(true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the preferred size of the receiver.
    # <p>
    # The <em>preferred size</em> of a control is the size that it would
    # best be displayed at. The width hint and height hint arguments
    # allow the caller to ask a control questions such as "Given a particular
    # width, how high does the control need to be to show all of the contents?"
    # To indicate that the caller does not wish to constrain a particular
    # dimension, the constant <code>SWT.DEFAULT</code> is passed for the hint.
    # </p>
    # 
    # @param wHint the width hint (can be <code>SWT.DEFAULT</code>)
    # @param hHint the height hint (can be <code>SWT.DEFAULT</code>)
    # @return the preferred size of the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Layout
    # @see #getBorderWidth
    # @see #getBounds
    # @see #getSize
    # @see #pack(boolean)
    # @see "computeTrim, getClientArea for controls that implement them"
    def compute_size(w_hint, h_hint)
      return compute_size(w_hint, h_hint, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Returns the preferred size of the receiver.
    # <p>
    # The <em>preferred size</em> of a control is the size that it would
    # best be displayed at. The width hint and height hint arguments
    # allow the caller to ask a control questions such as "Given a particular
    # width, how high does the control need to be to show all of the contents?"
    # To indicate that the caller does not wish to constrain a particular
    # dimension, the constant <code>SWT.DEFAULT</code> is passed for the hint.
    # </p><p>
    # If the changed flag is <code>true</code>, it indicates that the receiver's
    # <em>contents</em> have changed, therefore any caches that a layout manager
    # containing the control may have been keeping need to be flushed. When the
    # control is resized, the changed flag will be <code>false</code>, so layout
    # manager caches can be retained.
    # </p>
    # 
    # @param wHint the width hint (can be <code>SWT.DEFAULT</code>)
    # @param hHint the height hint (can be <code>SWT.DEFAULT</code>)
    # @param changed <code>true</code> if the control's contents have changed, and <code>false</code> otherwise
    # @return the preferred size of the control.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Layout
    # @see #getBorderWidth
    # @see #getBounds
    # @see #getSize
    # @see #pack(boolean)
    # @see "computeTrim, getClientArea for controls that implement them"
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = DEFAULT_WIDTH
      height = DEFAULT_HEIGHT
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      border = get_border_width
      width += border * 2
      height += border * 2
      return Point.new(width, height)
    end
    
    typesig { [] }
    def compute_tab_group
      if (is_tab_group)
        return self
      end
      return @parent.compute_tab_group
    end
    
    typesig { [] }
    def compute_tab_list
      if (is_tab_group)
        if (get_visible && get_enabled)
          return Array.typed(Widget).new([self])
        end
      end
      return Array.typed(Widget).new(0) { nil }
    end
    
    typesig { [] }
    def compute_tab_root
      tab_list = @parent.__get_tab_list
      if (!(tab_list).nil?)
        index = 0
        while (index < tab_list.attr_length)
          if ((tab_list[index]).equal?(self))
            break
          end
          index += 1
        end
        if ((index).equal?(tab_list.attr_length))
          if (is_tab_group)
            return self
          end
        end
      end
      return @parent.compute_tab_root
    end
    
    typesig { [] }
    def content_view
      return @view
    end
    
    typesig { [String, Font, Array.typed(::Java::Float), ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    # double
    def create_string(string, font, foreground, style, enabled, mnemonics)
      dict = (NSMutableDictionary.new.alloc).init_with_capacity(5)
      if ((font).nil?)
        font = !(@font).nil? ? @font : default_font
      end
      dict.set_object(font.attr_handle, OS::NSFontAttributeName)
      add_traits(dict, font)
      if (enabled)
        if (!(foreground).nil?)
          color = NSColor.color_with_device_red(foreground[0], foreground[1], foreground[2], foreground[3])
          dict.set_object(color, OS::NSForegroundColorAttributeName)
        end
      else
        dict.set_object(NSColor.disabled_control_text_color, OS::NSForegroundColorAttributeName)
      end
      if (!(style).equal?(0))
        paragraph_style = NSMutableParagraphStyle.new.alloc.init
        paragraph_style.set_line_break_mode(OS::NSLineBreakByClipping)
        alignment = SWT::LEFT
        if (!((style & SWT::CENTER)).equal?(0))
          alignment = OS::NSCenterTextAlignment
        else
          if (!((style & SWT::RIGHT)).equal?(0))
            alignment = OS::NSRightTextAlignment
          end
        end
        paragraph_style.set_alignment(alignment)
        dict.set_object(paragraph_style, OS::NSParagraphStyleAttributeName)
        paragraph_style.release
      end
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, chars.attr_length, chars, 0)
      if (mnemonics)
        length_ = fix_mnemonic(chars)
      end
      str = (NSString.new.alloc).init_with_characters(chars, length_)
      attrib_str = (NSAttributedString.new.alloc).init_with_string(str, dict)
      str.release
      dict.release
      return attrib_str
    end
    
    typesig { [] }
    def create_widget
      self.attr_state |= DRAG_DETECT
      check_orientation(@parent)
      super
      check_background
      check_buffered
      set_default_font
      set_zorder
      set_relations
      self.attr_display.clear_pool
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_widget_color(SWT::COLOR_WIDGET_BACKGROUND)
    end
    
    typesig { [] }
    def default_font
      if (self.attr_display.attr_small_fonts)
        return self.attr_display.get_system_font
      end
      return Font.cocoa_new(self.attr_display, default_nsfont)
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_widget_color(SWT::COLOR_WIDGET_FOREGROUND)
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.get_system_font.attr_handle
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@view)
    end
    
    typesig { [] }
    def destroy_widget
      view = top_view
      view.remove_from_superview
      release_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def do_command_by_selector(id, sel, selector)
      if ((@view.window___org_eclipse_swt_widgets_control_3.first_responder.attr_id).equal?(id))
        if (ime_in_composition)
          return
        end
        s = self.get_shell
        ns_event = NSApplication.shared_application.current_event
        if (!(ns_event).nil? && (ns_event.type).equal?(OS::NSKeyDown))
          # Feature in Cocoa.  Pressing Alt+UpArrow invokes doCommandBySelector
          # twice, with selectors moveBackward and moveToBeginningOfParagraph
          # (Alt+DownArrow behaves similarly).  In order to avoid sending
          # multiple events for these keys, do not send a KeyDown if we already sent one
          # during this keystroke. This rule does not apply if the command key
          # is down, because we likely triggered the current key sequence via flagsChanged.
          # 
          # long
          modifiers = ns_event.modifier_flags
          if ((s.attr_key_input_happened).equal?(false) || !((modifiers & OS::NSCommandKeyMask)).equal?(0))
            s.attr_key_input_happened = true
            consume = Array.typed(::Java::Boolean).new(1) { false }
            if (translate_traversal(ns_event.key_code, ns_event, consume))
              return
            end
            if (is_disposed)
              return
            end
            if (!send_key_event(ns_event, SWT::KeyDown))
              return
            end
            if (consume[0])
              return
            end
          end
        end
        if (!((self.attr_state & CANVAS)).equal?(0))
          return
        end
      end
      super(id, sel, selector)
    end
    
    typesig { [Event] }
    # Detects a drag and drop gesture.  This method is used
    # to detect a drag gesture when called from within a mouse
    # down listener.
    # 
    # <p>By default, a drag is detected when the gesture
    # occurs anywhere within the client area of a control.
    # Some controls, such as tables and trees, override this
    # behavior.  In addition to the operating system specific
    # drag gesture, they require the mouse to be inside an
    # item.  Custom widget writers can use <code>setDragDetect</code>
    # to disable the default detection, listen for mouse down,
    # and then call <code>dragDetect()</code> from within the
    # listener to conditionally detect a drag.
    # </p>
    # 
    # @param event the mouse down event
    # 
    # @return <code>true</code> if the gesture occurred, and <code>false</code> otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the event is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DragDetectListener
    # @see #addDragDetectListener
    # 
    # @see #getDragDetect
    # @see #setDragDetect
    # 
    # @since 3.3
    def drag_detect(event)
      check_widget
      if ((event).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return drag_detect(event.attr_button, event.attr_count, event.attr_state_mask, event.attr_x, event.attr_y)
    end
    
    typesig { [MouseEvent] }
    # Detects a drag and drop gesture.  This method is used
    # to detect a drag gesture when called from within a mouse
    # down listener.
    # 
    # <p>By default, a drag is detected when the gesture
    # occurs anywhere within the client area of a control.
    # Some controls, such as tables and trees, override this
    # behavior.  In addition to the operating system specific
    # drag gesture, they require the mouse to be inside an
    # item.  Custom widget writers can use <code>setDragDetect</code>
    # to disable the default detection, listen for mouse down,
    # and then call <code>dragDetect()</code> from within the
    # listener to conditionally detect a drag.
    # </p>
    # 
    # @param event the mouse down event
    # 
    # @return <code>true</code> if the gesture occurred, and <code>false</code> otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the event is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DragDetectListener
    # @see #addDragDetectListener
    # 
    # @see #getDragDetect
    # @see #setDragDetect
    # 
    # @since 3.3
    def drag_detect(event)
      check_widget
      if ((event).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return drag_detect(event.attr_button, event.attr_count, event.attr_state_mask, event.attr_x, event.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def drag_detect(button, count_, state_mask, x, y)
      if (!(button).equal?(1) || !(count_).equal?(1))
        return false
      end
      if (!drag_detect(x, y, false, nil))
        return false
      end
      return send_drag_event(button, state_mask, x, y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      # Feature in Cocoa. Mouse drag events do not account for hysteresis.
      # As soon as the mouse drags a mouse dragged event is fired.  Fix is to
      # check for another mouse drag event that is at least 5 pixels away
      # from the start of the drag.
      application = NSApplication.shared_application
      dragging = false
      # long
      event_type = OS::NSLeftMouseDown
      # double
      drag_x = x
      # double
      drag_y = y
      # To check for an actual drag we need to pull off mouse moved and mouse up events
      # to detect if the user dragged outside of a 10 x 10 box centered on the mouse down location.
      # We still want the view to see the events, so save them and re-post when done checking.
      mouse_up_event = nil
      drag_events = NSMutableArray.array_with_capacity(10)
      while (!(event_type).equal?(OS::NSLeftMouseUp))
        event = application.next_event_matching_mask((OS::NSLeftMouseUpMask | OS::NSLeftMouseDraggedMask), NSDate.distant_future, OS::NSEventTrackingRunLoopMode, true)
        event_type = event.type
        if ((event_type).equal?(OS::NSLeftMouseDragged))
          drag_events.add_object(event)
          window_loc = event.location_in_window
          view_loc = @view.convert_point_from_view_(window_loc, nil)
          if (!@view.is_flipped)
            view_loc.attr_y = @view.bounds.attr_height - view_loc.attr_y
          end
          if ((Math.abs(view_loc.attr_x - drag_x) > DEFAULT_DRAG_HYSTERESIS) || (Math.abs(view_loc.attr_y - drag_y) > DEFAULT_DRAG_HYSTERESIS))
            dragging = true
            break
          end
        else
          if ((event_type).equal?(OS::NSLeftMouseUp))
            mouse_up_event = event
          end
        end
      end
      # Push back any events we took out of the queue so the control can receive them.
      if (!(mouse_up_event).nil?)
        application.post_event(mouse_up_event, true)
      end
      if (drag_events.count > 0)
        while (drag_events.count > 0)
          curr_event = NSEvent.new(drag_events.object_at_index(drag_events.count - 1).attr_id)
          drag_events.remove_last_object
          application.post_event(curr_event, true)
        end
      end
      return dragging
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def draw_gripper(x, y, width, height, vertical)
      return false
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_widget(id, context, rect)
      if (!(id).equal?(paint_view.attr_id))
        return
      end
      if (!hooks(SWT::Paint) && !filters(SWT::Paint))
        return
      end
      # Send paint event
      data = SwtGCData.new
      data.attr_paint_rect = rect
      gc = SwtGC.cocoa_new(self, data)
      event = Event.new
      event.attr_gc = gc
      event.attr_x = RJava.cast_to_int(rect.attr_x)
      event.attr_y = RJava.cast_to_int(rect.attr_y)
      event.attr_width = RJava.cast_to_int(rect.attr_width)
      event.attr_height = RJava.cast_to_int(rect.attr_height)
      send_event(SWT::Paint, event)
      event.attr_gc = nil
      gc.dispose
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (@view.is_a?(NSControl))
        (@view).set_enabled(enabled)
      end
      update_cursor_rects(is_enabled)
    end
    
    typesig { [Array.typed(::Java::Float), Array.typed(::Java::Float)] }
    # double
    # double
    def ==(color1, color2)
      if ((color1).equal?(color2))
        return true
      end
      if ((color1).nil?)
        return (color2).nil?
      end
      if ((color2).nil?)
        return (color1).nil?
      end
      i = 0
      while i < color1.attr_length
        if (!(color1[i]).equal?(color2[i]))
          return false
        end
        i += 1
      end
      return true
    end
    
    typesig { [] }
    def event_view
      return @view
    end
    
    typesig { [NSView, NSGraphicsContext, NSRect, ::Java::Int] }
    def fill_background(view, context, rect, img_height)
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      image = control.attr_background_image
      if (!(image).nil? && !image.is_disposed)
        context.save_graphics_state
        NSColor.color_with_pattern_image(image.attr_handle).set_fill
        phase = NSPoint.new
        control_view = control.attr_view
        if ((img_height).equal?(-1))
          content_view_ = control_view.window___org_eclipse_swt_widgets_control_5.content_view
          phase = control_view.convert_point_to_view_(phase, content_view_)
          phase.attr_y = content_view_.bounds.attr_height - phase.attr_y
        else
          phase = view.convert_point_to_view_(phase, control_view)
          phase.attr_y += img_height - @background_image.get_bounds.attr_height
        end
        context.set_pattern_phase(phase)
        NSBezierPath.fill_rect(rect)
        context.restore_graphics_state
        return
      end
      # double
      background = control.attr_background
      # double
      alpha = 0.0
      if ((background).nil?)
        background = control.default_background.attr_handle
        alpha = get_theme_alpha
      else
        alpha = background[3]
      end
      context.save_graphics_state
      NSColor.color_with_device_red(background[0], background[1], background[2], alpha).set_fill
      NSBezierPath.fill_rect(rect)
      context.restore_graphics_state
    end
    
    typesig { [] }
    def find_cursor
      if (!(@cursor).nil?)
        return @cursor
      end
      return @parent.find_cursor
    end
    
    typesig { [] }
    def find_background_control
      if (!(@background_image).nil? || !(@background).nil?)
        return self
      end
      return !((self.attr_state & PARENT_BACKGROUND)).equal?(0) ? @parent.find_background_control : nil
    end
    
    typesig { [Control] }
    def find_menus(control)
      if (!(@menu).nil? && !(self).equal?(control))
        return Array.typed(Menu).new([@menu])
      end
      return Array.typed(Menu).new(0) { nil }
    end
    
    typesig { [NSPoint] }
    def find_tooltip(pt)
      return self
    end
    
    typesig { [Shell, Shell, Decorations, Decorations, Array.typed(Menu)] }
    def fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
      old_shell.fix_shell(new_shell, self)
      old_decorations.fix_decorations(new_decorations, self, menus)
    end
    
    typesig { [Control] }
    def fix_focus(focus_control)
      shell = get_shell
      control = self
      while (!(control).equal?(shell) && !((control = control.attr_parent)).nil?)
        if (control.set_focus)
          return
        end
      end
      shell.set_saved_focus(focus_control)
      # int window = OS.GetControlOwner (handle);
      # OS.ClearKeyboardFocus (window);
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def flags_changed(id, sel, the_event)
      if ((@view.window___org_eclipse_swt_widgets_control_7.first_responder.attr_id).equal?(id))
        if (((self.attr_state & SAFARI_EVENTS_FIX)).equal?(0))
          s = self.get_shell
          s.attr_key_input_happened = false
          mask = 0
          ns_event = NSEvent.new(the_event)
          # long
          modifiers = ns_event.modifier_flags
          key_code_ = Display.translate_key(ns_event.key_code)
          case (key_code_)
          when SWT::ALT
            mask = OS::NSAlternateKeyMask
          when SWT::CONTROL
            mask = OS::NSControlKeyMask
          when SWT::COMMAND
            mask = OS::NSCommandKeyMask
          when SWT::SHIFT
            mask = OS::NSShiftKeyMask
          when SWT::CAPS_LOCK
            event = Event.new
            event.attr_key_code = key_code_
            set_input_state(event, ns_event, SWT::KeyDown)
            send_key_event(SWT::KeyDown, event)
            set_input_state(event, ns_event, SWT::KeyUp)
            send_key_event(SWT::KeyUp, event)
          end
          if (!(mask).equal?(0))
            s.attr_key_input_happened = true
            type_ = !((mask & modifiers)).equal?(0) ? SWT::KeyDown : SWT::KeyUp
            if ((type_).equal?(SWT::KeyDown))
              s.attr_key_input_happened = true
            end
            event = Event.new
            event.attr_key_code = key_code_
            set_input_state(event, ns_event, type_)
            if (!send_key_event(type_, event))
              return
            end
          end
        end
      end
      super(id, sel, the_event)
    end
    
    typesig { [] }
    def focus_view
      return @view
    end
    
    typesig { [] }
    # Forces the receiver to have the <em>keyboard focus</em>, causing
    # all keyboard events to be delivered to it.
    # 
    # @return <code>true</code> if the control got focus, and <code>false</code> if it was unable to.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setFocus
    def force_focus
      check_widget
      if ((self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
        return false
      end
      shell = menu_shell
      shell.set_saved_focus(self)
      if (!is_enabled || !is_visible || !is_active)
        return false
      end
      if (is_focus_control)
        return true
      end
      shell.set_saved_focus(nil)
      focus_view_ = focus_view
      if (!focus_view_.can_become_key_view)
        return false
      end
      result = @view.window___org_eclipse_swt_widgets_control_9.make_first_responder(focus_view_)
      if (is_disposed)
        return false
      end
      shell.bring_to_top(false)
      if (is_disposed)
        return false
      end
      shell.set_saved_focus(self)
      return result
    end
    
    typesig { [] }
    # Returns the accessible object for the receiver.
    # If this is the first time this object is requested,
    # then the object is created and returned.
    # 
    # @return the accessible object
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Accessible#addAccessibleListener
    # @see Accessible#addAccessibleControlListener
    # 
    # @since 2.0
    def get_accessible
      check_widget
      if ((@accessible).nil?)
        @accessible = new__accessible(self)
      end
      return @accessible
    end
    
    typesig { [] }
    # Returns the receiver's background color.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # For example, on some versions of Windows the background of a TabFolder,
    # is a gradient rather than a solid color.
    # </p>
    # @return the background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_background
      check_widget
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      return control.get_background_color
    end
    
    typesig { [] }
    def get_background_color
      return !(@background).nil? ? Color.cocoa_new(self.attr_display, @background) : default_background
    end
    
    typesig { [] }
    # Returns the receiver's background image.
    # 
    # @return the background image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_background_image
      check_widget
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      return control.attr_background_image
    end
    
    typesig { [] }
    # Returns the receiver's border width.
    # 
    # @return the border width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_border_width
      check_widget
      return 0
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent (or its display if its parent is null),
    # unless the receiver is a shell. In this case, the location is
    # relative to the display.
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      check_widget
      rect = top_view.frame
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is detecting
    # drag gestures, and  <code>false</code> otherwise.
    # 
    # @return the receiver's drag detect state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_drag_detect
      check_widget
      return !((self.attr_state & DRAG_DETECT)).equal?(0)
    end
    
    typesig { [] }
    def get_drawing
      return @draw_count <= 0
    end
    
    typesig { [] }
    # Returns the receiver's cursor, or null if it has not been set.
    # <p>
    # When the mouse pointer passes over a control its appearance
    # is changed to match the control's cursor.
    # </p>
    # 
    # @return the receiver's cursor or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_cursor
      check_widget
      return @cursor
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
    # Returns the font that the receiver will use to paint textual information.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_font
      check_widget
      return !(@font).nil? ? @font : default_font
    end
    
    typesig { [] }
    # Returns the foreground color that the receiver will use to draw.
    # 
    # @return the receiver's foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_foreground
      check_widget
      return get_foreground_color
    end
    
    typesig { [] }
    def get_foreground_color
      return !(@foreground).nil? ? Color.cocoa_new(self.attr_display, @foreground) : default_foreground
    end
    
    typesig { [] }
    # Returns layout data which is associated with the receiver.
    # 
    # @return the receiver's layout data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_layout_data
      check_widget
      return @layout_data
    end
    
    typesig { [] }
    # Returns a point describing the receiver's location relative
    # to its parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the point is
    # relative to the display.
    # 
    # @return the receiver's location
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_location
      check_widget
      rect = top_view.frame
      return Point.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y))
    end
    
    typesig { [] }
    # Returns the receiver's pop up menu if it has one, or null
    # if it does not. All controls may optionally have a pop up
    # menu that is displayed when the user requests one for
    # the control. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pop up
    # menu is platform specific.
    # 
    # @return the receiver's menu
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_menu
      check_widget
      return @menu
    end
    
    typesig { [] }
    def get_mininum_height
      return 0
    end
    
    typesig { [] }
    # Returns the receiver's monitor.
    # 
    # @return the receiver's monitor
    # 
    # @since 3.0
    def get_monitor
      check_widget
      monitors = self.attr_display.get_monitors
      if ((monitors.attr_length).equal?(1))
        return monitors[0]
      end
      index = -1
      value = -1
      bounds_ = get_bounds
      if (!(self).equal?(get_shell))
        bounds_ = self.attr_display.map(@parent, nil, bounds_)
      end
      i = 0
      while i < monitors.attr_length
        rect = bounds_.intersection(monitors[i].get_bounds)
        area = rect.attr_width * rect.attr_height
        if (area > 0 && area > value)
          index = i
          value = area
        end
        i += 1
      end
      if (index >= 0)
        return monitors[index]
      end
      center_x = bounds_.attr_x + bounds_.attr_width / 2
      center_y = bounds_.attr_y + bounds_.attr_height / 2
      i_ = 0
      while i_ < monitors.attr_length
        rect = monitors[i_].get_bounds
        x = center_x < rect.attr_x ? rect.attr_x - center_x : center_x > rect.attr_x + rect.attr_width ? center_x - rect.attr_x - rect.attr_width : 0
        y = center_y < rect.attr_y ? rect.attr_y - center_y : center_y > rect.attr_y + rect.attr_height ? center_y - rect.attr_y - rect.attr_height : 0
        distance = x * x + y * y
        if ((index).equal?(-1) || distance < value)
          index = i_
          value = distance
        end
        i_ += 1
      end
      return monitors[index]
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Composite</code>
    # or null when the receiver is a shell that was created with null or
    # a display for a parent.
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
    def get_path
      count_ = 0
      shell = get_shell
      control = self
      while (!(control).equal?(shell))
        count_ += 1
        control = control.attr_parent
      end
      control = self
      result = Array.typed(Control).new(count_) { nil }
      while (!(control).equal?(shell))
        result[(count_ -= 1)] = control
        control = control.attr_parent
      end
      return result
    end
    
    typesig { [Region] }
    def get_path(region)
      if ((region).nil?)
        return nil
      end
      return get_path(region.attr_handle)
    end
    
    typesig { [::Java::Int] }
    # long
    def get_path(region)
      callback = Callback.new(self, "regionToRects", 4)
      if ((callback.get_address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      path = NSBezierPath.bezier_path
      path.retain
      OS._qdregion_to_rects(region, OS.attr_k_qdparse_region_from_top_left, callback.get_address, path.attr_id)
      callback.dispose
      if (path.is_empty)
        path.append_bezier_path_with_rect(NSRect.new)
      end
      return path
    end
    
    typesig { [] }
    # Returns the region that defines the shape of the control,
    # or null if the control has the default shape.
    # 
    # @return the region that defines the shape of the shell (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_region
      check_widget
      return @region
    end
    
    typesig { [] }
    # Returns the receiver's shell. For all controls other than
    # shells, this simply returns the control's nearest ancestor
    # shell. Shells return themselves, even if they are children
    # of other shells.
    # 
    # @return the receiver's shell
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getParent
    def get_shell
      check_widget
      return @parent.get_shell
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
      rect = top_view.frame
      return Point.new(RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [] }
    def get_theme_alpha
      return 1 * @parent.get_theme_alpha
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has
    # not been set.
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
    # Returns <code>true</code> if the receiver is visible, and
    # <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      return ((self.attr_state & HIDDEN)).equal?(0)
    end
    
    typesig { [] }
    # long
    def get_visible_region
      if ((@visible_rgn).equal?(0))
        @visible_rgn = OS._new_rgn
        calculate_visible_region(@view, @visible_rgn, true)
      end
      # long
      result = OS._new_rgn
      OS._copy_rgn(@visible_rgn, result)
      return result
    end
    
    typesig { [] }
    def has_border
      return !((self.attr_style & SWT::BORDER)).equal?(0)
    end
    
    typesig { [] }
    def has_focus
      return (self.attr_display.get_focus_control).equal?(self)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSPoint] }
    # long
    # long
    # long
    def hit_test(id, sel, point)
      if (!((self.attr_state & DISABLED)).equal?(0))
        return 0
      end
      if (!is_active)
        return 0
      end
      if (!(@region_path).nil?)
        superview_ = NSView.new(id).superview
        if (!(superview_).nil?)
          pt = superview_.convert_point_to_view_(point, @view)
          if (!@view.is_flipped)
            pt.attr_y = @view.bounds.attr_height - pt.attr_y
          end
          if (!@region_path.contains_point(pt))
            return 0
          end
        end
      end
      return super(id, sel, point)
    end
    
    typesig { [] }
    def ime_in_composition
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def insert_text(id, sel, string)
      if ((@view.window___org_eclipse_swt_widgets_control_11.first_responder.attr_id).equal?(id))
        s = self.get_shell
        ns_event = NSApplication.shared_application.current_event
        if (!(ns_event).nil?)
          # long
          type_ = ns_event.type
          if ((!s.attr_key_input_happened && (type_).equal?(OS::NSKeyDown)) || (type_).equal?(OS::NSSystemDefined))
            str = NSString.new(string)
            if (str.is_kind_of_class(OS.objc_get_class("NSAttributedString")))
              str = NSAttributedString.new(string).string
            end
            # 64
            length_ = RJava.cast_to_int(str.length)
            buffer = CharArray.new(length_)
            str.get_characters(buffer)
            i = 0
            while i < buffer.attr_length
              s.attr_key_input_happened = true
              event = Event.new
              if ((i).equal?(0) && (type_).equal?(OS::NSKeyDown))
                set_key_state(event, SWT::KeyDown, ns_event)
              end
              event.attr_character = buffer[i]
              if (!send_key_event(SWT::KeyDown, event))
                return false
              end
              i += 1
            end
          end
        end
        if (!((self.attr_state & CANVAS)).equal?(0))
          return true
        end
      end
      return super(id, sel, string)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Control</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    # 
    # long
    def internal_new__gc(data)
      check_widget
      view = paint_view
      # long
      context = 0
      if (!(data).nil? && !(data.attr_paint_rect).nil?)
        graphics_context = NSGraphicsContext.current_context
        context = graphics_context.attr_id
        if (!view.is_flipped)
          data.attr_state &= ~VISIBLE_REGION
        end
      else
        graphics_context = NSGraphicsContext.graphics_context_with_window(view.window___org_eclipse_swt_widgets_control_13)
        flipped_context = NSGraphicsContext.graphics_context_with_graphics_port(graphics_context.graphics_port, true)
        graphics_context = flipped_context
        context = graphics_context.attr_id
        if (!(data).nil?)
          data.attr_flipped_context = flipped_context
          data.attr_state &= ~VISIBLE_REGION
          data.attr_visible_rgn = get_visible_region
          self.attr_display.add_context(data)
        end
      end
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= self.attr_style & (mask | SWT::MIRRORED)
        end
        data.attr_device = self.attr_display
        data.attr_thread = self.attr_display.attr_thread
        data.attr_view = view
        data.attr_foreground = get_foreground_color.attr_handle
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        data.attr_background = control.get_background_color.attr_handle
        data.attr_font = !(@font).nil? ? @font : default_font
      end
      return context
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Control</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # long
    def internal_dispose__gc(context, data)
      check_widget
      graphics_context = NSGraphicsContext.new(context)
      self.attr_display.remove_context(data)
      if (!(data).nil?)
        if ((data.attr_paint_rect).nil?)
          graphics_context.flush_graphics
        end
        if (!(data.attr_visible_rgn).equal?(0))
          OS._dispose_rgn(data.attr_visible_rgn)
        end
        data.attr_visible_rgn = 0
      end
    end
    
    typesig { [] }
    def invalidate_children_visible_region
    end
    
    typesig { [] }
    def invalidate_visible_region
      index = 0
      siblings = @parent.__get_children
      while (index < siblings.attr_length && !(siblings[index]).equal?(self))
        index += 1
      end
      i = index
      while i < siblings.attr_length
        sibling = siblings[i]
        sibling.reset_visible_region
        sibling.invalidate_children_visible_region
        i += 1
      end
      @parent.reset_visible_region
    end
    
    typesig { [] }
    def is_active
      return (get_shell.get_modal_shell).nil?
    end
    
    typesig { [] }
    # Answers a boolean indicating whether a Label that precedes the receiver in
    # a layout should be read by screen readers as the recevier's label.
    def is_described_by_label
      return true
    end
    
    typesig { [] }
    def is_drawing
      return get_drawing && @parent.is_drawing
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # ancestors up to and including the receiver's nearest ancestor
    # shell are enabled.  Otherwise, <code>false</code> is returned.
    # A disabled control is typically not selectable from the user
    # interface and draws with an inactive or "grayed" look.
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
    def is_enabled_cursor
      return is_enabled
    end
    
    typesig { [Control] }
    def is_focus_ancestor(control)
      while (!(control).nil? && !(control).equal?(self) && !(control.is_a?(Shell)))
        control = control.attr_parent
      end
      return (control).equal?(self)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver has the user-interface
    # focus, and <code>false</code> otherwise.
    # 
    # @return the receiver's focus state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_focus_control
      check_widget
      focus_control = self.attr_display.attr_focus_control
      if (!(focus_control).nil? && !focus_control.is_disposed)
        return (self).equal?(focus_control)
      end
      return has_focus
    end
    
    typesig { [] }
    def is_obscured
      # long
      visible_rgn = get_visible_region
      bounds_rgn = OS._new_rgn
      rect = Array.typed(::Java::Short).new(4) { 0 }
      bounds_ = @view.visible_rect
      OS._set_rect(rect, RJava.cast_to_short(bounds_.attr_x), RJava.cast_to_short(bounds_.attr_y), RJava.cast_to_short((bounds_.attr_x + bounds_.attr_width)), RJava.cast_to_short((bounds_.attr_y + bounds_.attr_height)))
      OS._rect_rgn(bounds_rgn, rect)
      OS._diff_rgn(bounds_rgn, visible_rgn, bounds_rgn)
      obscured = !OS._empty_rgn(bounds_rgn)
      OS._dispose_rgn(bounds_rgn)
      OS._dispose_rgn(visible_rgn)
      return obscured
    end
    
    typesig { [] }
    # Returns <code>true</code> if the underlying operating
    # system supports this reparenting, otherwise <code>false</code>
    # 
    # @return <code>true</code> if the widget can be reparented, otherwise <code>false</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_reparentable
      check_widget
      return true
    end
    
    typesig { [] }
    def is_showing
      # This is not complete.  Need to check if the
      # widget is obscurred by a parent or sibling.
      if (!is_visible)
        return false
      end
      control = self
      while (!(control).nil?)
        size = control.get_size
        if ((size.attr_x).equal?(0) || (size.attr_y).equal?(0))
          return false
        end
        control = control.attr_parent
      end
      return true
    end
    
    typesig { [] }
    def is_tab_group
      tab_list = @parent.__get_tab_list
      if (!(tab_list).nil?)
        i = 0
        while i < tab_list.attr_length
          if ((tab_list[i]).equal?(self))
            return true
          end
          i += 1
        end
      end
      code = traversal_code(0, nil)
      if (!((code & (SWT::TRAVERSE_ARROW_PREVIOUS | SWT::TRAVERSE_ARROW_NEXT))).equal?(0))
        return false
      end
      return !((code & (SWT::TRAVERSE_TAB_PREVIOUS | SWT::TRAVERSE_TAB_NEXT))).equal?(0)
    end
    
    typesig { [] }
    def is_tab_item
      tab_list = @parent.__get_tab_list
      if (!(tab_list).nil?)
        i = 0
        while i < tab_list.attr_length
          if ((tab_list[i]).equal?(self))
            return false
          end
          i += 1
        end
      end
      code = traversal_code(0, nil)
      return !((code & (SWT::TRAVERSE_ARROW_PREVIOUS | SWT::TRAVERSE_ARROW_NEXT))).equal?(0)
    end
    
    typesig { [NSView] }
    def is_trim(view)
      return false
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # ancestors up to and including the receiver's nearest ancestor
    # shell are visible. Otherwise, <code>false</code> is returned.
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    def is_visible
      check_widget
      return get_visible && @parent.is_visible
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def key_down(id, sel, the_event)
      if ((@view.window___org_eclipse_swt_widgets_control_15.first_responder.attr_id).equal?(id))
        s = self.get_shell
        s.attr_key_input_happened = false
        text_input = !(OS.objc_msg_send(id, OS.attr_sel_conforms_to_protocol_, OS.objc_get_protocol("NSTextInput"))).equal?(0)
        if (!text_input)
          # Not a text field, so send a key event here.
          ns_event = NSEvent.new(the_event)
          consume = Array.typed(::Java::Boolean).new(1) { false }
          if (translate_traversal(ns_event.key_code, ns_event, consume))
            return
          end
          if (is_disposed)
            return
          end
          if (!send_key_event(ns_event, SWT::KeyDown))
            return
          end
          if (consume[0])
            return
          end
        else
          # Control is some kind of text field, so the key event will be sent from insertText: or doCommandBySelector:
          super(id, sel, the_event)
          if (ime_in_composition)
            return
          end
          # If none of those methods triggered a key event send one now.
          if (!s.attr_key_input_happened)
            ns_event = NSEvent.new(the_event)
            consume = Array.typed(::Java::Boolean).new(1) { false }
            if (translate_traversal(ns_event.key_code, ns_event, consume))
              return
            end
            if (is_disposed)
              return
            end
            if (!send_key_event(ns_event, SWT::KeyDown))
              return
            end
            if (consume[0])
              return
            end
          end
          return
        end
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def key_up(id, sel, the_event)
      if ((@view.window___org_eclipse_swt_widgets_control_17.first_responder.attr_id).equal?(id))
        ns_event = NSEvent.new(the_event)
        if (!send_key_event(ns_event, SWT::KeyUp))
          return
        end
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def mark_layout(changed, all)
      # Do nothing
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def menu_for_event(id, sel, the_event)
      if (!is_enabled)
        return 0
      end
      pt = NSEvent.mouse_location
      pt.attr_y = RJava.cast_to_int((self.attr_display.get_primary_frame.attr_height - pt.attr_y))
      x = RJava.cast_to_int(pt.attr_x)
      y = RJava.cast_to_int(pt.attr_y)
      event = Event.new
      event.attr_x = x
      event.attr_y = y
      send_event(SWT::MenuDetect, event)
      # widget could be disposed at this point
      if (is_disposed)
        return 0
      end
      if (!event.attr_doit)
        return 0
      end
      menu = get_menu
      if (!(menu).nil? && !menu.is_disposed)
        if (!(x).equal?(event.attr_x) || !(y).equal?(event.attr_y))
          menu.set_location(event.attr_x, event.attr_y)
        end
        menu.set_visible(true)
        return 0
      end
      return super(id, sel, the_event)
    end
    
    typesig { [] }
    def menu_shell
      return @parent.menu_shell
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def scroll_wheel(id, sel, the_event)
      if ((id).equal?(@view.attr_id))
        if (hooks(SWT::MouseWheel) || filters(SWT::MouseWheel))
          ns_event = NSEvent.new(the_event)
          if (!(ns_event.delta_y).equal?(0))
            if (!send_mouse_event(ns_event, SWT::MouseWheel, true))
              return
            end
          end
        end
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int] }
    # long
    def is_event_view(id)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_event(id, sel, the_event, type_)
      if (!self.attr_display.attr_send_event)
        return true
      end
      self.attr_display.attr_send_event = false
      if (!is_event_view(id))
        return true
      end
      dragging = false
      consume = nil
      ns_event = NSEvent.new(the_event)
      # 64
      ns_type = RJava.cast_to_int(ns_event.type)
      manager = NSInputManager.current_input_manager
      if (!(manager).nil? && manager.wants_to_handle_mouse_events)
        if (manager.handle_mouse_event(ns_event))
          return true
        end
      end
      case (ns_type)
      when OS::NSLeftMouseDown
        if ((ns_event.click_count).equal?(1) && !((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect))
          consume = Array.typed(::Java::Boolean).new(1) { false }
          location = @view.convert_point_from_view_(ns_event.location_in_window, nil)
          if (!@view.is_flipped)
            location.attr_y = @view.bounds.attr_height - location.attr_y
          end
          dragging = drag_detect(RJava.cast_to_int(location.attr_x), RJava.cast_to_int(location.attr_y), false, consume)
        end
      when OS::NSLeftMouseDragged, OS::NSRightMouseDragged, OS::NSOtherMouseDragged
        self.attr_display.check_enter_exit(self, ns_event, false)
      when OS::NSLeftMouseUp, OS::NSRightMouseUp, OS::NSOtherMouseUp
        self.attr_display.check_enter_exit(self.attr_display.find_control(true), ns_event, false)
      end
      send_mouse_event(ns_event, type_, false)
      if ((type_).equal?(SWT::MouseDown) && (ns_event.click_count).equal?(2))
        send_mouse_event(ns_event, SWT::MouseDoubleClick, false)
      end
      if (dragging)
        send_mouse_event(ns_event, SWT::DragDetect, false)
      end
      if (!(consume).nil? && consume[0])
        return false
      end
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseDown))
        return
      end
      tracking = is_event_view(id)
      display = self.attr_display
      if (tracking)
        display.attr_tracking_control = self
      end
      super(id, sel, the_event)
      if (tracking)
        display.attr_tracking_control = nil
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_up(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseUp))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_dragged(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseMove))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_down(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseDown))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_up(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseUp))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_dragged(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseMove))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_down(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseDown))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_up(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseUp))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_dragged(id, sel, the_event)
      if (!mouse_event(id, sel, the_event, SWT::MouseMove))
        return
      end
      super(id, sel, the_event)
    end
    
    typesig { [] }
    def moved
      send_event(SWT::Move)
    end
    
    typesig { [Control] }
    # Moves the receiver above the specified control in the
    # drawing order. If the argument is null, then the receiver
    # is moved to the top of the drawing order. The control at
    # the top of the drawing order will not be covered by other
    # controls even if they occupy intersecting areas.
    # 
    # @param control the sibling control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#moveBelow
    # @see Composite#getChildren
    def move_above(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(@parent).equal?(control.attr_parent))
          return
        end
      end
      set_zorder(control, true)
    end
    
    typesig { [Control] }
    # Moves the receiver below the specified control in the
    # drawing order. If the argument is null, then the receiver
    # is moved to the bottom of the drawing order. The control at
    # the bottom of the drawing order will be covered by all other
    # controls which occupy intersecting areas.
    # 
    # @param control the sibling control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#moveAbove
    # @see Composite#getChildren
    def move_below(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(@parent).equal?(control.attr_parent))
          return
        end
      end
      set_zorder(control, false)
    end
    
    typesig { [Control] }
    def new__accessible(control)
      return Accessible.internal_new__accessible(self)
    end
    
    typesig { [] }
    # Causes the receiver to be resized to its preferred size.
    # For a composite, this involves computing the preferred size
    # from its layout, if there is one.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeSize(int, int, boolean)
    def pack
      check_widget
      pack(true)
    end
    
    typesig { [::Java::Boolean] }
    # Causes the receiver to be resized to its preferred size.
    # For a composite, this involves computing the preferred size
    # from its layout, if there is one.
    # <p>
    # If the changed flag is <code>true</code>, it indicates that the receiver's
    # <em>contents</em> have changed, therefore any caches that a layout manager
    # containing the control may have been keeping need to be flushed. When the
    # control is resized, the changed flag will be <code>false</code>, so layout
    # manager caches can be retained.
    # </p>
    # 
    # @param changed whether or not the receiver's contents have changed
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeSize(int, int, boolean)
    def pack(changed)
      check_widget
      set_size(compute_size(SWT::DEFAULT, SWT::DEFAULT, changed))
    end
    
    typesig { [] }
    def paint_view
      return event_view
    end
    
    typesig { [SwtGC] }
    # Prints the receiver and all children.
    # 
    # @param gc the gc where the drawing occurs
    # @return <code>true</code> if the operation was successful and <code>false</code> otherwise
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the gc has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def print(gc)
      check_widget
      if ((gc).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      gc.attr_handle.save_graphics_state
      NSGraphicsContext.set_current_context(gc.attr_handle)
      transform_ = NSAffineTransform.transform
      transform_.translate_xby(0, @view.bounds.attr_height)
      transform_.scale_xby(1, -1)
      transform_.concat
      @view.display_rect_ignoring_opacity(@view.bounds, gc.attr_handle)
      gc.attr_handle.restore_graphics_state
      return true
    end
    
    typesig { [] }
    # Causes the entire bounds of the receiver to be marked
    # as needing to be redrawn. The next time a paint request
    # is processed, the control will be completely painted,
    # including the background.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #update()
    # @see PaintListener
    # @see SWT#Paint
    # @see SWT#NO_BACKGROUND
    # @see SWT#NO_REDRAW_RESIZE
    # @see SWT#NO_MERGE_PAINTS
    # @see SWT#DOUBLE_BUFFERED
    def redraw
      check_widget
      @view.set_needs_display(true)
    end
    
    typesig { [::Java::Boolean] }
    def redraw(children)
      # checkWidget();
      @view.set_needs_display(true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Causes the rectangular area of the receiver specified by
    # the arguments to be marked as needing to be redrawn.
    # The next time a paint request is processed, that area of
    # the receiver will be painted, including the background.
    # If the <code>all</code> flag is <code>true</code>, any
    # children of the receiver which intersect with the specified
    # area will also paint their intersecting areas. If the
    # <code>all</code> flag is <code>false</code>, the children
    # will not be painted.
    # 
    # @param x the x coordinate of the area to draw
    # @param y the y coordinate of the area to draw
    # @param width the width of the area to draw
    # @param height the height of the area to draw
    # @param all <code>true</code> if children should redraw, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #update()
    # @see PaintListener
    # @see SWT#Paint
    # @see SWT#NO_BACKGROUND
    # @see SWT#NO_REDRAW_RESIZE
    # @see SWT#NO_MERGE_PAINTS
    # @see SWT#DOUBLE_BUFFERED
    def redraw(x, y, width, height, all)
      check_widget
      rect = NSRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      @view.set_needs_display_in_rect(rect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def region_to_rects(message, rgn, r, path)
      pt = NSPoint.new
      rect = Array.typed(::Java::Short).new(4) { 0 }
      if ((message).equal?(OS.attr_k_qdregion_to_rects_msg_parse))
        OS.memmove___org_eclipse_swt_widgets_control_19(rect, r, rect.attr_length * 2)
        pt.attr_x = rect[1]
        pt.attr_y = rect[0]
        OS.objc_msg_send(path, OS.attr_sel_move_to_point_, pt)
        pt.attr_x = rect[3]
        OS.objc_msg_send(path, OS.attr_sel_line_to_point_, pt)
        pt.attr_x = rect[3]
        pt.attr_y = rect[2]
        OS.objc_msg_send(path, OS.attr_sel_line_to_point_, pt)
        pt.attr_x = rect[1]
        OS.objc_msg_send(path, OS.attr_sel_line_to_point_, pt)
        OS.objc_msg_send(path, OS.attr_sel_close_path)
      end
      return 0
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@view, self)
    end
    
    typesig { [::Java::Boolean] }
    def release(destroy)
      next_ = nil
      previous = nil
      if (destroy && !(@parent).nil?)
        children = @parent.__get_children
        index = 0
        while (index < children.attr_length)
          if ((children[index]).equal?(self))
            break
          end
          index += 1
        end
        if (0 < index && (index + 1) < children.attr_length)
          next_ = children[index + 1]
          previous = children[index - 1]
        end
      end
      super(destroy)
      if (destroy)
        if (!(previous).nil?)
          previous.add_relation(next_)
        end
      end
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@view).nil?)
        @view.release
      end
      @view = nil
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      invalidate_visible_region
      @parent.remove_control(self)
    end
    
    typesig { [] }
    def release_widget
      super
      if ((self.attr_display.attr_current_control).equal?(self))
        self.attr_display.attr_current_control = nil
        self.attr_display.timer_exec(-1, self.attr_display.attr_hover_timer)
      end
      if ((self.attr_display.attr_tracking_control).equal?(self))
        self.attr_display.attr_tracking_control = nil
      end
      if ((self.attr_display.attr_tooltip_control).equal?(self))
        self.attr_display.attr_tooltip_control = nil
      end
      if (!(@menu).nil? && !@menu.is_disposed)
        @menu.dispose
      end
      @menu = nil
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
      end
      @visible_rgn = 0
      @layout_data = nil
      if (!(@accessible).nil?)
        @accessible.internal_dispose__accessible
      end
      @accessible = nil
      @region = nil
      if (!(@region_path).nil?)
        @region_path.release
      end
      @region_path = nil
    end
    
    typesig { [ControlListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is moved or resized.
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
    # @see ControlListener
    # @see #addControlListener
    def remove_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Move, listener)
      self.attr_event_table.unhook(SWT::Resize, listener)
    end
    
    typesig { [DragDetectListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when a drag gesture occurs.
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
    # @see DragDetectListener
    # @see #addDragDetectListener
    # 
    # @since 3.3
    def remove_drag_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::DragDetect, listener)
    end
    
    typesig { [FocusListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control gains or loses focus.
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
    # @see FocusListener
    # @see #addFocusListener
    def remove_focus_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::FocusIn, listener)
      self.attr_event_table.unhook(SWT::FocusOut, listener)
    end
    
    typesig { [HelpListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the help events are generated for the control.
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
    # @see HelpListener
    # @see #addHelpListener
    def remove_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Help, listener)
    end
    
    typesig { [KeyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when keys are pressed and released on the system keyboard.
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
    # @see KeyListener
    # @see #addKeyListener
    def remove_key_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::KeyUp, listener)
      self.attr_event_table.unhook(SWT::KeyDown, listener)
    end
    
    typesig { [MenuDetectListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the platform-specific context menu trigger has
    # occurred.
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
    # @see MenuDetectListener
    # @see #addMenuDetectListener
    # 
    # @since 3.3
    def remove_menu_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MenuDetect, listener)
    end
    
    typesig { [MouseListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when mouse buttons are pressed and released.
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
    # @see MouseListener
    # @see #addMouseListener
    def remove_mouse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseDown, listener)
      self.attr_event_table.unhook(SWT::MouseUp, listener)
      self.attr_event_table.unhook(SWT::MouseDoubleClick, listener)
    end
    
    typesig { [MouseMoveListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the mouse moves.
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
    # @see MouseMoveListener
    # @see #addMouseMoveListener
    def remove_mouse_move_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseMove, listener)
    end
    
    typesig { [MouseTrackListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the mouse passes or hovers over controls.
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
    # @see MouseTrackListener
    # @see #addMouseTrackListener
    def remove_mouse_track_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseEnter, listener)
      self.attr_event_table.unhook(SWT::MouseExit, listener)
      self.attr_event_table.unhook(SWT::MouseHover, listener)
    end
    
    typesig { [MouseWheelListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the mouse wheel is scrolled.
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
    # @see MouseWheelListener
    # @see #addMouseWheelListener
    # 
    # @since 3.3
    def remove_mouse_wheel_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseWheel, listener)
    end
    
    typesig { [PaintListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver needs to be painted.
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
    # @see PaintListener
    # @see #addPaintListener
    def remove_paint_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Paint, listener)
    end
    
    typesig { [] }
    # Remove "Labeled by" relations from the receiver.
    def remove_relation
      if (!is_described_by_label)
        return
      end
      accessible_element = focus_view
      if (accessible_element.is_a?(NSControl))
        view_as_control = accessible_element
        if (!(view_as_control.cell).nil?)
          accessible_element = view_as_control.cell
        end
      end
      accessible_element.accessibility_set_override_value(accessible_element, OS::NSAccessibilityTitleUIElementAttribute)
    end
    
    typesig { [TraverseListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when traversal events occur.
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
    # @see TraverseListener
    # @see #addTraverseListener
    def remove_traverse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Traverse, listener)
    end
    
    typesig { [] }
    def reset_visible_region
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
        @visible_rgn = 0
      end
      gcs = self.attr_display.attr_contexts
      if (!(gcs).nil?)
        # long
        visible_rgn = 0
        i = 0
        while i < gcs.attr_length
          data = gcs[i]
          if (!(data).nil?)
            if ((data.attr_view).equal?(@view))
              if ((visible_rgn).equal?(0))
                visible_rgn = get_visible_region
              end
              data.attr_state &= ~VISIBLE_REGION
              OS._copy_rgn(visible_rgn, data.attr_visible_rgn)
            end
          end
          i += 1
        end
        if (!(visible_rgn).equal?(0))
          OS._dispose_rgn(visible_rgn)
        end
      end
    end
    
    typesig { [] }
    def resized
      send_event(SWT::Resize)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def send_drag_event(button, state_mask, x, y)
      event = Event.new
      event.attr_button = button
      event.attr_x = x
      event.attr_y = y
      event.attr_state_mask = state_mask
      post_event(SWT::DragDetect, event)
      return event.attr_doit
    end
    
    typesig { [::Java::Int] }
    def send_focus_event(type_)
      display = self.attr_display
      shell = get_shell
      display.attr_focus_event = type_
      display.attr_focus_control = self
      send_event(type_)
      # widget could be disposed at this point
      display.attr_focus_event = SWT::None
      display.attr_focus_control = nil
      # It is possible that the shell may be
      # disposed at this point.  If this happens
      # don't send the activate and deactivate
      # events.
      if (!shell.is_disposed)
        case (type_)
        when SWT::FocusIn
          shell.set_active_control(self)
        when SWT::FocusOut
          if (!(shell).equal?(display.get_active_shell))
            shell.set_active_control(nil)
          end
        end
      end
    end
    
    typesig { [NSEvent, ::Java::Int, ::Java::Boolean] }
    def send_mouse_event(ns_event, type_, send)
      shell = nil
      event = Event.new
      case (type_)
      # FALL THROUGH
      when SWT::MouseDown
        shell = get_shell
        # 64
        button = RJava.cast_to_int(ns_event.button_number)
        case (button)
        when 0
          event.attr_button = 1
        when 1
          event.attr_button = 3
        when 2
          event.attr_button = 2
        when 3
          event.attr_button = 4
        when 4
          event.attr_button = 5
        end
      when SWT::MouseUp, SWT::MouseDoubleClick, SWT::DragDetect
        # 64
        button = RJava.cast_to_int(ns_event.button_number)
        case (button)
        when 0
          event.attr_button = 1
          event.attr_button = 3
          event.attr_button = 2
          event.attr_button = 4
          event.attr_button = 5
        when 1
          event.attr_button = 3
          event.attr_button = 2
          event.attr_button = 4
          event.attr_button = 5
        when 2
          event.attr_button = 2
          event.attr_button = 4
          event.attr_button = 5
        when 3
          event.attr_button = 4
          event.attr_button = 5
        when 4
          event.attr_button = 5
        end
      when SWT::MouseWheel
        event.attr_detail = SWT::SCROLL_LINE
        # double
        delta = ns_event.delta_y
        event.attr_count = delta > 0 ? Math.max(1, RJava.cast_to_int(delta)) : Math.min(-1, RJava.cast_to_int(delta))
      end
      if (!(event.attr_button).equal?(0))
        # 64
        event.attr_count = RJava.cast_to_int(ns_event.click_count)
      end
      window_point = nil
      view = event_view
      if ((ns_event).nil? || (ns_event.type).equal?(OS::NSMouseMoved))
        window = view.window___org_eclipse_swt_widgets_control_21
        window_point = window.convert_screen_to_base(NSEvent.mouse_location)
      else
        window_point = ns_event.location_in_window
      end
      point = view.convert_point_from_view_(window_point, nil)
      if (!view.is_flipped)
        point.attr_y = view.bounds.attr_height - point.attr_y
      end
      event.attr_x = RJava.cast_to_int(point.attr_x)
      event.attr_y = RJava.cast_to_int(point.attr_y)
      set_input_state(event, ns_event, type_)
      if (send)
        send_event(type_, event)
        if (is_disposed)
          return false
        end
      else
        post_event(type_, event)
      end
      if (!(shell).nil?)
        shell.set_active_control(self)
      end
      return event.attr_doit
    end
    
    typesig { [] }
    def set_background
      # redrawWidget (handle, false);
    end
    
    typesig { [Color] }
    # Sets the receiver's background color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # For example, on Windows the background of a Button cannot be changed.
    # </p>
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_background(color)
      check_widget
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      # double
      background = !(color).nil? ? color.attr_handle : nil
      if (self.==(background, @background))
        return
      end
      @background = background
      update_background
      redraw_widget(@view, true)
    end
    
    typesig { [Image] }
    # Sets the receiver's background image to the image specified
    # by the argument, or to the default system color for the control
    # if the argument is null.  The background image is tiled to fill
    # the available space.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # For example, on Windows the background of a Button cannot be changed.
    # </p>
    # @param image the new image (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument is not a bitmap</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_background_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((image).equal?(@background_image))
        return
      end
      @background_image = image
      update_background
      redraw_widget(@view, false)
    end
    
    typesig { [] }
    def update_background
    end
    
    typesig { [NSColor] }
    def set_background(ns_color)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the arguments. The <code>x</code> and
    # <code>y</code> arguments are relative to the receiver's
    # parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the <code>x</code>
    # and <code>y</code> arguments are relative to the display.
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause that
    # value to be set to zero instead.
    # </p>
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # @param width the new width for the receiver
    # @param height the new height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_bounds(x, y, width, height)
      check_widget
      set_bounds(x, y, Math.max(0, width), Math.max(0, height), true, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      top_view_ = top_view
      if (move && resize)
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
        top_view_.set_frame(rect)
      else
        if (move)
          point = NSPoint.new
          point.attr_x = x
          point.attr_y = y
          top_view_.set_frame_origin(point)
        else
          if (resize)
            size = NSSize.new
            size.attr_width = width
            size.attr_height = height
            top_view_.set_frame_size(size)
          end
        end
      end
    end
    
    typesig { [Rectangle] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the argument. The <code>x</code> and
    # <code>y</code> fields of the rectangle are relative to
    # the receiver's parent (or its display if its parent is null).
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause that
    # value to be set to zero instead.
    # </p>
    # 
    # @param rect the new bounds for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_bounds(rect)
      check_widget
      if ((rect).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_bounds(rect.attr_x, rect.attr_y, Math.max(0, rect.attr_width), Math.max(0, rect.attr_height), true, true)
    end
    
    typesig { [::Java::Boolean] }
    # If the argument is <code>true</code>, causes the receiver to have
    # all mouse events delivered to it until the method is called with
    # <code>false</code> as the argument.  Note that on some platforms,
    # a mouse button must currently be down for capture to be assigned.
    # 
    # @param capture <code>true</code> to capture the mouse, and <code>false</code> to release it
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_capture(capture)
      check_widget
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def set_clip_region(x, y)
      if (!(@region_path).nil?)
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(-x, -y)
        @region_path.transform_using_affine_transform(transform_)
        @region_path.add_clip
        transform_.translate_xby(2 * x, 2 * y)
        @region_path.transform_using_affine_transform(transform_)
      end
      frame = top_view.frame
      @parent.set_clip_region(frame.attr_x + x, frame.attr_y + y)
    end
    
    typesig { [Cursor] }
    # Sets the receiver's cursor to the cursor specified by the
    # argument, or to the default cursor for that kind of control
    # if the argument is null.
    # <p>
    # When the mouse pointer passes over a control its appearance
    # is changed to match the control's cursor.
    # </p>
    # 
    # @param cursor the new cursor (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_cursor(cursor)
      check_widget
      if (!(cursor).nil? && cursor.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @cursor = cursor
      if (!is_enabled)
        return
      end
      if (!@view.window___org_eclipse_swt_widgets_control_23.are_cursor_rects_enabled)
        return
      end
      self.attr_display.set_cursor(self.attr_display.attr_current_control)
    end
    
    typesig { [] }
    def set_default_font
      if (self.attr_display.attr_small_fonts)
        set_font(default_font.attr_handle)
        set_small_size
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the receiver's drag detect state. If the argument is
    # <code>true</code>, the receiver will detect drag gestures,
    # otherwise these gestures will be ignored.
    # 
    # @param dragDetect the new drag detect state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def set_drag_detect(drag_detect_)
      check_widget
      if (drag_detect_)
        self.attr_state |= DRAG_DETECT
      else
        self.attr_state &= ~DRAG_DETECT
      end
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      if (((((self.attr_state & DISABLED)).equal?(0))).equal?(enabled))
        return
      end
      control = nil
      fix_focus = false
      if (!enabled)
        if (!(self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
          control = self.attr_display.get_focus_control
          fix_focus = is_focus_ancestor(control)
        end
      end
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      enable_widget(enabled)
      if (fix_focus)
        fix_focus(control)
      end
    end
    
    typesig { [] }
    # Causes the receiver to have the <em>keyboard focus</em>,
    # such that all keyboard events will be delivered to it.  Focus
    # reassignment will respect applicable platform constraints.
    # 
    # @return <code>true</code> if the control got focus, and <code>false</code> if it was unable to.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #forceFocus
    def set_focus
      check_widget
      if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
        return false
      end
      return force_focus
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # to the font specified by the argument, or to the default font for that
    # kind of control if the argument is null.
    # 
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_font(font)
      check_widget
      if (!(font).nil?)
        if (font.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      @font = font
      set_font(!(font).nil? ? font.attr_handle : default_font.attr_handle)
    end
    
    typesig { [NSFont] }
    def set_font(font)
      if (@view.is_a?(NSControl))
        (@view).set_font(font)
      end
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # </p>
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_foreground(color)
      check_widget
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      # double
      foreground = !(color).nil? ? color.attr_handle : nil
      if (self.==(foreground, @foreground))
        return
      end
      @foreground = foreground
      set_foreground(foreground)
      redraw_widget(@view, false)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSPoint] }
    # long
    # long
    def set_frame_origin(id, sel, point)
      top_view_ = top_view
      if (!(top_view_.attr_id).equal?(id))
        super(id, sel, point)
        return
      end
      frame_ = top_view_.frame
      super(id, sel, point)
      if (!(frame_.attr_x).equal?(point.attr_x) || !(frame_.attr_y).equal?(point.attr_y))
        invalidate_visible_region
        moved
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSSize] }
    # long
    # long
    def set_frame_size(id, sel, size)
      top_view_ = top_view
      if (!(top_view_.attr_id).equal?(id))
        super(id, sel, size)
        return
      end
      frame_ = top_view_.frame
      super(id, sel, size)
      if (!(frame_.attr_width).equal?(size.attr_width) || !(frame_.attr_height).equal?(size.attr_height))
        invalidate_visible_region
        resized
      end
    end
    
    typesig { [Object] }
    # Sets the layout data associated with the receiver to the argument.
    # 
    # @param layoutData the new layout data for the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout_data(layout_data)
      check_widget
      @layout_data = layout_data
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's location to the point specified by
    # the arguments which are relative to the receiver's
    # parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the point is
    # relative to the display.
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(x, y)
      check_widget
      set_bounds(x, y, 0, 0, true, false)
    end
    
    typesig { [Point] }
    # Sets the receiver's location to the point specified by
    # the arguments which are relative to the receiver's
    # parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the point is
    # relative to the display.
    # 
    # @param location the new location for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(location)
      check_widget
      if ((location).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_bounds(location.attr_x, location.attr_y, 0, 0, true, false)
    end
    
    typesig { [Menu] }
    # Sets the receiver's pop up menu to the argument.
    # All controls may optionally have a pop up
    # menu that is displayed when the user requests one for
    # the control. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pop up
    # menu is platform specific.
    # <p>
    # Note: Disposing of a control that has a pop up menu will
    # dispose of the menu.  To avoid this behavior, set the
    # menu to null before the control is disposed.
    # </p>
    # 
    # @param menu the new pop up menu
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_MENU_NOT_POP_UP - the menu is not a pop up menu</li>
    # <li>ERROR_INVALID_PARENT - if the menu is not in the same widget tree</li>
    # <li>ERROR_INVALID_ARGUMENT - if the menu has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_menu(menu)
      check_widget
      if (!(menu).nil?)
        if (menu.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (((menu.attr_style & SWT::POP_UP)).equal?(0))
          error(SWT::ERROR_MENU_NOT_POP_UP)
        end
        if (!(menu.attr_parent).equal?(menu_shell))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      @menu = menu
    end
    
    typesig { [Composite] }
    # Changes the parent of the widget to be the one provided if
    # the underlying operating system supports this feature.
    # Returns <code>true</code> if the parent is successfully changed.
    # 
    # @param parent the new parent for the control.
    # @return <code>true</code> if the parent is changed and <code>false</code> otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # <li>ERROR_NULL_ARGUMENT - if the parent is <code>null</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_parent(parent)
      check_widget
      if ((parent).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (parent.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@parent).equal?(parent))
        return true
      end
      if (!is_reparentable)
        return false
      end
      release_parent
      new_shell = parent.get_shell
      old_shell = get_shell
      new_decorations = parent.menu_shell
      old_decorations = menu_shell
      if (!(old_shell).equal?(new_shell) || !(old_decorations).equal?(new_decorations))
        menus = old_shell.find_menus(self)
        fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
      end
      top_view_ = top_view
      top_view_.retain
      top_view_.remove_from_superview
      parent.content_view.add_subview(top_view_, OS::NSWindowBelow, nil)
      top_view_.release
      @parent = parent
      return true
    end
    
    typesig { [::Java::Boolean] }
    # If the argument is <code>false</code>, causes subsequent drawing
    # operations in the receiver to be ignored. No drawing of any kind
    # can occur in the receiver until the flag is set to true.
    # Graphics operations that occurred while the flag was
    # <code>false</code> are lost. When the flag is set to <code>true</code>,
    # the entire widget is marked as needing to be redrawn.  Nested calls
    # to this method are stacked.
    # <p>
    # Note: This operation is a hint and may not be supported on some
    # platforms or for some widgets.
    # </p>
    # 
    # @param redraw the new redraw state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #redraw(int, int, int, int, boolean)
    # @see #update()
    def set_redraw(redraw)
      check_widget
      if (redraw)
        if (((@draw_count -= 1)).equal?(0))
          invalidate_visible_region
          redraw_widget(top_view, true)
        end
      else
        if ((@draw_count).equal?(0))
          invalidate_visible_region
        end
        @draw_count += 1
      end
    end
    
    typesig { [Region] }
    # Sets the shape of the control to the region specified
    # by the argument.  When the argument is null, the
    # default shape of the control is restored.
    # 
    # @param region the region that defines the shape of the control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the region has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_region(region)
      check_widget
      if (!(region).nil? && region.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @region = region
      if (!(@region_path).nil?)
        @region_path.release
      end
      @region_path = get_path(region)
      redraw_widget(@view, true)
    end
    
    typesig { [] }
    def set_relations
      if ((@parent).nil?)
        return
      end
      children = @parent.__get_children
      count_ = children.attr_length
      if (count_ > 1)
        # the receiver is the last item in the list, so its predecessor will
        # be the second-last item in the list
        child = children[count_ - 2]
        if (!(child).equal?(self))
          child.add_relation(self)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      return false
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
      set_bounds(0, 0, Math.max(0, width), Math.max(0, height), false, true)
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
      set_bounds(0, 0, Math.max(0, size.attr_x), Math.max(0, size.attr_y), false, true)
    end
    
    typesig { [] }
    def set_small_size
      if (@view.is_a?(NSControl))
        cell_ = (@view).cell
        if (!(cell_).nil?)
          cell_.set_control_size(OS::NSSmallControlSize)
        end
      end
    end
    
    typesig { [] }
    def set_tab_item_focus
      if (!is_showing)
        return false
      end
      return force_focus
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
      check_tool_tip(nil)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      check_widget
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
      if (visible)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the show
        # event.  If this happens, just return.
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
      end
      # Feature in the Macintosh.  If the receiver has focus, hiding
      # the receiver causes no control to have focus.  Also, the focus
      # needs to be cleared from any TXNObject so that it stops blinking
      # the caret.  The fix is to assign focus to the first ancestor
      # control that takes focus.  If no control will take focus, clear
      # the focus control.
      control = nil
      fix_focus_ = false
      if (!visible)
        if (!(self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
          control = self.attr_display.get_focus_control
          fix_focus_ = is_focus_ancestor(control)
        end
      end
      top_view.set_hidden(!visible)
      invalidate_visible_region
      if (!visible)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the show
        # event.  If this happens, just return.
        send_event(SWT::Hide)
        if (is_disposed)
          return
        end
      end
      if (fix_focus_)
        fix_focus(control)
      end
    end
    
    typesig { [] }
    def set_zorder
      top_view_ = top_view
      @parent.content_view.add_subview(top_view_, OS::NSWindowBelow, nil)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def should_delay_window_ordering_for_event(id, sel, the_event)
      shell = get_shell
      if (!((shell.attr_style & SWT::ON_TOP)).equal?(0))
        return false
      end
      return super(id, sel, the_event)
    end
    
    typesig { [Control, ::Java::Boolean] }
    def set_zorder(sibling, above)
      index = 0
      sibling_index = 0
      old_next_index = -1
      children = nil
      # determine the receiver's and sibling's indexes in the parent
      children = @parent.__get_children
      while (index < children.attr_length)
        if ((children[index]).equal?(self))
          break
        end
        index += 1
      end
      if (!(sibling).nil?)
        while (sibling_index < children.attr_length)
          if ((children[sibling_index]).equal?(sibling))
            break
          end
          sibling_index += 1
        end
      end
      # remove "Labeled by" relationships that will no longer be valid
      remove_relation
      if (index + 1 < children.attr_length)
        old_next_index = index + 1
        children[old_next_index].remove_relation
      end
      if (!(sibling).nil?)
        if (above)
          sibling.remove_relation
        else
          if (sibling_index + 1 < children.attr_length)
            children[sibling_index + 1].remove_relation
          end
        end
      end
      other_view = (sibling).nil? ? nil : sibling.top_view
      @view.retain
      @view.remove_from_superview
      @parent.content_view.add_subview(@view, above ? OS::NSWindowAbove : OS::NSWindowBelow, other_view)
      @view.release
      invalidate_visible_region
      # determine the receiver's new index in the parent
      if (!(sibling).nil?)
        if (above)
          index = sibling_index - (index < sibling_index ? 1 : 0)
        else
          index = sibling_index + (sibling_index < index ? 1 : 0)
        end
      else
        if (above)
          index = 0
        else
          index = children.attr_length - 1
        end
      end
      # add new "Labeled by" relations as needed
      children = @parent.__get_children
      if (0 < index)
        children[index - 1].add_relation(self)
      end
      if (index + 1 < children.attr_length)
        add_relation(children[index + 1])
      end
      if (!(old_next_index).equal?(-1))
        if (old_next_index <= index)
          old_next_index -= 1
        end
        # the last two conditions below ensure that duplicate relations are not hooked
        if (0 < old_next_index && !(old_next_index).equal?(index) && !(old_next_index).equal?(index + 1))
          children[old_next_index - 1].add_relation(children[old_next_index])
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def sort(items)
      # Shell Sort from K&R, pg 108
      length_ = items.attr_length
      gap = length_ / 2
      while gap > 0
        i = gap
        while i < length_
          j = i - gap
          while j >= 0
            if (items[j] <= items[j + gap])
              swap = items[j]
              items[j] = items[j + gap]
              items[j + gap] = swap
            end
            j -= gap
          end
          i += 1
        end
        gap /= 2
      end
    end
    
    typesig { [String] }
    def text_extent(string)
      attrib_str = create_string(string, nil, nil, 0, true, false)
      size_ = attrib_str.size
      attrib_str.release
      return size_
    end
    
    typesig { [] }
    def tooltip_text
      return @tool_tip_text
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a point which is the result of converting the
    # argument, which is specified in display relative coordinates,
    # to coordinates relative to the receiver.
    # <p>
    # @param x the x coordinate to be translated
    # @param y the y coordinate to be translated
    # @return the translated coordinates
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def to_control(x, y)
      check_widget
      return self.attr_display.map(nil, self, x, y)
    end
    
    typesig { [Point] }
    # Returns a point which is the result of converting the
    # argument, which is specified in display relative coordinates,
    # to coordinates relative to the receiver.
    # <p>
    # @param point the point to be translated (must not be null)
    # @return the translated coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def to_control(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return to_control(point.attr_x, point.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a point which is the result of converting the
    # argument, which is specified in coordinates relative to
    # the receiver, to display relative coordinates.
    # <p>
    # @param x the x coordinate to be translated
    # @param y the y coordinate to be translated
    # @return the translated coordinates
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def to_display(x, y)
      check_widget
      return self.attr_display.map(self, nil, x, y)
    end
    
    typesig { [Point] }
    # Returns a point which is the result of converting the
    # argument, which is specified in coordinates relative to
    # the receiver, to display relative coordinates.
    # <p>
    # @param point the point to be translated (must not be null)
    # @return the translated coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def to_display(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return to_display(point.attr_x, point.attr_y)
    end
    
    typesig { [] }
    def top_view
      return @view
    end
    
    typesig { [::Java::Int, NSEvent, Array.typed(::Java::Boolean)] }
    def translate_traversal(key, the_event, consume)
      detail = SWT::TRAVERSE_NONE
      code = traversal_code(key, the_event)
      all = false
      case (key)
      # KP Enter
      # Up arrow
      # Left arrow
      # Down arrow
      # Page up
      when 53
        # Esc
        all = true
        detail = SWT::TRAVERSE_ESCAPE
      when 76, 36
        # Return
        all = true
        detail = SWT::TRAVERSE_RETURN
      when 48
        # Tab
        # long
        modifiers = the_event.modifier_flags
        next_ = ((modifiers & OS::NSShiftKeyMask)).equal?(0)
        detail = next_ ? SWT::TRAVERSE_TAB_NEXT : SWT::TRAVERSE_TAB_PREVIOUS
      when 126, 123, 125, 124
        # Right arrow
        # Down arrow
        next_ = (key).equal?(125) || (key).equal?(124)
        # Right arrow
        detail = next_ ? SWT::TRAVERSE_ARROW_NEXT : SWT::TRAVERSE_ARROW_PREVIOUS
      when 116, 121
        # Page down
        all = true
        # long
        modifiers = the_event.modifier_flags
        if (((modifiers & OS::NSControlKeyMask)).equal?(0))
          return false
        end
        # Page down
        detail = (key).equal?(121) ? SWT::TRAVERSE_PAGE_NEXT : SWT::TRAVERSE_PAGE_PREVIOUS
      else
        return false
      end
      event = Event.new
      event.attr_doit = consume[0] = !((code & detail)).equal?(0)
      event.attr_detail = detail
      if (!set_key_state(event, SWT::Traverse, the_event))
        return false
      end
      shell = get_shell
      control = self
      begin
        if (control.traverse(event))
          return true
        end
        if (!event.attr_doit && control.hooks(SWT::Traverse))
          return false
        end
        if ((control).equal?(shell))
          return false
        end
        control = control.attr_parent
      end while (all && !(control).nil?)
      return false
    end
    
    typesig { [::Java::Int, NSEvent] }
    def traversal_code(key, the_event)
      code = SWT::TRAVERSE_RETURN | SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS | SWT::TRAVERSE_PAGE_NEXT | SWT::TRAVERSE_PAGE_PREVIOUS
      shell = get_shell
      if (!(shell.attr_parent).nil?)
        code |= SWT::TRAVERSE_ESCAPE
      end
      return code
    end
    
    typesig { [::Java::Char] }
    def traverse_mnemonic(key)
      return false
    end
    
    typesig { [::Java::Int] }
    # Based on the argument, perform one of the expected platform
    # traversal action. The argument should be one of the constants:
    # <code>SWT.TRAVERSE_ESCAPE</code>, <code>SWT.TRAVERSE_RETURN</code>,
    # <code>SWT.TRAVERSE_TAB_NEXT</code>, <code>SWT.TRAVERSE_TAB_PREVIOUS</code>,
    # <code>SWT.TRAVERSE_ARROW_NEXT</code> and <code>SWT.TRAVERSE_ARROW_PREVIOUS</code>.
    # 
    # @param traversal the type of traversal
    # @return true if the traversal succeeded
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def traverse(traversal)
      check_widget
      event = Event.new
      event.attr_doit = true
      event.attr_detail = traversal
      return traverse(event)
    end
    
    typesig { [Event] }
    def traverse(event)
      send_event(SWT::Traverse, event)
      if (is_disposed)
        return true
      end
      if (!event.attr_doit)
        return false
      end
      case (event.attr_detail)
      when SWT::TRAVERSE_NONE
        return true
      when SWT::TRAVERSE_ESCAPE
        return traverse_escape
      when SWT::TRAVERSE_RETURN
        return traverse_return
      when SWT::TRAVERSE_TAB_NEXT
        return traverse_group(true)
      when SWT::TRAVERSE_TAB_PREVIOUS
        return traverse_group(false)
      when SWT::TRAVERSE_ARROW_NEXT
        return traverse_item(true)
      when SWT::TRAVERSE_ARROW_PREVIOUS
        return traverse_item(false)
      when SWT::TRAVERSE_MNEMONIC
        return traverse_mnemonic(event)
      when SWT::TRAVERSE_PAGE_NEXT
        return traverse_page(true)
      when SWT::TRAVERSE_PAGE_PREVIOUS
        return traverse_page(false)
      end
      return false
    end
    
    typesig { [] }
    def traverse_escape
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_group(next_)
      root = compute_tab_root
      group = compute_tab_group
      list = root.compute_tab_list
      length_ = list.attr_length
      index = 0
      while (index < length_)
        if ((list[index]).equal?(group))
          break
        end
        index += 1
      end
      # It is possible (but unlikely), that application
      # code could have disposed the widget in focus in
      # or out events.  Ensure that a disposed widget is
      # not accessed.
      if ((index).equal?(length_))
        return false
      end
      start = index
      offset = (next_) ? 1 : -1
      while (!((index = ((index + offset + length_) % length_))).equal?(start))
        widget = list[index]
        if (!widget.is_disposed && widget.set_tab_group_focus)
          return true
        end
      end
      if (group.is_disposed)
        return false
      end
      return group.set_tab_group_focus
    end
    
    typesig { [::Java::Boolean] }
    def traverse_item(next_)
      children = @parent.__get_children
      length_ = children.attr_length
      index = 0
      while (index < length_)
        if ((children[index]).equal?(self))
          break
        end
        index += 1
      end
      # It is possible (but unlikely), that application
      # code could have disposed the widget in focus in
      # or out events.  Ensure that a disposed widget is
      # not accessed.
      if ((index).equal?(length_))
        return false
      end
      start = index
      offset = (next_) ? 1 : -1
      while (!((index = (index + offset + length_) % length_)).equal?(start))
        child = children[index]
        if (!child.is_disposed && child.is_tab_item)
          if (child.set_tab_item_focus)
            return true
          end
        end
      end
      return false
    end
    
    typesig { [] }
    def traverse_return
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_page(next_)
      return false
    end
    
    typesig { [Event] }
    def traverse_mnemonic(event)
      return false
    end
    
    typesig { [] }
    # Forces all outstanding paint requests for the widget
    # to be processed before this method returns. If there
    # are no outstanding paint request, this method does
    # nothing.
    # <p>
    # Note: This method does not cause a redraw.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #redraw()
    # @see #redraw(int, int, int, int, boolean)
    # @see PaintListener
    # @see SWT#Paint
    def update
      check_widget
      update(false)
    end
    
    typesig { [::Java::Boolean] }
    def update(all)
      # checkWidget();
      if (self.attr_display.attr_is_painting.contains_object(@view))
        return
      end
      # TODO - not all
      @view.display_if_needed
    end
    
    typesig { [] }
    def update_background_mode
      old_state = self.attr_state & PARENT_BACKGROUND
      check_background
      if (!(old_state).equal?((self.attr_state & PARENT_BACKGROUND)))
        set_background
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def reset_cursor_rects(id, sel)
      if (is_enabled)
        call_super(id, sel)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def update_tracking_areas(id, sel)
      if (is_enabled)
        call_super(id, sel)
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      update_cursor_rects(enabled, @view)
    end
    
    typesig { [::Java::Boolean, NSView] }
    def update_cursor_rects(enabled, widget)
      if (enabled)
        widget.reset_cursor_rects
        widget.update_tracking_areas
      else
        widget.discard_cursor_rects
        areas = widget.tracking_areas
        i = 0
        while i < areas.count
          widget.remove_tracking_area(NSTrackingArea.new(areas.object_at_index(i)))
          i += 1
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_layout(all)
      # Do nothing
    end
    
    private
    alias_method :initialize__control, :initialize
  end
  
end
