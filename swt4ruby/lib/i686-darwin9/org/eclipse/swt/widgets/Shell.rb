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
  module ShellImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent the "windows"
  # which the desktop or "window manager" is managing.
  # Instances that do not have a parent (that is, they
  # are built using the constructor, which takes a
  # <code>Display</code> as the argument) are described
  # as <em>top level</em> shells. Instances that do have
  # a parent are described as <em>secondary</em> or
  # <em>dialog</em> shells.
  # <p>
  # Instances are always displayed in one of the maximized,
  # minimized or normal states:
  # <ul>
  # <li>
  # When an instance is marked as <em>maximized</em>, the
  # window manager will typically resize it to fill the
  # entire visible area of the display, and the instance
  # is usually put in a state where it can not be resized
  # (even if it has style <code>RESIZE</code>) until it is
  # no longer maximized.
  # </li><li>
  # When an instance is in the <em>normal</em> state (neither
  # maximized or minimized), its appearance is controlled by
  # the style constants which were specified when it was created
  # and the restrictions of the window manager (see below).
  # </li><li>
  # When an instance has been marked as <em>minimized</em>,
  # its contents (client area) will usually not be visible,
  # and depending on the window manager, it may be
  # "iconified" (that is, replaced on the desktop by a small
  # simplified representation of itself), relocated to a
  # distinguished area of the screen, or hidden. Combinations
  # of these changes are also possible.
  # </li>
  # </ul>
  # </p><p>
  # The <em>modality</em> of an instance may be specified using
  # style bits. The modality style bits are used to determine
  # whether input is blocked for other shells on the display.
  # The <code>PRIMARY_MODAL</code> style allows an instance to block
  # input to its parent. The <code>APPLICATION_MODAL</code> style
  # allows an instance to block input to every other shell in the
  # display. The <code>SYSTEM_MODAL</code> style allows an instance
  # to block input to all shells, including shells belonging to
  # different applications.
  # </p><p>
  # Note: The styles supported by this class are treated
  # as <em>HINT</em>s, since the window manager for the
  # desktop on which the instance is visible has ultimate
  # control over the appearance and behavior of decorations
  # and modality. For example, some window managers only
  # support resizable windows and will always assume the
  # RESIZE style, even if it is not set. In addition, if a
  # modality style is not supported, it is "upgraded" to a
  # more restrictive modality style that is supported. For
  # example, if <code>PRIMARY_MODAL</code> is not supported,
  # it would be upgraded to <code>APPLICATION_MODAL</code>.
  # A modality style may also be "downgraded" to a less
  # restrictive style. For example, most operating systems
  # no longer support <code>SYSTEM_MODAL</code> because
  # it can freeze up the desktop, so this is typically
  # downgraded to <code>APPLICATION_MODAL</code>.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BORDER, CLOSE, MIN, MAX, NO_TRIM, RESIZE, TITLE, ON_TOP, TOOL</dd>
  # <dd>APPLICATION_MODAL, MODELESS, PRIMARY_MODAL, SYSTEM_MODAL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Activate, Close, Deactivate, Deiconify, Iconify</dd>
  # </dl>
  # Class <code>SWT</code> provides two "convenience constants"
  # for the most commonly required style combinations:
  # <dl>
  # <dt><code>SHELL_TRIM</code></dt>
  # <dd>
  # the result of combining the constants which are required
  # to produce a typical application top level shell: (that
  # is, <code>CLOSE | TITLE | MIN | MAX | RESIZE</code>)
  # </dd>
  # <dt><code>DIALOG_TRIM</code></dt>
  # <dd>
  # the result of combining the constants which are required
  # to produce a typical application dialog shell: (that
  # is, <code>TITLE | CLOSE | BORDER</code>)
  # </dd>
  # </dl>
  # </p>
  # <p>
  # Note: Only one of the styles APPLICATION_MODAL, MODELESS,
  # PRIMARY_MODAL and SYSTEM_MODAL may be specified.
  # </p><p>
  # IMPORTANT: This class is not intended to be subclassed.
  # </p>
  # 
  # @see Decorations
  # @see SWT
  # @see <a href="http://www.eclipse.org/swt/snippets/#shell">Shell snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Shell < ShellImports.const_get :Decorations
    include_class_members ShellImports
    
    attr_accessor :shell_handle
    alias_method :attr_shell_handle, :shell_handle
    undef_method :shell_handle
    alias_method :attr_shell_handle=, :shell_handle=
    undef_method :shell_handle=
    
    attr_accessor :window_group
    alias_method :attr_window_group, :window_group
    undef_method :window_group
    alias_method :attr_window_group=, :window_group=
    undef_method :window_group=
    
    attr_accessor :resized
    alias_method :attr_resized, :resized
    undef_method :resized
    alias_method :attr_resized=, :resized=
    undef_method :resized=
    
    attr_accessor :moved
    alias_method :attr_moved, :moved
    undef_method :moved
    alias_method :attr_moved=, :moved=
    undef_method :moved=
    
    attr_accessor :drawing
    alias_method :attr_drawing, :drawing
    undef_method :drawing
    alias_method :attr_drawing=, :drawing=
    undef_method :drawing=
    
    attr_accessor :reshape
    alias_method :attr_reshape, :reshape
    undef_method :reshape
    alias_method :attr_reshape=, :reshape=
    undef_method :reshape=
    
    attr_accessor :update
    alias_method :attr_update, :update
    undef_method :update
    alias_method :attr_update=, :update=
    undef_method :update=
    
    attr_accessor :defer_dispose
    alias_method :attr_defer_dispose, :defer_dispose
    undef_method :defer_dispose
    alias_method :attr_defer_dispose=, :defer_dispose=
    undef_method :defer_dispose=
    
    attr_accessor :active
    alias_method :attr_active, :active
    undef_method :active
    alias_method :attr_active=, :active=
    undef_method :active=
    
    attr_accessor :disposed
    alias_method :attr_disposed, :disposed
    undef_method :disposed
    alias_method :attr_disposed=, :disposed=
    undef_method :disposed=
    
    attr_accessor :opened
    alias_method :attr_opened, :opened
    undef_method :opened
    alias_method :attr_opened=, :opened=
    undef_method :opened=
    
    attr_accessor :full_screen
    alias_method :attr_full_screen, :full_screen
    undef_method :full_screen
    alias_method :attr_full_screen=, :full_screen=
    undef_method :full_screen=
    
    attr_accessor :show_with_parent
    alias_method :attr_show_with_parent, :show_with_parent
    undef_method :show_with_parent
    alias_method :attr_show_with_parent=, :show_with_parent=
    undef_method :show_with_parent=
    
    attr_accessor :inval_rgn
    alias_method :attr_inval_rgn, :inval_rgn
    undef_method :inval_rgn
    alias_method :attr_inval_rgn=, :inval_rgn=
    undef_method :inval_rgn=
    
    attr_accessor :last_active
    alias_method :attr_last_active, :last_active
    undef_method :last_active
    alias_method :attr_last_active=, :last_active=
    undef_method :last_active=
    
    attr_accessor :rgn_rect
    alias_method :attr_rgn_rect, :rgn_rect
    undef_method :rgn_rect
    alias_method :attr_rgn_rect=, :rgn_rect=
    undef_method :rgn_rect=
    
    attr_accessor :normal_bounds
    alias_method :attr_normal_bounds, :normal_bounds
    undef_method :normal_bounds
    alias_method :attr_normal_bounds=, :normal_bounds=
    undef_method :normal_bounds=
    
    attr_accessor :im_handle
    alias_method :attr_im_handle, :im_handle
    undef_method :im_handle
    alias_method :attr_im_handle=, :im_handle=
    undef_method :im_handle=
    
    class_module.module_eval {
      
      def default_client_width
        defined?(@@default_client_width) ? @@default_client_width : @@default_client_width= -1
      end
      alias_method :attr_default_client_width, :default_client_width
      
      def default_client_width=(value)
        @@default_client_width = value
      end
      alias_method :attr_default_client_width=, :default_client_width=
      
      
      def default_client_height
        defined?(@@default_client_height) ? @@default_client_height : @@default_client_height= -1
      end
      alias_method :attr_default_client_height, :default_client_height
      
      def default_client_height=(value)
        @@default_client_height = value
      end
      alias_method :attr_default_client_height=, :default_client_height=
    }
    
    typesig { [] }
    # Constructs a new instance of this class. This is equivalent
    # to calling <code>Shell((Display) null)</code>.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize
      initialize__shell(nil)
    end
    
    typesig { [::Java::Int] }
    # Constructs a new instance of this class given only the style
    # value describing its behavior and appearance. This is equivalent
    # to calling <code>Shell((Display) null, style)</code>.
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
    # @param style the style of control to construct
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BORDER
    # @see SWT#CLOSE
    # @see SWT#MIN
    # @see SWT#MAX
    # @see SWT#RESIZE
    # @see SWT#TITLE
    # @see SWT#NO_TRIM
    # @see SWT#SHELL_TRIM
    # @see SWT#DIALOG_TRIM
    # @see SWT#MODELESS
    # @see SWT#PRIMARY_MODAL
    # @see SWT#APPLICATION_MODAL
    # @see SWT#SYSTEM_MODAL
    def initialize(style)
      initialize__shell(nil, style)
    end
    
    typesig { [Display] }
    # Constructs a new instance of this class given only the display
    # to create it on. It is created with style <code>SWT.SHELL_TRIM</code>.
    # <p>
    # Note: Currently, null can be passed in for the display argument.
    # This has the effect of creating the shell on the currently active
    # display if there is one. If there is no current display, the
    # shell is created on a "default" display. <b>Passing in null as
    # the display argument is not considered to be good coding style,
    # and may not be supported in a future release of SWT.</b>
    # </p>
    # 
    # @param display the display to create the shell on
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize(display)
      initialize__shell(display, SWT::SHELL_TRIM)
    end
    
    typesig { [Display, ::Java::Int] }
    # Constructs a new instance of this class given the display
    # to create it on and a style value describing its behavior
    # and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p><p>
    # Note: Currently, null can be passed in for the display argument.
    # This has the effect of creating the shell on the currently active
    # display if there is one. If there is no current display, the
    # shell is created on a "default" display. <b>Passing in null as
    # the display argument is not considered to be good coding style,
    # and may not be supported in a future release of SWT.</b>
    # </p>
    # 
    # @param display the display to create the shell on
    # @param style the style of control to construct
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BORDER
    # @see SWT#CLOSE
    # @see SWT#MIN
    # @see SWT#MAX
    # @see SWT#RESIZE
    # @see SWT#TITLE
    # @see SWT#NO_TRIM
    # @see SWT#SHELL_TRIM
    # @see SWT#DIALOG_TRIM
    # @see SWT#MODELESS
    # @see SWT#PRIMARY_MODAL
    # @see SWT#APPLICATION_MODAL
    # @see SWT#SYSTEM_MODAL
    def initialize(display, style)
      initialize__shell(display, nil, style, 0, false)
    end
    
    typesig { [Display, Shell, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def initialize(display, parent, style, handle, embedded)
      @shell_handle = 0
      @window_group = 0
      @resized = false
      @moved = false
      @drawing = false
      @reshape = false
      @update = false
      @defer_dispose = false
      @active = false
      @disposed = false
      @opened = false
      @full_screen = false
      @show_with_parent = false
      @inval_rgn = 0
      @last_active = nil
      @rgn_rect = nil
      @normal_bounds = nil
      @im_handle = 0
      super()
      check_subclass
      if ((display).nil?)
        display = Display.get_current
      end
      if ((display).nil?)
        display = Display.get_default
      end
      if (!display.is_valid_thread)
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (!(parent).nil? && parent.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      self.attr_style = check_style(style)
      self.attr_parent = parent
      self.attr_display = display
      if (!(handle).equal?(0))
        if (embedded)
          self.attr_handle = handle
        else
          @shell_handle = handle
          self.attr_state |= FOREIGN_HANDLE
        end
      end
      create_widget
    end
    
    typesig { [Shell] }
    # Constructs a new instance of this class given only its
    # parent. It is created with style <code>SWT.DIALOG_TRIM</code>.
    # <p>
    # Note: Currently, null can be passed in for the parent.
    # This has the effect of creating the shell on the currently active
    # display if there is one. If there is no current display, the
    # shell is created on a "default" display. <b>Passing in null as
    # the parent is not considered to be good coding style,
    # and may not be supported in a future release of SWT.</b>
    # </p>
    # 
    # @param parent a shell which will be the parent of the new instance
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parent is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize(parent)
      initialize__shell(parent, SWT::DIALOG_TRIM)
    end
    
    typesig { [Shell, ::Java::Int] }
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
    # </p><p>
    # Note: Currently, null can be passed in for the parent.
    # This has the effect of creating the shell on the currently active
    # display if there is one. If there is no current display, the
    # shell is created on a "default" display. <b>Passing in null as
    # the parent is not considered to be good coding style,
    # and may not be supported in a future release of SWT.</b>
    # </p>
    # 
    # @param parent a shell which will be the parent of the new instance
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parent is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BORDER
    # @see SWT#CLOSE
    # @see SWT#MIN
    # @see SWT#MAX
    # @see SWT#RESIZE
    # @see SWT#TITLE
    # @see SWT#NO_TRIM
    # @see SWT#SHELL_TRIM
    # @see SWT#DIALOG_TRIM
    # @see SWT#ON_TOP
    # @see SWT#TOOL
    # @see SWT#MODELESS
    # @see SWT#PRIMARY_MODAL
    # @see SWT#APPLICATION_MODAL
    # @see SWT#SYSTEM_MODAL
    def initialize(parent, style)
      initialize__shell(!(parent).nil? ? parent.attr_display : nil, parent, style, 0, false)
    end
    
    class_module.module_eval {
      typesig { [Display, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new shell
      # that is not embedded.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Shell</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param display the display for the shell
      # @param handle the handle for the shell
      # @return a new shell object containing the specified display and handle
      # 
      # @since 3.3
      def internal_new(display, handle)
        return Shell.new(display, nil, SWT::NO_TRIM, handle, false)
      end
      
      typesig { [::Java::Int] }
      def check_style(style)
        style = Decorations.check_style(style)
        style &= ~SWT::TRANSPARENT
        mask = SWT::SYSTEM_MODAL | SWT::APPLICATION_MODAL | SWT::PRIMARY_MODAL
        bits = style & ~mask
        if (!((style & SWT::SYSTEM_MODAL)).equal?(0))
          return bits | SWT::SYSTEM_MODAL
        end
        if (!((style & SWT::APPLICATION_MODAL)).equal?(0))
          return bits | SWT::APPLICATION_MODAL
        end
        if (!((style & SWT::PRIMARY_MODAL)).equal?(0))
          return bits | SWT::PRIMARY_MODAL
        end
        return bits
      end
    }
    
    typesig { [ShellListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when operations are performed on the receiver,
    # by sending the listener one of the messages defined in the
    # <code>ShellListener</code> interface.
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
    # @see ShellListener
    # @see #removeShellListener
    def add_shell_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Activate, typed_listener)
      add_listener(SWT::Close, typed_listener)
      add_listener(SWT::Deactivate, typed_listener)
      add_listener(SWT::Iconify, typed_listener)
      add_listener(SWT::Deiconify, typed_listener)
    end
    
    typesig { [::Java::Boolean] }
    def bring_to_top(force)
      if (get_minimized)
        return
      end
      if (force)
        force_active
      else
        set_active
      end
    end
    
    typesig { [] }
    def check_open
      if (!@opened)
        @resized = false
      end
    end
    
    typesig { [] }
    # Requests that the window manager close the receiver in
    # the same way it would be closed when the user clicks on
    # the "close box" or performs some other platform specific
    # key or mouse combination that indicates the window
    # should be removed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#Close
    # @see #dispose
    def close
      check_widget
      close_widget
    end
    
    typesig { [] }
    def close_widget
      event = Event.new
      send_event(SWT::Close, event)
      if (event.attr_doit && !is_disposed)
        dispose
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      trim = super(x, y, width, height)
      rect = Rect.new
      OS._get_window_structure_widths(@shell_handle, rect)
      trim.attr_x -= rect.attr_left
      trim.attr_y -= rect.attr_top
      trim.attr_width += rect.attr_left + rect.attr_right
      trim.attr_height += rect.attr_top + rect.attr_bottom
      return trim
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= CANVAS | GRAB | HIDDEN
      attributes = OS.attr_k_window_standard_handler_attribute
      attributes |= OS.attr_k_window_compositing_attribute
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
        if (!((self.attr_style & SWT::CLOSE)).equal?(0))
          attributes |= OS.attr_k_window_close_box_attribute
        end
        if (!((self.attr_style & SWT::MIN)).equal?(0))
          attributes |= OS.attr_k_window_collapse_box_attribute
        end
        if (!((self.attr_style & SWT::MAX)).equal?(0))
          attributes |= OS.attr_k_window_full_zoom_attribute
        end
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          attributes |= OS.attr_k_window_resizable_attribute
          # Bug in the Macintosh.  For some reason, a window has no title bar
          # and the kWindowResizableAttribute, no rubber banding feedback is
          # given while the window is resizing.  The fix is to create the window
          # with kWindowLiveResizeAttribute in this case.  This is inconsistent
          # with other windows, but the user will get feedback when resizing.
          if (((self.attr_style & SWT::TITLE)).equal?(0))
            attributes |= OS.attr_k_window_live_resize_attribute
          end
          if (!OS.____big_endian__)
            attributes |= OS.attr_k_window_live_resize_attribute
          end
        end
      else
        if (((self.attr_style & SWT::TOOL)).equal?(0))
          attributes |= OS.attr_k_window_no_shadow_attribute
        end
      end
      window_class = OS.attr_k_document_window_class
      if (((self.attr_style & (SWT::CLOSE | SWT::TITLE))).equal?(0))
        window_class = OS.attr_k_sheet_window_class
      end
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::PRIMARY_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        if (((self.attr_style & (SWT::CLOSE | SWT::MAX | SWT::MIN))).equal?(0))
          window_class = !((self.attr_style & SWT::TITLE)).equal?(0) ? OS.attr_k_movable_modal_window_class : OS.attr_k_modal_window_class
        end
      end
      if ((@shell_handle).equal?(0))
        monitor = get_monitor
        rect = monitor.get_client_area
        width = rect.attr_width * 5 / 8
        height = rect.attr_height * 5 / 8
        bounds = Rect.new
        OS._set_rect(bounds, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(width), RJava.cast_to_short(height))
        out_window = Array.typed(::Java::Int).new(1) { 0 }
        attributes &= OS._get_available_window_attributes(window_class)
        OS._create_new_window(window_class, attributes, bounds, out_window)
        if ((out_window[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @shell_handle = out_window[0]
        OS._reposition_window(@shell_handle, 0, OS.attr_k_window_cascade_on_main_screen)
        # OS.SetThemeWindowBackground (shellHandle, (short) OS.kThemeBrushDialogBackgroundActive, false);
        the_root = Array.typed(::Java::Int).new(1) { 0 }
        OS._hiview_find_by_id(OS._hiview_get_root(@shell_handle), OS.k_hiview_window_content_id, the_root)
        # Bug in the Macintosh.  When the window class is kMovableModalWindowClass or
        # kModalWindowClass, HIViewFindByID() fails to find the control identified by
        # kHIViewWindowContentID.  The fix is to call GetRootControl() if the call
        # failed.
        if ((the_root[0]).equal?(0))
          OS._get_root_control(@shell_handle, the_root)
        end
        if ((the_root[0]).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        if (!((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          create_scrolled_handle(the_root[0])
        else
          create_handle(the_root[0])
        end
        OS._set_control_visibility(top_handle, false, false)
      else
        the_root = Array.typed(::Java::Int).new(1) { 0 }
        OS._hiview_find_by_id(@shell_handle, OS.k_hiview_window_content_id, the_root)
        if ((the_root[0]).equal?(0))
          OS._get_root_control(@shell_handle, the_root)
        end
        self.attr_handle = OS._hiview_get_first_subview(the_root[0])
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        if (OS._is_window_visible(@shell_handle))
          self.attr_state &= ~HIDDEN
        end
      end
      out_group = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_window_group(OS.attr_k_window_group_attr_hide_on_collapse, out_group)
      if ((out_group[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @window_group = out_group[0]
      parent_group = 0
      if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
        parent_group = OS._get_window_group_of_class(OS.attr_k_floating_window_class)
      else
        if (!(self.attr_parent).nil?)
          parent_group = self.attr_parent.get_shell.attr_window_group
        else
          parent_group = OS._get_window_group_of_class(OS.attr_k_document_window_class)
        end
      end
      OS._set_window_group(@shell_handle, parent_group)
      OS._set_window_group_parent(@window_group, parent_group)
      OS._set_window_group_owner(@window_group, @shell_handle)
      in_min_limits = CGPoint.new
      in_max_limits = CGPoint.new
      OS._get_window_resize_limits(@shell_handle, in_min_limits, in_max_limits)
      if ((self.attr_default_client_width).equal?(-1))
        self.attr_default_client_width = RJava.cast_to_int(in_min_limits.attr_x)
      end
      if ((self.attr_default_client_height).equal?(-1))
        self.attr_default_client_height = 0
      end
      in_min_limits.attr_y = RJava.cast_to_int(0)
      trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
      if (!((self.attr_style & SWT::NO_TRIM)).equal?(0) || ((self.attr_style & trim)).equal?(0))
        in_min_limits.attr_x = RJava.cast_to_int(0)
      end
      OS._set_window_resize_limits(@shell_handle, in_min_limits, in_max_limits)
      doc_id = Array.typed(::Java::Int).new(1) { 0 }
      OS._new_tsmdocument(RJava.cast_to_short(1), Array.typed(::Java::Int).new([OS.attr_k_unicode_document]), doc_id, 0)
      if ((doc_id[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @im_handle = doc_id[0]
    end
    
    typesig { [] }
    def create_widget
      super
      resize_bounds
    end
    
    typesig { [] }
    def deregister
      super
      the_root = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_root_control(@shell_handle, the_root)
      self.attr_display.remove_widget(the_root[0])
    end
    
    typesig { [] }
    def destroy_widget
      the_window = @shell_handle
      # Bug in the Macintosh.  Under certain circumstances, yet to
      # be determined, calling HideWindow() and then DisposeWindow()
      # causes a segment fault when an application is exiting.  This
      # seems to happen to large applications.  The fix is to avoid
      # calling HideWindow() when a shell is about to be disposed.
      # 
      # Bug in the Macintosh.  Disposing a window from kEventWindowDeactivated
      # causes a segment fault. The fix is to defer disposing the window until
      # the event loop becomes idle.
      display = self.attr_display
      parent = self.attr_parent
      while (!@defer_dispose && !(parent).nil?)
        shell = parent.get_shell
        @defer_dispose = shell.attr_defer_dispose
        parent = shell.attr_parent
      end
      if (@defer_dispose)
        OS._hide_window(@shell_handle)
      end
      release_handle
      if (!(the_window).equal?(0))
        if (@defer_dispose)
          display.add_dispose_window(the_window)
        else
          OS._dispose_window(the_window)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      super(control, context, damage_rgn, visible_rgn, the_event)
      # Bug in the Macintosh. In kEventWindowGetRegion,
      # Carbon assumes the origin of the Region is (0, 0)
      # and ignores the actual origin.  This causes the
      # window to be shifted for a non zero origin.  Also,
      # the size of the window is the size of the region
      # which may be less then the size specified in
      # setSize or setBounds.
      # The fix is to include (0, 0) and the bottom
      # right corner of the size in the region and to
      # make these points transparent.
      if ((self.attr_region).nil? || self.attr_region.is_disposed)
        return
      end
      origin = self.attr_region.contains(0, 0)
      limit = self.attr_region.contains(@rgn_rect.attr_right - 1, @rgn_rect.attr_bottom - 1)
      if (origin && limit)
        return
      end
      cg_rect = CGRect.new
      cg_rect.attr_width = 1
      cg_rect.attr_height = 1
      if (!origin)
        OS._cgcontext_clear_rect(context, cg_rect)
      end
      if (!limit)
        cg_rect.attr_x = @rgn_rect.attr_right - 1
        cg_rect.attr_y = @rgn_rect.attr_bottom - 1
        OS._cgcontext_clear_rect(context, cg_rect)
      end
      OS._cgcontext_synchronize(context)
    end
    
    typesig { [] }
    def find_background_control
      return !(self.attr_background).nil? || !(self.attr_background_image).nil? ? self : nil
    end
    
    typesig { [] }
    def find_deferred_control
      return self.attr_layout_count > 0 ? self : nil
    end
    
    typesig { [] }
    def find_cursor
      return self.attr_cursor
    end
    
    typesig { [Shell, Control] }
    def fix_shell(new_shell, control)
      if ((self).equal?(new_shell))
        return
      end
      if ((control).equal?(@last_active))
        set_active_control(nil)
      end
    end
    
    typesig { [] }
    # If the receiver is visible, moves it to the top of the
    # drawing order for the display on which it was created
    # (so that all other shells on that display, which are not
    # the receiver's children will be drawn behind it) and forces
    # the window manager to make the shell active.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    # @see Control#moveAbove
    # @see Control#setFocus
    # @see Control#setVisible
    # @see Display#getActiveShell
    # @see Decorations#setDefaultButton(Button)
    # @see Shell#open
    # @see Shell#setActive
    def force_active
      check_widget
      if (!is_visible)
        return
      end
      OS._select_window(@shell_handle)
      OS._set_user_focus_window(@shell_handle)
      OS._set_front_process_with_options(Array.typed(::Java::Int).new([0, OS.attr_k_current_process]), OS.attr_k_set_front_process_front_window_only)
    end
    
    typesig { [] }
    # Returns the receiver's alpha value. The alpha value
    # is between 0 (transparent) and 255 (opaque).
    # 
    # @return the alpha value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_alpha
      check_widget
      alpha = Array.typed(::Java::Float).new(1) { 0.0 }
      if ((OS._get_window_alpha(@shell_handle, alpha)).equal?(OS.attr_no_err))
        return RJava.cast_to_int((alpha[0] * 255))
      end
      return 0xff
    end
    
    typesig { [] }
    def get_bounds
      check_widget
      rect = Rect.new
      OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
    end
    
    typesig { [::Java::Int] }
    def get_draw_count(control)
      if (!is_trim_handle(control))
        return self.attr_draw_count
      end
      return 0
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is currently
    # in fullscreen state, and false otherwise.
    # <p>
    # 
    # @return the fullscreen state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_full_screen
      check_widget
      return @full_screen
    end
    
    typesig { [] }
    # Returns the receiver's input method editor mode. This
    # will be the result of bitwise OR'ing together one or
    # more of the following constants defined in class
    # <code>SWT</code>:
    # <code>NONE</code>, <code>ROMAN</code>, <code>DBCS</code>,
    # <code>PHONETIC</code>, <code>NATIVE</code>, <code>ALPHA</code>.
    # 
    # @return the IME mode
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT
    def get_ime_input_mode
      check_widget
      return SWT::NONE
    end
    
    typesig { [] }
    def get_location
      check_widget
      rect = Rect.new
      OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      return Point.new(rect.attr_left, rect.attr_top)
    end
    
    typesig { [] }
    def get_maximized
      check_widget
      # NOT DONE
      return !@full_screen && super
    end
    
    typesig { [] }
    def get_minimized
      check_widget
      if (!get_visible)
        return super
      end
      return OS._is_window_collapsed(@shell_handle)
    end
    
    typesig { [] }
    # Returns a point describing the minimum receiver's size. The
    # x coordinate of the result is the minimum width of the receiver.
    # The y coordinate of the result is the minimum height of the
    # receiver.
    # 
    # @return the receiver's size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_minimum_size
      check_widget
      rect = Rect.new
      OS._get_window_structure_widths(@shell_handle, rect)
      in_min_limits = CGPoint.new
      in_max_limits = CGPoint.new
      OS._get_window_resize_limits(@shell_handle, in_min_limits, in_max_limits)
      width = Math.max(1, RJava.cast_to_int(in_min_limits.attr_x) + (rect.attr_left + rect.attr_right))
      height = Math.max(1, RJava.cast_to_int(in_min_limits.attr_y) + (rect.attr_top + rect.attr_bottom))
      return Point.new(width, height)
    end
    
    typesig { [] }
    def get_modal_shell
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
                return modal
              end
              break
            end
            if (!((modal.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
              if ((shell).nil?)
                shell = get_shell
              end
              if ((modal.attr_parent).equal?(shell))
                return modal
              end
            end
          end
        end
      end
      return nil
    end
    
    typesig { [] }
    def get_parent_background
      return nil
    end
    
    typesig { [] }
    # Returns the region that defines the shape of the shell,
    # or null if the shell has the default shape.
    # 
    # @return the region that defines the shape of the shell (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_region
      # This method is needed for the @since 3.0 Javadoc
      check_widget
      return self.attr_region
    end
    
    typesig { [] }
    def get_shell
      check_widget
      return self
    end
    
    typesig { [] }
    # Returns an array containing all shells which are
    # descendants of the receiver.
    # <p>
    # @return the dialog shells
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_shells
      check_widget
      count = 0
      shells = self.attr_display.get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        begin
          shell = shell.attr_parent
        end while (!(shell).nil? && !(shell).equal?(self))
        if ((shell).equal?(self))
          count += 1
        end
        i += 1
      end
      index = 0
      result = Array.typed(Shell).new(count) { nil }
      i_ = 0
      while i_ < shells.attr_length
        shell = shells[i_]
        begin
          shell = shell.attr_parent
        end while (!(shell).nil? && !(shell).equal?(self))
        if ((shell).equal?(self))
          result[((index += 1) - 1)] = shells[i_]
        end
        i_ += 1
      end
      return result
    end
    
    typesig { [] }
    def get_size
      check_widget
      rect = Rect.new
      OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      return Point.new(rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
    end
    
    typesig { [] }
    def get_theme_alpha
      return 1
    end
    
    typesig { [] }
    def has_border
      return false
    end
    
    typesig { [] }
    def hook_events
      super
      mouse_proc = self.attr_display.attr_mouse_proc
      window_proc = self.attr_display.attr_window_proc
      mask1 = Array.typed(::Java::Int).new([OS.attr_k_event_class_window, OS.attr_k_event_window_activated, OS.attr_k_event_class_window, OS.attr_k_event_window_bounds_changed, OS.attr_k_event_class_window, OS.attr_k_event_window_close, OS.attr_k_event_class_window, OS.attr_k_event_window_collapsing, OS.attr_k_event_class_window, OS.attr_k_event_window_collapsed, OS.attr_k_event_class_window, OS.attr_k_event_window_deactivated, OS.attr_k_event_class_window, OS.attr_k_event_window_draw_content, OS.attr_k_event_class_window, OS.attr_k_event_window_expanded, OS.attr_k_event_class_window, OS.attr_k_event_window_get_region, OS.attr_k_event_class_window, OS.attr_k_event_window_hidden, OS.attr_k_event_class_window, OS.attr_k_event_window_hit_test, OS.attr_k_event_class_window, OS.attr_k_event_window_shown, OS.attr_k_event_class_window, OS.attr_k_event_window_update, OS.attr_k_event_class_window, OS.attr_k_event_window_get_click_modality, ])
      window_target = OS._get_window_event_target(@shell_handle)
      OS._install_event_handler(window_target, window_proc, mask1.attr_length / 2, mask1, @shell_handle, nil)
      # OS.kEventClassMouse, OS.kEventMouseEntered,
      # OS.kEventClassMouse, OS.kEventMouseExited,
      mask2 = Array.typed(::Java::Int).new([OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_down, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_dragged, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_moved, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_up, OS.attr_k_event_class_mouse, OS.attr_k_event_mouse_wheel_moved, ])
      OS._install_event_handler(window_target, mouse_proc, mask2.attr_length / 2, mask2, @shell_handle, nil)
    end
    
    typesig { [::Java::Int] }
    def invalidate_visible_region(control)
      reset_visible_region(control)
      invalidate_children_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def inval_window_rgn(window, rgn)
      self.attr_display.attr_needs_paint = true
      if ((@inval_rgn).equal?(0))
        @inval_rgn = OS._new_rgn
      end
      OS._union_rgn(rgn, @inval_rgn, @inval_rgn)
    end
    
    typesig { [] }
    def is_enabled
      check_widget
      return get_enabled
    end
    
    typesig { [] }
    def is_enabled_cursor
      return true
    end
    
    typesig { [] }
    def is_visible
      check_widget
      return get_visible
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_activated(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      # Bug in the Macintosh.  Despite the that a window has scope
      # kWindowActivationScopeNone, it gets kEventWindowActivated
      # events but does not get kEventWindowDeactivated events.  The
      # fix is to ignore kEventWindowActivated events.
      out_scope = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_window_activation_scope(@shell_handle, out_scope)
      if ((out_scope[0]).equal?(OS.attr_k_window_activation_scope_none))
        return result
      end
      if (!@active)
        @active = true
        @defer_dispose = true
        display = self.attr_display
        display.attr_active_shell = self
        display.set_menu_bar(self.attr_menu_bar)
        if (!(self.attr_menu_bar).nil?)
          OS._draw_menu_bar
        end
        send_event(SWT::Activate)
        if (is_disposed)
          return result
        end
        if (!restore_focus && !traverse_group(true))
          set_focus
        end
        if (is_disposed)
          return result
        end
        display.attr_active_shell = nil
        parent_shell = self
        while (!(parent_shell.attr_parent).nil?)
          parent_shell = parent_shell.attr_parent
          if (parent_shell.attr_full_screen)
            break
          end
        end
        if (!parent_shell.attr_full_screen || !(self.attr_menu_bar).nil?)
          update_system_uimode
        else
          parent_shell.update_system_uimode
        end
        @defer_dispose = false
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_bounds_changed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      attributes = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_attributes, OS.attr_type_uint32, nil, attributes.attr_length * 4, nil, attributes)
      if (!((attributes[0] & OS.attr_k_window_bounds_change_origin_changed)).equal?(0))
        @moved = true
        send_event(SWT::Move)
        if (is_disposed)
          return OS.attr_no_err
        end
      end
      if (!((attributes[0] & OS.attr_k_window_bounds_change_size_changed)).equal?(0))
        @resized = true
        resize_bounds
        send_event(SWT::Resize)
        if (is_disposed)
          return OS.attr_no_err
        end
        if (!(self.attr_layout).nil?)
          mark_layout(false, false)
          update_layout(false)
        end
        if (!(self.attr_region).nil? && !self.attr_region.is_disposed)
          OS._get_event_parameter(the_event, OS.attr_k_event_param_current_bounds, OS.attr_type_qdrectangle, nil, Rect.attr_sizeof, nil, @rgn_rect)
          OS._set_rect(@rgn_rect, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short((@rgn_rect.attr_right - @rgn_rect.attr_left)), RJava.cast_to_short((@rgn_rect.attr_bottom - @rgn_rect.attr_top)))
          OS._reshape_custom_window(@shell_handle)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_close(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (is_enabled)
        close_widget
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_collapsed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      self.attr_minimized = true
      send_event(SWT::Iconify)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_collapsing(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      update_minimized(true)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_deactivated(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if (@active)
        @active = false
        @defer_dispose = true
        display = self.attr_display
        display.attr_active_shell = self
        send_event(SWT::Deactivate)
        if (is_disposed)
          return result
        end
        set_active_control(nil)
        if (is_disposed)
          return result
        end
        display.attr_active_shell = nil
        save_focus
        if (!(self.attr_saved_focus).nil?)
          # Bug in the Macintosh.  When ClearKeyboardFocus() is called,
          # the control that has focus gets two kEventControlSetFocus
          # events indicating that focus was lost.  The fix is to ignore
          # both of these and send the focus lost event explicitly.
          display.attr_ignore_focus = true
          OS._clear_keyboard_focus(@shell_handle)
          display.attr_ignore_focus = false
          if (!self.attr_saved_focus.is_disposed)
            self.attr_saved_focus.send_focus_event(SWT::FocusOut, false)
          end
        end
        display.set_menu_bar(nil)
        @defer_dispose = false
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_draw_content(next_handler, the_event, user_data)
      @drawing = true
      result = OS._call_next_event_handler(next_handler, the_event)
      @drawing = false
      if (@reshape)
        @reshape = false
        OS._reshape_custom_window(@shell_handle)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_expanded(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      self.attr_minimized = false
      update_minimized(false)
      send_event(SWT::Deiconify)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_get_click_modality(next_handler, the_event, user_data)
      # Bug in the Macintosh.  When the user clicks in an Expose window that is
      # disabled because of a modal dialog, the modal dialog does not come to
      # front and is obscured by the Expose window.  The fix is to select the
      # modal dialog.
      result = OS._call_next_event_handler(next_handler, the_event)
      modal = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_modal_window, OS.attr_type_window_ref, nil, 4, nil, modal)
      if (!(modal[0]).equal?(0))
        OS._select_window(modal[0])
      end
      # Feature in the Macintosh. ON_TOP shells are in the kFloatingWindowClass window
      # group and are not modal disabled by default. The fix is to detect that it should
      # be disabled and update the event parameters.
      # 
      # Bug in Macintosh.  When a kWindowModalityWindowModal window is active the
      # default handler of kEventWindowGetClickModality does not properly set the
      # kEventParamModalClickResult. The fix is to set it ourselves.
      modal_shell = get_modal_shell
      if (!(modal_shell).nil?)
        modality = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_window_modality(modal_shell.attr_shell_handle, modality, nil)
        if (!((self.attr_style & SWT::ON_TOP)).equal?(0) || (modality[0]).equal?(OS.attr_k_window_modality_window_modal))
          click_result = OS.attr_k_himodal_click_is_modal | OS.attr_k_himodal_click_announce
          OS._set_event_parameter(the_event, OS.attr_k_event_param_window_modality, OS.attr_type_window_modality, 4, modality)
          OS._set_event_parameter(the_event, OS.attr_k_event_param_modal_click_result, OS.attr_type_modal_click_result, 4, Array.typed(::Java::Int).new([click_result]))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_modal_window, OS.attr_type_window_ref, 4, Array.typed(::Java::Int).new([modal_shell.attr_shell_handle]))
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_get_region(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if ((self.attr_region).nil? || self.attr_region.is_disposed)
        return OS.attr_event_not_handled_err
      end
      region_code = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_window_region_code, OS.attr_type_window_region_code, nil, 2, nil, region_code)
      temp = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_rgn_handle, OS.attr_type_qdrgn_handle, nil, 4, nil, temp)
      h_region = temp[0]
      case (region_code[0])
      when OS.attr_k_window_content_rgn, OS.attr_k_window_structure_rgn
        OS._rect_rgn(h_region, @rgn_rect)
        OS._sect_rgn(h_region, self.attr_region.attr_handle, h_region)
        # Bug in the Macintosh. In kEventWindowGetRegion,
        # Carbon assumes the origin of the Region is (0, 0)
        # and ignores the actual origin.  This causes the
        # window to be shifted for a non zero origin.  Also,
        # the size of the window is the size of the region
        # which may be less then the size specified in
        # setSize or setBounds.
        # The fix is to include (0, 0) and the bottom
        # right corner of the size in the region and to
        # make these points transparent.
        if (!self.attr_region.contains(0, 0))
          r = Rect.new
          OS._set_rect(r, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(1), RJava.cast_to_short(1))
          rect_rgn = OS._new_rgn
          OS._rect_rgn(rect_rgn, r)
          OS._union_rgn(rect_rgn, h_region, h_region)
          OS._dispose_rgn(rect_rgn)
        end
        if (!self.attr_region.contains(@rgn_rect.attr_right - 1, @rgn_rect.attr_bottom - 1))
          r = Rect.new
          OS._set_rect(r, RJava.cast_to_short((@rgn_rect.attr_right - 1)), RJava.cast_to_short((@rgn_rect.attr_bottom - 1)), @rgn_rect.attr_right, @rgn_rect.attr_bottom)
          rect_rgn = OS._new_rgn
          OS._rect_rgn(rect_rgn, r)
          OS._union_rgn(rect_rgn, h_region, h_region)
          OS._dispose_rgn(rect_rgn)
        end
        return OS.attr_no_err
      else
        OS._diff_rgn(h_region, h_region, h_region)
        return OS.attr_no_err
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_hidden(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed)
          shell.set_window_visible(false)
        end
        i += 1
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_hit_test(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      if ((self.attr_region).nil? || self.attr_region.is_disposed)
        return OS.attr_event_not_handled_err
      end
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_qdpoint, nil, sizeof, nil, pt)
      rect = Rect.new
      OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
      OS._set_pt(pt, RJava.cast_to_short((pt.attr_h - rect.attr_left)), RJava.cast_to_short((pt.attr_v - rect.attr_top)))
      rgn = OS._new_rgn
      OS._rect_rgn(rgn, @rgn_rect)
      OS._sect_rgn(rgn, self.attr_region.attr_handle, rgn)
      in_data = OS._pt_in_rgn(pt, rgn) ? OS.attr_w_in_content : OS.attr_w_no_hit
      OS._dispose_rgn(rgn)
      OS._set_event_parameter(the_event, OS.attr_k_event_param_window_def_part, OS.attr_type_window_def_part_code, 2, Array.typed(::Java::Short).new([in_data]))
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_shown(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      invalidate_visible_region(top_handle)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!shell.is_disposed && shell.get_visible)
          shell.set_window_visible(true)
        end
        i += 1
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_update(next_handler, the_event, user_data)
      @update = true
      result = OS._call_next_event_handler(next_handler, the_event)
      @update = false
      if (!(@inval_rgn).equal?(0))
        OS._inval_window_rgn(@shell_handle, @inval_rgn)
        OS._dispose_rgn(@inval_rgn)
        @inval_rgn = 0
      end
      return result
    end
    
    typesig { [] }
    def resize_bounds
      rect = Rect.new
      OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
      control = !(self.attr_scrolled_handle).equal?(0) ? self.attr_scrolled_handle : self.attr_handle
      set_bounds(control, 0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, false, true, false)
      resize_client_area
    end
    
    typesig { [] }
    # Moves the receiver to the top of the drawing order for
    # the display on which it was created (so that all other
    # shells on that display, which are not the receiver's
    # children will be drawn behind it), marks it visible,
    # sets the focus and asks the window manager to make the
    # shell active.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#moveAbove
    # @see Control#setFocus
    # @see Control#setVisible
    # @see Display#getActiveShell
    # @see Decorations#setDefaultButton(Button)
    # @see Shell#setActive
    # @see Shell#forceActive
    def open
      check_widget
      bring_to_top(false)
      set_visible(true)
      if (is_disposed)
        return
      end
      if (@active)
        if (!restore_focus && !traverse_group(true))
          set_focus
        end
      end
    end
    
    typesig { [SwtGC] }
    def print(gc)
      check_widget
      if ((gc).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return false
    end
    
    typesig { [] }
    def register
      super
      the_root = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_root_control(@shell_handle, the_root)
      self.attr_display.add_widget(the_root[0], self)
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!(shell).nil? && !shell.is_disposed)
          shell.dispose
        end
        i += 1
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      @shell_handle = 0
    end
    
    typesig { [] }
    def release_parent
      # Do nothing
    end
    
    typesig { [] }
    def release_widget
      super
      self.attr_display.clear_modal(self)
      @disposed = true
      if (!(@window_group).equal?(0))
        OS._release_window_group(@window_group)
      end
      self.attr_display.update_quit_menu
      if (!(@inval_rgn).equal?(0))
        OS._dispose_rgn(@inval_rgn)
      end
      if (!(@im_handle).equal?(0))
        OS._delete_tsmdocument(@im_handle)
      end
      @im_handle = @inval_rgn = @window_group = 0
      @last_active = nil
    end
    
    typesig { [ShellListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when operations are performed on the receiver.
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
    # @see ShellListener
    # @see #addShellListener
    def remove_shell_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Activate, listener)
      self.attr_event_table.unhook(SWT::Close, listener)
      self.attr_event_table.unhook(SWT::Deactivate, listener)
      self.attr_event_table.unhook(SWT::Iconify, listener)
      self.attr_event_table.unhook(SWT::Deiconify, listener)
    end
    
    typesig { [] }
    # If the receiver is visible, moves it to the top of the
    # drawing order for the display on which it was created
    # (so that all other shells on that display, which are not
    # the receiver's children will be drawn behind it) and asks
    # the window manager to make the shell active
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    # @see Control#moveAbove
    # @see Control#setFocus
    # @see Control#setVisible
    # @see Display#getActiveShell
    # @see Decorations#setDefaultButton(Button)
    # @see Shell#open
    # @see Shell#setActive
    def set_active
      check_widget
      if (!is_visible)
        return
      end
      OS._select_window(@shell_handle)
      OS._set_user_focus_window(@shell_handle)
    end
    
    typesig { [Control] }
    def set_active_control(control)
      if (!(control).nil? && control.is_disposed)
        control = nil
      end
      if (!(@last_active).nil? && @last_active.is_disposed)
        @last_active = nil
      end
      if ((@last_active).equal?(control))
        return
      end
      # Compute the list of controls to be activated and
      # deactivated by finding the first common parent
      # control.
      activate = ((control).nil?) ? Array.typed(Control).new(0) { nil } : control.get_path
      deactivate = ((@last_active).nil?) ? Array.typed(Control).new(0) { nil } : @last_active.get_path
      @last_active = control
      index = 0
      length = Math.min(activate.attr_length, deactivate.attr_length)
      while (index < length)
        if (!(activate[index]).equal?(deactivate[index]))
          break
        end
        index += 1
      end
      # It is possible (but unlikely), that application
      # code could have destroyed some of the widgets. If
      # this happens, keep processing those widgets that
      # are not disposed.
      i = deactivate.attr_length - 1
      while i >= index
        if (!deactivate[i].is_disposed)
          deactivate[i].send_event(SWT::Deactivate)
        end
        (i -= 1)
      end
      i_ = activate.attr_length - 1
      while i_ >= index
        if (!activate[i_].is_disposed)
          activate[i_].send_event(SWT::Activate)
        end
        (i_ -= 1)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's alpha value which must be
    # between 0 (transparent) and 255 (opaque).
    # <p>
    # This operation requires the operating system's advanced
    # widgets subsystem which may not be available on some
    # platforms.
    # </p>
    # @param alpha the alpha value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_alpha(alpha)
      check_widget
      alpha &= 0xff
      OS._set_window_alpha(@shell_handle, alpha / 255)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      if (@full_screen)
        set_full_screen(false)
      end
      rect = Rect.new
      if (!move)
        OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        x = rect.attr_left
        y = rect.attr_top
      end
      if (!resize)
        OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
      else
        OS._get_window_structure_widths(@shell_handle, rect)
        in_min_limits = CGPoint.new
        in_max_limits = CGPoint.new
        OS._get_window_resize_limits(@shell_handle, in_min_limits, in_max_limits)
        width = Math.max(1, Math.max(width, RJava.cast_to_int(in_min_limits.attr_x) + (rect.attr_left + rect.attr_right)))
        height = Math.max(1, Math.max(height, RJava.cast_to_int(in_min_limits.attr_y) + (rect.attr_top + rect.attr_bottom)))
      end
      if (!(@rgn_rect).nil?)
        OS._set_rect(@rgn_rect, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(width), RJava.cast_to_short(height))
      end
      OS._set_rect(rect, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
      OS._set_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      return 0
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      check_widget
      if (((((self.attr_state & DISABLED)).equal?(0))).equal?(enabled))
        return
      end
      super(enabled)
      if (enabled && OS._is_window_active(@shell_handle))
        if (!restore_focus)
          traverse_group(false)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the full screen state of the receiver.
    # If the argument is <code>true</code> causes the receiver
    # to switch to the full screen state, and if the argument is
    # <code>false</code> and the receiver was previously switched
    # into full screen state, causes the receiver to switch back
    # to either the maximmized or normal states.
    # <p>
    # Note: The result of intermixing calls to <code>setFullScreen(true)</code>,
    # <code>setMaximized(true)</code> and <code>setMinimized(true)</code> will
    # vary by platform. Typically, the behavior will match the platform user's
    # expectations, but not always. This should be avoided if possible.
    # </p>
    # 
    # @param fullScreen the new fullscreen state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_full_screen(full_screen)
      check_widget
      @full_screen = full_screen
      if (full_screen)
        @normal_bounds = get_bounds
        OS._change_window_attributes(@shell_handle, OS.attr_k_window_no_title_bar_attribute, OS.attr_k_window_resizable_attribute | OS.attr_k_window_live_resize_attribute)
        update_system_uimode
        screen = get_monitor.get_bounds
        if (!(self.attr_menu_bar).nil? && (get_monitor == self.attr_display.get_primary_monitor))
          rect = Rect.new
          gdevice = OS._get_main_device
          OS._get_available_window_positioning_bounds(gdevice, rect)
          screen.attr_height -= rect.attr_top
          screen.attr_y += rect.attr_top
        end
        rect = Rect.new
        OS._set_rect(rect, RJava.cast_to_short(screen.attr_x), RJava.cast_to_short(screen.attr_y), RJava.cast_to_short((screen.attr_x + screen.attr_width)), RJava.cast_to_short((screen.attr_y + screen.attr_height)))
        OS._set_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
      else
        attributes = 0
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          attributes |= OS.attr_k_window_resizable_attribute
          # Bug in the Macintosh.  For some reason, a window has no title bar
          # and the kWindowResizableAttribute, no rubber banding feedback is
          # given while the window is resizing.  The fix is to create the window
          # with kWindowLiveResizeAttribute in this case.  This is inconsistent
          # with other windows, but the user will get feedback when resizing.
          if (((self.attr_style & SWT::TITLE)).equal?(0))
            attributes |= OS.attr_k_window_live_resize_attribute
          end
          if (!OS.____big_endian__)
            attributes |= OS.attr_k_window_live_resize_attribute
          end
        end
        OS._change_window_attributes(@shell_handle, attributes, OS.attr_k_window_no_title_bar_attribute)
        OS._set_system_uimode(OS.attr_k_uimode_normal, 0)
        if (self.attr_maximized)
          set_maximized(true)
        else
          rect = Rect.new
          if (!(@normal_bounds).nil?)
            OS._set_rect(rect, RJava.cast_to_short(@normal_bounds.attr_x), RJava.cast_to_short(@normal_bounds.attr_y), RJava.cast_to_short((@normal_bounds.attr_x + @normal_bounds.attr_width)), RJava.cast_to_short((@normal_bounds.attr_y + @normal_bounds.attr_height)))
          end
          OS._set_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), rect)
        end
        @normal_bounds = nil
      end
    end
    
    typesig { [Menu] }
    def set_menu_bar(menu)
      check_widget
      super(menu)
      if ((self.attr_display.get_active_shell).equal?(self))
        self.attr_display.set_menu_bar(self.attr_menu_bar)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the input method editor mode to the argument which
    # should be the result of bitwise OR'ing together one or more
    # of the following constants defined in class <code>SWT</code>:
    # <code>NONE</code>, <code>ROMAN</code>, <code>DBCS</code>,
    # <code>PHONETIC</code>, <code>NATIVE</code>, <code>ALPHA</code>.
    # 
    # @param mode the new IME mode
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT
    def set_ime_input_mode(mode)
      check_widget
    end
    
    typesig { [::Java::Boolean] }
    def set_maximized(maximized)
      check_widget
      super(maximized)
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      if (maximized)
        rect = Rect.new
        gdevice = OS._get_main_device
        OS._get_available_window_positioning_bounds(gdevice, rect)
        pt.attr_h = RJava.cast_to_short((rect.attr_right - rect.attr_left))
        pt.attr_v = RJava.cast_to_short((rect.attr_bottom - rect.attr_top))
      end
      in_part_code = RJava.cast_to_short((maximized ? OS.attr_in_zoom_out : OS.attr_in_zoom_in))
      OS._zoom_window_ideal(@shell_handle, in_part_code, pt)
    end
    
    typesig { [::Java::Boolean] }
    def set_minimized(minimized)
      check_widget
      if ((self.attr_minimized).equal?(minimized))
        return
      end
      super(minimized)
      if (!minimized && OS._is_window_collapsed(@shell_handle))
        OS._select_window(@shell_handle)
      end
      OS._collapse_window(@shell_handle, minimized)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's minimum size to the size specified by the arguments.
    # If the new minimum size is larger than the current size of the receiver,
    # the receiver is resized to the new minimum size.
    # 
    # @param width the new minimum width for the receiver
    # @param height the new minimum height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_minimum_size(width, height)
      check_widget
      client_width = 0
      client_height = 0
      trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0) && !((self.attr_style & trim)).equal?(0))
        client_width = self.attr_default_client_width
        client_height = self.attr_default_client_height
      end
      rect = Rect.new
      OS._get_window_structure_widths(@shell_handle, rect)
      in_min_limits = CGPoint.new
      in_max_limits = CGPoint.new
      OS._get_window_resize_limits(@shell_handle, in_min_limits, in_max_limits)
      width = Math.max(width, client_width + rect.attr_left + rect.attr_right)
      height = Math.max(height, client_height + rect.attr_top + rect.attr_bottom)
      in_min_limits.attr_x = width - (rect.attr_left + rect.attr_right)
      in_min_limits.attr_y = height - (rect.attr_top + rect.attr_bottom)
      OS._set_window_resize_limits(@shell_handle, in_min_limits, in_max_limits)
      size = get_size
      new_width = Math.max(size.attr_x, width)
      new_height = Math.max(size.attr_y, height)
      if (!(new_width).equal?(size.attr_x) || !(new_height).equal?(size.attr_y))
        set_size(new_width, new_height)
      end
    end
    
    typesig { [Point] }
    # Sets the receiver's minimum size to the size specified by the argument.
    # If the new minimum size is larger than the current size of the receiver,
    # the receiver is resized to the new minimum size.
    # 
    # @param size the new minimum size for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_minimum_size(size)
      check_widget
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_minimum_size(size.attr_x, size.attr_y)
    end
    
    typesig { [Region] }
    # Sets the shape of the shell to the region specified
    # by the argument.  When the argument is null, the
    # default shape of the shell is restored.  The shell
    # must be created with the style SWT.NO_TRIM in order
    # to specify a region.
    # 
    # @param region the region that defines the shape of the shell (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the region has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_region(region)
      check_widget
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
        return
      end
      if (!(region).nil? && region.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((region).nil?)
        @rgn_rect = nil
      else
        if ((@rgn_rect).nil?)
          @rgn_rect = Rect.new
          OS._get_window_bounds(@shell_handle, RJava.cast_to_short(OS.attr_k_window_structure_rgn), @rgn_rect)
          OS._set_rect(@rgn_rect, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short((@rgn_rect.attr_right - @rgn_rect.attr_left)), RJava.cast_to_short((@rgn_rect.attr_bottom - @rgn_rect.attr_top)))
        end
      end
      self.attr_region = region
      # Bug in the Macintosh.  Calling ReshapeCustomWindow() from a
      # kEventWindowDrawContent handler originating from ShowWindow()
      # will deadlock.  The fix is to detected this case and only call
      # ReshapeCustomWindow() after the default handler is done.
      if (@drawing)
        @reshape = true
      else
        OS._reshape_custom_window(@shell_handle)
        redraw_widget(self.attr_handle, true)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      super(string)
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      if ((ptr).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_window_title_with_cfstring(@shell_handle, ptr)
      OS._cfrelease(ptr)
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      check_widget
      mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
      if (!((self.attr_style & mask)).equal?(0))
        if (visible)
          self.attr_display.set_modal_shell(self)
        else
          self.attr_display.clear_modal(self)
        end
      else
        update_modal
      end
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
      @show_with_parent = visible
      set_window_visible(visible)
    end
    
    typesig { [::Java::Boolean] }
    def set_window_visible(visible)
      if ((OS._is_window_visible(@shell_handle)).equal?(visible))
        return
      end
      if (visible)
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
        in_modal_kind = OS.attr_k_window_modality_none
        if (!((self.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
          in_modal_kind = OS.attr_k_window_modality_window_modal
        end
        if (!((self.attr_style & SWT::APPLICATION_MODAL)).equal?(0))
          in_modal_kind = OS.attr_k_window_modality_app_modal
        end
        if (!((self.attr_style & SWT::SYSTEM_MODAL)).equal?(0))
          in_modal_kind = OS.attr_k_window_modality_system_modal
        end
        if (!(in_modal_kind).equal?(OS.attr_k_window_modality_none))
          in_unavailable_window = 0
          if (!(self.attr_parent).nil?)
            in_unavailable_window = OS._get_control_owner(self.attr_parent.attr_handle)
          end
          OS._set_window_modality(@shell_handle, in_modal_kind, in_unavailable_window)
          if (!(in_unavailable_window).equal?(0))
            OS._collapse_window(in_unavailable_window, false)
          end
        end
        top_handle_ = top_handle
        OS._set_control_visibility(top_handle_, true, false)
        scope = Array.typed(::Java::Int).new(1) { 0 }
        if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
          OS._get_window_activation_scope(@shell_handle, scope)
          OS._set_window_activation_scope(@shell_handle, OS.attr_k_window_activation_scope_none)
        end
        shell_handle = @shell_handle
        OS._retain_window(shell_handle)
        OS._show_window(shell_handle)
        OS._release_window(shell_handle)
        if (is_disposed)
          return
        end
        if (!(self.attr_minimized).equal?(OS._is_window_collapsed(shell_handle)))
          OS._collapse_window(shell_handle, self.attr_minimized)
        end
        if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
          OS._set_window_activation_scope(shell_handle, scope[0])
          OS._bring_to_front(shell_handle)
        else
          # Bug in the Macintosh.  ShowWindow() does not activate the shell when an ON_TOP
          # shell is visible. The fix is to detect that the shell was not activated and
          # activate it.
          if (!(self.attr_display.get_active_shell).equal?(self))
            shells = self.attr_display.get_shells
            i = 0
            while i < shells.attr_length
              shell = shells[i]
              if (!((shell.attr_style & SWT::ON_TOP)).equal?(0) && shell.is_visible)
                bring_to_top(false)
                break
              end
              i += 1
            end
          end
        end
        @opened = true
        if (!@moved)
          @moved = true
          send_event(SWT::Move)
          if (is_disposed)
            return
          end
        end
        if (!@resized)
          @resized = true
          send_event(SWT::Resize)
          if (is_disposed)
            return
          end
          if (!(self.attr_layout).nil?)
            mark_layout(false, false)
            update_layout(false)
          end
        end
      else
        # Bug in the Macintosh.  Under certain circumstances, yet to
        # be determined, calling HideWindow() and then DisposeWindow()
        # causes a segment fault when an application is exiting.  This
        # seems to happen to large applications.  The fix is to avoid
        # calling HideWindow() when a shell is about to be disposed.
        if (!@disposed)
          OS._hide_window(@shell_handle)
        end
        if (is_disposed)
          return
        end
        top_handle_ = top_handle
        OS._set_control_visibility(top_handle_, false, false)
        invalidate_visible_region(top_handle_)
        send_event(SWT::Hide)
      end
      self.attr_display.update_quit_menu
    end
    
    typesig { [] }
    def set_zorder
      if (!(self.attr_scrolled_handle).equal?(0))
        OS._hiview_add_subview(self.attr_scrolled_handle, self.attr_handle)
      end
    end
    
    typesig { [Control, ::Java::Boolean] }
    def set_zorder(control, above)
      if (above)
        # NOT DONE - move one window above another
        OS._bring_to_front(@shell_handle)
      else
        window = (control).nil? ? 0 : OS._get_control_owner(control.attr_handle)
        OS._send_behind(@shell_handle, window)
      end
    end
    
    typesig { [] }
    def traverse_escape
      if ((self.attr_parent).nil?)
        return false
      end
      if (!is_visible || !is_enabled)
        return false
      end
      close
      return true
    end
    
    typesig { [::Java::Boolean] }
    def update_minimized(minimized)
      # Need to handle ON_TOP child shells ourselves, since they
      # are not in the same group hierarchy of this shell.
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if ((self).equal?(shell.attr_parent) && !((shell.attr_style & SWT::ON_TOP)).equal?(0))
          if (minimized)
            if (shells[i].is_visible)
              shells[i].attr_show_with_parent = true
              OS._hide_window(shell.attr_shell_handle)
            end
          else
            if (shells[i].attr_show_with_parent)
              shells[i].attr_show_with_parent = false
              OS._show_window(shell.attr_shell_handle)
            end
          end
        end
        i += 1
      end
    end
    
    typesig { [] }
    def update_modal
      # do nothing
    end
    
    typesig { [] }
    def update_system_uimode
      if (!(get_monitor == self.attr_display.get_primary_monitor))
        return
      end
      is_active = false
      active_shell = self.attr_display.get_active_shell
      current = self
      while (!(current).nil?)
        if ((current == active_shell))
          is_active = true
          break
        end
        current = current.attr_parent
      end
      if (!is_active)
        return
      end
      if (@full_screen)
        mode = OS.attr_k_uimode_all_hidden
        if (!(self.attr_menu_bar).nil?)
          mode = OS.attr_k_uimode_content_hidden
        end
        OS._set_system_uimode(mode, 0)
      else
        OS._set_system_uimode(OS.attr_k_uimode_normal, 0)
      end
    end
    
    private
    alias_method :initialize__shell, :initialize
  end
  
end
