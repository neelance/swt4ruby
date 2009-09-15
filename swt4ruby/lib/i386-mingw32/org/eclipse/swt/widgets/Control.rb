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
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Accessibility
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
    # 
    # long
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
    
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
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
    
    attr_accessor :accessible
    alias_method :attr_accessible, :accessible
    undef_method :accessible
    alias_method :attr_accessible=, :accessible=
    undef_method :accessible=
    
    attr_accessor :background_image
    alias_method :attr_background_image, :background_image
    undef_method :background_image
    alias_method :attr_background_image=, :background_image=
    undef_method :background_image=
    
    attr_accessor :region
    alias_method :attr_region, :region
    undef_method :region
    alias_method :attr_region=, :region=
    undef_method :region=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :draw_count
    alias_method :attr_draw_count, :draw_count
    undef_method :draw_count
    alias_method :attr_draw_count=, :draw_count=
    undef_method :draw_count=
    
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
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @handle = 0
      @parent = nil
      @cursor = nil
      @menu = nil
      @tool_tip_text = nil
      @layout_data = nil
      @accessible = nil
      @background_image = nil
      @region = nil
      @font = nil
      @draw_count = 0
      @foreground = 0
      @background = 0
      super()
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
      @handle = 0
      @parent = nil
      @cursor = nil
      @menu = nil
      @tool_tip_text = nil
      @layout_data = nil
      @accessible = nil
      @background_image = nil
      @region = nil
      @font = nil
      @draw_count = 0
      @foreground = 0
      @background = 0
      super(parent, style)
      @parent = parent
      create_widget
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
    
    typesig { [] }
    # long
    def border_handle
      return @handle
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
    def check_border
      if ((get_border_width).equal?(0))
        self.attr_style &= ~SWT::BORDER
      end
    end
    
    typesig { [] }
    def check_buffered
      self.attr_style &= ~SWT::DOUBLE_BUFFERED
    end
    
    typesig { [] }
    def check_composited
      # Do nothing
    end
    
    typesig { [::Java::Int] }
    # long
    def check_handle(hwnd)
      return (hwnd).equal?(@handle)
    end
    
    typesig { [] }
    def check_mirrored
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        bits = OS._get_window_long(@handle, OS::GWL_EXSTYLE)
        if (!((bits & OS::WS_EX_LAYOUTRTL)).equal?(0))
          self.attr_style |= SWT::MIRRORED
        end
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
    def compute_tab_list
      if (is_tab_group)
        if (get_visible && get_enabled)
          return Array.typed(Widget).new([self])
        end
      end
      return Array.typed(Widget).new(0) { nil }
    end
    
    typesig { [] }
    def create_handle
      # long
      hwnd_parent = widget_parent
      @handle = OS._create_window_ex(widget_ext_style, window_class, nil, widget_style, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, hwnd_parent, 0, OS._get_module_handle(nil), widget_create_struct)
      if ((@handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      bits = OS._get_window_long(@handle, OS::GWL_STYLE)
      if (!((bits & OS::WS_CHILD)).equal?(0))
        OS._set_window_long_ptr(@handle, OS::GWLP_ID, @handle)
      end
      if (OS::IsDBLocale && !(hwnd_parent).equal?(0))
        # long
        h_imc = OS._imm_get_context(hwnd_parent)
        OS._imm_associate_context(@handle, h_imc)
        OS._imm_release_context(hwnd_parent, h_imc)
      end
    end
    
    typesig { [] }
    def create_widget
      self.attr_state |= DRAG_DETECT
      @foreground = @background = -1
      check_orientation(@parent)
      create_handle
      check_background
      check_buffered
      check_composited
      register
      subclass
      set_default_font
      check_mirrored
      check_border
      if (!((self.attr_state & PARENT_BACKGROUND)).equal?(0))
        set_background
      end
    end
    
    typesig { [] }
    def default_background
      if (OS::IsWinCE)
        return OS._get_sys_color(OS::COLOR_WINDOW)
      end
      return OS._get_sys_color(OS::COLOR_BTNFACE)
    end
    
    typesig { [] }
    # long
    def default_font
      return self.attr_display.get_system_font.attr_handle
    end
    
    typesig { [] }
    def default_foreground
      return OS._get_sys_color(OS::COLOR_WINDOWTEXT)
    end
    
    typesig { [] }
    def deregister
      self.attr_display.remove_control(@handle)
    end
    
    typesig { [] }
    def destroy_widget
      # long
      hwnd = top_handle
      release_handle
      if (!(hwnd).equal?(0))
        OS._destroy_window(hwnd)
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
      dragging = drag_detect(@handle, x, y, false, nil, nil)
      if (OS._get_key_state(OS::VK_LBUTTON) < 0)
        if (!(OS._get_capture).equal?(@handle))
          OS._set_capture(@handle)
        end
      end
      if (!dragging)
        # Feature in Windows.  DragDetect() captures the mouse
        # and tracks its movement until the user releases the
        # left mouse button, presses the ESC key, or moves the
        # mouse outside the drag rectangle.  If the user moves
        # the mouse outside of the drag rectangle, DragDetect()
        # returns true and a drag and drop operation can be
        # started.  When the left mouse button is released or
        # the ESC key is pressed, these events are consumed by
        # DragDetect() so that application code that matches
        # mouse down/up pairs or looks for the ESC key will not
        # function properly.  The fix is to send the missing
        # events when the drag has not started.
        # 
        # NOTE: For now, don't send a fake WM_KEYDOWN/WM_KEYUP
        # events for the ESC key.  This would require computing
        # wParam (the key) and lParam (the repeat count, scan code,
        # extended-key flag, context code, previous key-state flag,
        # and transition-state flag) which is non-trivial.
        if ((button).equal?(1) && OS._get_key_state(OS::VK_ESCAPE) >= 0)
          w_param = 0
          if (!((state_mask & SWT::CTRL)).equal?(0))
            w_param |= OS::MK_CONTROL
          end
          if (!((state_mask & SWT::SHIFT)).equal?(0))
            w_param |= OS::MK_SHIFT
          end
          if (!((state_mask & SWT::ALT)).equal?(0))
            w_param |= OS::MK_ALT
          end
          if (!((state_mask & SWT::BUTTON1)).equal?(0))
            w_param |= OS::MK_LBUTTON
          end
          if (!((state_mask & SWT::BUTTON2)).equal?(0))
            w_param |= OS::MK_MBUTTON
          end
          if (!((state_mask & SWT::BUTTON3)).equal?(0))
            w_param |= OS::MK_RBUTTON
          end
          if (!((state_mask & SWT::BUTTON4)).equal?(0))
            w_param |= OS::MK_XBUTTON1
          end
          if (!((state_mask & SWT::BUTTON5)).equal?(0))
            w_param |= OS::MK_XBUTTON2
          end
          # long
          l_param = OS._makelparam(x, y)
          OS._send_message(@handle, OS::WM_LBUTTONUP, w_param, l_param)
        end
        return false
      end
      return send_drag_event(button, state_mask, x, y)
    end
    
    typesig { [::Java::Int] }
    # long
    def draw_background(h_dc)
      rect = RECT.new
      OS._get_client_rect(@handle, rect)
      draw_background(h_dc, rect)
    end
    
    typesig { [::Java::Int, RECT] }
    # long
    def draw_background(h_dc, rect)
      draw_background(h_dc, rect, -1)
    end
    
    typesig { [::Java::Int, RECT, ::Java::Int] }
    # long
    def draw_background(h_dc, rect, pixel)
      control = find_background_control
      if (!(control).nil?)
        if (!(control.attr_background_image).nil?)
          fill_image_background(h_dc, control, rect)
          return
        end
        pixel = control.get_background_pixel
      end
      if ((pixel).equal?(-1))
        if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            control = find_theme_control
            if (!(control).nil?)
              fill_theme_background(h_dc, control, rect)
              return
            end
          end
        end
      end
      if ((pixel).equal?(-1))
        pixel = get_background_pixel
      end
      fill_background(h_dc, pixel, rect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, RECT] }
    # long
    # long
    # long
    def draw_image_background(h_dc, hwnd, h_bitmap, rect)
      rect2 = RECT.new
      OS._get_client_rect(hwnd, rect2)
      OS._map_window_points(hwnd, @handle, rect2, 2)
      # long
      h_brush = find_brush(h_bitmap, OS::BS_PATTERN)
      lp_point = POINT.new
      OS._get_window_org_ex(h_dc, lp_point)
      OS._set_brush_org_ex(h_dc, -rect2.attr_left - lp_point.attr_x, -rect2.attr_top - lp_point.attr_y, lp_point)
      # long
      h_old_brush = OS._select_object(h_dc, h_brush)
      OS._pat_blt(h_dc, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, OS::PATCOPY)
      OS._set_brush_org_ex(h_dc, lp_point.attr_x, lp_point.attr_y, nil)
      OS._select_object(h_dc, h_old_brush)
    end
    
    typesig { [::Java::Int, ::Java::Int, RECT] }
    # long
    # long
    def draw_theme_background(h_dc, hwnd, rect)
      # Do nothing
    end
    
    typesig { [::Java::Boolean] }
    def enable_drag(enabled)
      # Do nothing
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      OS._enable_window(@handle, enabled)
    end
    
    typesig { [::Java::Int, ::Java::Int, RECT] }
    # long
    def fill_background(h_dc, pixel, rect)
      if (rect.attr_left > rect.attr_right || rect.attr_top > rect.attr_bottom)
        return
      end
      # long
      h_palette = self.attr_display.attr_h_palette
      if (!(h_palette).equal?(0))
        OS._select_palette(h_dc, h_palette, false)
        OS._realize_palette(h_dc)
      end
      OS._fill_rect(h_dc, rect, find_brush(pixel, OS::BS_SOLID))
    end
    
    typesig { [::Java::Int, Control, RECT] }
    # long
    def fill_image_background(h_dc, control, rect)
      if (rect.attr_left > rect.attr_right || rect.attr_top > rect.attr_bottom)
        return
      end
      if (!(control).nil?)
        image = control.attr_background_image
        if (!(image).nil?)
          control.draw_image_background(h_dc, @handle, image.attr_handle, rect)
        end
      end
    end
    
    typesig { [::Java::Int, Control, RECT] }
    # long
    def fill_theme_background(h_dc, control, rect)
      if (rect.attr_left > rect.attr_right || rect.attr_top > rect.attr_bottom)
        return
      end
      if (!(control).nil?)
        control.draw_theme_background(h_dc, @handle, rect)
      end
    end
    
    typesig { [] }
    def find_background_control
      if (!(@background).equal?(-1) || !(@background_image).nil?)
        return self
      end
      return !((self.attr_state & PARENT_BACKGROUND)).equal?(0) ? @parent.find_background_control : nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def find_brush(value, lb_style)
      return @parent.find_brush(value, lb_style)
    end
    
    typesig { [] }
    def find_cursor
      if (!(@cursor).nil?)
        return @cursor
      end
      return @parent.find_cursor
    end
    
    typesig { [] }
    def find_image_control
      control = find_background_control
      return !(control).nil? && !(control.attr_background_image).nil? ? control : nil
    end
    
    typesig { [] }
    def find_theme_control
      return (@background).equal?(-1) && (@background_image).nil? ? @parent.find_theme_control : nil
    end
    
    typesig { [Control] }
    def find_menus(control)
      if (!(@menu).nil? && !(self).equal?(control))
        return Array.typed(Menu).new([@menu])
      end
      return Array.typed(Menu).new(0) { nil }
    end
    
    typesig { [String] }
    def find_mnemonic(string)
      index = 0
      length_ = string.length
      begin
        while (index < length_ && !(string.char_at(index)).equal?(Character.new(?&.ord)))
          index += 1
        end
        if ((index += 1) >= length_)
          return Character.new(?\0.ord)
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return string.char_at(index)
        end
        index += 1
      end while (index < length_)
      return Character.new(?\0.ord)
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
        if (control.set_fixed_focus)
          return
        end
      end
      shell.set_saved_focus(focus_control)
      OS._set_focus(0)
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
      # This code is intentionally commented.
      # 
      # When setting focus to a control, it is
      # possible that application code can set
      # the focus to another control inside of
      # WM_SETFOCUS.  In this case, the original
      # control will no longer have the focus
      # and the call to setFocus() will return
      # false indicating failure.
      # 
      # We are still working on a solution at
      # this time.
      # 
      # if (OS.GetFocus () != OS.SetFocus (handle)) return false;
      OS._set_focus(@handle)
      if (is_disposed)
        return false
      end
      shell.set_saved_focus(self)
      return is_focus_control
    end
    
    typesig { [] }
    def force_resize
      if ((@parent).nil?)
        return
      end
      lpwp = @parent.attr_lpwp
      if ((lpwp).nil?)
        return
      end
      i = 0
      while i < lpwp.attr_length
        wp = lpwp[i]
        if (!(wp).nil? && (wp.attr_hwnd).equal?(@handle))
          # This code is intentionally commented.  All widgets that
          # are created by SWT have WS_CLIPSIBLINGS to ensure that
          # application code does not draw outside of the control.
          # 
          # int count = parent.getChildrenCount ();
          # if (count > 1) {
          # int bits = OS.GetWindowLong (handle, OS.GWL_STYLE);
          # if ((bits & OS.WS_CLIPSIBLINGS) == 0) wp.flags |= OS.SWP_NOCOPYBITS;
          # }
          _set_window_pos(wp.attr_hwnd, 0, wp.attr_x, wp.attr_y, wp.attr_cx, wp.attr_cy, wp.attr_flags)
          lpwp[i] = nil
          return
        end
        i += 1
      end
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
      return Color.win32_new(self.attr_display, control.get_background_pixel)
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
    def get_background_pixel
      return !(@background).equal?(-1) ? @background : default_background
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
      # long
      border_handle_ = border_handle
      bits1 = OS._get_window_long(border_handle_, OS::GWL_EXSTYLE)
      if (!((bits1 & OS::WS_EX_CLIENTEDGE)).equal?(0))
        return OS._get_system_metrics(OS::SM_CXEDGE)
      end
      if (!((bits1 & OS::WS_EX_STATICEDGE)).equal?(0))
        return OS._get_system_metrics(OS::SM_CXBORDER)
      end
      bits2 = OS._get_window_long(border_handle_, OS::GWL_STYLE)
      if (!((bits2 & OS::WS_BORDER)).equal?(0))
        return OS._get_system_metrics(OS::SM_CXBORDER)
      end
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
      force_resize
      rect = RECT.new
      OS._get_window_rect(top_handle, rect)
      # long
      hwnd_parent = (@parent).nil? ? 0 : @parent.attr_handle
      OS._map_window_points(0, hwnd_parent, rect, 2)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    def get_code_page
      if (OS::IsUnicode)
        return OS::CP_ACP
      end
      # long
      h_font = OS._send_message(@handle, OS::WM_GETFONT, 0, 0)
      log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      OS._get_object(h_font, LOGFONT.attr_sizeof, log_font)
      cs = log_font.attr_lf_char_set & 0xff
      lp_cs = Array.typed(::Java::Int).new(8) { 0 }
      if (OS._translate_charset_info(cs, lp_cs, OS::TCI_SRCCHARSET))
        return lp_cs[1]
      end
      return OS._get_acp
    end
    
    typesig { [] }
    def get_clipboard_text
      string = ""
      if (OS._open_clipboard(0))
        # long
        h_mem = OS._get_clipboard_data(OS::IsUnicode ? OS::CF_UNICODETEXT : OS::CF_TEXT)
        if (!(h_mem).equal?(0))
          # Ensure byteCount is a multiple of 2 bytes on UNICODE platforms
          byte_count = OS._global_size(h_mem) / TCHAR.attr_sizeof * TCHAR.attr_sizeof
          # long
          ptr = OS._global_lock(h_mem)
          if (!(ptr).equal?(0))
            # Use the character encoding for the default locale
            buffer = TCHAR.new(0, byte_count / TCHAR.attr_sizeof)
            OS._move_memory(buffer, ptr, byte_count)
            string = RJava.cast_to_string(buffer.to_s(0, buffer.strlen))
            OS._global_unlock(h_mem)
          end
        end
        OS._close_clipboard
      end
      return string
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
      return OS._is_window_enabled(@handle)
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
      if (!(@font).nil?)
        return @font
      end
      # long
      h_font = OS._send_message(@handle, OS::WM_GETFONT, 0, 0)
      if ((h_font).equal?(0))
        h_font = default_font
      end
      return Font.win32_new(self.attr_display, h_font)
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
      return Color.win32_new(self.attr_display, get_foreground_pixel)
    end
    
    typesig { [] }
    def get_foreground_pixel
      return !(@foreground).equal?(-1) ? @foreground : default_foreground
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
      force_resize
      rect = RECT.new
      OS._get_window_rect(top_handle, rect)
      # long
      hwnd_parent = (@parent).nil? ? 0 : @parent.attr_handle
      OS._map_window_points(0, hwnd_parent, rect, 2)
      return Point.new(rect.attr_left, rect.attr_top)
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
    # Returns the receiver's monitor.
    # 
    # @return the receiver's monitor
    # 
    # @since 3.0
    def get_monitor
      check_widget
      if (OS::IsWinCE || OS::WIN32_VERSION < OS._version(4, 10))
        return self.attr_display.get_primary_monitor
      end
      # long
      hmonitor = OS._monitor_from_window(@handle, OS::MONITOR_DEFAULTTONEAREST)
      lpmi = MONITORINFO.new
      lpmi.attr_cb_size = MONITORINFO.attr_sizeof
      OS._get_monitor_info(hmonitor, lpmi)
      monitor = SwtMonitor.new
      monitor.attr_handle = hmonitor
      monitor.attr_x = lpmi.attr_rc_monitor_left
      monitor.attr_y = lpmi.attr_rc_monitor_top
      monitor.attr_width = lpmi.attr_rc_monitor_right - lpmi.attr_rc_monitor_left
      monitor.attr_height = lpmi.attr_rc_monitor_bottom - lpmi.attr_rc_monitor_top
      monitor.attr_client_x = lpmi.attr_rc_work_left
      monitor.attr_client_y = lpmi.attr_rc_work_top
      monitor.attr_client_width = lpmi.attr_rc_work_right - lpmi.attr_rc_work_left
      monitor.attr_client_height = lpmi.attr_rc_work_bottom - lpmi.attr_rc_work_top
      return monitor
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
      force_resize
      rect = RECT.new
      OS._get_window_rect(top_handle, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Point.new(width, height)
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
      if (!get_drawing)
        return ((self.attr_state & HIDDEN)).equal?(0)
      end
      bits = OS._get_window_long(@handle, OS::GWL_STYLE)
      return !((bits & OS::WS_VISIBLE)).equal?(0)
    end
    
    typesig { [] }
    def has_cursor
      rect = RECT.new
      if (!OS._get_client_rect(@handle, rect))
        return false
      end
      OS._map_window_points(@handle, 0, rect, 2)
      pt = POINT.new
      return OS._get_cursor_pos(pt) && OS._pt_in_rect(rect, pt)
    end
    
    typesig { [] }
    def has_focus
      # If a non-SWT child of the control has focus,
      # then this control is considered to have focus
      # even though it does not have focus in Windows.
      # 
      # long
      hwnd_focus = OS._get_focus
      while (!(hwnd_focus).equal?(0))
        if ((hwnd_focus).equal?(@handle))
          return true
        end
        if (!(self.attr_display.get_control(hwnd_focus)).nil?)
          return false
        end
        hwnd_focus = OS._get_parent(hwnd_focus)
      end
      return false
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
      # long
      hwnd = @handle
      if (!(data).nil? && !(data.attr_hwnd).equal?(0))
        hwnd = data.attr_hwnd
      end
      if (!(data).nil?)
        data.attr_hwnd = hwnd
      end
      # long
      h_dc = 0
      if ((data).nil? || (data.attr_ps).nil?)
        h_dc = OS._get_dc(hwnd)
      else
        h_dc = OS._begin_paint(hwnd, data.attr_ps)
      end
      if ((h_dc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(data).nil?)
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
          if (!((data.attr_style & mask)).equal?(0))
            data.attr_layout = !((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? OS::LAYOUT_RTL : 0
          else
            flags = OS._get_layout(h_dc)
            if (!((flags & OS::LAYOUT_RTL)).equal?(0))
              data.attr_style |= SWT::RIGHT_TO_LEFT | SWT::MIRRORED
            else
              data.attr_style |= SWT::LEFT_TO_RIGHT
            end
          end
        else
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self.attr_display
        foreground = get_foreground_pixel
        if (!(foreground).equal?(OS._get_text_color(h_dc)))
          data.attr_foreground = foreground
        end
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        background = control.get_background_pixel
        if (!(background).equal?(OS._get_bk_color(h_dc)))
          data.attr_background = background
        end
        data.attr_font = !(@font).nil? ? @font : Font.win32_new(self.attr_display, OS._send_message(hwnd, OS::WM_GETFONT, 0, 0))
        # 64
        data.attr_ui_state = RJava.cast_to_int(OS._send_message(hwnd, OS::WM_QUERYUISTATE, 0, 0))
      end
      return h_dc
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
    def internal_dispose__gc(h_dc, data)
      check_widget
      # long
      hwnd = @handle
      if (!(data).nil? && !(data.attr_hwnd).equal?(0))
        hwnd = data.attr_hwnd
      end
      if ((data).nil? || (data.attr_ps).nil?)
        OS._release_dc(hwnd, h_dc)
      else
        OS._end_paint(hwnd, data.attr_ps)
      end
    end
    
    typesig { [] }
    def is_active
      dialog = self.attr_display.get_modal_dialog
      if (!(dialog).nil?)
        dialog_shell = dialog.attr_parent
        if (!(dialog_shell).nil? && !dialog_shell.is_disposed)
          if (!(dialog_shell).equal?(get_shell))
            return false
          end
        end
      end
      shell = nil
      modal_shells = self.attr_display.attr_modal_shells
      if (!(modal_shells).nil?)
        bits = SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
        index = modal_shells.attr_length
        while ((index -= 1) >= 0)
          modal = modal_shells[index]
          if (!(modal).nil?)
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
              break
            end
            if (!((modal.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
              if ((shell).nil?)
                shell = get_shell
              end
              if ((modal.attr_parent).equal?(shell))
                return false
              end
            end
          end
        end
      end
      if ((shell).nil?)
        shell = get_shell
      end
      return shell.get_enabled
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
    
    typesig { [Control] }
    def is_focus_ancestor(control)
      while (!(control).nil? && !(control).equal?(self) && !(control.is_a?(Shell)))
        control = control.attr_parent
      end
      return (control).equal?(self)
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
      # widget is obscured by a parent or sibling.
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
      # Check to see if current damage is included.
      # 
      # if (!OS.IsWindowVisible (handle)) return false;
      # int flags = OS.DCX_CACHE | OS.DCX_CLIPCHILDREN | OS.DCX_CLIPSIBLINGS;
      # int /*long*/ hDC = OS.GetDCEx (handle, 0, flags);
      # int result = OS.GetClipBox (hDC, new RECT ());
      # OS.ReleaseDC (handle, hDC);
      # return result != OS.NULLREGION;
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
      bits = OS._get_window_long(@handle, OS::GWL_STYLE)
      return !((bits & OS::WS_TABSTOP)).equal?(0)
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
      bits = OS._get_window_long(@handle, OS::GWL_STYLE)
      if (!((bits & OS::WS_TABSTOP)).equal?(0))
        return false
      end
      # long
      code = OS._send_message(@handle, OS::WM_GETDLGCODE, 0, 0)
      if (!((code & OS::DLGC_STATIC)).equal?(0))
        return false
      end
      if (!((code & OS::DLGC_WANTALLKEYS)).equal?(0))
        return false
      end
      if (!((code & OS::DLGC_WANTARROWS)).equal?(0))
        return false
      end
      if (!((code & OS::DLGC_WANTTAB)).equal?(0))
        return false
      end
      return true
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
      if (OS._is_window_visible(@handle))
        return true
      end
      return get_visible && @parent.is_visible
    end
    
    typesig { [::Java::Int, Event] }
    # long
    def map_event(hwnd, event)
      if (!(hwnd).equal?(@handle))
        point = POINT.new
        point.attr_x = event.attr_x
        point.attr_y = event.attr_y
        OS._map_window_points(hwnd, @handle, point, 1)
        event.attr_x = point.attr_x
        event.attr_y = point.attr_y
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def mark_layout(changed, all)
      # Do nothing
    end
    
    typesig { [] }
    def menu_shell
      return @parent.menu_shell
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      return false
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
      # long
      top_handle_ = top_handle
      hwnd_above = OS::HWND_TOP
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(@parent).equal?(control.attr_parent))
          return
        end
        # long
        hwnd = control.top_handle
        if ((hwnd).equal?(0) || (hwnd).equal?(top_handle_))
          return
        end
        hwnd_above = OS._get_window(hwnd, OS::GW_HWNDPREV)
        # Bug in Windows.  For some reason, when GetWindow ()
        # with GW_HWNDPREV is used to query the previous window
        # in the z-order with the first child, Windows returns
        # the first child instead of NULL.  The fix is to detect
        # this case and move the control to the top.
        if ((hwnd_above).equal?(0) || (hwnd_above).equal?(hwnd))
          hwnd_above = OS::HWND_TOP
        end
      end
      flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
      _set_window_pos(top_handle_, hwnd_above, 0, 0, 0, 0, flags)
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
      # long
      top_handle_ = top_handle
      hwnd_above = OS::HWND_BOTTOM
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(@parent).equal?(control.attr_parent))
          return
        end
        hwnd_above = control.top_handle
      else
        # Bug in Windows.  When SetWindowPos() is called
        # with HWND_BOTTOM on a dialog shell, the dialog
        # and the parent are moved to the bottom of the
        # desktop stack.  The fix is to move the dialog
        # to the bottom of the dialog window stack by
        # moving behind the first dialog child.
        shell = get_shell
        if ((self).equal?(shell) && !(@parent).nil?)
          # Bug in Windows.  For some reason, when GetWindow ()
          # with GW_HWNDPREV is used to query the previous window
          # in the z-order with the first child, Windows returns
          # the first child instead of NULL.  The fix is to detect
          # this case and do nothing because the control is already
          # at the bottom.
          # 
          # long
          hwnd_parent = @parent.attr_handle
          hwnd = hwnd_parent
          hwnd_above = OS._get_window(hwnd, OS::GW_HWNDPREV)
          while (!(hwnd_above).equal?(0) && !(hwnd_above).equal?(hwnd))
            if ((OS._get_window(hwnd_above, OS::GW_OWNER)).equal?(hwnd_parent))
              break
            end
            hwnd_above = OS._get_window(hwnd = hwnd_above, OS::GW_HWNDPREV)
          end
          if ((hwnd_above).equal?(hwnd))
            return
          end
        end
      end
      if ((hwnd_above).equal?(0) || (hwnd_above).equal?(top_handle_))
        return
      end
      flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
      _set_window_pos(top_handle_, hwnd_above, 0, 0, 0, 0, flags)
    end
    
    typesig { [Control] }
    def new__accessible(control)
      return Accessible.internal_new__accessible(self)
    end
    
    typesig { [SwtGCData] }
    def new__gc(data)
      return SwtGC.win32_new(self, data)
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
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        # long
        top_handle_ = top_handle
        # long
        hdc = gc.attr_handle
        state = 0
        # long
        gdip_graphics = gc.get_gcdata.attr_gdip_graphics
        if (!(gdip_graphics).equal?(0))
          # long
          clip_rgn = 0
          SwtGdip._graphics_set_pixel_offset_mode(gdip_graphics, SwtGdip::PixelOffsetModeNone)
          # long
          rgn = SwtGdip._region_new
          if ((rgn).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          SwtGdip._graphics_get_clip(gdip_graphics, rgn)
          if (!SwtGdip._region_is_infinite(rgn, gdip_graphics))
            clip_rgn = SwtGdip._region_get_hrgn(rgn, gdip_graphics)
          end
          SwtGdip._region_delete(rgn)
          SwtGdip._graphics_set_pixel_offset_mode(gdip_graphics, SwtGdip::PixelOffsetModeHalf)
          lp_xform = nil
          # long
          matrix = SwtGdip._matrix_new(1, 0, 0, 1, 0, 0)
          if ((matrix).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          SwtGdip._graphics_get_transform(gdip_graphics, matrix)
          if (!SwtGdip._matrix_is_identity(matrix))
            lp_xform = Array.typed(::Java::Float).new(6) { 0.0 }
            SwtGdip._matrix_get_elements(matrix, lp_xform)
          end
          SwtGdip._matrix_delete(matrix)
          hdc = SwtGdip._graphics_get_hdc(gdip_graphics)
          state = OS._save_dc(hdc)
          if (!(lp_xform).nil?)
            OS._set_graphics_mode(hdc, OS::GM_ADVANCED)
            OS._set_world_transform(hdc, lp_xform)
          end
          if (!(clip_rgn).equal?(0))
            OS._select_clip_rgn(hdc, clip_rgn)
            OS._delete_object(clip_rgn)
          end
        end
        if (OS::IsWinCE)
          OS._update_window(top_handle_)
        else
          flags = OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN
          OS._redraw_window(top_handle_, nil, 0, flags)
        end
        print_widget(top_handle_, hdc, gc)
        if (!(gdip_graphics).equal?(0))
          OS._restore_dc(hdc, state)
          SwtGdip._graphics_release_hdc(gdip_graphics, hdc)
        end
        return true
      end
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, SwtGC] }
    # long
    # long
    def print_widget(hwnd, hdc, gc)
      # Bug in Windows.  For some reason, PrintWindow()
      # returns success but does nothing when it is called
      # on a printer.  The fix is to just go directly to
      # WM_PRINT in this case.
      success = false
      if (!((OS._get_device_caps(gc.attr_handle, OS::TECHNOLOGY)).equal?(OS::DT_RASPRINTER)))
        # Bug in Windows.  When PrintWindow() will only draw that
        # portion of a control that is not obscured by the shell.
        # The fix is temporarily reparent the window to the desktop,
        # call PrintWindow() then reparent the window back.
        # 
        # long
        hwnd_parent = OS._get_parent(hwnd)
        # long
        hwnd_shell = hwnd_parent
        while (!(OS._get_parent(hwnd_shell)).equal?(0))
          if (!(OS._get_window(hwnd_shell, OS::GW_OWNER)).equal?(0))
            break
          end
          hwnd_shell = OS._get_parent(hwnd_shell)
        end
        rect1 = RECT.new
        OS._get_window_rect(hwnd, rect1)
        fix_print_window = !OS._is_window_visible(hwnd)
        if (!fix_print_window)
          rect2 = RECT.new
          OS._get_window_rect(hwnd_shell, rect2)
          OS._intersect_rect(rect2, rect1, rect2)
          fix_print_window = !OS._equal_rect(rect2, rect1)
        end
        # Bug in Windows. PrintWindow() does not print portions
        # of the receiver that are clipped out using SetWindowRgn()
        # in a parent.  The fix is temporarily reparent the window
        # to the desktop, call PrintWindow() then reparent the window
        # back.
        if (!fix_print_window)
          # long
          rgn = OS._create_rect_rgn(0, 0, 0, 0)
          # long
          parent = OS._get_parent(hwnd)
          while (!(parent).equal?(hwnd_shell) && !fix_print_window)
            if (!(OS._get_window_rgn(parent, rgn)).equal?(0))
              fix_print_window = true
            end
            parent = OS._get_parent(parent)
          end
          OS._delete_object(rgn)
        end
        bits = OS._get_window_long(hwnd, OS::GWL_STYLE)
        # long
        hwnd_insert_after = OS._get_window(hwnd, OS::GW_HWNDPREV)
        # Bug in Windows.  For some reason, when GetWindow ()
        # with GW_HWNDPREV is used to query the previous window
        # in the z-order with the first child, Windows returns
        # the first child instead of NULL.  The fix is to detect
        # this case and move the control to the top.
        if ((hwnd_insert_after).equal?(0) || (hwnd_insert_after).equal?(hwnd))
          hwnd_insert_after = OS::HWND_TOP
        end
        if (fix_print_window)
          x = OS._get_system_metrics(OS::SM_XVIRTUALSCREEN)
          y = OS._get_system_metrics(OS::SM_YVIRTUALSCREEN)
          width = OS._get_system_metrics(OS::SM_CXVIRTUALSCREEN)
          height = OS._get_system_metrics(OS::SM_CYVIRTUALSCREEN)
          flags = OS::SWP_NOSIZE | OS::SWP_NOZORDER | OS::SWP_NOACTIVATE | OS::SWP_DRAWFRAME
          if (!((bits & OS::WS_VISIBLE)).equal?(0))
            OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 0, 0)
          end
          _set_window_pos(hwnd, 0, x + width, y + height, 0, 0, flags)
          OS._set_parent(hwnd, 0)
          if (!((bits & OS::WS_VISIBLE)).equal?(0))
            OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 1, 0)
          end
        end
        if (((bits & OS::WS_VISIBLE)).equal?(0))
          OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 1, 0)
        end
        success = OS._print_window(hwnd, hdc, 0)
        if (((bits & OS::WS_VISIBLE)).equal?(0))
          OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 0, 0)
        end
        if (fix_print_window)
          if (!((bits & OS::WS_VISIBLE)).equal?(0))
            OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 0, 0)
          end
          OS._set_parent(hwnd, hwnd_parent)
          OS._map_window_points(0, hwnd_parent, rect1, 2)
          flags = OS::SWP_NOSIZE | OS::SWP_NOACTIVATE | OS::SWP_DRAWFRAME
          _set_window_pos(hwnd, hwnd_insert_after, rect1.attr_left, rect1.attr_top, rect1.attr_right - rect1.attr_left, rect1.attr_bottom - rect1.attr_top, flags)
          if (!((bits & OS::WS_VISIBLE)).equal?(0))
            OS._def_window_proc(hwnd, OS::WM_SETREDRAW, 1, 0)
          end
        end
      end
      # Bug in Windows.  For some reason, PrintWindow() fails
      # when it is called on a push button.  The fix is to
      # detect the failure and use WM_PRINT instead.  Note
      # that WM_PRINT cannot be used all the time because it
      # fails for browser controls when the browser has focus.
      if (!success)
        flags = OS::PRF_CLIENT | OS::PRF_NONCLIENT | OS::PRF_ERASEBKGND | OS::PRF_CHILDREN
        OS._send_message(hwnd, OS::WM_PRINT, hdc, flags)
      end
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
      redraw(false)
    end
    
    typesig { [::Java::Boolean] }
    def redraw(all)
      # checkWidget ();
      if (!OS._is_window_visible(@handle))
        return
      end
      if (OS::IsWinCE)
        OS._invalidate_rect(@handle, nil, true)
      else
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
        if (all)
          flags |= OS::RDW_ALLCHILDREN
        end
        OS._redraw_window(@handle, nil, 0, flags)
      end
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
      if (width <= 0 || height <= 0)
        return
      end
      if (!OS._is_window_visible(@handle))
        return
      end
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      if (OS::IsWinCE)
        OS._invalidate_rect(@handle, rect, true)
      else
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
        if (all)
          flags |= OS::RDW_ALLCHILDREN
        end
        OS._redraw_window(@handle, rect, 0, flags)
      end
    end
    
    typesig { [] }
    def redraw_children
      if (!OS._is_window_visible(@handle))
        return false
      end
      control = find_background_control
      if ((control).nil?)
        if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            OS._invalidate_rect(@handle, nil, true)
            return true
          end
        end
      else
        if (!(control.attr_background_image).nil?)
          OS._invalidate_rect(@handle, nil, true)
          return true
        end
      end
      return false
    end
    
    typesig { [] }
    def register
      self.attr_display.add_control(@handle, self)
    end
    
    typesig { [] }
    def release_handle
      super
      @handle = 0
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      @parent.remove_control(self)
    end
    
    typesig { [] }
    def release_widget
      super
      if (OS::IsDBLocale)
        OS._imm_associate_context(@handle, 0)
      end
      if (!(@tool_tip_text).nil?)
        set_tool_tip_text(get_shell, nil)
      end
      @tool_tip_text = RJava.cast_to_string(nil)
      if (!(@menu).nil? && !@menu.is_disposed)
        @menu.dispose
      end
      @background_image = nil
      @menu = nil
      @cursor = nil
      unsubclass
      deregister
      @layout_data = nil
      if (!(@accessible).nil?)
        @accessible.internal_dispose__accessible
      end
      @accessible = nil
      @region = nil
      @font = nil
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
    
    typesig { [::Java::Boolean] }
    def show_widget(visible)
      # long
      top_handle_ = top_handle
      OS._show_window(top_handle_, visible ? OS::SW_SHOW : OS::SW_HIDE)
      if (!(@handle).equal?(top_handle_))
        OS._show_window(@handle, visible ? OS::SW_SHOW : OS::SW_HIDE)
      end
    end
    
    typesig { [::Java::Int] }
    def send_focus_event(type)
      shell = get_shell
      # Feature in Windows.  During the processing of WM_KILLFOCUS,
      # when the focus window is queried using GetFocus(), it has
      # already been assigned to the new window.  The fix is to
      # remember the control that is losing or gaining focus and
      # answer it during WM_KILLFOCUS.  If a WM_SETFOCUS occurs
      # during WM_KILLFOCUS, the focus control needs to be updated
      # to the current control.  At any other time, the focus
      # control matches Windows.
      display = self.attr_display
      display.attr_focus_event = type
      display.attr_focus_control = self
      send_event___org_eclipse_swt_widgets_control_1(type)
      # widget could be disposed at this point
      display.attr_focus_event = SWT::None
      display.attr_focus_control = nil
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
      return true
    end
    
    typesig { [] }
    def send_move
      send_event___org_eclipse_swt_widgets_control_3(SWT::Move)
    end
    
    typesig { [] }
    def send_resize
      send_event___org_eclipse_swt_widgets_control_5(SWT::Resize)
    end
    
    typesig { [] }
    def set_background
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      if (!(control.attr_background_image).nil?)
        shell = get_shell
        shell.release_brushes
        set_background_image(control.attr_background_image.attr_handle)
      else
        set_background_pixel((control.attr_background).equal?(-1) ? control.default_background : control.attr_background)
      end
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
      pixel = -1
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        pixel = color.attr_handle
      end
      if ((pixel).equal?(@background))
        return
      end
      @background = pixel
      update_background_color
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
      if (!(image).nil?)
        if (image.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(image.attr_type).equal?(SWT::BITMAP))
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      if ((@background_image).equal?(image))
        return
      end
      @background_image = image
      shell = get_shell
      shell.release_brushes
      update_background_image
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_image(h_bitmap)
      if (OS::IsWinCE)
        OS._invalidate_rect(@handle, nil, true)
      else
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
        OS._redraw_window(@handle, nil, 0, flags)
      end
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      if (OS::IsWinCE)
        OS._invalidate_rect(@handle, nil, true)
      else
        flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
        OS._redraw_window(@handle, nil, 0, flags)
      end
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
      flags = OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE
      set_bounds(x, y, Math.max(0, width), Math.max(0, height), flags)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height, flags)
      set_bounds(x, y, width, height, flags, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_bounds(x, y, width, height, flags, defer)
      if (!(find_image_control).nil?)
        if ((@background_image).nil?)
          flags |= OS::SWP_NOCOPYBITS
        end
      else
        if ((OS._get_window(@handle, OS::GW_CHILD)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            if (!(find_theme_control).nil?)
              flags |= OS::SWP_NOCOPYBITS
            end
          end
        end
      end
      # long
      top_handle_ = top_handle
      if (defer && !(@parent).nil?)
        force_resize
        if (!(@parent.attr_lpwp).nil?)
          index = 0
          lpwp = @parent.attr_lpwp
          while (index < lpwp.attr_length)
            if ((lpwp[index]).nil?)
              break
            end
            index += 1
          end
          if ((index).equal?(lpwp.attr_length))
            new_lpwp = Array.typed(WINDOWPOS).new(lpwp.attr_length + 4) { nil }
            System.arraycopy(lpwp, 0, new_lpwp, 0, lpwp.attr_length)
            @parent.attr_lpwp = lpwp = new_lpwp
          end
          wp = WINDOWPOS.new
          wp.attr_hwnd = top_handle_
          wp.attr_x = x
          wp.attr_y = y
          wp.attr_cx = width
          wp.attr_cy = height
          wp.attr_flags = flags
          lpwp[index] = wp
          return
        end
      end
      _set_window_pos(top_handle_, 0, x, y, width, height, flags)
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
      set_bounds(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
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
      if (capture)
        OS._set_capture(@handle)
      else
        if ((OS._get_capture).equal?(@handle))
          OS._release_capture
        end
      end
    end
    
    typesig { [] }
    def set_cursor
      # long
      l_param = OS._makelparam(OS::HTCLIENT, OS::WM_MOUSEMOVE)
      OS._send_message(@handle, OS::WM_SETCURSOR, @handle, l_param)
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
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @cursor = cursor
      if (OS::IsWinCE)
        # long
        h_cursor = !(cursor).nil? ? cursor.attr_handle : 0
        OS._set_cursor(h_cursor)
        return
      end
      # long
      hwnd_cursor = OS._get_capture
      if ((hwnd_cursor).equal?(0))
        pt = POINT.new
        if (!OS._get_cursor_pos(pt))
          return
        end
        # long
        hwnd = hwnd_cursor = OS._window_from_point(pt)
        while (!(hwnd).equal?(0) && !(hwnd).equal?(@handle))
          hwnd = OS._get_parent(hwnd)
        end
        if ((hwnd).equal?(0))
          return
        end
      end
      control = self.attr_display.get_control(hwnd_cursor)
      if ((control).nil?)
        control = self
      end
      control.set_cursor
    end
    
    typesig { [] }
    def set_default_font
      # long
      h_font = self.attr_display.get_system_font.attr_handle
      OS._send_message(@handle, OS::WM_SETFONT, h_font, 0)
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
      enable_drag(drag_detect_)
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
      # Feature in Windows.  If the receiver has focus, disabling
      # the receiver causes no window to have focus.  The fix is
      # to assign focus to the first ancestor window that takes
      # focus.  If no window will take focus, set focus to the
      # desktop.
      control = nil
      fix_focus = false
      if (!enabled)
        if (!(self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
          control = self.attr_display.get_focus_control
          fix_focus = is_focus_ancestor(control)
        end
      end
      enable_widget(enabled)
      if (fix_focus)
        fix_focus(control)
      end
    end
    
    typesig { [] }
    def set_fixed_focus
      if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
        return false
      end
      return force_focus
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
      # long
      h_font = 0
      if (!(font).nil?)
        if (font.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        h_font = font.attr_handle
      end
      @font = font
      if ((h_font).equal?(0))
        h_font = default_font
      end
      OS._send_message(@handle, OS::WM_SETFONT, h_font, 1)
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
      pixel = -1
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        pixel = color.attr_handle
      end
      if ((pixel).equal?(@foreground))
        return
      end
      @foreground = pixel
      set_foreground_pixel(pixel)
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      OS._invalidate_rect(@handle, nil, true)
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
      flags = OS::SWP_NOSIZE | OS::SWP_NOZORDER | OS::SWP_NOACTIVATE
      # Feature in WinCE.  The SWP_DRAWFRAME flag for SetWindowPos()
      # causes a WM_SIZE message to be sent even when the SWP_NOSIZE
      # flag is specified.  The fix is to set SWP_DRAWFRAME only when
      # not running on WinCE.
      if (!OS::IsWinCE)
        flags |= OS::SWP_DRAWFRAME
      end
      set_bounds(x, y, 0, 0, flags)
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
      set_location(location.attr_x, location.attr_y)
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
    
    typesig { [::Java::Boolean] }
    def set_radio_focus(tabbing)
      return false
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      return false
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
    def set_redraw(redraw_)
      check_widget
      # Feature in Windows.  When WM_SETREDRAW is used to turn
      # off drawing in a widget, it clears the WS_VISIBLE bits
      # and then sets them when redraw is turned back on.  This
      # means that WM_SETREDRAW will make a widget unexpectedly
      # visible.  The fix is to track the visibility state while
      # drawing is turned off and restore it when drawing is
      # turned back on.
      if ((@draw_count).equal?(0))
        bits = OS._get_window_long(@handle, OS::GWL_STYLE)
        if (((bits & OS::WS_VISIBLE)).equal?(0))
          self.attr_state |= HIDDEN
        end
      end
      if (redraw_)
        if (((@draw_count -= 1)).equal?(0))
          # long
          top_handle_ = top_handle
          OS._send_message(top_handle_, OS::WM_SETREDRAW, 1, 0)
          if (!(@handle).equal?(top_handle_))
            OS._send_message(@handle, OS::WM_SETREDRAW, 1, 0)
          end
          if (!((self.attr_state & HIDDEN)).equal?(0))
            self.attr_state &= ~HIDDEN
            OS._show_window(top_handle_, OS::SW_HIDE)
            if (!(@handle).equal?(top_handle_))
              OS._show_window(@handle, OS::SW_HIDE)
            end
          else
            if (OS::IsWinCE)
              OS._invalidate_rect(top_handle_, nil, true)
              if (!(@handle).equal?(top_handle_))
                OS._invalidate_rect(@handle, nil, true)
              end
            else
              flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
              OS._redraw_window(top_handle_, nil, 0, flags)
            end
          end
        end
      else
        if ((((@draw_count += 1) - 1)).equal?(0))
          # long
          top_handle_ = top_handle
          OS._send_message(top_handle_, OS::WM_SETREDRAW, 0, 0)
          if (!(@handle).equal?(top_handle_))
            OS._send_message(@handle, OS::WM_SETREDRAW, 0, 0)
          end
        end
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
      # long
      h_region = 0
      if (!(region).nil?)
        h_region = OS._create_rect_rgn(0, 0, 0, 0)
        OS._combine_rgn(h_region, region.attr_handle, h_region, OS::RGN_OR)
      end
      OS._set_window_rgn(@handle, h_region, true)
      @region = region
    end
    
    typesig { [] }
    def set_saved_focus
      return force_focus
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
      flags = OS::SWP_NOMOVE | OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE
      set_bounds(0, 0, Math.max(0, width), Math.max(0, height), flags)
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
      set_tool_tip_text(get_shell, string)
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, string)
      shell.set_tool_tip_text(@handle, string)
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
      if (!get_drawing)
        if (((((self.attr_state & HIDDEN)).equal?(0))).equal?(visible))
          return
        end
      else
        bits = OS._get_window_long(@handle, OS::GWL_STYLE)
        if (((!((bits & OS::WS_VISIBLE)).equal?(0))).equal?(visible))
          return
        end
      end
      if (visible)
        send_event___org_eclipse_swt_widgets_control_7(SWT::Show)
        if (is_disposed)
          return
        end
      end
      # Feature in Windows.  If the receiver has focus, hiding
      # the receiver causes no window to have focus.  The fix is
      # to assign focus to the first ancestor window that takes
      # focus.  If no window will take focus, set focus to the
      # desktop.
      control = nil
      fix_focus_ = false
      if (!visible)
        if (!(self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
          control = self.attr_display.get_focus_control
          fix_focus_ = is_focus_ancestor(control)
        end
      end
      if (!get_drawing)
        self.attr_state = visible ? self.attr_state & ~HIDDEN : self.attr_state | HIDDEN
      else
        show_widget(visible)
        if (is_disposed)
          return
        end
      end
      if (!visible)
        send_event___org_eclipse_swt_widgets_control_9(SWT::Hide)
        if (is_disposed)
          return
        end
      end
      if (fix_focus_)
        fix_focus(control)
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
    
    typesig { [] }
    def subclass
      # long
      old_proc = window_proc___org_eclipse_swt_widgets_control_11
      # long
      new_proc = self.attr_display.attr_window_proc
      if ((old_proc).equal?(new_proc))
        return
      end
      OS._set_window_long_ptr(@handle, OS::GWLP_WNDPROC, new_proc)
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
      pt = POINT.new
      pt.attr_x = x
      pt.attr_y = y
      OS._screen_to_client(@handle, pt)
      return Point.new(pt.attr_x, pt.attr_y)
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
      pt = POINT.new
      pt.attr_x = x
      pt.attr_y = y
      OS._client_to_screen(@handle, pt)
      return Point.new(pt.attr_x, pt.attr_y)
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
    # long
    def top_handle
      return @handle
    end
    
    typesig { [MSG] }
    def translate_accelerator(msg)
      return menu_shell.translate_accelerator(msg)
    end
    
    typesig { [Event, Control] }
    def translate_mnemonic(event, control)
      if ((control).equal?(self))
        return false
      end
      if (!is_visible || !is_enabled)
        return false
      end
      event.attr_doit = mnemonic_match(event.attr_character)
      return traverse(event)
    end
    
    typesig { [MSG] }
    def translate_mnemonic(msg)
      if (msg.attr_w_param < 0x20)
        return false
      end
      # long
      hwnd = msg.attr_hwnd
      if (OS._get_key_state(OS::VK_MENU) >= 0)
        # long
        code = OS._send_message(hwnd, OS::WM_GETDLGCODE, 0, 0)
        if (!((code & OS::DLGC_WANTALLKEYS)).equal?(0))
          return false
        end
        if (((code & OS::DLGC_BUTTON)).equal?(0))
          return false
        end
      end
      shell = menu_shell
      if (shell.is_visible && shell.is_enabled)
        # 64
        self.attr_display.attr_last_ascii = RJava.cast_to_int(msg.attr_w_param)
        self.attr_display.attr_last_null = self.attr_display.attr_last_dead = false
        event = Event.new
        event.attr_detail = SWT::TRAVERSE_MNEMONIC
        if (set_key_state(event, SWT::Traverse, msg.attr_w_param, msg.attr_l_param))
          return translate_mnemonic(event, nil) || shell.translate_mnemonic(event, self)
        end
      end
      return false
    end
    
    typesig { [MSG] }
    def translate_traversal(msg)
      # long
      hwnd = msg.attr_hwnd
      # 64
      key = RJava.cast_to_int(msg.attr_w_param)
      if ((key).equal?(OS::VK_MENU))
        OS._send_message(hwnd, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
        return false
      end
      detail = SWT::TRAVERSE_NONE
      doit = true
      all = false
      last_virtual = false
      last_key = key
      last_ascii = 0
      case (key)
      when OS::VK_ESCAPE
        all = true
        last_ascii = 27
        # long
        code = OS._send_message(hwnd, OS::WM_GETDLGCODE, 0, 0)
        if (!((code & OS::DLGC_WANTALLKEYS)).equal?(0))
          # Use DLGC_HASSETSEL to determine that the control
          # is a text widget.  A text widget normally wants
          # all keys except VK_ESCAPE.  If this bit is not
          # set, then assume the control wants all keys,
          # including VK_ESCAPE.
          if (((code & OS::DLGC_HASSETSEL)).equal?(0))
            doit = false
          end
        end
        detail = SWT::TRAVERSE_ESCAPE
      when OS::VK_RETURN
        all = true
        last_ascii = Character.new(?\r.ord)
        # long
        code = OS._send_message(hwnd, OS::WM_GETDLGCODE, 0, 0)
        if (!((code & OS::DLGC_WANTALLKEYS)).equal?(0))
          doit = false
        end
        detail = SWT::TRAVERSE_RETURN
      when OS::VK_TAB
        last_ascii = Character.new(?\t.ord)
        next_ = OS._get_key_state(OS::VK_SHIFT) >= 0
        # long
        code = OS._send_message(hwnd, OS::WM_GETDLGCODE, 0, 0)
        if (!((code & (OS::DLGC_WANTTAB | OS::DLGC_WANTALLKEYS))).equal?(0))
          # Use DLGC_HASSETSEL to determine that the control is a
          # text widget.  If the control is a text widget, then
          # Ctrl+Tab and Shift+Tab should traverse out of the widget.
          # If the control is not a text widget, the correct behavior
          # is to give every character, including Tab, Ctrl+Tab and
          # Shift+Tab to the control.
          if (!((code & OS::DLGC_HASSETSEL)).equal?(0))
            if (next_ && OS._get_key_state(OS::VK_CONTROL) >= 0)
              doit = false
            end
          else
            doit = false
          end
        end
        detail = next_ ? SWT::TRAVERSE_TAB_NEXT : SWT::TRAVERSE_TAB_PREVIOUS
      when OS::VK_UP, OS::VK_LEFT, OS::VK_DOWN, OS::VK_RIGHT
        # On WinCE SP there is no tab key.  Focus is assigned
        # using the VK_UP and VK_DOWN keys, not with VK_LEFT
        # or VK_RIGHT.
        if (OS::IsSP)
          if ((key).equal?(OS::VK_LEFT) || (key).equal?(OS::VK_RIGHT))
            return false
          end
        end
        last_virtual = true
        # long
        code = OS._send_message(hwnd, OS::WM_GETDLGCODE, 0, 0)
        # | OS.DLGC_WANTALLKEYS
        if (!((code & (OS::DLGC_WANTARROWS))).equal?(0))
          doit = false
        end
        next_ = (key).equal?(OS::VK_DOWN) || (key).equal?(OS::VK_RIGHT)
        if (!(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          if ((key).equal?(OS::VK_LEFT) || (key).equal?(OS::VK_RIGHT))
            next_ = !next_
          end
        end
        detail = next_ ? SWT::TRAVERSE_ARROW_NEXT : SWT::TRAVERSE_ARROW_PREVIOUS
      when OS::VK_PRIOR, OS::VK_NEXT
        all = true
        last_virtual = true
        if (OS._get_key_state(OS::VK_CONTROL) >= 0)
          return false
        end
        # long
        code = OS._send_message(hwnd, OS::WM_GETDLGCODE, 0, 0)
        if (!((code & OS::DLGC_WANTALLKEYS)).equal?(0))
          # Use DLGC_HASSETSEL to determine that the control is a
          # text widget.  If the control is a text widget, then
          # Ctrl+PgUp and Ctrl+PgDn should traverse out of the widget.
          if (((code & OS::DLGC_HASSETSEL)).equal?(0))
            doit = false
          end
        end
        detail = (key).equal?(OS::VK_PRIOR) ? SWT::TRAVERSE_PAGE_PREVIOUS : SWT::TRAVERSE_PAGE_NEXT
      else
        return false
      end
      event = Event.new
      event.attr_doit = doit
      event.attr_detail = detail
      self.attr_display.attr_last_key = last_key
      self.attr_display.attr_last_ascii = last_ascii
      self.attr_display.attr_last_virtual = last_virtual
      self.attr_display.attr_last_null = self.attr_display.attr_last_dead = false
      if (!set_key_state(event, SWT::Traverse, msg.attr_w_param, msg.attr_l_param))
        return false
      end
      shell = get_shell
      control = self
      begin
        if (control.traverse(event))
          OS._send_message(hwnd, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
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
    
    typesig { [Event] }
    def traverse(event)
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the traverse
      # event.  If this happens, return true to stop further
      # event processing.
      send_event___org_eclipse_swt_widgets_control_13(SWT::Traverse, event)
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
        return traverse_mnemonic(event.attr_character)
      when SWT::TRAVERSE_PAGE_NEXT
        return traverse_page(true)
      when SWT::TRAVERSE_PAGE_PREVIOUS
        return traverse_page(false)
      end
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
    
    typesig { [::Java::Char] }
    def traverse_mnemonic(key)
      if (mnemonic_hit(key))
        OS._send_message(@handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
        return true
      end
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_page(next_)
      return false
    end
    
    typesig { [] }
    def traverse_return
      return false
    end
    
    typesig { [] }
    def unsubclass
      # long
      new_proc = window_proc___org_eclipse_swt_widgets_control_15
      # long
      old_proc = self.attr_display.attr_window_proc
      if ((old_proc).equal?(new_proc))
        return
      end
      OS._set_window_long_ptr(@handle, OS::GWLP_WNDPROC, new_proc)
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
      # checkWidget ();
      if (OS::IsWinCE)
        OS._update_window(@handle)
      else
        flags = OS::RDW_UPDATENOW
        if (all)
          flags |= OS::RDW_ALLCHILDREN
        end
        OS._redraw_window(@handle, nil, 0, flags)
      end
    end
    
    typesig { [] }
    def update_background_color
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      set_background_pixel(control.attr_background)
    end
    
    typesig { [] }
    def update_background_image
      control = find_background_control
      image = !(control).nil? ? control.attr_background_image : @background_image
      set_background_image(!(image).nil? ? image.attr_handle : 0)
    end
    
    typesig { [] }
    def update_background_mode
      old_state = self.attr_state & PARENT_BACKGROUND
      check_background
      if (!(old_state).equal?((self.attr_state & PARENT_BACKGROUND)))
        set_background
      end
    end
    
    typesig { [Font, Font] }
    def update_font(old_font, new_font)
      if ((get_font == old_font))
        set_font(new_font)
      end
    end
    
    typesig { [] }
    def update_images
      # Do nothing
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def update_layout(resize, all)
      # Do nothing
    end
    
    typesig { [] }
    def widget_create_struct
      return nil
    end
    
    typesig { [] }
    def widget_ext_style
      bits = 0
      if (!OS::IsPPC)
        if (!((self.attr_style & SWT::BORDER)).equal?(0))
          bits |= OS::WS_EX_CLIENTEDGE
        end
      end
      # if ((style & SWT.BORDER) != 0) {
      # if ((style & SWT.FLAT) == 0) bits |= OS.WS_EX_CLIENTEDGE;
      # }
      # 
      # Feature in Windows NT.  When CreateWindowEx() is called with
      # WS_EX_LAYOUTRTL or WS_EX_NOINHERITLAYOUT, CreateWindowEx()
      # fails to create the HWND. The fix is to not use these bits.
      if (OS::WIN32_VERSION < OS._version(4, 10))
        return bits
      end
      bits |= OS::WS_EX_NOINHERITLAYOUT
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        bits |= OS::WS_EX_LAYOUTRTL
      end
      return bits
    end
    
    typesig { [] }
    # long
    def widget_parent
      return @parent.attr_handle
    end
    
    typesig { [] }
    def widget_style
      # Force clipping of siblings by setting WS_CLIPSIBLINGS
      bits = OS::WS_CHILD | OS::WS_VISIBLE | OS::WS_CLIPSIBLINGS
      # if ((style & SWT.BORDER) != 0) {
      # if ((style & SWT.FLAT) != 0) bits |= OS.WS_BORDER;
      # }
      if (OS::IsPPC)
        if (!((self.attr_style & SWT::BORDER)).equal?(0))
          bits |= OS::WS_BORDER
        end
      end
      return bits
      # This code is intentionally commented.  When clipping
      # of both siblings and children is not enforced, it is
      # possible for application code to draw outside of the
      # control.
      # 
      # int bits = OS.WS_CHILD | OS.WS_VISIBLE;
      # if ((style & SWT.CLIP_SIBLINGS) != 0) bits |= OS.WS_CLIPSIBLINGS;
      # if ((style & SWT.CLIP_CHILDREN) != 0) bits |= OS.WS_CLIPCHILDREN;
      # return bits;
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
      # long
      top_handle_ = top_handle
      if ((OS._set_parent(top_handle_, parent.attr_handle)).equal?(0))
        return false
      end
      @parent = parent
      flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
      _set_window_pos(top_handle_, OS::HWND_BOTTOM, 0, 0, 0, 0, flags)
      return true
    end
    
    typesig { [] }
    def window_class
      raise NotImplementedError
    end
    
    typesig { [] }
    # long
    def window_proc
      raise NotImplementedError
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      result = nil
      case (msg)
      when OS::WM_ACTIVATE
        result = _wm_activate(w_param, l_param)
      when OS::WM_CAPTURECHANGED
        result = _wm_capturechanged(w_param, l_param)
      when OS::WM_CHANGEUISTATE
        result = _wm_changeuistate(w_param, l_param)
      when OS::WM_CHAR
        result = _wm_char(w_param, l_param)
      when OS::WM_CLEAR
        result = _wm_clear(w_param, l_param)
      when OS::WM_CLOSE
        result = _wm_close(w_param, l_param)
      when OS::WM_COMMAND
        result = _wm_command(w_param, l_param)
      when OS::WM_CONTEXTMENU
        result = _wm_contextmenu(w_param, l_param)
      when OS::WM_CTLCOLORBTN, OS::WM_CTLCOLORDLG, OS::WM_CTLCOLOREDIT, OS::WM_CTLCOLORLISTBOX, OS::WM_CTLCOLORMSGBOX, OS::WM_CTLCOLORSCROLLBAR, OS::WM_CTLCOLORSTATIC
        result = _wm_ctlcolor(w_param, l_param)
      when OS::WM_CUT
        result = _wm_cut(w_param, l_param)
      when OS::WM_DESTROY
        result = _wm_destroy(w_param, l_param)
      when OS::WM_DRAWITEM
        result = _wm_drawitem(w_param, l_param)
      when OS::WM_ENDSESSION
        result = _wm_endsession(w_param, l_param)
      when OS::WM_ENTERIDLE
        result = _wm_enteridle(w_param, l_param)
      when OS::WM_ERASEBKGND
        result = _wm_erasebkgnd(w_param, l_param)
      when OS::WM_GETDLGCODE
        result = _wm_getdlgcode(w_param, l_param)
      when OS::WM_GETFONT
        result = _wm_getfont(w_param, l_param)
      when OS::WM_GETOBJECT
        result = _wm_getobject(w_param, l_param)
      when OS::WM_GETMINMAXINFO
        result = _wm_getminmaxinfo(w_param, l_param)
      when OS::WM_HELP
        result = _wm_help(w_param, l_param)
      when OS::WM_HSCROLL
        result = _wm_hscroll(w_param, l_param)
      when OS::WM_IME_CHAR
        result = _wm_ime_char(w_param, l_param)
      when OS::WM_IME_COMPOSITION
        result = _wm_ime_composition(w_param, l_param)
      when OS::WM_IME_COMPOSITION_START
        result = _wm_ime_composition_start(w_param, l_param)
      when OS::WM_IME_ENDCOMPOSITION
        result = _wm_ime_endcomposition(w_param, l_param)
      when OS::WM_INITMENUPOPUP
        result = _wm_initmenupopup(w_param, l_param)
      when OS::WM_INPUTLANGCHANGE
        result = _wm_inputlangchange(w_param, l_param)
      when OS::WM_HOTKEY
        result = _wm_hotkey(w_param, l_param)
      when OS::WM_KEYDOWN
        result = _wm_keydown(w_param, l_param)
      when OS::WM_KEYUP
        result = _wm_keyup(w_param, l_param)
      when OS::WM_KILLFOCUS
        result = _wm_killfocus(w_param, l_param)
      when OS::WM_LBUTTONDBLCLK
        result = _wm_lbuttondblclk(w_param, l_param)
      when OS::WM_LBUTTONDOWN
        result = _wm_lbuttondown(w_param, l_param)
      when OS::WM_LBUTTONUP
        result = _wm_lbuttonup(w_param, l_param)
      when OS::WM_MBUTTONDBLCLK
        result = _wm_mbuttondblclk(w_param, l_param)
      when OS::WM_MBUTTONDOWN
        result = _wm_mbuttondown(w_param, l_param)
      when OS::WM_MBUTTONUP
        result = _wm_mbuttonup(w_param, l_param)
      when OS::WM_MEASUREITEM
        result = _wm_measureitem(w_param, l_param)
      when OS::WM_MENUCHAR
        result = _wm_menuchar(w_param, l_param)
      when OS::WM_MENUSELECT
        result = _wm_menuselect(w_param, l_param)
      when OS::WM_MOUSEACTIVATE
        result = _wm_mouseactivate(w_param, l_param)
      when OS::WM_MOUSEHOVER
        result = _wm_mousehover(w_param, l_param)
      when OS::WM_MOUSELEAVE
        result = _wm_mouseleave(w_param, l_param)
      when OS::WM_MOUSEMOVE
        result = _wm_mousemove(w_param, l_param)
      when OS::WM_MOUSEWHEEL
        result = _wm_mousewheel(w_param, l_param)
      when OS::WM_MOVE
        result = _wm_move(w_param, l_param)
      when OS::WM_NCACTIVATE
        result = _wm_ncactivate(w_param, l_param)
      when OS::WM_NCCALCSIZE
        result = _wm_nccalcsize(w_param, l_param)
      when OS::WM_NCHITTEST
        result = _wm_nchittest(w_param, l_param)
      when OS::WM_NCLBUTTONDOWN
        result = _wm_nclbuttondown(w_param, l_param)
      when OS::WM_NCPAINT
        result = _wm_ncpaint(w_param, l_param)
      when OS::WM_NOTIFY
        result = _wm_notify(w_param, l_param)
      when OS::WM_PAINT
        result = _wm_paint(w_param, l_param)
      when OS::WM_PALETTECHANGED
        result = _wm_palettechanged(w_param, l_param)
      when OS::WM_PARENTNOTIFY
        result = _wm_parentnotify(w_param, l_param)
      when OS::WM_PASTE
        result = _wm_paste(w_param, l_param)
      when OS::WM_PRINT
        result = _wm_print(w_param, l_param)
      when OS::WM_PRINTCLIENT
        result = _wm_printclient(w_param, l_param)
      when OS::WM_QUERYENDSESSION
        result = _wm_queryendsession(w_param, l_param)
      when OS::WM_QUERYNEWPALETTE
        result = _wm_querynewpalette(w_param, l_param)
      when OS::WM_QUERYOPEN
        result = _wm_queryopen(w_param, l_param)
      when OS::WM_RBUTTONDBLCLK
        result = _wm_rbuttondblclk(w_param, l_param)
      when OS::WM_RBUTTONDOWN
        result = _wm_rbuttondown(w_param, l_param)
      when OS::WM_RBUTTONUP
        result = _wm_rbuttonup(w_param, l_param)
      when OS::WM_SETCURSOR
        result = _wm_setcursor(w_param, l_param)
      when OS::WM_SETFOCUS
        result = _wm_setfocus(w_param, l_param)
      when OS::WM_SETFONT
        result = _wm_setfont(w_param, l_param)
      when OS::WM_SETTINGCHANGE
        result = _wm_settingchange(w_param, l_param)
      when OS::WM_SETREDRAW
        result = _wm_setredraw(w_param, l_param)
      when OS::WM_SHOWWINDOW
        result = _wm_showwindow(w_param, l_param)
      when OS::WM_SIZE
        result = _wm_size(w_param, l_param)
      when OS::WM_SYSCHAR
        result = _wm_syschar(w_param, l_param)
      when OS::WM_SYSCOLORCHANGE
        result = _wm_syscolorchange(w_param, l_param)
      when OS::WM_SYSCOMMAND
        result = _wm_syscommand(w_param, l_param)
      when OS::WM_SYSKEYDOWN
        result = _wm_syskeydown(w_param, l_param)
      when OS::WM_SYSKEYUP
        result = _wm_syskeyup(w_param, l_param)
      when OS::WM_TIMER
        result = _wm_timer(w_param, l_param)
      when OS::WM_UNDO
        result = _wm_undo(w_param, l_param)
      when OS::WM_UPDATEUISTATE
        result = _wm_updateuistate(w_param, l_param)
      when OS::WM_VSCROLL
        result = _wm_vscroll(w_param, l_param)
      when OS::WM_WINDOWPOSCHANGED
        result = _wm_windowposchanged(w_param, l_param)
      when OS::WM_WINDOWPOSCHANGING
        result = _wm_windowposchanging(w_param, l_param)
      when OS::WM_XBUTTONDBLCLK
        result = _wm_xbuttondblclk(w_param, l_param)
      when OS::WM_XBUTTONDOWN
        result = _wm_xbuttondown(w_param, l_param)
      when OS::WM_XBUTTONUP
        result = _wm_xbuttonup(w_param, l_param)
      end
      if (!(result).nil?)
        return result.attr_value
      end
      return call_window_proc(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_activate(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_capturechanged(w_param, l_param)
      return wm_capture_changed(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_changeuistate(w_param, l_param)
      if (!((self.attr_state & IGNORE_WM_CHANGEUISTATE)).equal?(0))
        return LRESULT::ZERO
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      return wm_char(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_clear(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_close(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_command(w_param, l_param)
      # When the WM_COMMAND message is sent from a
      # menu, the HWND parameter in LPARAM is zero.
      if ((l_param).equal?(0))
        shell = menu_shell
        if (shell.is_enabled)
          id = OS._loword(w_param)
          item = self.attr_display.get_menu_item(id)
          if (!(item).nil? && item.is_enabled)
            return item.wm_command_child(w_param, l_param)
          end
        end
        return nil
      end
      control = self.attr_display.get_control(l_param)
      if ((control).nil?)
        return nil
      end
      return control.wm_command_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_contextmenu(w_param, l_param)
      return wm_context_menu(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ctlcolor(w_param, l_param)
      # long
      h_palette = self.attr_display.attr_h_palette
      if (!(h_palette).equal?(0))
        OS._select_palette(w_param, h_palette, false)
        OS._realize_palette(w_param)
      end
      control = self.attr_display.get_control(l_param)
      if ((control).nil?)
        return nil
      end
      return control.wm_color_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_cut(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_destroy(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_drawitem(w_param, l_param)
      struct = DRAWITEMSTRUCT.new
      OS._move_memory(struct, l_param, DRAWITEMSTRUCT.attr_sizeof)
      if ((struct.attr_ctl_type).equal?(OS::ODT_MENU))
        item = self.attr_display.get_menu_item(struct.attr_item_id)
        if ((item).nil?)
          return nil
        end
        return item.wm_draw_child(w_param, l_param)
      end
      control = self.attr_display.get_control(struct.attr_hwnd_item)
      if ((control).nil?)
        return nil
      end
      return control.wm_draw_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_endsession(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_enteridle(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      if (!((self.attr_state & DRAW_BACKGROUND)).equal?(0))
        if (!(find_image_control).nil?)
          return LRESULT::ONE
        end
      end
      if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          if (!(find_theme_control).nil?)
            return LRESULT::ONE
          end
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getfont(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getobject(w_param, l_param)
      if (!(@accessible).nil?)
        # long
        result = @accessible.internal__wm_getobject(w_param, l_param)
        if (!(result).equal?(0))
          return LRESULT.new(result)
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getminmaxinfo(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_hotkey(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_help(w_param, l_param)
      if (OS::IsWinCE)
        return nil
      end
      lphi = HELPINFO.new
      OS._move_memory(lphi, l_param, HELPINFO.attr_sizeof)
      shell = menu_shell
      if (!shell.is_enabled)
        return nil
      end
      if ((lphi.attr_i_context_type).equal?(OS::HELPINFO_MENUITEM))
        item = self.attr_display.get_menu_item(lphi.attr_i_ctrl_id)
        if (!(item).nil? && item.is_enabled)
          widget = nil
          if (item.hooks(SWT::Help))
            widget = item
          else
            menu = item.attr_parent
            if (menu.hooks(SWT::Help))
              widget = menu
            end
          end
          if (!(widget).nil?)
            # long
            hwnd_shell = shell.attr_handle
            OS._send_message(hwnd_shell, OS::WM_CANCELMODE, 0, 0)
            widget.post_event___org_eclipse_swt_widgets_control_17(SWT::Help)
            return LRESULT::ONE
          end
        end
        return nil
      end
      if (hooks(SWT::Help))
        post_event___org_eclipse_swt_widgets_control_19(SWT::Help)
        return LRESULT::ONE
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_hscroll(w_param, l_param)
      control = self.attr_display.get_control(l_param)
      if ((control).nil?)
        return nil
      end
      return control.wm_scroll_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_char(w_param, l_param)
      return wm_imechar(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_composition(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_composition_start(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_endcomposition(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_initmenupopup(w_param, l_param)
      # Ignore WM_INITMENUPOPUP for an accelerator
      if (self.attr_display.attr_accel_key_hit)
        return nil
      end
      # If the high order word of LPARAM is non-zero,
      # the menu is the system menu and we can ignore
      # WPARAM.  Otherwise, use WPARAM to find the menu.
      shell = get_shell
      old_menu = shell.attr_active_menu
      new_menu = nil
      if ((OS._hiword(l_param)).equal?(0))
        new_menu = menu_shell.find_menu(w_param)
        if (!(new_menu).nil?)
          new_menu.update
        end
      end
      menu = new_menu
      while (!(menu).nil? && !(menu).equal?(old_menu))
        menu = menu.get_parent_menu
      end
      if ((menu).nil?)
        menu = shell.attr_active_menu
        while (!(menu).nil?)
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the hide
          # event.  If this happens, stop searching up the
          # ancestor list because there is no longer a link
          # to follow.
          menu.send_event___org_eclipse_swt_widgets_control_21(SWT::Hide)
          if (menu.is_disposed)
            break
          end
          menu = menu.get_parent_menu
          ancestor = new_menu
          while (!(ancestor).nil? && !(ancestor).equal?(menu))
            ancestor = ancestor.get_parent_menu
          end
          if (!(ancestor).nil?)
            break
          end
        end
      end
      # The shell and the new menu may be disposed because of
      # sending the hide event to the ancestor menus but setting
      # a field to null in a disposed shell is not harmful.
      if (!(new_menu).nil? && new_menu.is_disposed)
        new_menu = nil
      end
      shell.attr_active_menu = new_menu
      # Send the show event
      if (!(new_menu).nil? && !(new_menu).equal?(old_menu))
        new_menu.send_event___org_eclipse_swt_widgets_control_23(SWT::Show)
        # widget could be disposed at this point
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_inputlangchange(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      return wm_key_down(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keyup(w_param, l_param)
      return wm_key_up(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      return wm_kill_focus(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondblclk(w_param, l_param)
      return wm_lbutton_dbl_clk(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      return wm_lbutton_down(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttonup(w_param, l_param)
      return wm_lbutton_up(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mbuttondblclk(w_param, l_param)
      return wm_mbutton_dbl_clk(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mbuttondown(w_param, l_param)
      return wm_mbutton_down(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mbuttonup(w_param, l_param)
      return wm_mbutton_up(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_measureitem(w_param, l_param)
      struct = MEASUREITEMSTRUCT.new
      OS._move_memory(struct, l_param, MEASUREITEMSTRUCT.attr_sizeof)
      if ((struct.attr_ctl_type).equal?(OS::ODT_MENU))
        item = self.attr_display.get_menu_item(struct.attr_item_id)
        if ((item).nil?)
          return nil
        end
        return item.wm_measure_child(w_param, l_param)
      end
      # long
      hwnd = OS._get_dlg_item(@handle, struct.attr_ctl_id)
      control = self.attr_display.get_control(hwnd)
      if ((control).nil?)
        return nil
      end
      return control.wm_measure_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_menuchar(w_param, l_param)
      # Feature in Windows.  When the user types Alt+<key>
      # and <key> does not match a mnemonic in the System
      # menu or the menu bar, Windows beeps.  This beep is
      # unexpected and unwanted by applications that look
      # for Alt+<key>.  The fix is to detect the case and
      # stop Windows from beeping by closing the menu.
      type = OS._hiword(w_param)
      if ((type).equal?(0) || (type).equal?(OS::MF_SYSMENU))
        self.attr_display.attr_mnemonic_key_hit = false
        return LRESULT.new(OS._makelresult(0, OS::MNC_CLOSE))
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_menuselect(w_param, l_param)
      code = OS._hiword(w_param)
      shell = get_shell
      if ((code).equal?(0xffff) && (l_param).equal?(0))
        menu = shell.attr_active_menu
        while (!(menu).nil?)
          # When the user cancels any menu that is not the
          # menu bar, assume a mnemonic key was pressed to open
          # the menu from WM_SYSCHAR.  When the menu was invoked
          # using the mouse, this assumption is wrong but not
          # harmful.  This variable is only used in WM_SYSCHAR
          # and WM_SYSCHAR is only sent after the user has pressed
          # a mnemonic.
          self.attr_display.attr_mnemonic_key_hit = true
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the hide
          # event.  If this happens, stop searching up the
          # parent list because there is no longer a link
          # to follow.
          menu.send_event___org_eclipse_swt_widgets_control_25(SWT::Hide)
          if (menu.is_disposed)
            break
          end
          menu = menu.get_parent_menu
        end
        # The shell may be disposed because of sending the hide
        # event to the last active menu menu but setting a field
        # to null in a destroyed widget is not harmful.
        shell.attr_active_menu = nil
        return nil
      end
      if (!((code & OS::MF_SYSMENU)).equal?(0))
        return nil
      end
      if (!((code & OS::MF_HILITE)).equal?(0))
        item = nil
        menu_shell_ = menu_shell
        if (!((code & OS::MF_POPUP)).equal?(0))
          index = OS._loword(w_param)
          info = MENUITEMINFO.new
          info.attr_cb_size = MENUITEMINFO.attr_sizeof
          info.attr_f_mask = OS::MIIM_SUBMENU
          if (OS._get_menu_item_info(l_param, index, true, info))
            new_menu = menu_shell_.find_menu(info.attr_h_sub_menu)
            if (!(new_menu).nil?)
              item = new_menu.attr_cascade
            end
          end
        else
          new_menu = menu_shell_.find_menu(l_param)
          if (!(new_menu).nil?)
            id = OS._loword(w_param)
            item = self.attr_display.get_menu_item(id)
          end
          old_menu = shell.attr_active_menu
          if (!(old_menu).nil?)
            ancestor = old_menu
            while (!(ancestor).nil? && !(ancestor).equal?(new_menu))
              ancestor = ancestor.get_parent_menu
            end
            if ((ancestor).equal?(new_menu))
              ancestor = old_menu
              while (!(ancestor).equal?(new_menu))
                # It is possible (but unlikely), that application
                # code could have disposed the widget in the hide
                # event or the item about to be armed.  If this
                # happens, stop searching up the ancestor list
                # because there is no longer a link to follow.
                ancestor.send_event___org_eclipse_swt_widgets_control_27(SWT::Hide)
                if (ancestor.is_disposed)
                  break
                end
                ancestor = ancestor.get_parent_menu
                if ((ancestor).nil?)
                  break
                end
              end
              # The shell and/or the item could be disposed when
              # processing hide events from above.  If this happens,
              # ensure that the shell is not accessed and that no
              # arm event is sent to the item.
              if (!shell.is_disposed)
                if (!(new_menu).nil? && new_menu.is_disposed)
                  new_menu = nil
                end
                shell.attr_active_menu = new_menu
              end
              if (!(item).nil? && item.is_disposed)
                item = nil
              end
            end
          end
        end
        if (!(item).nil?)
          item.send_event___org_eclipse_swt_widgets_control_29(SWT::Arm)
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mouseactivate(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousehover(w_param, l_param)
      return wm_mouse_hover(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mouseleave(w_param, l_param)
      if (OS::COMCTL32_MAJOR >= 6)
        get_shell.fix_tool_tip
      end
      return wm_mouse_leave(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      return wm_mouse_move(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousewheel(w_param, l_param)
      return wm_mouse_wheel(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_move(w_param, l_param)
      self.attr_state |= MOVE_OCCURRED
      if (!(find_image_control).nil?)
        if (!(self).equal?(get_shell))
          redraw_children
        end
      else
        if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            if (OS._is_window_visible(@handle))
              if (!(find_theme_control).nil?)
                redraw_children
              end
            end
          end
        end
      end
      if (((self.attr_state & MOVE_DEFERRED)).equal?(0))
        send_event___org_eclipse_swt_widgets_control_31(SWT::Move)
      end
      # widget could be disposed at this point
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ncactivate(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nccalcsize(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nchittest(w_param, l_param)
      if (!OS._is_window_enabled(@handle))
        return nil
      end
      if (!is_active)
        return LRESULT.new(OS::HTTRANSPARENT)
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nclbuttondown(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ncpaint(w_param, l_param)
      return wm_ncpaint(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_notify(w_param, l_param)
      hdr = NMHDR.new
      OS._move_memory(hdr, l_param, NMHDR.attr_sizeof)
      return wm_notify(hdr, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      return wm_paint(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_palettechanged(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_parentnotify(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paste(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_print(w_param, l_param)
      return wm_print(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_printclient(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_queryendsession(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_querynewpalette(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_queryopen(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_rbuttondblclk(w_param, l_param)
      return wm_rbutton_dbl_clk(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_rbuttondown(w_param, l_param)
      return wm_rbutton_down(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_rbuttonup(w_param, l_param)
      return wm_rbutton_up(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setcursor(w_param, l_param)
      hit_test = RJava.cast_to_short(OS._loword(l_param))
      if ((hit_test).equal?(OS::HTCLIENT))
        control = self.attr_display.get_control(w_param)
        if ((control).nil?)
          return nil
        end
        cursor = control.find_cursor
        if (!(cursor).nil?)
          OS._set_cursor(cursor.attr_handle)
          return LRESULT::ONE
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      return wm_set_focus(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_settingchange(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfont(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setredraw(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_showwindow(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      self.attr_state |= RESIZE_OCCURRED
      if (((self.attr_state & RESIZE_DEFERRED)).equal?(0))
        send_event___org_eclipse_swt_widgets_control_33(SWT::Resize)
      end
      # widget could be disposed at this point
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syschar(w_param, l_param)
      return wm_sys_char(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscolorchange(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscommand(w_param, l_param)
      # Check to see if the command is a system command or
      # a user menu item that was added to the System menu.
      # When a user item is added to the System menu,
      # WM_SYSCOMMAND must always return zero.
      # 
      # NOTE: This is undocumented.
      if (((w_param & 0xf000)).equal?(0))
        shell = menu_shell
        if (shell.is_enabled)
          item = self.attr_display.get_menu_item(OS._loword(w_param))
          if (!(item).nil?)
            item.wm_command_child(w_param, l_param)
          end
        end
        return LRESULT::ZERO
      end
      # Process the System Command
      # 64
      cmd = RJava.cast_to_int(w_param) & 0xfff0
      case (cmd)
      # FALL THROUGH
      when OS::SC_CLOSE
        # long
        hwnd_shell = menu_shell.attr_handle
        bits = OS._get_window_long(hwnd_shell, OS::GWL_STYLE)
        if (((bits & OS::WS_SYSMENU)).equal?(0))
          return LRESULT::ZERO
        end
      when OS::SC_KEYMENU
        # When lParam is zero, one of F10, Shift+F10, Ctrl+F10 or
        # Ctrl+Shift+F10 was pressed.  If there is no menu bar and
        # the focus control is interested in keystrokes, give the
        # key to the focus control.  Normally, F10 with no menu bar
        # moves focus to the System menu but this can be achieved
        # using Alt+Space.  To allow the application to see F10,
        # avoid running the default window proc.
        # 
        # NOTE:  When F10 is pressed, WM_SYSCOMMAND is sent to the
        # shell, not the focus control.  This is undocumented Windows
        # behavior.
        if ((l_param).equal?(0))
          shell = menu_shell
          menu = shell.get_menu_bar
          if ((menu).nil?)
            control = self.attr_display.__get_focus_control
            if (!(control).nil?)
              if (control.hooks(SWT::KeyDown) || control.hooks(SWT::KeyUp))
                self.attr_display.attr_mnemonic_key_hit = false
                return LRESULT::ZERO
              end
            end
          end
        else
          # When lParam is not zero, Alt+<key> was pressed.  If the
          # application is interested in keystrokes and there is a
          # menu bar, check to see whether the key that was pressed
          # matches a mnemonic on the menu bar.  Normally, Windows
          # matches the first character of a menu item as well as
          # matching the mnemonic character.  To allow the application
          # to see the keystrokes in this case, avoid running the default
          # window proc.
          # 
          # NOTE: When the user types Alt+Space, the System menu is
          # activated.  In this case the application should not see
          # the keystroke.
          if (hooks(SWT::KeyDown) || hooks(SWT::KeyUp))
            if (!(l_param).equal?(Character.new(?\s.ord)))
              shell = menu_shell
              menu = shell.get_menu_bar
              if (!(menu).nil?)
                # 64
                key = Display.mbcs_to_wcs(RJava.cast_to_int(l_param))
                if (!(key).equal?(0))
                  key = Character.to_upper_case(key)
                  items = menu.get_items
                  i = 0
                  while i < items.attr_length
                    item = items[i]
                    text = item.get_text
                    mnemonic = find_mnemonic(text)
                    if (text.length > 0 && (mnemonic).equal?(0))
                      ch = text.char_at(0)
                      if ((Character.to_upper_case(ch)).equal?(key))
                        self.attr_display.attr_mnemonic_key_hit = false
                        return LRESULT::ZERO
                      end
                    end
                    i += 1
                  end
                end
              else
                self.attr_display.attr_mnemonic_key_hit = false
              end
            end
          end
        end
        # Do not allow keyboard traversal of the menu bar
        # or scrolling when the shell is not enabled.
        shell = menu_shell
        if (!shell.is_enabled || !shell.is_active)
          return LRESULT::ZERO
        end
      when OS::SC_HSCROLL, OS::SC_VSCROLL
        # Do not allow keyboard traversal of the menu bar
        # or scrolling when the shell is not enabled.
        shell = menu_shell
        if (!shell.is_enabled || !shell.is_active)
          return LRESULT::ZERO
        end
      when OS::SC_MINIMIZE
        # Save the focus widget when the shell is minimized
        menu_shell.save_focus
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syskeydown(w_param, l_param)
      return wm_sys_key_down(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syskeyup(w_param, l_param)
      return wm_sys_key_up(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_timer(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_undo(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_updateuistate(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_vscroll(w_param, l_param)
      control = self.attr_display.get_control(l_param)
      if ((control).nil?)
        return nil
      end
      return control.wm_scroll_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_windowposchanged(w_param, l_param)
      begin
        self.attr_display.attr_resize_count += 1
        # long
        code = call_window_proc(@handle, OS::WM_WINDOWPOSCHANGED, w_param, l_param)
        return (code).equal?(0) ? LRESULT::ZERO : LRESULT.new(code)
      ensure
        (self.attr_display.attr_resize_count -= 1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_windowposchanging(w_param, l_param)
      # Bug in Windows.  When WM_SETREDRAW is used to turn off drawing
      # for a control and the control is moved or resized, Windows does
      # not redraw the area where the control once was in the parent.
      # The fix is to detect this case and redraw the area.
      if (!get_drawing)
        shell = get_shell
        if (!(shell).equal?(self))
          lpwp = WINDOWPOS.new
          OS._move_memory(lpwp, l_param, WINDOWPOS.attr_sizeof)
          if (((lpwp.attr_flags & OS::SWP_NOMOVE)).equal?(0) || ((lpwp.attr_flags & OS::SWP_NOSIZE)).equal?(0))
            rect = RECT.new
            OS._get_window_rect(top_handle, rect)
            width = rect.attr_right - rect.attr_left
            height = rect.attr_bottom - rect.attr_top
            if (!(width).equal?(0) && !(height).equal?(0))
              # long
              hwnd_parent = (@parent).nil? ? 0 : @parent.attr_handle
              OS._map_window_points(0, hwnd_parent, rect, 2)
              if (OS::IsWinCE)
                OS._invalidate_rect(hwnd_parent, rect, true)
              else
                # long
                rgn1 = OS._create_rect_rgn(rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
                # long
                rgn2 = OS._create_rect_rgn(lpwp.attr_x, lpwp.attr_y, lpwp.attr_x + lpwp.attr_cx, lpwp.attr_y + lpwp.attr_cy)
                OS._combine_rgn(rgn1, rgn1, rgn2, OS::RGN_DIFF)
                flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
                OS._redraw_window(hwnd_parent, nil, rgn1, flags)
                OS._delete_object(rgn1)
                OS._delete_object(rgn2)
              end
            end
          end
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_xbuttondblclk(w_param, l_param)
      return wm_xbutton_dbl_clk(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_xbuttondown(w_param, l_param)
      return wm_xbutton_down(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_xbuttonup(w_param, l_param)
      return wm_xbutton_up(@handle, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_color_child(w_param, l_param)
      control = find_background_control
      if ((control).nil?)
        if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            control = find_theme_control
            if (!(control).nil?)
              rect = RECT.new
              OS._get_client_rect(@handle, rect)
              OS._set_text_color(w_param, get_foreground_pixel)
              OS._set_bk_color(w_param, get_background_pixel)
              fill_theme_background(w_param, control, rect)
              OS._set_bk_mode(w_param, OS::TRANSPARENT)
              return LRESULT.new(OS._get_stock_object(OS::NULL_BRUSH))
            end
          end
        end
        if ((@foreground).equal?(-1))
          return nil
        end
      end
      if ((control).nil?)
        control = self
      end
      fore_pixel = get_foreground_pixel
      back_pixel = control.get_background_pixel
      OS._set_text_color(w_param, fore_pixel)
      OS._set_bk_color(w_param, back_pixel)
      if (!(control.attr_background_image).nil?)
        rect = RECT.new
        OS._get_client_rect(@handle, rect)
        # long
        hwnd = control.attr_handle
        # long
        h_bitmap = control.attr_background_image.attr_handle
        OS._map_window_points(@handle, hwnd, rect, 2)
        lp_point = POINT.new
        OS._get_window_org_ex(w_param, lp_point)
        OS._set_brush_org_ex(w_param, -rect.attr_left - lp_point.attr_x, -rect.attr_top - lp_point.attr_y, lp_point)
        # long
        h_brush = find_brush(h_bitmap, OS::BS_PATTERN)
        if (!((self.attr_state & DRAW_BACKGROUND)).equal?(0))
          # long
          h_old_brush = OS._select_object(w_param, h_brush)
          OS._map_window_points(hwnd, @handle, rect, 2)
          OS._pat_blt(w_param, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, OS::PATCOPY)
          OS._select_object(w_param, h_old_brush)
        end
        OS._set_bk_mode(w_param, OS::TRANSPARENT)
        return LRESULT.new(h_brush)
      end
      # long
      h_brush = find_brush(back_pixel, OS::BS_SOLID)
      if (!((self.attr_state & DRAW_BACKGROUND)).equal?(0))
        rect = RECT.new
        OS._get_client_rect(@handle, rect)
        # long
        h_old_brush = OS._select_object(w_param, h_brush)
        OS._pat_blt(w_param, rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, OS::PATCOPY)
        OS._select_object(w_param, h_old_brush)
      end
      return LRESULT.new(h_brush)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_draw_child(w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_measure_child(w_param, l_param)
      return nil
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify(hdr, w_param, l_param)
      control = self.attr_display.get_control(hdr.attr_hwnd_from)
      if ((control).nil?)
        return nil
      end
      return control.wm_notify_child(hdr, w_param, l_param)
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_scroll_child(w_param, l_param)
      return nil
    end
    
    private
    alias_method :initialize__control, :initialize
  end
  
end
