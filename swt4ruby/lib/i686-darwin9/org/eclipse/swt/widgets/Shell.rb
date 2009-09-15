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
  module ShellImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # <dd>BORDER, CLOSE, MIN, MAX, NO_TRIM, RESIZE, TITLE, ON_TOP, TOOL, SHEET</dd>
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
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :window_delegate
    alias_method :attr_window_delegate, :window_delegate
    undef_method :window_delegate
    alias_method :attr_window_delegate=, :window_delegate=
    undef_method :window_delegate=
    
    # long
    attr_accessor :tooltip_owner
    alias_method :attr_tooltip_owner, :tooltip_owner
    undef_method :tooltip_owner
    alias_method :attr_tooltip_owner=, :tooltip_owner=
    undef_method :tooltip_owner=
    
    attr_accessor :tooltip_tag
    alias_method :attr_tooltip_tag, :tooltip_tag
    undef_method :tooltip_tag
    alias_method :attr_tooltip_tag=, :tooltip_tag=
    undef_method :tooltip_tag=
    
    attr_accessor :tooltip_user_data
    alias_method :attr_tooltip_user_data, :tooltip_user_data
    undef_method :tooltip_user_data
    alias_method :attr_tooltip_user_data=, :tooltip_user_data=
    undef_method :tooltip_user_data=
    
    attr_accessor :opened
    alias_method :attr_opened, :opened
    undef_method :opened
    alias_method :attr_opened=, :opened=
    undef_method :opened=
    
    attr_accessor :moved
    alias_method :attr_moved, :moved
    undef_method :moved
    alias_method :attr_moved=, :moved=
    undef_method :moved=
    
    attr_accessor :resized
    alias_method :attr_resized, :resized
    undef_method :resized
    alias_method :attr_resized=, :resized=
    undef_method :resized=
    
    attr_accessor :full_screen
    alias_method :attr_full_screen, :full_screen
    undef_method :full_screen
    alias_method :attr_full_screen=, :full_screen=
    undef_method :full_screen=
    
    attr_accessor :center
    alias_method :attr_center, :center
    undef_method :center
    alias_method :attr_center=, :center=
    undef_method :center=
    
    attr_accessor :last_active
    alias_method :attr_last_active, :last_active
    undef_method :last_active
    alias_method :attr_last_active=, :last_active=
    undef_method :last_active=
    
    attr_accessor :normal_bounds
    alias_method :attr_normal_bounds, :normal_bounds
    undef_method :normal_bounds
    alias_method :attr_normal_bounds=, :normal_bounds=
    undef_method :normal_bounds=
    
    attr_accessor :key_input_happened
    alias_method :attr_key_input_happened, :key_input_happened
    undef_method :key_input_happened
    alias_method :attr_key_input_happened=, :key_input_happened=
    undef_method :key_input_happened=
    
    attr_accessor :current_frame
    alias_method :attr_current_frame, :current_frame
    undef_method :current_frame
    alias_method :attr_current_frame=, :current_frame=
    undef_method :current_frame=
    
    attr_accessor :full_screen_frame
    alias_method :attr_full_screen_frame, :full_screen_frame
    undef_method :full_screen_frame
    alias_method :attr_full_screen_frame=, :full_screen_frame=
    undef_method :full_screen_frame=
    
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
    # @see SWT#TOOL
    # @see SWT#NO_TRIM
    # @see SWT#SHELL_TRIM
    # @see SWT#DIALOG_TRIM
    # @see SWT#ON_TOP
    # @see SWT#MODELESS
    # @see SWT#PRIMARY_MODAL
    # @see SWT#APPLICATION_MODAL
    # @see SWT#SYSTEM_MODAL
    # @see SWT#SHEET
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
    # @see SWT#TOOL
    # @see SWT#NO_TRIM
    # @see SWT#SHELL_TRIM
    # @see SWT#DIALOG_TRIM
    # @see SWT#ON_TOP
    # @see SWT#MODELESS
    # @see SWT#PRIMARY_MODAL
    # @see SWT#APPLICATION_MODAL
    # @see SWT#SYSTEM_MODAL
    # @see SWT#SHEET
    def initialize(display, style)
      initialize__shell(display, nil, style, 0, false)
    end
    
    typesig { [Display, Shell, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    def initialize(display, parent, style, handle, embedded)
      @window = nil
      @window_delegate = nil
      @tooltip_owner = 0
      @tooltip_tag = 0
      @tooltip_user_data = 0
      @opened = false
      @moved = false
      @resized = false
      @full_screen = false
      @center = false
      @last_active = nil
      @normal_bounds = nil
      @key_input_happened = false
      @current_frame = nil
      @full_screen_frame = nil
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
      if (!Display.get_sheet_enabled)
        @center = !(parent).nil? && !((style & SWT::SHEET)).equal?(0)
      end
      self.attr_style = check_style(parent, style)
      self.attr_parent = parent
      self.attr_display = display
      if (!(handle).equal?(0))
        if (embedded)
          self.attr_view = NSView.new(handle)
        else
          @window = NSWindow.new(handle)
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
    # @see SWT#SHEET
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
      # 
      # long
      def internal_new(display, handle)
        return Shell.new(display, nil, SWT::NO_TRIM, handle, false)
      end
      
      typesig { [Display, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new shell
      # that is 'embedded'.  In this case, the handle represents an NSView
      # that acts as an embedded SWT Shell in an AWT Canvas.
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
      # @since 3.5
      # 
      # long
      def cocoa_new(display, handle)
        return Shell.new(display, nil, SWT::NO_TRIM, handle, true)
      end
      
      typesig { [Shell, ::Java::Int] }
      def check_style(parent, style)
        style = Decorations.check_style(style)
        style &= ~SWT::TRANSPARENT
        mask = SWT::SYSTEM_MODAL | SWT::APPLICATION_MODAL | SWT::PRIMARY_MODAL
        if (!((style & SWT::SHEET)).equal?(0))
          if (Display.get_sheet_enabled)
            style &= ~(SWT::CLOSE | SWT::TITLE | SWT::MIN | SWT::MAX)
            if ((parent).nil?)
              style &= ~SWT::SHEET
              style |= SWT::SHELL_TRIM
            end
          else
            style &= ~SWT::SHEET
            style |= (parent).nil? ? SWT::SHELL_TRIM : SWT::DIALOG_TRIM
          end
          if (((style & mask)).equal?(0))
            style |= (parent).nil? ? SWT::APPLICATION_MODAL : SWT::PRIMARY_MODAL
          end
        end
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      # The content view of a shell is always ignored.
      if ((id).equal?(self.attr_view.attr_id))
        return true
      end
      return super(id, sel)
    end
    
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def become_key_window(id, sel)
      display = self.attr_display
      display.attr_key_window = @window
      super(id, sel)
      display.check_focus
      display.attr_key_window = nil
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def can_become_key_window(id, sel)
      if ((@window.style_mask).equal?(OS::NSBorderlessWindowMask))
        return true
      end
      return super(id, sel)
    end
    
    typesig { [] }
    def check_open
      if (!@opened)
        @resized = false
      end
    end
    
    typesig { [] }
    def center
      if ((self.attr_parent).nil?)
        return
      end
      rect = get_bounds
      parent_rect = self.attr_display.map(self.attr_parent, nil, self.attr_parent.get_client_area)
      x = Math.max(parent_rect.attr_x, parent_rect.attr_x + (parent_rect.attr_width - rect.attr_width) / 2)
      y = Math.max(parent_rect.attr_y, parent_rect.attr_y + (parent_rect.attr_height - rect.attr_height) / 2)
      monitor_rect = self.attr_parent.get_monitor.get_client_area
      if (x + rect.attr_width > monitor_rect.attr_x + monitor_rect.attr_width)
        x = Math.max(monitor_rect.attr_x, monitor_rect.attr_x + monitor_rect.attr_width - rect.attr_width)
      else
        x = Math.max(x, monitor_rect.attr_x)
      end
      if (y + rect.attr_height > monitor_rect.attr_y + monitor_rect.attr_height)
        y = Math.max(monitor_rect.attr_y, monitor_rect.attr_y + monitor_rect.attr_height - rect.attr_height)
      else
        y = Math.max(y, monitor_rect.attr_y)
      end
      set_location(x, y)
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
      rect = NSRect.new
      rect.attr_x = trim.attr_x
      rect.attr_y = trim.attr_y
      rect.attr_width = trim.attr_width
      rect.attr_height = trim.attr_height
      if (!(@window).nil?)
        if (!fix_resize)
          rect = @window.frame_rect_for_content_rect(rect)
        end
      end
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= HIDDEN
      if ((@window).nil?)
        @window = SWTWindow.new.alloc
        style_mask_ = OS::NSBorderlessWindowMask
        if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
          if (!((self.attr_style & SWT::TITLE)).equal?(0))
            style_mask_ |= OS::NSTitledWindowMask
          end
          if (!((self.attr_style & SWT::CLOSE)).equal?(0))
            style_mask_ |= OS::NSClosableWindowMask
          end
          if (!((self.attr_style & SWT::MIN)).equal?(0))
            style_mask_ |= OS::NSMiniaturizableWindowMask
          end
          if (!((self.attr_style & SWT::MAX)).equal?(0))
            style_mask_ |= OS::NSResizableWindowMask
          end
          if (!((self.attr_style & SWT::RESIZE)).equal?(0))
            style_mask_ |= OS::NSResizableWindowMask
          end
        end
        screen = nil
        primary_screen = NSScreen.new(NSScreen.screens.object_at_index(0))
        if (!(self.attr_parent).nil?)
          screen = self.attr_parent.get_shell.attr_window.screen
        end
        if ((screen).nil?)
          screen = primary_screen
        end
        @window = @window.init_with_content_rect(NSRect.new, style_mask_, OS::NSBackingStoreBuffered, false, screen)
        if (((self.attr_style & (SWT::NO_TRIM | SWT::BORDER | SWT::SHELL_TRIM))).equal?(0) || !((self.attr_style & (SWT::TOOL | SWT::SHEET))).equal?(0))
          @window.set_has_shadow(true)
        end
        if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
          size = @window.min_size
          size.attr_width = NSWindow.min_frame_width_with_title(NSString.string_with(""), style_mask_)
          @window.set_min_size(size)
        end
        if (fix_resize)
          if (@window.responds_to_selector(OS.attr_sel_set_movable_))
            OS.objc_msg_send(@window.attr_id, OS.attr_sel_set_movable_, 0)
          end
        end
        self.attr_display.cascade_window(@window, screen)
        screen_frame = screen.frame
        # double
        width = screen_frame.attr_width * 5 / 8
        height = screen_frame.attr_height * 5 / 8
        frame_ = @window.frame
        primary_frame = primary_screen.frame
        frame_.attr_y = primary_frame.attr_height - ((primary_frame.attr_height - (frame_.attr_y + frame_.attr_height)) + height)
        frame_.attr_width = width
        frame_.attr_height = height
        @window.set_frame(frame_, false)
        if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
          @window.set_level(OS::NSStatusWindowLevel)
        end
        super
        top_view.set_hidden(true)
      else
        # int /*long*/ cls = OS.objc_lookUpClass ("SWTWindow");
        # OS.object_setClass(window.id, cls);
        self.attr_state &= ~HIDDEN
        # TODO - get the content of the foreign window instead of creating it
        super
        self.attr_style |= SWT::NO_BACKGROUND
      end
      @window.set_accepts_mouse_moved_events(true)
      @window_delegate = SWTWindowDelegate.new.alloc.init
      @window.set_delegate(@window_delegate)
      id = @window.field_editor(true, nil)
      if (!(id).nil?)
        OS.object_set_class(id.attr_id, OS.objc_get_class("SWTEditorView"))
      end
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@window).nil?)
        self.attr_display.remove_widget(@window)
      end
      if (!(@window_delegate).nil?)
        self.attr_display.remove_widget(@window_delegate)
      end
    end
    
    typesig { [] }
    def destroy_widget
      window = @window
      display = self.attr_display
      sheet = !((self.attr_style & (SWT::SHEET))).equal?(0)
      release_handle
      if (!(window).nil?)
        if (sheet)
          application = NSApplication.shared_application
          application.end_sheet(window, 0)
        end
        window.close
      end
      # If another shell is not going to become active, clear the menu bar.
      if (!display.is_disposed && (display.get_shells.attr_length).equal?(0))
        display.set_menu_bar(nil)
      end
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_background(id, context, rect)
      if (!(id).equal?(self.attr_view.attr_id))
        return
      end
      if (!(self.attr_region_path).nil? && (self.attr_background).nil?)
        context.save_graphics_state
        NSColor.window_background_color.set_fill
        NSBezierPath.fill_rect(rect)
        context.restore_graphics_state
        return
      end
      super(id, context, rect)
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
    
    typesig { [] }
    def fix_resize
      # Feature in Cocoa.  It is not possible to have a resizable window
      # without the title bar.  The fix is to resize the content view on
      # top of the title bar.
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
        if (!((self.attr_style & SWT::RESIZE)).equal?(0) && ((self.attr_style & (SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX))).equal?(0))
          return true
        end
      end
      return false
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
      if ((@window).nil?)
        return
      end
      make_key_and_order_front
      application = NSApplication.shared_application
      application.activate_ignoring_other_apps(true)
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
      # TODO: Should we support embedded frame alpha?
      if ((@window).nil?)
        return 255
      end
      return RJava.cast_to_int((@window.alpha_value * 255))
    end
    
    typesig { [] }
    def get_bounds
      check_widget
      frame_ = ((@window).nil? ? self.attr_view.frame : @window.frame)
      # double
      y = self.attr_display.get_primary_frame.attr_height - RJava.cast_to_int((frame_.attr_y + frame_.attr_height))
      return Rectangle.new(RJava.cast_to_int(frame_.attr_x), RJava.cast_to_int(y), RJava.cast_to_int(frame_.attr_width), RJava.cast_to_int(frame_.attr_height))
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      rect = nil
      if (!(@window).nil?)
        rect = @window.frame
        if (!fix_resize)
          rect = @window.content_rect_for_frame_rect(rect)
        end
      else
        rect = !(self.attr_scroll_view).nil? ? self.attr_scroll_view.frame : self.attr_view.frame
      end
      width = RJava.cast_to_int(rect.attr_width)
      height = RJava.cast_to_int(rect.attr_height)
      if (!(self.attr_scroll_view).nil?)
        size = NSSize.new
        size.attr_width = width
        size.attr_height = height
        size = NSScrollView.content_size_for_frame_size(size, !((self.attr_style & SWT::H_SCROLL)).equal?(0), !((self.attr_style & SWT::V_SCROLL)).equal?(0), OS::NSNoBorder)
        width = RJava.cast_to_int(size.attr_width)
        height = RJava.cast_to_int(size.attr_height)
      end
      return Rectangle.new(0, 0, width, height)
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
      # TODO: frame is relative to superview. What does getLocation mean in the embedded case?
      frame_ = (!(@window).nil? ? @window.frame : self.attr_view.frame)
      # double
      y = self.attr_display.get_primary_frame.attr_height - RJava.cast_to_int((frame_.attr_y + frame_.attr_height))
      return Point.new(RJava.cast_to_int(frame_.attr_x), RJava.cast_to_int(y))
    end
    
    typesig { [] }
    def get_maximized
      check_widget
      if ((@window).nil?)
        return false
      end
      return !@full_screen && @window.is_zoomed
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
    # Gets the receiver's modified state.
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def get_modified
      check_widget
      return @window.is_document_edited
    end
    
    typesig { [] }
    def get_minimized
      check_widget
      if (!get_visible)
        return super
      end
      if ((@window).nil?)
        return false
      end
      return @window.is_miniaturized
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
      if ((@window).nil?)
        return Point.new(0, 0)
      end
      size = @window.min_size
      return Point.new(RJava.cast_to_int(size.attr_width), RJava.cast_to_int(size.attr_height))
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
      frame_ = (!(@window).nil? ? @window.frame : self.attr_view.frame)
      return Point.new(RJava.cast_to_int(frame_.attr_width), RJava.cast_to_int(frame_.attr_height))
    end
    
    typesig { [] }
    def get_theme_alpha
      return 1
    end
    
    typesig { [] }
    def has_border
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def help_requested(id, sel, the_event)
      control = self.attr_display.get_focus_control
      while (!(control).nil?)
        if (control.hooks(SWT::Help))
          control.post_event___org_eclipse_swt_widgets_shell_1(SWT::Help)
          break
        end
        control = control.attr_parent
      end
    end
    
    typesig { [] }
    def invalidate_visible_region
      reset_visible_region
      invalidate_children_visible_region
    end
    
    typesig { [] }
    def is_drawing
      return get_drawing
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
    # long
    # long
    # long
    def make_first_responder(id, sel, responder)
      display = self.attr_display
      result = super(id, sel, responder)
      display.check_focus
      return result
    end
    
    typesig { [] }
    def make_key_and_order_front
      # Bug in Cocoa.  If a child window becomes the key window when its
      # parent window is miniaturized, the parent window appears as if
      # restored to its full size without actually being restored. In this
      # case the parent window does become active when its child is closed
      # and the user is forced to restore the window from the dock.
      # The fix is to be sure that the parent window is deminiaturized before
      # making the child a key window.
      if (!(self.attr_parent).nil?)
        shell = self.attr_parent
        if (shell.attr_window.is_miniaturized)
          shell.attr_window.deminiaturize(nil)
        end
      end
      @window.make_key_and_order_front(nil)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def no_responder_for(id, sel, selector)
      # Feature in Cocoa.  If the selector is keyDown and nothing has handled the event
      # a system beep is generated.  There's no need to beep, as many keystrokes in the SWT
      # are listened for and acted upon but not explicitly handled in a keyDown handler.  Fix is to
      # not call the default implementation when a keyDown: is being handled.
      if (!(selector).equal?(OS.attr_sel_key_down_))
        super(id, sel, selector)
      end
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
      mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
      if (!((self.attr_style & mask)).equal?(0))
        self.attr_display.set_modal_shell(self)
      else
        update_modal
      end
      bring_to_top(false)
      set_window_visible(true, true)
      if (is_disposed)
        return
      end
      if (!restore_focus && !traverse_group(true))
        # if the parent shell is minimized, setting focus will cause it
        # to become unminimized.
        if ((self.attr_parent).nil? || !(self.attr_parent).attr_window.is_miniaturized)
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
      if (!(@window).nil?)
        self.attr_display.add_widget(@window, self)
      end
      if (!(@window_delegate).nil?)
        self.attr_display.add_widget(@window_delegate, self)
      end
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
      if (!(@window).nil?)
        @window.set_delegate(nil)
      end
      if (!(@window_delegate).nil?)
        @window_delegate.release
      end
      @window_delegate = nil
      super
      @window = nil
    end
    
    typesig { [] }
    def release_parent
      # Do nothing
    end
    
    typesig { [] }
    def release_widget
      super
      self.attr_display.clear_modal(self)
      update_parent(false)
      self.attr_display.update_quit_menu
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
    
    typesig { [::Java::Boolean] }
    def send_tool_tip_event(enter)
      if (!is_visible)
        return
      end
      if ((@tooltip_tag).equal?(0))
        view = @window.content_view
        @tooltip_tag = view.add_tool_tip_rect(NSRect.new, @window, 0)
        if (!(@tooltip_tag).equal?(0))
          tracking_area = NSTrackingArea.new(@tooltip_tag)
          owner_ = tracking_area.owner
          if (!(owner_).nil?)
            @tooltip_owner = owner_.attr_id
          end
          user_info_ = tracking_area.user_info
          if (!(user_info_).nil?)
            @tooltip_user_data = user_info_.attr_id
          else
            # long
            # long
            value = Array.typed(::Java::Int).new(1) { 0 }
            OS.object_get_instance_variable(@tooltip_tag, Array.typed(::Java::Byte).new([Character.new(?_.ord), Character.new(?u.ord), Character.new(?s.ord), Character.new(?e.ord), Character.new(?r.ord), Character.new(?I.ord), Character.new(?n.ord), Character.new(?f.ord), Character.new(?o.ord)]), value)
            @tooltip_user_data = value[0]
          end
        end
      end
      if ((@tooltip_tag).equal?(0) || (@tooltip_owner).equal?(0) || (@tooltip_user_data).equal?(0))
        return
      end
      pt = @window.convert_screen_to_base(NSEvent.mouse_location)
      event = NSEvent.enter_exit_event_with_type(enter ? OS::NSMouseEntered : OS::NSMouseExited, pt, 0, 0, @window.window_number, nil, 0, @tooltip_tag, @tooltip_user_data)
      OS.objc_msg_send(@tooltip_owner, enter ? OS.attr_sel_mouse_entered_ : OS.attr_sel_mouse_exited_, event.attr_id)
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
      if ((@window).nil?)
        return
      end
      check_widget
      if (!is_visible)
        return
      end
      make_key_and_order_front
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
      if ((@window).nil?)
        return
      end
      check_widget
      alpha &= 0xff
      @window.set_alpha_value(alpha / 255)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      # Embedded Shells are not resizable.
      if ((@window).nil?)
        return
      end
      if (@full_screen)
        set_full_screen(false)
      end
      sheet = @window.is_sheet
      if (sheet && move && !resize)
        return
      end
      screen_height = RJava.cast_to_int(self.attr_display.get_primary_frame.attr_height)
      frame_ = @window.frame
      if (!move)
        x = RJava.cast_to_int(frame_.attr_x)
        y = screen_height - RJava.cast_to_int((frame_.attr_y + frame_.attr_height))
      end
      if (resize)
        min_size_ = @window.min_size
        width = Math.max(width, RJava.cast_to_int(min_size_.attr_width))
        height = Math.max(height, RJava.cast_to_int(min_size_.attr_height))
      else
        width = RJava.cast_to_int(frame_.attr_width)
        height = RJava.cast_to_int(frame_.attr_height)
      end
      if (sheet)
        y = screen_height - RJava.cast_to_int((frame_.attr_y + frame_.attr_height))
        parent_rect = self.attr_parent.get_shell.attr_window.frame
        frame_.attr_width = width
        frame_.attr_height = height
        frame_.attr_x = parent_rect.attr_x + (parent_rect.attr_width - frame_.attr_width) / 2
        frame_.attr_y = screen_height - RJava.cast_to_int((y + frame_.attr_height))
        @window.set_frame(frame_, is_visible, true)
      else
        frame_.attr_x = x
        frame_.attr_y = screen_height - RJava.cast_to_int((y + height))
        frame_.attr_width = width
        frame_.attr_height = height
        @window.set_frame(frame_, is_visible)
      end
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def set_clip_region(x, y)
      if (!(self.attr_region_path).nil?)
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(-x, -y)
        self.attr_region_path.transform_using_affine_transform(transform_)
        self.attr_region_path.add_clip
        transform_.translate_xby(2 * x, 2 * y)
        self.attr_region_path.transform_using_affine_transform(transform_)
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      check_widget
      if (((((self.attr_state & DISABLED)).equal?(0))).equal?(enabled))
        return
      end
      super(enabled)
      # if (enabled && OS.IsWindowActive (shellHandle)) {
      # if (!restoreFocus ()) traverseGroup (false);
      # }
    end
    
    typesig { [::Java::Boolean] }
    # Sets the full screen state of the receiver.
    # If the argument is <code>true</code> causes the receiver
    # to switch to the full screen state, and if the argument is
    # <code>false</code> and the receiver was previously switched
    # into full screen state, causes the receiver to switch back
    # to either the maximized or normal states.
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
      if ((@full_screen).equal?(full_screen))
        return
      end
      @full_screen = full_screen
      if (full_screen)
        @current_frame = @window.frame
        @window.set_shows_resize_indicator(false) # only hides resize indicator
        if (@window.responds_to_selector(OS.attr_sel_set_movable_))
          OS.objc_msg_send(@window.attr_id, OS.attr_sel_set_movable_, 0)
        end
        @full_screen_frame = NSScreen.main_screen.frame
        if ((get_monitor == self.attr_display.get_primary_monitor))
          if (!(self.attr_menu_bar).nil?)
            # double
            menu_bar_ht = @current_frame.attr_height - content_view.frame.attr_height
            @full_screen_frame.attr_height -= menu_bar_ht
            OS._set_system_uimode(OS.attr_k_uimode_content_hidden, 0)
          else
            OS._set_system_uimode(OS.attr_k_uimode_all_hidden, 0)
          end
        end
        @window.set_frame(@full_screen_frame, true)
        @window.content_view.set_frame(@full_screen_frame)
      else
        @window.set_shows_resize_indicator(true)
        if (@window.responds_to_selector(OS.attr_sel_set_movable_))
          OS.objc_msg_send(@window.attr_id, OS.attr_sel_set_movable_, 1)
        end
        OS._set_system_uimode(OS.attr_k_uimode_normal, 0)
        @window.set_frame(@current_frame, true)
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
      if ((@window).nil?)
        return
      end
      if ((@window.is_zoomed).equal?(maximized))
        return
      end
      @window.zoom(nil)
    end
    
    typesig { [::Java::Boolean] }
    def set_minimized(minimized)
      check_widget
      super(minimized)
      if ((@window).nil?)
        return
      end
      if (minimized)
        @window.miniaturize(nil)
      else
        @window.deminiaturize(nil)
      end
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
      if ((@window).nil?)
        return
      end
      size = NSSize.new
      size.attr_width = width
      size.attr_height = height
      @window.set_min_size(size)
      frame_ = @window.frame
      if (width > frame_.attr_width || height > frame_.attr_height)
        width = RJava.cast_to_int((width > frame_.attr_width ? width : frame_.attr_width))
        height = RJava.cast_to_int((height > frame_.attr_height ? height : frame_.attr_height))
        set_bounds(0, 0, width, height, false, true)
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
    
    typesig { [::Java::Boolean] }
    # Sets the receiver's modified state as specified by the argument.
    # 
    # @param modified the new modified state for the receiver
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.5
    def set_modified(modified)
      check_widget
      @window.set_document_edited(modified)
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
      if ((@window).nil?)
        return
      end
      if (!(region).nil? && region.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      self.attr_region = region
      if (!(self.attr_region_path).nil?)
        self.attr_region_path.release
      end
      self.attr_region_path = get_path(region)
      if (!(region).nil?)
        @window.set_background_color(NSColor.clear_color)
        @window.set_opaque(false)
      else
        @window.set_background_color(NSColor.window_background_color)
        @window.set_opaque(true)
      end
      @window.content_view.set_needs_display(true)
      if (is_visible && @window.has_shadow)
        @window.display
        @window.invalidate_shadow
      end
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@window).nil?)
        return
      end
      super(string)
      str = NSString.string_with(string)
      @window.set_title(str)
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
      if ((@window).nil?)
        super(visible)
      else
        set_window_visible(visible, false)
      end
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def set_window_visible(visible, key)
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
      if (!(@window).nil? && ((@window.is_visible).equal?(visible)))
        return
      end
      if (visible)
        self.attr_display.clear_pool
        if (@center && !@moved)
          if (is_disposed)
            return
          end
          center
        end
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
        top_view.set_hidden(false)
        invalidate_visible_region
        if (!((self.attr_style & (SWT::SHEET))).equal?(0))
          application = NSApplication.shared_application
          application.begin_sheet(@window, (self.attr_parent).attr_window, nil, 0, 0)
          if (OS::VERSION <= 0x1060 && @window.responds_to_selector(OS.attr_sel__set_needs_to_use_heart_beat_window_))
            OS.objc_msg_send(@window.attr_id, OS.attr_sel__set_needs_to_use_heart_beat_window_, 0)
          end
        else
          # If the parent window is miniaturized, the window will be shown
          # when its parent is shown.
          parent_minimized = !(self.attr_parent).nil? && (self.attr_parent).attr_window.is_miniaturized
          if (!parent_minimized)
            if (key)
              make_key_and_order_front
            else
              @window.order_front(nil)
            end
          end
        end
        update_parent(visible)
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
        update_parent(visible)
        if (!((self.attr_style & (SWT::SHEET))).equal?(0))
          application = NSApplication.shared_application
          application.end_sheet(@window, 0)
        end
        @window.order_out(nil)
        top_view.set_hidden(true)
        invalidate_visible_region
        send_event(SWT::Hide)
      end
      self.attr_display.update_quit_menu
    end
    
    typesig { [] }
    def set_zorder
      if (!(self.attr_scroll_view).nil?)
        self.attr_scroll_view.set_document_view(self.attr_view)
      end
      if ((@window).nil?)
        return
      end
      @window.set_content_view(!(self.attr_scroll_view).nil? ? self.attr_scroll_view : self.attr_view)
      if (fix_resize)
        rect = @window.frame
        rect.attr_x = rect.attr_y = 0
        @window.content_view.set_frame(rect)
      end
    end
    
    typesig { [Control, ::Java::Boolean] }
    def set_zorder(control, above)
      if ((@window).nil?)
        return
      end
      if ((control).nil?)
        if (above)
          @window.order_front(nil)
        else
          @window.order_back(nil)
        end
      else
        other_window = control.get_shell.attr_window
        @window.order_window(above ? OS::NSWindowAbove : OS::NSWindowBelow, other_window.window_number)
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
    
    typesig { [] }
    def update_modal
      # do nothing
    end
    
    typesig { [::Java::Boolean] }
    def update_parent(visible)
      if (visible)
        if (!(self.attr_parent).nil? && self.attr_parent.get_visible)
          (self.attr_parent).attr_window.add_child_window(@window, OS::NSWindowAbove)
        end
      else
        parent_window_ = @window.parent_window
        if (!(parent_window_).nil?)
          parent_window_.remove_child_window(@window)
        end
      end
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if ((shell.attr_parent).equal?(self) && shell.get_visible)
          shell.update_parent(visible)
        end
        i += 1
      end
    end
    
    typesig { [] }
    def update_system_uimode
      if (!(get_monitor == self.attr_display.get_primary_monitor))
        return
      end
      if (@full_screen)
        mode = OS.attr_k_uimode_all_hidden
        if (!(self.attr_menu_bar).nil?)
          mode = OS.attr_k_uimode_content_hidden
        end
        OS._set_system_uimode(mode, 0)
        @window.set_frame(@full_screen_frame, true)
      else
        OS._set_system_uimode(OS.attr_k_uimode_normal, 0)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def view_string_for_tool_tip_point_user_data(id, sel, view, tag, point, user_data)
      pt = NSPoint.new
      OS.memmove___org_eclipse_swt_widgets_shell_3(pt, point, NSPoint.attr_sizeof)
      control = self.attr_display.find_control(false)
      if ((control).nil?)
        return 0
      end
      target = control.find_tooltip(NSView.new(view).convert_point_to_view_(pt, nil))
      string = target.tooltip_text
      if ((string).nil?)
        return 0
      end
      chars = CharArray.new(string.length)
      string.get_chars(0, chars.attr_length, chars, 0)
      length_ = fix_mnemonic(chars)
      return NSString.string_with_characters(chars, length_).attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_become_key(id, sel, notification)
      super(id, sel, notification)
      display_ = self.attr_display
      display_.set_menu_bar(self.attr_menu_bar)
      send_event(SWT::Activate)
      if (is_disposed)
        return
      end
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
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_move(id, sel, notification)
      @moved = true
      send_event(SWT::Move)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_resize(id, sel, notification)
      if (@full_screen)
        @window.set_frame(@full_screen_frame, true)
        @window.content_view.set_frame(@full_screen_frame)
      end
      if (fix_resize)
        rect = @window.frame
        rect.attr_x = rect.attr_y = 0
        @window.content_view.set_frame(rect)
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_resign_key(id, sel, notification)
      super(id, sel, notification)
      send_event(SWT::Deactivate)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_send_event(id, sel, event)
      ns_event = NSEvent.new(event)
      # 64
      type_ = RJava.cast_to_int(ns_event.type)
      case (type_)
      when OS::NSLeftMouseUp, OS::NSRightMouseUp, OS::NSOtherMouseUp, OS::NSMouseMoved
        hit_view = Array.typed(NSView).new(1) { nil }
        control = self.attr_display.find_control(false, hit_view)
        if (!(control).nil? && (!control.is_active || !control.is_enabled))
          control = nil
        end
        if ((type_).equal?(OS::NSMouseMoved))
          trim_control = control
          if (!(trim_control).nil? && trim_control.is_trim(hit_view[0]))
            trim_control = nil
          end
          self.attr_display.check_enter_exit(trim_control, ns_event, false)
          if (!(trim_control).nil?)
            trim_control.send_mouse_event___org_eclipse_swt_widgets_shell_5(ns_event, type_, false)
          end
        end
        target = nil
        if (!(control).nil?)
          target = control.find_tooltip(ns_event.location_in_window)
        end
        if (!(self.attr_display.attr_tooltip_control).equal?(control) || !(self.attr_display.attr_tooltip_target).equal?(target))
          old_control = self.attr_display.attr_tooltip_control
          old_shell = !(old_control).nil? && !old_control.is_disposed ? old_control.get_shell : nil
          shell = !(control).nil? && !control.is_disposed ? control.get_shell : nil
          if (!(old_shell).nil?)
            old_shell.send_tool_tip_event(false)
          end
          if (!(shell).nil?)
            shell.send_tool_tip_event(true)
          end
        end
        self.attr_display.attr_tooltip_control = control
        self.attr_display.attr_tooltip_target = target
      when OS::NSKeyDown
        # Feature in cocoa.  Control+Tab, Ctrl+Shift+Tab, Ctrl+PageDown and Ctrl+PageUp are
        # swallowed to handle native traversal. If we find that, force the key event to
        # the first responder.
        if (!((ns_event.modifier_flags & OS::NSControlKeyMask)).equal?(0))
          chars = ns_event.characters
          if (!(chars).nil? && (chars.length).equal?(1))
            # 64
            first_char = RJava.cast_to_int(chars.character_at_index(0))
            # Shift-tab appears as control-Y.
            case (first_char)
            when Character.new(?\t.ord), 25, OS::NSPageDownFunctionKey, OS::NSPageUpFunctionKey
              @window.first_responder.key_down(ns_event)
              return
            end
          end
        end
      end
      super(id, sel, event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_should_close(id, sel, window)
      close_widget
      return false
    end
    
    private
    alias_method :initialize__shell, :initialize
  end
  
end
