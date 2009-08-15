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
  module ControlImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ATSFontMetrics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTextInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlFontStyleRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HMHelpContentRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeFrameDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Accessibility, :Accessible
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
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
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
    
    attr_accessor :visible_rgn
    alias_method :attr_visible_rgn, :visible_rgn
    undef_method :visible_rgn
    alias_method :attr_visible_rgn=, :visible_rgn=
    undef_method :visible_rgn=
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
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
    
    attr_accessor :gcs
    alias_method :attr_gcs, :gcs
    undef_method :gcs
    alias_method :attr_gcs=, :gcs=
    undef_method :gcs=
    
    attr_accessor :accessible
    alias_method :attr_accessible, :accessible
    undef_method :accessible
    alias_method :attr_accessible=, :accessible=
    undef_method :accessible=
    
    class_module.module_eval {
      const_set_lazy(:RESET_VISIBLE_REGION) { "org.eclipse.swt.internal.resetVisibleRegion" }
      const_attr_reader  :RESET_VISIBLE_REGION
    }
    
    typesig { [] }
    # $NON-NLS-1$
    def initialize
      @handle = 0
      @parent = nil
      @tool_tip_text = nil
      @layout_data = nil
      @draw_count = 0
      @visible_rgn = 0
      @menu = nil
      @foreground = nil
      @background = nil
      @background_image = nil
      @font = nil
      @cursor = nil
      @region = nil
      @gcs = nil
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @handle = 0
      @parent = nil
      @tool_tip_text = nil
      @layout_data = nil
      @draw_count = 0
      @visible_rgn = 0
      @menu = nil
      @foreground = nil
      @background = nil
      @background_image = nil
      @font = nil
      @cursor = nil
      @region = nil
      @gcs = nil
      @accessible = nil
      super(parent, style)
      @parent = parent
      create_widget
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def action_proc(the_control, part_code)
      result = super(the_control, part_code)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (is_disposed)
        return OS.attr_no_err
      end
      send_track_events
      return result
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def color_proc(in_control, in_message, in_draw_depth, in_draw_in_color)
      case (in_message)
      when OS.attr_k_control_msg_apply_text_color
        if (!(@foreground).nil?)
          OS._rgbfore_color(to_rgbcolor(@foreground))
        else
          OS._set_theme_text_color(RJava.cast_to_short(OS.attr_k_theme_text_color_dialog_active), RJava.cast_to_short(in_draw_depth), !(in_draw_in_color).equal?(0))
        end
        return OS.attr_no_err
      when OS.attr_k_control_msg_set_up_background
        background = !(@background).nil? ? @background : get_parent_background
        if (!(background).nil?)
          OS._rgbback_color(to_rgbcolor(background))
        else
          OS._set_theme_background(RJava.cast_to_short(OS.attr_k_theme_brush_dialog_background_active), RJava.cast_to_short(in_draw_depth), !(in_draw_in_color).equal?(0))
        end
        return OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def call_focus_event_handler(next_handler, the_event)
      return OS._call_next_event_handler(next_handler, the_event)
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
          return Array.typed(Control).new([self])
        end
      end
      return Array.typed(Control).new(0) { nil }
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
    def create_widget
      self.attr_state |= DRAG_DETECT
      check_orientation(@parent)
      super
      check_background
      check_buffered
      set_default_font
      set_zorder
      set_relations
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_system_color(SWT::COLOR_WIDGET_BACKGROUND)
    end
    
    typesig { [] }
    def default_font
      family = Array.typed(::Java::Byte).new(256) { 0 }
      size = Array.typed(::Java::Short).new(1) { 0 }
      style = Array.typed(::Java::Byte).new(1) { 0 }
      OS._get_theme_font(RJava.cast_to_short(default_theme_font), RJava.cast_to_short(OS.attr_sm_system_script), family, size, style)
      id = OS._fmget_font_family_from_name(family)
      font = Array.typed(::Java::Int).new(1) { 0 }
      OS._fmget_font_from_font_family_instance(id, style[0], font, nil)
      return Font.carbon_new(self.attr_display, OS._fmget_atsfont_ref_from_font(font[0]), style[0], size[0])
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_system_color(SWT::COLOR_WIDGET_FOREGROUND)
    end
    
    typesig { [] }
    def default_theme_font
      if (self.attr_display.attr_small_fonts)
        return OS.attr_k_theme_small_system_font
      end
      return OS.attr_k_theme_system_font
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@handle)
    end
    
    typesig { [] }
    def destroy_widget
      display = self.attr_display
      the_control = top_handle
      release_handle
      if (!(the_control).equal?(0))
        if (display.attr_delay_dispose)
          display.add_to_dispose_window(the_control)
        else
          OS._dispose_control(the_control)
        end
      end
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
    def drag_detect(button, count, state_mask, x, y)
      if (!(button).equal?(1) || !(count).equal?(1))
        return false
      end
      if (!drag_detect(x, y, false, nil))
        return false
      end
      return send_drag_event(button, state_mask, x, y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      rect = Rect.new
      window = OS._get_control_owner(@handle)
      pt = CGPoint.new
      OS._hiview_convert_point(pt, @handle, 0)
      x += RJava.cast_to_int(pt.attr_x)
      y += RJava.cast_to_int(pt.attr_y)
      OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      x += rect.attr_left
      y += rect.attr_top
      pt1 = Org::Eclipse::Swt::Internal::Carbon::Point.new
      pt1.attr_h = RJava.cast_to_short(x)
      pt1.attr_v = RJava.cast_to_short(y)
      return OS._wait_mouse_moved(pt1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean, Rect] }
    def draw_focus(control, context, has_focus, has_border, draw_background, inset)
      if (draw_background)
        fill_background(control, context, nil)
      end
      rect = CGRect.new
      OS._hiview_get_bounds(control, rect)
      rect.attr_x += inset.attr_left
      rect.attr_y += inset.attr_top
      rect.attr_width -= inset.attr_right + inset.attr_left
      rect.attr_height -= inset.attr_bottom + inset.attr_top
      state = 0
      if (OS._is_control_enabled(control))
        state = OS._is_control_active(control) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_inactive
      else
        state = OS._is_control_active(control) ? OS.attr_k_theme_state_unavailable : OS.attr_k_theme_state_unavailable_inactive
      end
      if (has_border)
        info = HIThemeFrameDrawInfo.new
        info.attr_state = state
        info.attr_kind = OS.attr_k_hitheme_frame_text_field_square
        info.attr_is_focused = has_focus
        OS._hitheme_draw_frame(rect, info, context, OS.attr_k_hitheme_orientation_normal)
      else
        OS._hitheme_draw_focus_rect(rect, has_focus, context, OS.attr_k_hitheme_orientation_normal)
      end
    end
    
    typesig { [] }
    def draw_focus_ring
      return has_border
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def draw_gripper(x, y, width, height, vertical)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      if (!(control).equal?(@handle))
        return
      end
      if (!hooks(SWT::Paint) && !filters(SWT::Paint))
        return
      end
      # Retrieve the damage rect
      rect = Rect.new
      OS._get_region_bounds(visible_rgn, rect)
      # Send paint event
      port = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_port(port)
      data = SwtGCData.new
      data.attr_port = port[0]
      data.attr_paint_event = the_event
      data.attr_visible_rgn = visible_rgn
      gc = SwtGC.carbon_new(self, data)
      event = Event.new
      event.attr_gc = gc
      event.attr_x = rect.attr_left
      event.attr_y = rect.attr_top
      event.attr_width = rect.attr_right - rect.attr_left
      event.attr_height = rect.attr_bottom - rect.attr_top
      send_event(SWT::Paint, event)
      event.attr_gc = nil
      gc.dispose
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      top_handle_ = top_handle
      if (enabled)
        OS._enable_control(top_handle_)
      else
        OS._disable_control(top_handle_)
      end
    end
    
    typesig { [Array.typed(::Java::Float), Array.typed(::Java::Float)] }
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
    
    typesig { [::Java::Int, ::Java::Int, Rectangle] }
    def fill_background(control, context, bounds)
      OS._cgcontext_save_gstate(context)
      rect = CGRect.new
      if (!(bounds).nil?)
        rect.attr_x = bounds.attr_x
        rect.attr_y = bounds.attr_y
        rect.attr_width = bounds.attr_width
        rect.attr_height = bounds.attr_height
      else
        OS._hiview_get_bounds(control, rect)
      end
      widget = find_background_control
      if (!(widget).nil? && !(widget.attr_background_image).nil?)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, control, widget.attr_handle)
        OS._cgcontext_translate_ctm(context, -pt.attr_x, -pt.attr_y)
        pattern = Pattern.new(self.attr_display, widget.attr_background_image)
        data = SwtGCData.new
        data.attr_device = self.attr_display
        data.attr_background = widget.get_background_color.attr_handle
        gc = SwtGC.carbon_new(context, data)
        gc.set_background_pattern(pattern)
        gc.fill_rectangle(RJava.cast_to_int((rect.attr_x + pt.attr_x)), RJava.cast_to_int((rect.attr_y + pt.attr_y)), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
        gc.dispose
        pattern.dispose
      else
        if (!(widget).nil? && !(widget.attr_background).nil?)
          colorspace = OS._cgcolor_space_create_device_rgb
          OS._cgcontext_set_fill_color_space(context, colorspace)
          OS._cgcontext_set_fill_color(context, widget.attr_background)
          OS._cgcolor_space_release(colorspace)
          OS._cgcontext_set_alpha(context, get_theme_alpha)
          OS._cgcontext_fill_rect(context, rect)
        else
          if (OS::VERSION >= 0x1040)
            OS._hitheme_set_fill(OS.attr_k_theme_brush_dialog_background_active, 0, context, OS.attr_k_hitheme_orientation_normal)
            OS._cgcontext_set_alpha(context, get_theme_alpha)
            OS._cgcontext_fill_rect(context, rect)
          else
            rect1 = Rect.new
            rect1.attr_left = RJava.cast_to_short(rect.attr_x)
            rect1.attr_top = RJava.cast_to_short(rect.attr_y)
            rect1.attr_right = RJava.cast_to_short((rect.attr_x + rect.attr_width))
            rect1.attr_bottom = RJava.cast_to_short((rect.attr_y + rect.attr_height))
            OS._set_theme_background(RJava.cast_to_short(OS.attr_k_theme_brush_dialog_background_active), RJava.cast_to_short(0), true)
            OS._erase_rect(rect1)
          end
        end
      end
      OS._cgcontext_restore_gstate(context)
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
      window = OS._get_control_owner(@handle)
      OS._clear_keyboard_focus(window)
    end
    
    typesig { [] }
    def focus_handle
      return @handle
    end
    
    typesig { [] }
    def focus_part
      return OS.attr_k_control_focus_next_part
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
      # || !isActive ()
      if (!is_enabled || !is_visible)
        return false
      end
      if (is_focus_control)
        return true
      end
      shell.set_saved_focus(nil)
      shell.bring_to_top(false)
      if (is_disposed)
        return false
      end
      # Feature in the Macintosh.  SetKeyboardFocus() sends kEventControlSetFocusPart
      # with the part code equal to kControlFocusNoPart to the control that is about
      # to lose focus and then sends kEventControlSetFocusPart with part code equal
      # to kControlFocusNextPart to this control (the one that is about to get focus).
      # If the control does not accept focus because of the full keyboard access mode,
      # kEventControlSetFocusPart is sent again to the control in focus causing multiple
      # focus events to happen.  The fix is to ignore focus events and issue them only
      # if the focus control changed.
      focus_handle_ = focus_handle
      window = OS._get_control_owner(focus_handle_)
      old_focus = self.attr_display.get_focus_control(window, true)
      if ((old_focus).equal?(self))
        return true
      end
      self.attr_display.attr_ignore_focus = true
      OS._set_keyboard_focus(window, focus_handle_, RJava.cast_to_short(focus_part))
      self.attr_display.attr_ignore_focus = false
      new_focus = self.attr_display.get_focus_control
      if (!(old_focus).equal?(new_focus))
        if (!(old_focus).nil? && !old_focus.is_disposed)
          old_focus.send_focus_event(SWT::FocusOut, false)
        end
        if (!(new_focus).nil? && !new_focus.is_disposed && new_focus.is_enabled)
          new_focus.send_focus_event(SWT::FocusIn, false)
        end
      end
      if (is_disposed)
        return false
      end
      shell.set_saved_focus(self)
      return has_focus
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
    def get_ax_attributes
      return nil
    end
    
    typesig { [] }
    # Returns the receiver's background color.
    # 
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
      return !(@background).nil? ? Color.carbon_new(self.attr_display, @background) : default_background
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
      return get_control_bounds(top_handle)
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
    
    typesig { [::Java::Int] }
    def get_draw_count(control)
      if (!is_trim_handle(control) && @draw_count > 0)
        return @draw_count
      end
      return @parent.get_draw_count(control)
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
      return !(@foreground).nil? ? Color.carbon_new(self.attr_display, @foreground) : default_foreground
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
      rect = get_control_bounds(top_handle)
      return Point.new(rect.attr_x, rect.attr_y)
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
      bounds = get_bounds
      if (!(self).equal?(get_shell))
        bounds = self.attr_display.map(@parent, nil, bounds)
      end
      i = 0
      while i < monitors.attr_length
        rect = bounds.intersection(monitors[i].get_bounds)
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
      center_x = bounds.attr_x + bounds.attr_width / 2
      center_y = bounds.attr_y + bounds.attr_height / 2
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
    def get_parent_background
      return @parent.attr_background
    end
    
    typesig { [] }
    def get_path
      count = 0
      shell = get_shell
      control = self
      while (!(control).equal?(shell))
        count += 1
        control = control.attr_parent
      end
      control = self
      result = Array.typed(Control).new(count) { nil }
      while (!(control).equal?(shell))
        result[(count -= 1)] = control
        control = control.attr_parent
      end
      return result
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
      return get_control_size(top_handle)
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
    def get_theme_alpha
      return 1 * @parent.get_theme_alpha
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
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_visible_region(control, clip_children)
      if (!clip_children)
        return super(control, clip_children)
      end
      if ((@visible_rgn).equal?(0))
        @visible_rgn = OS._new_rgn
        calculate_visible_region(control, @visible_rgn, clip_children)
      end
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
      return (self).equal?(self.attr_display.get_focus_control)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
      case (in_request)
      when OS.attr_k_hmsupply_content
        content_provided = Array.typed(::Java::Short).new([OS.attr_k_hmcontent_not_provided_dont_propagate])
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
          # Feature in the Macintosh.  Despite the fact that the Mac
          # provides 23 different types of alignment for the help text,
          # it does not allow the text to be positioned at the current
          # mouse position.  The fix is to center the text in a rectangle
          # that surrounds the original position of the mouse.  As the
          # mouse is moved, this rectangle is grown to include the new
          # location of the mouse.  The help text is then centered by
          # the  Mac in the new rectangle that was carefully constructed
          # such that the help text will stay in the same position.
          cursor_height = 16
          help_content.attr_tag_side = RJava.cast_to_short(OS.attr_k_hmabsolute_center_aligned)
          pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
          OS.memmove(pt, Array.typed(::Java::Int).new([in_global_mouse]), 4)
          x = pt.attr_h
          y = pt.attr_v
          if (!(self.attr_display.attr_help_widget).equal?(self))
            self.attr_display.attr_last_help_x = x + cursor_height / 2
            self.attr_display.attr_last_help_y = y + cursor_height + cursor_height / 2
          end
          jitter = 4
          delta_x = Math.abs(self.attr_display.attr_last_help_x - x) + jitter
          delta_y = Math.abs(self.attr_display.attr_last_help_y - y) + jitter
          x = self.attr_display.attr_last_help_x - delta_x
          y = self.attr_display.attr_last_help_y - delta_y
          width = delta_x * 2
          height = delta_y * 2
          self.attr_display.attr_help_widget = self
          help_content.attr_abs_hot_rect_left = RJava.cast_to_short(x)
          help_content.attr_abs_hot_rect_top = RJava.cast_to_short(y)
          help_content.attr_abs_hot_rect_right = RJava.cast_to_short((x + width))
          help_content.attr_abs_hot_rect_bottom = RJava.cast_to_short((y + height))
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
    
    typesig { [] }
    def hook_events
      super
      control_proc = self.attr_display.attr_control_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_activate, OS.attr_k_event_class_control, OS.attr_k_event_control_apply_background, OS.attr_k_event_class_control, OS.attr_k_event_control_bounds_changed, OS.attr_k_event_class_control, OS.attr_k_event_control_click, OS.attr_k_event_class_control, OS.attr_k_event_control_contextual_menu_click, OS.attr_k_event_class_control, OS.attr_k_event_control_deactivate, OS.attr_k_event_class_control, OS.attr_k_event_control_draw, OS.attr_k_event_class_control, OS.attr_k_event_control_get_click_activation, OS.attr_k_event_class_control, OS.attr_k_event_control_get_focus_part, OS.attr_k_event_class_control, OS.attr_k_event_control_get_part_region, OS.attr_k_event_class_control, OS.attr_k_event_control_hit, OS.attr_k_event_class_control, OS.attr_k_event_control_hit_test, OS.attr_k_event_class_control, OS.attr_k_event_control_set_cursor, OS.attr_k_event_class_control, OS.attr_k_event_control_set_focus_part, OS.attr_k_event_class_control, OS.attr_k_event_control_track, ])
      control_target = OS._get_control_event_target(@handle)
      OS._install_event_handler(control_target, control_proc, mask.attr_length / 2, mask, @handle, nil)
      accessibility_proc = self.attr_display.attr_accessibility_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_accessibility, OS.attr_k_event_accessible_get_child_at_point, OS.attr_k_event_class_accessibility, OS.attr_k_event_accessible_get_focused_child, OS.attr_k_event_class_accessibility, OS.attr_k_event_accessible_get_all_attribute_names, OS.attr_k_event_class_accessibility, OS.attr_k_event_accessible_get_named_attribute, ])
      OS._install_event_handler(control_target, accessibility_proc, mask.attr_length / 2, mask, @handle, nil)
      help_proc = self.attr_display.attr_help_proc
      OS._hminstall_control_content_callback(@handle, help_proc)
      color_proc = self.attr_display.attr_color_proc
      OS._set_control_color_proc(@handle, color_proc)
      if ((OS._get_control_action(@handle)).equal?(0))
        OS._set_control_action(@handle, self.attr_display.attr_action_proc)
      end
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
    def internal_new__gc(data)
      check_widget
      window = OS._get_control_owner(@handle)
      port = !(data).nil? ? data.attr_port : 0
      if ((port).equal?(0))
        port = OS._get_window_port(window)
      end
      context = 0
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      is_paint = !(data).nil? && !(data.attr_paint_event).equal?(0)
      if (is_paint)
        OS._get_event_parameter(data.attr_paint_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, buffer)
      else
        OS._create_cgcontext_for_port(port, buffer)
      end
      context = buffer[0]
      if ((context).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      visible_rgn = 0
      if (!(data).nil? && !(data.attr_paint_event).equal?(0))
        visible_rgn = data.attr_visible_rgn
      else
        if (get_draw_count(@handle) > 0)
          visible_rgn = OS._new_rgn
        else
          visible_rgn = get_visible_region(@handle, true)
        end
      end
      rect = Rect.new
      port_rect = Rect.new
      OS._get_control_bounds(@handle, rect)
      OS._get_port_bounds(port, port_rect)
      if (is_paint)
        rect.attr_right += rect.attr_left
        rect.attr_bottom += rect.attr_top
        rect.attr_left = rect.attr_top = 0
      else
        content_view = Array.typed(::Java::Int).new(1) { 0 }
        OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, OS._hiview_get_superview(@handle), content_view[0])
        rect.attr_left += RJava.cast_to_int(pt.attr_x)
        rect.attr_top += RJava.cast_to_int(pt.attr_y)
        rect.attr_right += RJava.cast_to_int(pt.attr_x)
        rect.attr_bottom += RJava.cast_to_int(pt.attr_y)
        OS._clip_cgcontext_to_region(context, port_rect, visible_rgn)
        port_height = port_rect.attr_bottom - port_rect.attr_top
        OS._cgcontext_scale_ctm(context, 1, -1)
        OS._cgcontext_translate_ctm(context, rect.attr_left, -port_height + rect.attr_top)
      end
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= self.attr_style & (mask | SWT::MIRRORED)
        end
        data.attr_device = self.attr_display
        data.attr_thread = self.attr_display.attr_thread
        data.attr_foreground = get_foreground_color.attr_handle
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        data.attr_background = control.get_background_color.attr_handle
        data.attr_font = !(@font).nil? ? @font : default_font
        data.attr_visible_rgn = visible_rgn
        data.attr_control = @handle
        data.attr_port_rect = port_rect
        data.attr_control_rect = rect
        data.attr_inset_rect = get_inset
        if ((data.attr_paint_event).equal?(0))
          if ((@gcs).nil?)
            @gcs = Array.typed(SwtGCData).new(4) { nil }
          end
          index = 0
          while (index < @gcs.attr_length && !(@gcs[index]).nil?)
            index += 1
          end
          if ((index).equal?(@gcs.attr_length))
            new_gcs = Array.typed(SwtGCData).new(@gcs.attr_length + 4) { nil }
            System.arraycopy(@gcs, 0, new_gcs, 0, @gcs.attr_length)
            @gcs = new_gcs
          end
          @gcs[index] = data
        end
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
    def internal_dispose__gc(context, data)
      check_widget
      if (!(data).nil?)
        if ((data.attr_paint_event).equal?(0))
          if (!(data.attr_visible_rgn).equal?(0))
            OS._dispose_rgn(data.attr_visible_rgn)
            data.attr_visible_rgn = 0
          end
          index = 0
          while (index < @gcs.attr_length && !(@gcs[index]).equal?(data))
            index += 1
          end
          if (index < @gcs.attr_length)
            @gcs[index] = nil
            index = 0
            while (index < @gcs.attr_length && (@gcs[index]).nil?)
              index += 1
            end
            if ((index).equal?(@gcs.attr_length))
              @gcs = nil
            end
          end
        else
          return
        end
      end
      # This code is intentionally commented. Use CGContextSynchronize
      # instead of CGContextFlush to improve performance.
      # 
      # OS.CGContextFlush (context);
      OS._cgcontext_synchronize(context)
      OS._cgcontext_release(context)
    end
    
    typesig { [::Java::Int] }
    def invalidate_children_visible_region(control)
    end
    
    typesig { [::Java::Int] }
    def invalidate_visible_region(control)
      index = 0
      siblings = @parent.__get_children
      while (index < siblings.attr_length && !(siblings[index]).equal?(self))
        index += 1
      end
      i = index
      while i < siblings.attr_length
        sibling = siblings[i]
        sibling.reset_visible_region(control)
        sibling.invalidate_children_visible_region(control)
        i += 1
      end
      @parent.reset_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def inval_window_rgn(window, rgn)
      @parent.inval_window_rgn(window, rgn)
    end
    
    typesig { [] }
    # Answers a boolean indicating whether a Label that precedes the receiver in
    # a layout should be read by screen readers as the recevier's label.
    def is_described_by_label
      return true
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
    
    typesig { [] }
    def is_enabled_modal
      # NOT DONE - fails for multiple APP MODAL shells
      shells = self.attr_display.get_shells
      i = 0
      while i < shells.attr_length
        modal = shells[i]
        if (!(modal).equal?(self) && modal.is_visible)
          if (!((modal.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
            shell = get_shell
            if ((modal.attr_parent).equal?(shell))
              return false
            end
          end
          bits = SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
          if (!((modal.attr_style & bits)).equal?(0))
            control = self
            while (!(control).nil?)
              if ((control).equal?(modal))
                break
              end
              control = control.attr_parent
            end
            if (!(control).equal?(modal))
              return false
            end
          end
        end
        i += 1
      end
      return true
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
      code = traversal_code(0, 0)
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
      code = traversal_code(0, 0)
      return !((code & (SWT::TRAVERSE_ARROW_PREVIOUS | SWT::TRAVERSE_ARROW_NEXT))).equal?(0)
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
    
    typesig { [] }
    def menu_shell
      return @parent.menu_shell
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_child_at_point(next_handler, the_event, user_data)
      if (!(@accessible).nil?)
        return @accessible.internal_k_event_accessible_get_child_at_point(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_focused_child(next_handler, the_event, user_data)
      if (!(@accessible).nil?)
        return @accessible.internal_k_event_accessible_get_focused_child(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
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
      if (!(@accessible).nil?)
        code = @accessible.internal_k_event_accessible_get_all_attribute_names(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      if (!(@accessible).nil?)
        return @accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, OS.attr_event_not_handled_err)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_contextual_menu_click(next_handler, the_event, user_data)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_control_ref, nil, 4, nil, the_control)
      widget = self.attr_display.get_widget(the_control[0])
      while (!(widget).nil? && !(widget.is_a?(Control)))
        OS._get_super_control(the_control[0], the_control)
        widget = self.attr_display.get_widget(the_control[0])
      end
      if ((widget).equal?(self) && is_enabled)
        x = 0
        y = 0
        rect = Rect.new
        window = OS._get_control_owner(@handle)
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_window_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        x = RJava.cast_to_int(pt.attr_x)
        y = RJava.cast_to_int(pt.attr_y)
        OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        x += rect.attr_left
        y += rect.attr_top
        event = Event.new
        event.attr_x = x
        event.attr_y = y
        send_event(SWT::MenuDetect, event)
        if (event.attr_doit)
          if (!(@menu).nil? && !@menu.is_disposed)
            if (!(event.attr_x).equal?(x) || !(event.attr_y).equal?(y))
              @menu.set_location(event.attr_x, event.attr_y)
            end
            @menu.set_visible(true)
          end
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_click_activation(next_handler, the_event, user_data)
      if (!((get_shell.attr_style & SWT::ON_TOP)).equal?(0))
        OS._set_event_parameter(the_event, OS.attr_k_event_param_click_activation, OS.attr_type_click_activation_result, 4, Array.typed(::Java::Int).new([OS.attr_k_activate_and_handle_click]))
        return OS.attr_no_err
      end
      return super(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_part_region(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!(@region).nil? && !(self).equal?(get_shell))
        part = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
        if ((part[0]).equal?(OS.attr_k_control_structure_meta_part) || (part[0]).equal?(OS.attr_k_control_clickable_meta_part))
          rgn = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_control_region, OS.attr_type_qdrgn_handle, nil, 4, nil, rgn)
          OS._copy_rgn(@region.attr_handle, rgn[0])
          rect = get_inset
          OS._offset_rgn(rgn[0], RJava.cast_to_short(-rect.attr_left), RJava.cast_to_short(-rect.attr_top))
          return OS.attr_no_err
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit_test(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (!(@region).nil? && !(self).equal?(get_shell))
        result = OS._call_next_event_handler(next_handler, the_event)
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        if (!@region.contains(RJava.cast_to_int(pt.attr_x), RJava.cast_to_int(pt.attr_y)))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, 2, Array.typed(::Java::Short).new([0]))
          return result
        end
      end
      if (!((self.attr_state & GRAB)).equal?(0))
        rect = CGRect.new
        OS._hiview_get_bounds(@handle, rect)
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        if (!(OS._cgrect_contains_point(rect, pt)).equal?(0))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, 2, Array.typed(::Java::Short).new([1]))
        end
        return OS.attr_no_err
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_cursor(next_handler, the_event, user_data)
      if (!is_enabled_cursor)
        return OS.attr_no_err
      end
      cursor = nil
      if (is_enabled_modal)
        if (!((cursor = find_cursor)).nil?)
          self.attr_display.set_cursor(cursor.attr_handle)
        end
      end
      return !(cursor).nil? ? OS.attr_no_err : OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      self.attr_display.attr_focus_combo = nil
      result = call_focus_event_handler(next_handler, the_event)
      if (!self.attr_display.attr_ignore_focus)
        if ((result).equal?(OS.attr_no_err))
          window = OS._get_control_owner(@handle)
          if ((window).equal?(OS._get_user_focus_window))
            focus_handle_ = focus_handle
            focus_control = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_keyboard_focus(window, focus_control)
            part = Array.typed(::Java::Short).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
            display = self.attr_display
            display.attr_delay_dispose = true
            if ((part[0]).equal?(OS.attr_k_control_focus_no_part))
              if ((focus_control[0]).equal?(focus_handle_))
                send_focus_event(SWT::FocusOut, false)
              end
            else
              if (!(focus_control[0]).equal?(focus_handle_))
                send_focus_event(SWT::FocusIn, false)
              end
            end
            display.attr_delay_dispose = false
          end
          # widget could be disposed at this point
          if (is_disposed)
            return OS.attr_no_err
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_track(next_handler, the_event, user_data)
      # Feature in the Macintosh.  The default handler of kEventControlTrack
      # calls TrackControl() which consumes key and mouse events until the
      # tracking is canceled.  The fix is to send those events from the
      # action proc of the widget by diffing the mouse and modifier keys
      # state.
      display = self.attr_display
      # display.runDeferredEvents ();
      if (is_disposed)
        return OS.attr_no_err
      end
      if (display.run_popups)
        return OS.attr_no_err
      end
      if (is_disposed)
        return OS.attr_no_err
      end
      display.attr_last_state = OS._get_current_event_button_state
      display.attr_last_modifiers = OS._get_current_event_key_modifiers
      display.attr_grab_control = self
      timer = 0
      if (poll_track_event)
        if ((display.attr_polling_timer).equal?(0))
          id = Array.typed(::Java::Int).new(1) { 0 }
          event_loop = OS._get_current_event_loop
          OS._install_event_loop_timer(event_loop, Display::POLLING_TIMEOUT / 1000.0, Display::POLLING_TIMEOUT / 1000.0, display.attr_polling_proc, 0, id)
          display.attr_polling_timer = timer = id[0]
        end
      end
      result = super(next_handler, the_event, user_data)
      if (!(timer).equal?(0))
        OS._remove_event_loop_timer(timer)
        display.attr_polling_timer = 0
      end
      display.attr_grab_control = nil
      if (is_disposed)
        return OS.attr_no_err
      end
      send_track_events
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      shell = get_shell
      self.attr_display.attr_dragging = false
      consume = Array.typed(::Java::Boolean).new(1) { false }
      button = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_button, OS.attr_type_mouse_button, nil, 2, nil, button)
      click_count = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_click_count, OS.attr_type_uint32, nil, 4, nil, click_count)
      if ((button[0]).equal?(1) && (click_count[0]).equal?(1) && !((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect))
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_window_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        OS._hiview_convert_point(pt, 0, @handle)
        x = RJava.cast_to_int(pt.attr_x)
        y = RJava.cast_to_int(pt.attr_y)
        if (drag_detect(x, y, true, consume))
          self.attr_display.attr_dragging = true
          self.attr_display.attr_drag_button = button[0]
          self.attr_display.attr_drag_x = x
          self.attr_display.attr_drag_y = y
          chord = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_chord, OS.attr_type_uint32, nil, 4, nil, chord)
          self.attr_display.attr_drag_state = chord[0]
          modifiers = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
          self.attr_display.attr_drag_modifiers = modifiers[0]
        end
        if (is_disposed)
          return OS.attr_no_err
        end
      end
      if (!send_mouse_event(SWT::MouseDown, button[0], self.attr_display.attr_click_count, 0, false, the_event))
        consume[0] = true
      end
      if (is_disposed)
        return OS.attr_no_err
      end
      if ((self.attr_display.attr_click_count).equal?(2))
        if (!send_mouse_event(SWT::MouseDoubleClick, button[0], self.attr_display.attr_click_count, 0, false, the_event))
          consume[0] = true
        end
        if (is_disposed)
          return OS.attr_no_err
        end
      end
      if (!shell.is_disposed)
        shell.set_active_control(self)
      end
      return consume[0] ? OS.attr_no_err : OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_dragged(next_handler, the_event, user_data)
      if (is_enabled_modal)
        if (self.attr_display.attr_dragging)
          self.attr_display.attr_dragging = false
          send_drag_event(self.attr_display.attr_drag_button, self.attr_display.attr_drag_state, self.attr_display.attr_drag_modifiers, self.attr_display.attr_drag_x, self.attr_display.attr_drag_y)
          if (is_disposed)
            return OS.attr_no_err
          end
        end
        result = send_mouse_event(SWT::MouseMove, RJava.cast_to_short(0), 0, 0, false, the_event) ? OS.attr_event_not_handled_err : OS.attr_no_err
        if (is_disposed)
          return OS.attr_no_err
        end
        return result
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_moved(next_handler, the_event, user_data)
      if (is_enabled_modal)
        return send_mouse_event(SWT::MouseMove, RJava.cast_to_short(0), 0, 0, false, the_event) ? OS.attr_event_not_handled_err : OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_up(next_handler, the_event, user_data)
      button = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_button, OS.attr_type_mouse_button, nil, 2, nil, button)
      return send_mouse_event(SWT::MouseUp, button[0], self.attr_display.attr_click_count, 0, false, the_event) ? OS.attr_event_not_handled_err : OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_wheel_moved(next_handler, the_event, user_data)
      if (!((self.attr_state & IGNORE_WHEEL)).equal?(0))
        return OS.attr_event_not_handled_err
      end
      # Bug in the Macintosh.  Mouse Wheel events are still processed when the
      # window is not enabled due to a modal dialog.  The fix is to not let the
      # default handlers run when window is modal disabled.
      window = OS._get_control_owner(@handle)
      if (OS._hiwindow_is_document_modal_target(window, nil))
        return OS.attr_no_err
      end
      event = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_event(0, OS.attr_k_event_class_window, OS.attr_k_event_window_get_click_modality, 0.0, 0, event)
      if (!(event[0]).equal?(0))
        part = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_window_part_code, OS.attr_type_window_part_code, nil, 2, nil, part)
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, modifiers.attr_length * 4, nil, modifiers)
        OS._set_event_parameter(event[0], OS.attr_k_event_param_direct_object, OS.attr_type_window_ref, 4, Array.typed(::Java::Int).new([window]))
        OS._set_event_parameter(event[0], OS.attr_k_event_param_window_part_code, OS.attr_type_window_part_code, 2, part)
        OS._set_event_parameter(event[0], OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, 4, modifiers)
        OS._set_event_parameter(event[0], OS.attr_k_event_param_event_ref, OS.attr_type_event_ref, 4, Array.typed(::Java::Int).new([the_event]))
        OS._send_event_to_event_target(event[0], OS._get_application_event_target)
        click_result = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(event[0], OS.attr_k_event_param_modal_click_result, OS.attr_type_modal_click_result, nil, 4, nil, click_result)
        OS._release_event(event[0])
        if (!((click_result[0] & OS.attr_k_himodal_click_is_modal)).equal?(0))
          if (((click_result[0] & OS.attr_k_himodal_click_allow_event)).equal?(0))
            return OS.attr_no_err
          end
        end
      end
      wheel_axis = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_wheel_axis, OS.attr_type_mouse_wheel_axis, nil, 2, nil, wheel_axis)
      wheel_delta = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_wheel_delta, OS.attr_type_sint32, nil, 4, nil, wheel_delta)
      shell = get_shell
      control = self
      while (!(control).nil?)
        if (!control.send_mouse_event(SWT::MouseWheel, RJava.cast_to_short(0), wheel_delta[0], SWT::SCROLL_LINE, true, the_event))
          break
        end
        if (control.send_mouse_wheel(wheel_axis[0], wheel_delta[0]))
          break
        end
        if ((control).equal?(self))
          # Feature in the Macintosh.  For some reason, the kEventMouseWheelMoved
          # event is sent twice to each application handler with the same mouse wheel
          # data.  The fix is to set an ignore flag before calling the next handler
          # in the handler chain.
          self.attr_state |= IGNORE_WHEEL
          result = OS._call_next_event_handler(next_handler, the_event)
          self.attr_state &= ~IGNORE_WHEEL
          if ((result).equal?(OS.attr_no_err))
            break
          end
        end
        if ((control).equal?(shell))
          break
        end
        control = control.attr_parent
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_unicode_for_key_event(next_handler, the_event, user_data)
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      consume = Array.typed(::Java::Boolean).new(1) { false }
      if (translate_traversal(key_code[0], keyboard_event[0], consume))
        return OS.attr_no_err
      end
      if (is_disposed)
        return OS.attr_no_err
      end
      if ((key_code[0]).equal?(114))
        # Help
        control = self
        while (!(control).nil?)
          if (control.hooks(SWT::Help))
            control.post_event(SWT::Help)
            break
          end
          control = control.attr_parent
        end
      end
      result = k_event_unicode_key_pressed(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err) || consume[0])
        return OS.attr_no_err
      end
      # Feature in the Macintosh.  If the focus target is changed
      # before the default handler for the widget has run, the key
      # goes to the new focus widget.  The fix is to explicitly
      # send the event to the original focus widget and stop
      # the chain of handlers.
      if (!is_disposed)
        focus_control = self.attr_display.get_focus_control
        if (!(focus_control).equal?(self))
          window = OS._get_control_owner(@handle)
          new_window = 0
          if (!(focus_control).nil?)
            new_window = OS._get_control_owner(focus_control.attr_handle)
          end
          self.attr_display.attr_ignore_focus = true
          if (!(window).equal?(new_window))
            OS._set_user_focus_window(window)
          end
          OS._set_keyboard_focus(window, focus_handle, RJava.cast_to_short(focus_part))
          self.attr_display.attr_ignore_focus = false
          result = OS._call_next_event_handler(next_handler, the_event)
          self.attr_display.attr_ignore_focus = true
          if (!(window).equal?(new_window) && !(new_window).equal?(0))
            OS._set_user_focus_window(new_window)
          end
          if ((window).equal?(new_window) && !(focus_control).nil?)
            OS._set_keyboard_focus(window, focus_control.focus_handle, RJava.cast_to_short(focus_control.focus_part))
          else
            OS._clear_keyboard_focus(window)
          end
          self.attr_display.attr_ignore_focus = false
          return OS.attr_no_err
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_unicode_key_pressed(next_handler, the_event, user_data)
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      if (!send_key_event(SWT::KeyDown, keyboard_event[0]))
        return OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def mark_layout(changed, all)
      # Do nothing
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
      out_image = Array.typed(::Java::Int).new(1) { 0 }
      out_frame = CGRect.new
      if ((OS._hiview_create_offscreen_image(@handle, 0, out_frame, out_image)).equal?(OS.attr_no_err))
        width = OS._cgimage_get_width(out_image[0])
        height = OS._cgimage_get_height(out_image[0])
        rect = CGRect.new
        rect.attr_width = width
        rect.attr_height = height
        # TODO - does not draw the browser (cocoa widgets?)
        OS._hiview_draw_cgimage(gc.attr_handle, rect, out_image[0])
        OS._cgimage_release(out_image[0])
      end
      return true
    end
    
    typesig { [] }
    def poll_track_event
      return false
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
      redraw_widget(@handle, false)
    end
    
    typesig { [::Java::Boolean] }
    def redraw(children)
      # checkWidget();
      redraw_widget(@handle, children)
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
      redraw_widget(@handle, x, y, width, height, all)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@handle, self)
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
      @handle = 0
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      set_visible(top_handle, false)
      @parent.remove_control(self)
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@menu).nil? && !@menu.is_disposed)
        @menu.dispose
      end
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
      end
      @visible_rgn = 0
      @menu = nil
      @layout_data = nil
      if (!(@accessible).nil?)
        @accessible.internal_dispose__accessible
      end
      @accessible = nil
      @region = nil
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
      # there will not be any
      string = OS.attr_k_axtitle_uielement_attribute
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._hiobject_set_auxiliary_accessibility_attribute(@handle, 0, string_ref, 0)
      OS._cfrelease(string_ref)
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
    
    typesig { [::Java::Int] }
    def reset_visible_region(control)
      if (!(@visible_rgn).equal?(0))
        OS._dispose_rgn(@visible_rgn)
        @visible_rgn = 0
      end
      if (!(@gcs).nil?)
        visible_rgn = get_visible_region(@handle, true)
        i = 0
        while i < @gcs.attr_length
          data = @gcs[i]
          if (!(data).nil?)
            data.attr_update_clip = true
            OS._copy_rgn(visible_rgn, data.attr_visible_rgn)
          end
          i += 1
        end
        OS._dispose_rgn(visible_rgn)
      end
      runnable = get_data(RESET_VISIBLE_REGION)
      if (!(runnable).nil? && runnable.is_a?(Runnable))
        (runnable).run
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def send_drag_event(button, chord, modifiers, x, y)
      event = Event.new
      case (button)
      when 1
        event.attr_button = 1
      when 2
        event.attr_button = 3
      when 3
        event.attr_button = 2
      when 4
        event.attr_button = 4
      when 5
        event.attr_button = 5
      end
      event.attr_x = x
      event.attr_y = y
      set_input_state(event, SWT::DragDetect, chord, modifiers)
      post_event(SWT::DragDetect, event)
      return event.attr_doit
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def send_focus_event(type, post)
      display = self.attr_display
      shell = get_shell
      # Feature in the Macintosh.  GetKeyboardFocus() returns NULL during
      # kEventControlSetFocusPart if the focus part is not kControlFocusNoPart.
      # The fix is to remember the focus control and return it during
      # kEventControlSetFocusPart.
      display.attr_focus_control = self
      display.attr_focus_event = type
      if (post)
        post_event(type)
      else
        send_event(type)
      end
      # It is possible that the shell may be
      # disposed at this point.  If this happens
      # don't send the activate and deactivate
      # events.
      if (!shell.is_disposed)
        case (type)
        when SWT::FocusIn
          shell.set_active_control(self)
        when SWT::FocusOut
          if (!(shell).equal?(display.get_active_shell))
            shell.set_active_control(nil)
          end
        end
      end
      display.attr_focus_event = SWT::None
      display.attr_focus_control = nil
    end
    
    typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
    def send_mouse_event(type, button, count, detail, send, the_event)
      pt = CGPoint.new
      OS._get_event_parameter(the_event, OS.attr_k_event_param_window_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
      OS._hiview_convert_point(pt, 0, @handle)
      x = RJava.cast_to_int(pt.attr_x)
      y = RJava.cast_to_int(pt.attr_y)
      self.attr_display.attr_last_x = x
      self.attr_display.attr_last_y = y
      chord = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_chord, OS.attr_type_uint32, nil, 4, nil, chord)
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
      return send_mouse_event(type, button, count, detail, send, chord[0], RJava.cast_to_short(x), RJava.cast_to_short(y), modifiers[0])
    end
    
    typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Short, ::Java::Short, ::Java::Int] }
    def send_mouse_event(type, button, count, send, chord, x, y, modifiers)
      return send_mouse_event(type, button, count, 0, send, chord, x, y, modifiers)
    end
    
    typesig { [::Java::Int, ::Java::Short, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Short, ::Java::Short, ::Java::Int] }
    def send_mouse_event(type, button, count, detail, send, chord, x, y, modifiers)
      if (!hooks(type) && !filters(type))
        return true
      end
      if (!((self.attr_state & SAFARI_EVENTS_FIX)).equal?(0))
        case (type)
        when SWT::MouseUp, SWT::MouseMove, SWT::MouseDoubleClick
          return true
        when SWT::MouseDown
          if ((button).equal?(1))
            return true
          end
        end
      end
      event = Event.new
      case (button)
      when 1
        event.attr_button = 1
      when 2
        event.attr_button = 3
      when 3
        event.attr_button = 2
      when 4
        event.attr_button = 4
      when 5
        event.attr_button = 5
      end
      event.attr_x = x
      event.attr_y = y
      event.attr_count = count
      event.attr_detail = detail
      set_input_state(event, type, chord, modifiers)
      if (send)
        send_event(type, event)
        if (is_disposed)
          return false
        end
      else
        post_event(type, event)
      end
      return event.attr_doit
    end
    
    typesig { [::Java::Short, ::Java::Int] }
    def send_mouse_wheel(wheel_axis, wheel_delta)
      return false
    end
    
    typesig { [] }
    def send_track_events
      display = self.attr_display
      display.run_deferred_events
      if (is_disposed)
        return
      end
      events = false
      if (display.attr_dragging)
        display.attr_dragging = false
        send_drag_event(display.attr_drag_button, display.attr_drag_state, display.attr_drag_modifiers, display.attr_drag_x, display.attr_drag_y)
        if (is_disposed)
          return
        end
        events = true
      end
      out_pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(out_pt)
      rect = Rect.new
      window = OS._get_control_owner(@handle)
      new_x = 0
      new_y = 0
      pt = CGPoint.new
      pt.attr_x = out_pt.attr_h
      pt.attr_y = out_pt.attr_v
      OS._hiview_convert_point(pt, 0, @handle)
      new_x = RJava.cast_to_int(pt.attr_x)
      new_y = RJava.cast_to_int(pt.attr_y)
      OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      new_x -= rect.attr_left
      new_y -= rect.attr_top
      new_modifiers = OS._get_current_event_key_modifiers
      new_state = OS._get_current_event_button_state
      old_x = display.attr_last_x
      old_y = display.attr_last_y
      old_state = display.attr_last_state
      old_modifiers = display.attr_last_modifiers
      display.attr_last_x = new_x
      display.attr_last_y = new_y
      display.attr_last_modifiers = new_modifiers
      display.attr_last_state = new_state
      if (!(new_state).equal?(old_state))
        button = 0
        type = SWT::MouseDown
        if (((old_state & 0x1)).equal?(0) && !((new_state & 0x1)).equal?(0))
          button = 1
        end
        if (((old_state & 0x2)).equal?(0) && !((new_state & 0x2)).equal?(0))
          button = 2
        end
        if (((old_state & 0x4)).equal?(0) && !((new_state & 0x4)).equal?(0))
          button = 3
        end
        if (((old_state & 0x8)).equal?(0) && !((new_state & 0x8)).equal?(0))
          button = 4
        end
        if (((old_state & 0x10)).equal?(0) && !((new_state & 0x10)).equal?(0))
          button = 5
        end
        if ((button).equal?(0))
          type = SWT::MouseUp
          if (!((old_state & 0x1)).equal?(0) && ((new_state & 0x1)).equal?(0))
            button = 1
          end
          if (!((old_state & 0x2)).equal?(0) && ((new_state & 0x2)).equal?(0))
            button = 2
          end
          if (!((old_state & 0x4)).equal?(0) && ((new_state & 0x4)).equal?(0))
            button = 3
          end
          if (!((old_state & 0x8)).equal?(0) && ((new_state & 0x8)).equal?(0))
            button = 4
          end
          if (!((old_state & 0x10)).equal?(0) && ((new_state & 0x10)).equal?(0))
            button = 5
          end
        end
        if (!(button).equal?(0))
          send_mouse_event(type, RJava.cast_to_short(button), 1, false, new_state, RJava.cast_to_short(new_x), RJava.cast_to_short(new_y), new_modifiers)
          events = true
        end
      end
      if (!(new_modifiers).equal?(old_modifiers) && !is_disposed)
        key = 0
        type = SWT::KeyDown
        if (!((new_modifiers & OS.attr_alpha_lock)).equal?(0) && ((old_modifiers & OS.attr_alpha_lock)).equal?(0))
          key = SWT::CAPS_LOCK
        end
        if (!((new_modifiers & OS.attr_shift_key)).equal?(0) && ((old_modifiers & OS.attr_shift_key)).equal?(0))
          key = SWT::SHIFT
        end
        if (!((new_modifiers & OS.attr_control_key)).equal?(0) && ((old_modifiers & OS.attr_control_key)).equal?(0))
          key = SWT::CONTROL
        end
        if (!((new_modifiers & OS.attr_cmd_key)).equal?(0) && ((old_modifiers & OS.attr_cmd_key)).equal?(0))
          key = SWT::COMMAND
        end
        if (!((new_modifiers & OS.attr_option_key)).equal?(0) && ((old_modifiers & OS.attr_option_key)).equal?(0))
          key = SWT::ALT
        end
        if ((key).equal?(0))
          type = SWT::KeyUp
          if (((new_modifiers & OS.attr_alpha_lock)).equal?(0) && !((old_modifiers & OS.attr_alpha_lock)).equal?(0))
            key = SWT::CAPS_LOCK
          end
          if (((new_modifiers & OS.attr_shift_key)).equal?(0) && !((old_modifiers & OS.attr_shift_key)).equal?(0))
            key = SWT::SHIFT
          end
          if (((new_modifiers & OS.attr_control_key)).equal?(0) && !((old_modifiers & OS.attr_control_key)).equal?(0))
            key = SWT::CONTROL
          end
          if (((new_modifiers & OS.attr_cmd_key)).equal?(0) && !((old_modifiers & OS.attr_cmd_key)).equal?(0))
            key = SWT::COMMAND
          end
          if (((new_modifiers & OS.attr_option_key)).equal?(0) && !((old_modifiers & OS.attr_option_key)).equal?(0))
            key = SWT::ALT
          end
        end
        if (!(key).equal?(0))
          event = Event.new
          event.attr_key_code = key
          set_input_state(event, type, new_state, new_modifiers)
          send_key_event(type, event)
          events = true
        end
      end
      if (!(new_x).equal?(old_x) || !(new_y).equal?(old_y) && !is_disposed)
        display.attr_mouse_moved = true
        send_mouse_event(SWT::MouseMove, RJava.cast_to_short(0), 0, false, new_state, RJava.cast_to_short(new_x), RJava.cast_to_short(new_y), new_modifiers)
        events = true
      end
      if (events)
        display.run_deferred_events
      end
    end
    
    typesig { [] }
    def set_background
      redraw_widget(@handle, false)
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
      background = !(color).nil? ? color.attr_handle : nil
      if (self.==(background, @background))
        return
      end
      @background = background
      set_background(background)
      redraw_widget(@handle, false)
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
      redraw_widget(@handle, false)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_background(color)
      set_background(@handle, color)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Float)] }
    def set_background(control, color)
      font_style = ControlFontStyleRec.new
      OS._get_control_data(control, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_font_style_tag, ControlFontStyleRec.attr_sizeof, font_style, nil)
      if (!(color).nil?)
        font_style.attr_back_color_red = RJava.cast_to_short((color[0] * 0xffff))
        font_style.attr_back_color_green = RJava.cast_to_short((color[1] * 0xffff))
        font_style.attr_back_color_blue = RJava.cast_to_short((color[2] * 0xffff))
        font_style.attr_flags |= OS.attr_k_control_use_back_color_mask
      else
        font_style.attr_flags &= ~OS.attr_k_control_use_back_color_mask
      end
      OS._set_control_font_style(control, font_style)
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
      set_bounds(x, y, Math.max(0, width), Math.max(0, height), true, true, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      return set_bounds(top_handle, x, y, width, height, move, resize, events)
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
      set_bounds(rect.attr_x, rect.attr_y, Math.max(0, rect.attr_width), Math.max(0, rect.attr_height), true, true, true)
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
      where = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(where)
      the_window = Array.typed(::Java::Int).new(1) { 0 }
      if ((self.attr_display.attr_grab_control).equal?(self))
        the_window[0] = OS._get_control_owner(@handle)
      else
        if (!(OS._find_window(where, the_window)).equal?(OS.attr_in_content))
          return
        end
        if ((the_window[0]).equal?(0))
          return
        end
      end
      rect = Rect.new
      OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      if ((self.attr_display.attr_grab_control).equal?(self))
        the_control[0] = @handle
      else
        in_point = CGPoint.new
        in_point.attr_x = where.attr_h - rect.attr_left
        in_point.attr_y = where.attr_v - rect.attr_top
        the_root = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_root_control(the_window[0], the_root)
        OS._hiview_get_subview_hit(the_root[0], in_point, true, the_control)
        cursor_control = the_control[0]
        while (!(the_control[0]).equal?(0) && !(the_control[0]).equal?(@handle))
          OS._get_super_control(the_control[0], the_control)
        end
        if ((the_control[0]).equal?(0))
          return
        end
        the_control[0] = cursor_control
        begin
          widget = self.attr_display.get_widget(the_control[0])
          if (!(widget).nil?)
            if (widget.is_a?(Control))
              control = widget
              if (control.is_enabled)
                break
              end
            end
          end
          OS._get_super_control(the_control[0], the_control)
        end while (!(the_control[0]).equal?(0))
        if ((the_control[0]).equal?(0))
          the_control[0] = the_root[0]
          widget = self.attr_display.get_widget(the_control[0])
          if (!(widget).nil? && widget.is_a?(Control))
            control = widget
            the_control[0] = control.attr_handle
          end
        end
      end
      pt = CGPoint.new
      OS._hiview_convert_point(pt, the_control[0], 0)
      where.attr_h -= RJava.cast_to_int(pt.attr_x)
      where.attr_v -= RJava.cast_to_int(pt.attr_y)
      OS._get_window_bounds(the_window[0], RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      where.attr_h -= rect.attr_left
      where.attr_v -= rect.attr_top
      modifiers = OS._get_current_event_key_modifiers
      cursor_was_set = Array.typed(::Java::Boolean).new(1) { false }
      OS._handle_control_set_cursor(the_control[0], where, RJava.cast_to_short(modifiers), cursor_was_set)
      if (!cursor_was_set[0])
        OS._set_theme_cursor(OS.attr_k_theme_arrow_cursor)
      end
    end
    
    typesig { [] }
    def set_default_font
      if (self.attr_display.attr_small_fonts)
        set_font_style(default_font)
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
      set_font_style(self.attr_display.attr_small_fonts ? (!(font).nil? ? font : default_font) : font)
      redraw_widget(@handle, false)
    end
    
    typesig { [Font] }
    def set_font_style(font)
      set_font_style(@handle, font)
    end
    
    typesig { [::Java::Int, Font] }
    def set_font_style(control, font)
      font_style = ControlFontStyleRec.new
      OS._get_control_data(control, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_font_style_tag, ControlFontStyleRec.attr_sizeof, font_style, nil)
      font_style.attr_flags &= ~(OS.attr_k_control_use_font_mask | OS.attr_k_control_use_size_mask | OS.attr_k_control_use_face_mask | OS.attr_k_control_use_theme_font_idmask)
      if (!(font).nil?)
        family = Array.typed(::Java::Short).new(1) { 0 }
        style = Array.typed(::Java::Short).new(1) { 0 }
        OS._fmget_font_family_instance_from_font(font.attr_handle, family, style)
        font_style.attr_flags |= OS.attr_k_control_use_font_mask | OS.attr_k_control_use_size_mask | OS.attr_k_control_use_face_mask
        font_style.attr_font = family[0]
        font_style.attr_style = RJava.cast_to_short((style[0] | font.attr_style))
        font_style.attr_size = RJava.cast_to_short(font.attr_size)
      end
      OS._set_control_font_style(control, font_style)
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
      foreground = !(color).nil? ? color.attr_handle : nil
      if (self.==(foreground, @foreground))
        return
      end
      @foreground = foreground
      set_foreground(foreground)
      redraw_widget(@handle, false)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_foreground(color)
      set_foreground(@handle, color)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Float)] }
    def set_foreground(control, color)
      font_style = ControlFontStyleRec.new
      OS._get_control_data(control, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_font_style_tag, ControlFontStyleRec.attr_sizeof, font_style, nil)
      if (!(color).nil?)
        font_style.attr_fore_color_red = RJava.cast_to_short((color[0] * 0xffff))
        font_style.attr_fore_color_green = RJava.cast_to_short((color[1] * 0xffff))
        font_style.attr_fore_color_blue = RJava.cast_to_short((color[2] * 0xffff))
        font_style.attr_flags |= OS.attr_k_control_use_fore_color_mask
      else
        font_style.attr_flags &= ~OS.attr_k_control_use_fore_color_mask
      end
      OS._set_control_font_style(control, font_style)
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
      set_bounds(x, y, 0, 0, true, false, true)
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
      set_bounds(location.attr_x, location.attr_y, 0, 0, true, false, true)
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
      top_handle_ = top_handle
      OS._hiview_add_subview(parent.attr_handle, top_handle_)
      OS._hiview_set_visible(top_handle_, ((self.attr_state & HIDDEN)).equal?(0))
      OS._hiview_set_zorder(top_handle_, OS.attr_k_hiview_zorder_below, 0)
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
          OS._hiview_set_drawing_enabled(@handle, true)
          invalidate_visible_region(@handle)
          redraw_widget(@handle, true)
        end
      else
        if ((@draw_count).equal?(0))
          OS._hiview_set_drawing_enabled(@handle, false)
          invalidate_visible_region(@handle)
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
      OS._hiview_region_changed(@handle, OS.attr_k_control_structure_meta_part)
      redraw_widget(@handle, true)
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      return false
    end
    
    typesig { [] }
    def set_relations
      if ((@parent).nil?)
        return
      end
      children = @parent.__get_children
      count = children.attr_length
      if (count > 1)
        # the receiver is the last item in the list, so its predecessor will
        # be the second-last item in the list
        child = children[count - 2]
        if (!(child).equal?(self))
          child.add_relation(self)
        end
      end
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
      set_bounds(0, 0, Math.max(0, width), Math.max(0, height), false, true, true)
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
      set_bounds(0, 0, Math.max(0, size.attr_x), Math.max(0, size.attr_y), false, true, true)
    end
    
    typesig { [] }
    def set_tab_group_focus
      return set_tab_item_focus
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
      if ((self.attr_display.attr_help_widget).equal?(self))
        self.attr_display.attr_help_widget = nil
        OS._hminstall_control_content_callback(@handle, 0)
        OS._hminstall_control_content_callback(@handle, self.attr_display.attr_help_proc)
      end
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
      set_visible(top_handle, visible)
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
      top_handle_ = top_handle
      parent_handle = @parent.attr_handle
      OS._hiview_add_subview(parent_handle, top_handle_)
      OS._hiview_set_zorder(top_handle_, OS.attr_k_hiview_zorder_below, 0)
      inset = get_inset
      rect = Rect.new
      rect.attr_left = rect.attr_right = inset.attr_left
      rect.attr_top = rect.attr_bottom = inset.attr_top
      OS._set_control_bounds(top_handle_, rect)
    end
    
    typesig { [Control, ::Java::Boolean] }
    def set_zorder(sibling, above)
      sibling_handle = (sibling).nil? ? 0 : sibling.top_handle
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
      set_zorder(top_handle, sibling_handle, above)
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def text_extent(ptr, w_hint)
      if (!(ptr).equal?(0) && OS._cfstring_get_length(ptr) > 0)
        w = Array.typed(::Java::Float).new(1) { 0.0 }
        h = Array.typed(::Java::Float).new(1) { 0.0 }
        info = HIThemeTextInfo.new
        info.attr_state = OS.attr_k_theme_state_active
        if (!(@font).nil?)
          family = Array.typed(::Java::Short).new(1) { 0 }
          style = Array.typed(::Java::Short).new(1) { 0 }
          OS._fmget_font_family_instance_from_font(@font.attr_handle, family, style)
          OS._text_font(family[0])
          OS._text_face(RJava.cast_to_short((style[0] | @font.attr_style)))
          OS._text_size(RJava.cast_to_short(@font.attr_size))
          info.attr_font_id = RJava.cast_to_short(OS.attr_k_theme_current_port_font)
        else
          info.attr_font_id = RJava.cast_to_short(default_theme_font)
        end
        OS._hitheme_get_text_dimensions(ptr, (w_hint).equal?(SWT::DEFAULT) ? 0 : w_hint, info, w, h, nil)
        return Point.new(RJava.cast_to_int(w[0]), RJava.cast_to_int(h[0]))
      else
        font = get_font
        metrics = ATSFontMetrics.new
        OS._atsfont_get_vertical_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
        OS._atsfont_get_horizontal_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
        return Point.new(0, RJava.cast_to_int((0.5 + (metrics.attr_ascent - metrics.attr_descent + metrics.attr_leading) * font.attr_size)))
      end
    end
    
    typesig { [Array.typed(::Java::Char), ::Java::Int] }
    def text_extent(chars, w_hint)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
      result = text_extent(ptr, w_hint)
      if (!(ptr).equal?(0))
        OS._cfrelease(ptr)
      end
      return result
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
      rect = Rect.new
      window = OS._get_control_owner(@handle)
      pt = CGPoint.new
      OS._hiview_convert_point(pt, @handle, 0)
      x -= RJava.cast_to_int(pt.attr_x)
      y -= RJava.cast_to_int(pt.attr_y)
      OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      x -= rect.attr_left
      y -= rect.attr_top
      inset = get_inset
      x += inset.attr_left
      y += inset.attr_top
      return Point.new(x, y)
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
      rect = Rect.new
      window = OS._get_control_owner(@handle)
      pt = CGPoint.new
      OS._hiview_convert_point(pt, @handle, 0)
      x += RJava.cast_to_int(pt.attr_x)
      y += RJava.cast_to_int(pt.attr_y)
      OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      x += rect.attr_left
      y += rect.attr_top
      inset = get_inset
      x -= inset.attr_left
      y -= inset.attr_top
      return Point.new(x, y)
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
    def top_handle
      return @handle
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Boolean)] }
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
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
        next_ = ((modifiers[0] & OS.attr_shift_key)).equal?(0)
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
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
        if (((modifiers[0] & OS.attr_control_key)).equal?(0))
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def traversal_code(key, the_event)
      code = SWT::TRAVERSE_RETURN | SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS
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
        control = list[index]
        if (!control.is_disposed && control.set_tab_group_focus)
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
      # TODO - not all
      if (self.attr_display.attr_in_paint)
        return
      end
      OS._hiview_render(@handle)
      if (is_disposed)
        return
      end
      OS._hiwindow_flush(OS._get_control_owner(@handle))
    end
    
    typesig { [] }
    def update_background_mode
      old_state = self.attr_state & PARENT_BACKGROUND
      check_background
      if (!(old_state).equal?((self.attr_state & PARENT_BACKGROUND)))
        set_background
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
