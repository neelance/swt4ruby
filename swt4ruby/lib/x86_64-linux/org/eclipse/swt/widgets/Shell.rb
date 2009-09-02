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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    # int
    attr_accessor :shell_handle
    alias_method :attr_shell_handle, :shell_handle
    undef_method :shell_handle
    alias_method :attr_shell_handle=, :shell_handle=
    undef_method :shell_handle=
    
    attr_accessor :tooltips_handle
    alias_method :attr_tooltips_handle, :tooltips_handle
    undef_method :tooltips_handle
    alias_method :attr_tooltips_handle=, :tooltips_handle=
    undef_method :tooltips_handle=
    
    attr_accessor :tooltip_window
    alias_method :attr_tooltip_window, :tooltip_window
    undef_method :tooltip_window
    alias_method :attr_tooltip_window=, :tooltip_window=
    undef_method :tooltip_window=
    
    attr_accessor :group
    alias_method :attr_group, :group
    undef_method :group
    alias_method :attr_group=, :group=
    undef_method :group=
    
    attr_accessor :modal_group
    alias_method :attr_modal_group, :modal_group
    undef_method :modal_group
    alias_method :attr_modal_group=, :modal_group=
    undef_method :modal_group=
    
    attr_accessor :mapped
    alias_method :attr_mapped, :mapped
    undef_method :mapped
    alias_method :attr_mapped=, :mapped=
    undef_method :mapped=
    
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
    
    attr_accessor :modified
    alias_method :attr_modified, :modified
    undef_method :modified
    alias_method :attr_modified=, :modified=
    undef_method :modified=
    
    attr_accessor :center
    alias_method :attr_center, :center
    undef_method :center
    alias_method :attr_center=, :center=
    undef_method :center=
    
    attr_accessor :old_x
    alias_method :attr_old_x, :old_x
    undef_method :old_x
    alias_method :attr_old_x=, :old_x=
    undef_method :old_x=
    
    attr_accessor :old_y
    alias_method :attr_old_y, :old_y
    undef_method :old_y
    alias_method :attr_old_y=, :old_y=
    undef_method :old_y=
    
    attr_accessor :old_width
    alias_method :attr_old_width, :old_width
    undef_method :old_width
    alias_method :attr_old_width=, :old_width=
    undef_method :old_width=
    
    attr_accessor :old_height
    alias_method :attr_old_height, :old_height
    undef_method :old_height
    alias_method :attr_old_height=, :old_height=
    undef_method :old_height=
    
    attr_accessor :min_width
    alias_method :attr_min_width, :min_width
    undef_method :min_width
    alias_method :attr_min_width=, :min_width=
    undef_method :min_width=
    
    attr_accessor :min_height
    alias_method :attr_min_height, :min_height
    undef_method :min_height
    alias_method :attr_min_height=, :min_height=
    undef_method :min_height=
    
    attr_accessor :last_active
    alias_method :attr_last_active, :last_active
    undef_method :last_active
    alias_method :attr_last_active=, :last_active=
    undef_method :last_active=
    
    attr_accessor :tool_tips
    alias_method :attr_tool_tips, :tool_tips
    undef_method :tool_tips
    alias_method :attr_tool_tips=, :tool_tips=
    undef_method :tool_tips=
    
    class_module.module_eval {
      const_set_lazy(:MAXIMUM_TRIM) { 128 }
      const_attr_reader  :MAXIMUM_TRIM
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
    
    typesig { [Display, Shell, ::Java::Int, ::Java::Long, ::Java::Boolean] }
    # int
    def initialize(display, parent, style, handle, embedded)
      @shell_handle = 0
      @tooltips_handle = 0
      @tooltip_window = 0
      @group = 0
      @modal_group = 0
      @mapped = false
      @moved = false
      @resized = false
      @opened = false
      @full_screen = false
      @show_with_parent = false
      @modified = false
      @center = false
      @old_x = 0
      @old_y = 0
      @old_width = 0
      @old_height = 0
      @min_width = 0
      @min_height = 0
      @last_active = nil
      @tool_tips = nil
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
      @center = !(parent).nil? && !((style & SWT::SHEET)).equal?(0)
      self.attr_style = check_style(parent, style)
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
      create_widget(0)
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
      typesig { [Display, ::Java::Long] }
      # int
      def gtk_new(display, handle)
        return Shell.new(display, nil, SWT::NO_TRIM, handle, true)
      end
      
      typesig { [Display, ::Java::Long] }
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
      # int
      def internal_new(display, handle)
        return Shell.new(display, nil, SWT::NO_TRIM, handle, false)
      end
      
      typesig { [Shell, ::Java::Int] }
      def check_style(parent, style)
        style = Decorations.check_style(style)
        style &= ~SWT::TRANSPARENT
        if (!((style & SWT::ON_TOP)).equal?(0))
          style &= ~SWT::SHELL_TRIM
        end
        mask = SWT::SYSTEM_MODAL | SWT::APPLICATION_MODAL | SWT::PRIMARY_MODAL
        if (!((style & SWT::SHEET)).equal?(0))
          style &= ~SWT::SHEET
          style |= (parent).nil? ? SWT::SHELL_TRIM : SWT::DIALOG_TRIM
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
      add_listener(SWT::Close, typed_listener)
      add_listener(SWT::Iconify, typed_listener)
      add_listener(SWT::Deiconify, typed_listener)
      add_listener(SWT::Activate, typed_listener)
      add_listener(SWT::Deactivate, typed_listener)
    end
    
    typesig { [ToolTip] }
    def add_tool_tip(tool_tip)
      if ((@tool_tips).nil?)
        @tool_tips = Array.typed(ToolTip).new(4) { nil }
      end
      i = 0
      while i < @tool_tips.attr_length
        if ((@tool_tips[i]).nil?)
          @tool_tips[i] = tool_tip
          return
        end
        i += 1
      end
      new_tool_tips = Array.typed(ToolTip).new(@tool_tips.attr_length + 4) { nil }
      new_tool_tips[@tool_tips.attr_length] = tool_tip
      System.arraycopy(@tool_tips, 0, new_tool_tips, 0, @tool_tips.attr_length)
      @tool_tips = new_tool_tips
    end
    
    typesig { [] }
    def adjust_trim
      if (self.attr_display.attr_ignore_trim)
        return
      end
      width = OS._gtk_widget_width(@shell_handle)
      height = OS._gtk_widget_height(@shell_handle)
      # int
      window = OS._gtk_widget_window(@shell_handle)
      rect = GdkRectangle.new
      OS.gdk_window_get_frame_extents(window, rect)
      trim_width = Math.max(0, rect.attr_width - width)
      trim_height = Math.max(0, rect.attr_height - height)
      # Bug in GTK.  gdk_window_get_frame_extents() fails for various window
      # managers, causing a large incorrect value to be returned as the trim.
      # The fix is to ignore the returned trim values if they are too large.
      if (trim_width > MAXIMUM_TRIM || trim_height > MAXIMUM_TRIM)
        self.attr_display.attr_ignore_trim = true
        return
      end
      has_title = false
      has_resize = false
      has_border = false
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
        has_title = !((self.attr_style & (SWT::MIN | SWT::MAX | SWT::TITLE | SWT::MENU))).equal?(0)
        has_resize = !((self.attr_style & SWT::RESIZE)).equal?(0)
        has_border = !((self.attr_style & SWT::BORDER)).equal?(0)
      end
      if (has_title)
        if (has_resize)
          self.attr_display.attr_title_resize_trim_width = trim_width
          self.attr_display.attr_title_resize_trim_height = trim_height
          return
        end
        if (has_border)
          self.attr_display.attr_title_border_trim_width = trim_width
          self.attr_display.attr_title_border_trim_height = trim_height
          return
        end
        self.attr_display.attr_title_trim_width = trim_width
        self.attr_display.attr_title_trim_height = trim_height
        return
      end
      if (has_resize)
        self.attr_display.attr_resize_trim_width = trim_width
        self.attr_display.attr_resize_trim_height = trim_height
        return
      end
      if (has_border)
        self.attr_display.attr_border_trim_width = trim_width
        self.attr_display.attr_border_trim_height = trim_height
        return
      end
    end
    
    typesig { [::Java::Boolean] }
    def bring_to_top(force)
      if (!OS._gtk_widget_visible(@shell_handle))
        return
      end
      display = self.attr_display
      active_shell = display.attr_active_shell
      if ((active_shell).equal?(self))
        return
      end
      if (!force)
        if ((active_shell).nil?)
          return
        end
        if (!display.attr_active_pending)
          # int
          focus_handle = OS.gtk_window_get_focus(active_shell.attr_shell_handle)
          if (!(focus_handle).equal?(0) && !OS._gtk_widget_has_focus(focus_handle))
            return
          end
        end
      end
      # Bug in GTK.  When a shell that is not managed by the window
      # manage is given focus, GTK gets stuck in "focus follows pointer"
      # mode when the pointer is within the shell and its parent when
      # the shell is hidden or disposed. The fix is to use XSetInputFocus()
      # to assign focus when ever the active shell has not managed by
      # the window manager.
      # 
      # NOTE: This bug is fixed in GTK+ 2.6.8 and above.
      x_focus = false
      if (!(active_shell).nil?)
        if (OS::GTK_VERSION < OS._version(2, 6, 8))
          x_focus = active_shell.is_undecorated
        end
        display.attr_active_shell = nil
        display.attr_active_pending = true
      end
      # Feature in GTK.  When the shell is an override redirect
      # window, gdk_window_focus() does not give focus to the
      # window.  The fix is to use XSetInputFocus() to force
      # the focus.
      # 
      # int
      window = OS._gtk_widget_window(@shell_handle)
      if ((x_focus || !((self.attr_style & SWT::ON_TOP)).equal?(0)) && OS._gdk_windowing_x11)
        # int
        x_display = OS.gdk_x11_drawable_get_xdisplay(window)
        # int
        x_window = OS.gdk_x11_drawable_get_xid(window)
        OS.gdk_error_trap_push
        # Use CurrentTime instead of the last event time to ensure that the shell becomes active
        OS._xset_input_focus(x_display, x_window, OS::RevertToParent, OS::CurrentTime)
        OS.gdk_error_trap_pop
      else
        # Bug in metacity.  Calling gdk_window_focus() with a timestamp more
        # recent than the last user interaction time can cause windows not
        # to come forward in versions > 2.10.0.  The fix is to use the last
        # user event time.
        if ((display.attr_window_manager.to_lower_case == "metacity"))
          OS.gdk_window_focus(window, display.attr_last_user_event_time)
        else
          OS.gdk_window_focus(window, OS::GDK_CURRENT_TIME)
        end
      end
      display.attr_active_shell = self
      display.attr_active_pending = true
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
    def check_border
      # Do nothing
    end
    
    typesig { [] }
    def check_open
      if (!@opened)
        @resized = false
      end
    end
    
    typesig { [] }
    # int
    def child_style
      return 0
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
      border = 0
      if (((self.attr_style & (SWT::NO_TRIM | SWT::BORDER | SWT::SHELL_TRIM))).equal?(0))
        border = OS.gtk_container_get_border_width(@shell_handle)
      end
      trim_width_ = trim_width
      trim_height_ = trim_height
      trim.attr_x -= (trim_width_ / 2) + border
      trim.attr_y -= trim_height_ - (trim_width_ / 2) + border
      trim.attr_width += trim_width_ + border * 2
      trim.attr_height += trim_height_ + border * 2
      if (!(self.attr_menu_bar).nil?)
        force_resize
        menu_bar_height = OS._gtk_widget_height(self.attr_menu_bar.attr_handle)
        trim.attr_y -= menu_bar_height
        trim.attr_height += menu_bar_height
      end
      return trim
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | CANVAS
      if ((@shell_handle).equal?(0))
        if ((self.attr_handle).equal?(0))
          type = OS::GTK_WINDOW_TOPLEVEL
          if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
            type = OS::GTK_WINDOW_POPUP
          end
          @shell_handle = OS.gtk_window_new(type)
        else
          @shell_handle = OS.gtk_plug_new(self.attr_handle)
        end
        if ((@shell_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        if (!(self.attr_parent).nil?)
          OS.gtk_window_set_transient_for(@shell_handle, self.attr_parent.top_handle)
          OS.gtk_window_set_destroy_with_parent(@shell_handle, true)
          if (!is_undecorated)
            OS.gtk_window_set_type_hint(@shell_handle, OS::GDK_WINDOW_TYPE_HINT_DIALOG)
          else
            if (OS::GTK_VERSION >= OS._version(2, 2, 0))
              OS.gtk_window_set_skip_taskbar_hint(@shell_handle, true)
            end
          end
        end
        # Feature in GTK.  The window size must be set when the window
        # is created or it will not be allowed to be resized smaller that the
        # initial size by the user.  The fix is to set the size to zero.
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          OS.gtk_widget_set_size_request(@shell_handle, 0, 0)
          OS.gtk_window_set_resizable(@shell_handle, true)
        else
          OS.gtk_window_set_resizable(@shell_handle, false)
        end
        self.attr_vbox_handle = OS.gtk_vbox_new(false, 0)
        if ((self.attr_vbox_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        create_handle(index, false, true)
        OS.gtk_container_add(self.attr_vbox_handle, self.attr_scrolled_handle)
        OS.gtk_box_set_child_packing(self.attr_vbox_handle, self.attr_scrolled_handle, true, true, 0, OS::GTK_PACK_END)
        OS.gtk_window_set_title(@shell_handle, Array.typed(::Java::Byte).new(1) { 0 })
        if (((self.attr_style & (SWT::NO_TRIM | SWT::BORDER | SWT::SHELL_TRIM))).equal?(0))
          OS.gtk_container_set_border_width(@shell_handle, 1)
          color = GdkColor.new
          OS.gtk_style_get_black(OS.gtk_widget_get_style(@shell_handle), color)
          OS.gtk_widget_modify_bg(@shell_handle, OS::GTK_STATE_NORMAL, color)
        end
      else
        self.attr_vbox_handle = OS.gtk_bin_get_child(@shell_handle)
        if ((self.attr_vbox_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # int
        children = OS.gtk_container_get_children(self.attr_vbox_handle)
        if (OS.g_list_length(children) > 0)
          self.attr_scrolled_handle = OS.g_list_data(children)
        end
        OS.g_list_free(children)
        if ((self.attr_scrolled_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        self.attr_handle = OS.gtk_bin_get_child(self.attr_scrolled_handle)
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      end
      @group = OS.gtk_window_group_new
      if ((@group).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # Feature in GTK.  Realizing the shell triggers a size allocate event,
      # which may be confused for a resize event from the window manager if
      # received too late.  The fix is to realize the window during creation
      # to avoid confusion.
      OS.gtk_widget_realize(@shell_handle)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def filter_proc(x_event, gdk_event, data2)
      event_type = OS._x_event_type(x_event)
      if (!(event_type).equal?(OS::FocusOut) && !(event_type).equal?(OS::FocusIn))
        return 0
      end
      x_focus_event = XFocusChangeEvent.new
      OS.memmove(x_focus_event, x_event, XFocusChangeEvent.attr_sizeof)
      case (event_type)
      when OS::FocusIn
        if ((x_focus_event.attr_mode).equal?(OS::NotifyNormal) || (x_focus_event.attr_mode).equal?(OS::NotifyWhileGrabbed))
          case (x_focus_event.attr_detail)
          when OS::NotifyNonlinear, OS::NotifyNonlinearVirtual, OS::NotifyAncestor
            if (!(@tooltips_handle).equal?(0))
              OS.gtk_tooltips_enable(@tooltips_handle)
            end
            self.attr_display.attr_active_shell = self
            self.attr_display.attr_active_pending = false
            send_event(SWT::Activate)
          end
        end
      when OS::FocusOut
        if ((x_focus_event.attr_mode).equal?(OS::NotifyNormal) || (x_focus_event.attr_mode).equal?(OS::NotifyWhileGrabbed))
          case (x_focus_event.attr_detail)
          when OS::NotifyNonlinear, OS::NotifyNonlinearVirtual, OS::NotifyVirtual
            if (!(@tooltips_handle).equal?(0))
              OS.gtk_tooltips_disable(@tooltips_handle)
            end
            display = self.attr_display
            send_event(SWT::Deactivate)
            set_active_control(nil)
            if ((display.attr_active_shell).equal?(self))
              display.attr_active_shell = nil
              display.attr_active_pending = false
            end
          end
        end
      end
      return 0
    end
    
    typesig { [] }
    def find_background_control
      return !((self.attr_state & BACKGROUND)).equal?(0) || !(self.attr_background_image).nil? ? self : nil
    end
    
    typesig { [] }
    def find_deferred_control
      return self.attr_layout_count > 0 ? self : nil
    end
    
    typesig { [] }
    def has_border
      return false
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[KEY_PRESS_EVENT], 0, self.attr_display.attr_closures[KEY_PRESS_EVENT], false)
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[WINDOW_STATE_EVENT], 0, self.attr_display.attr_closures[WINDOW_STATE_EVENT], false)
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[SIZE_ALLOCATE], 0, self.attr_display.attr_closures[SIZE_ALLOCATE], false)
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[CONFIGURE_EVENT], 0, self.attr_display.attr_closures[CONFIGURE_EVENT], false)
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[DELETE_EVENT], 0, self.attr_display.attr_closures[DELETE_EVENT], false)
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[MAP_EVENT], 0, self.attr_display.attr_shell_map_proc_closure, false)
      OS.g_signal_connect_closure_by_id(@shell_handle, self.attr_display.attr_signal_ids[ENTER_NOTIFY_EVENT], 0, self.attr_display.attr_closures[ENTER_NOTIFY_EVENT], false)
      OS.g_signal_connect_closure(@shell_handle, OS.attr_move_focus, self.attr_display.attr_closures[MOVE_FOCUS], false)
      # int
      window = OS._gtk_widget_window(@shell_handle)
      OS.gdk_window_add_filter(window, self.attr_display.attr_filter_proc, @shell_handle)
    end
    
    typesig { [] }
    def is_enabled
      check_widget
      return get_enabled
    end
    
    typesig { [] }
    def is_undecorated
      return ((self.attr_style & (SWT::SHELL_TRIM | SWT::BORDER))).equal?(SWT::NONE) || !((self.attr_style & (SWT::NO_TRIM | SWT::ON_TOP))).equal?(0)
    end
    
    typesig { [] }
    def is_visible
      check_widget
      return get_visible
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@shell_handle, self)
    end
    
    typesig { [] }
    def release_parent
      # Do nothing
    end
    
    typesig { [] }
    # int
    def top_handle
      return @shell_handle
    end
    
    typesig { [] }
    def fix_active_shell
      if ((self.attr_display.attr_active_shell).equal?(self))
        shell = nil
        if (!(self.attr_parent).nil? && self.attr_parent.is_visible)
          shell = self.attr_parent.get_shell
        end
        if ((shell).nil? && is_undecorated)
          shells = self.attr_display.get_shells
          i = 0
          while i < shells.attr_length
            if (!(shells[i]).nil? && shells[i].is_visible)
              shell = shells[i]
              break
            end
            i += 1
          end
        end
        if (!(shell).nil?)
          shell.bring_to_top(false)
        end
      end
    end
    
    typesig { [Shell, Control] }
    def fix_shell(new_shell, control)
      if ((self).equal?(new_shell))
        return
      end
      if ((control).equal?(@last_active))
        set_active_control(nil)
      end
      tool_tip_text = control.attr_tool_tip_text
      if (!(tool_tip_text).nil?)
        control.set_tool_tip_text(self, nil)
        control.set_tool_tip_text(new_shell, tool_tip_text)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def fixed_size_allocate_proc(widget, allocation_ptr)
      client_width = 0
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        client_width = get_client_width
      end
      # int
      result = super(widget, allocation_ptr)
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        move_children(client_width)
      end
      return result
    end
    
    typesig { [::Java::Long] }
    # int
    def fix_style(handle)
    end
    
    typesig { [] }
    def force_resize
      force_resize(OS._gtk_widget_width(self.attr_vbox_handle), OS._gtk_widget_height(self.attr_vbox_handle))
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def force_resize(width, height)
      requisition = GtkRequisition.new
      OS.gtk_widget_size_request(self.attr_vbox_handle, requisition)
      allocation = GtkAllocation.new
      border = OS.gtk_container_get_border_width(@shell_handle)
      allocation.attr_x = border
      allocation.attr_y = border
      allocation.attr_width = width
      allocation.attr_height = height
      OS.gtk_widget_size_allocate(self.attr_vbox_handle, allocation)
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
      if (OS::GTK_VERSION >= OS._version(2, 12, 0))
        if (OS.gtk_widget_is_composited(@shell_handle))
          return RJava.cast_to_int((OS.gtk_window_get_opacity(@shell_handle) * 255))
        end
      end
      return 255
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
    def get_location
      check_widget
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_window_get_position(@shell_handle, x, y)
      return Point.new(x[0], y[0])
    end
    
    typesig { [] }
    def get_maximized
      check_widget
      return !@full_screen && super
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
      width = Math.max(1, @min_width + trim_width)
      height = Math.max(1, @min_height + trim_height)
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
      return @modified
    end
    
    typesig { [] }
    def get_size
      check_widget
      width = OS._gtk_widget_width(self.attr_vbox_handle)
      height = OS._gtk_widget_height(self.attr_vbox_handle)
      border = 0
      if (((self.attr_style & (SWT::NO_TRIM | SWT::BORDER | SWT::SHELL_TRIM))).equal?(0))
        border = OS.gtk_container_get_border_width(@shell_handle)
      end
      return Point.new(width + trim_width + 2 * border, height + trim_height + 2 * border)
    end
    
    typesig { [] }
    def get_visible
      check_widget
      return OS._gtk_widget_visible(@shell_handle)
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
      # This method is needed for @since 3.0 Javadoc
      check_widget
      return self.attr_region
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
    def __get_shell
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
          shell = shell.get_parent
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
          shell = shell.get_parent
        end while (!(shell).nil? && !(shell).equal?(self))
        if ((shell).equal?(self))
          result[((index += 1) - 1)] = shells[i_]
        end
        i_ += 1
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_configure_event(widget, event)
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_window_get_position(@shell_handle, x, y)
      if (!@moved || !(@old_x).equal?(x[0]) || !(@old_y).equal?(y[0]))
        @moved = true
        @old_x = x[0]
        @old_y = y[0]
        send_event(SWT::Move)
        # widget could be disposed at this point
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_delete_event(widget, event)
      if (is_enabled)
        close_widget
      end
      return 1
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_enter_notify_event(widget, event)
      if (!(widget).equal?(@shell_handle))
        return super(widget, event)
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus(widget, direction_type)
      # 64
      case (RJava.cast_to_int(direction_type))
      when OS::GTK_DIR_TAB_FORWARD, OS::GTK_DIR_TAB_BACKWARD
        control = self.attr_display.get_focus_control
        if (!(control).nil?)
          if (!((control.attr_state & CANVAS)).equal?(0) && !((control.attr_style & SWT::EMBEDDED)).equal?(0))
            traversal = (direction_type).equal?(OS::GTK_DIR_TAB_FORWARD) ? SWT::TRAVERSE_TAB_NEXT : SWT::TRAVERSE_TAB_PREVIOUS
            control.traverse(traversal)
            return 1
          end
        end
      end
      return super(widget, direction_type)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_move_focus(widget, direction_type)
      control = self.attr_display.get_focus_control
      if (!(control).nil?)
        # int
        focus_handle_ = control.focus_handle
        # 64
        OS.gtk_widget_child_focus(focus_handle_, RJava.cast_to_int(direction_type))
      end
      OS.g_signal_stop_emission_by_name(@shell_handle, OS.attr_move_focus)
      return 1
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_key_press_event(widget, event)
      # Stop menu mnemonics when the shell is disabled
      if ((widget).equal?(@shell_handle))
        return !((self.attr_state & DISABLED)).equal?(0) ? 1 : 0
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_size_allocate(widget, allocation)
      width = OS._gtk_widget_width(@shell_handle)
      height = OS._gtk_widget_height(@shell_handle)
      if (!@resized || !(@old_width).equal?(width) || !(@old_height).equal?(height))
        @old_width = width
        @old_height = height
        resize_bounds(width, height, true)
      end
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_realize(widget)
      # int
      result = super(widget)
      # int
      window = OS._gtk_widget_window(@shell_handle)
      if (!((self.attr_style & SWT::SHELL_TRIM)).equal?(SWT::SHELL_TRIM))
        decorations = 0
        if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
          if (!((self.attr_style & SWT::MIN)).equal?(0))
            decorations |= OS::GDK_DECOR_MINIMIZE
          end
          if (!((self.attr_style & SWT::MAX)).equal?(0))
            decorations |= OS::GDK_DECOR_MAXIMIZE
          end
          if (!((self.attr_style & SWT::RESIZE)).equal?(0))
            decorations |= OS::GDK_DECOR_RESIZEH
          end
          if (!((self.attr_style & SWT::BORDER)).equal?(0))
            decorations |= OS::GDK_DECOR_BORDER
          end
          if (!((self.attr_style & SWT::MENU)).equal?(0))
            decorations |= OS::GDK_DECOR_MENU
          end
          if (!((self.attr_style & SWT::TITLE)).equal?(0))
            decorations |= OS::GDK_DECOR_TITLE
          end
          # Feature in GTK.  Under some Window Managers (Sawmill), in order
          # to get any border at all from the window manager it is necessary to
          # set GDK_DECOR_BORDER.  The fix is to force these bits when any
          # kind of border is requested.
          if (!((self.attr_style & SWT::RESIZE)).equal?(0))
            decorations |= OS::GDK_DECOR_BORDER
          end
        end
        OS.gdk_window_set_decorations(window, decorations)
      end
      if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
        OS.gdk_window_set_override_redirect(window, true)
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_window_state_event(widget, event)
      gdk_event = GdkEventWindowState.new
      OS.memmove(gdk_event, event, GdkEventWindowState.attr_sizeof)
      self.attr_minimized = !((gdk_event.attr_new_window_state & OS::GDK_WINDOW_STATE_ICONIFIED)).equal?(0)
      self.attr_maximized = !((gdk_event.attr_new_window_state & OS::GDK_WINDOW_STATE_MAXIMIZED)).equal?(0)
      @full_screen = !((gdk_event.attr_new_window_state & OS::GDK_WINDOW_STATE_FULLSCREEN)).equal?(0)
      if (!((gdk_event.attr_changed_mask & OS::GDK_WINDOW_STATE_ICONIFIED)).equal?(0))
        if (self.attr_minimized)
          send_event(SWT::Iconify)
        else
          send_event(SWT::Deiconify)
        end
        update_minimized(self.attr_minimized)
      end
      return 0
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
      if (!restore_focus && !traverse_group(true))
        set_focus
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
      self.attr_event_table.unhook(SWT::Close, listener)
      self.attr_event_table.unhook(SWT::Iconify, listener)
      self.attr_event_table.unhook(SWT::Deiconify, listener)
      self.attr_event_table.unhook(SWT::Activate, listener)
      self.attr_event_table.unhook(SWT::Deactivate, listener)
    end
    
    typesig { [ToolTip] }
    def remove_too_tip(tool_tip)
      if ((@tool_tips).nil?)
        return
      end
      i = 0
      while i < @tool_tips.attr_length
        if ((@tool_tips[i]).equal?(tool_tip))
          @tool_tips[i] = nil
          return
        end
        i += 1
      end
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
      bring_to_top(false)
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
      if (OS::GTK_VERSION >= OS._version(2, 12, 0))
        if (OS.gtk_widget_is_composited(@shell_handle))
          alpha &= 0xff
          OS.gtk_window_set_opacity(@shell_handle, alpha / 255)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def resize_bounds(width, height, notify)
      if (!(self.attr_redraw_window).equal?(0))
        OS.gdk_window_resize(self.attr_redraw_window, width, height)
      end
      if (!(self.attr_enable_window).equal?(0))
        OS.gdk_window_resize(self.attr_enable_window, width, height)
      end
      border = OS.gtk_container_get_border_width(@shell_handle)
      box_width = width - 2 * border
      box_height = height - 2 * border
      OS.gtk_widget_set_size_request(self.attr_vbox_handle, box_width, box_height)
      force_resize(box_width, box_height)
      if (notify)
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
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      if (@full_screen)
        set_full_screen(false)
      end
      # Bug in GTK.  When either of the location or size of
      # a shell is changed while the shell is maximized, the
      # shell is moved to (0, 0).  The fix is to explicitly
      # unmaximize the shell before setting the bounds to
      # anything different from the current bounds.
      if (get_maximized)
        rect = get_bounds
        same_origin = !move || ((rect.attr_x).equal?(x) && (rect.attr_y).equal?(y))
        same_extent = !resize || ((rect.attr_width).equal?(width) && (rect.attr_height).equal?(height))
        if (same_origin && same_extent)
          return 0
        end
        set_maximized(false)
      end
      result = 0
      if (move)
        x_pos = Array.typed(::Java::Int).new(1) { 0 }
        y_pos = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_window_get_position(@shell_handle, x_pos, y_pos)
        OS.gtk_window_move(@shell_handle, x, y)
        if (!(x_pos[0]).equal?(x) || !(y_pos[0]).equal?(y))
          @moved = true
          @old_x = x
          @old_y = y
          send_event(SWT::Move)
          if (is_disposed)
            return 0
          end
          result |= MOVED
        end
      end
      if (resize)
        width = Math.max(1, Math.max(@min_width, width - trim_width))
        height = Math.max(1, Math.max(@min_height, height - trim_height))
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          OS.gtk_window_resize(@shell_handle, width, height)
        end
        changed = !(width).equal?(@old_width) || !(height).equal?(@old_height)
        if (changed)
          @old_width = width
          @old_height = height
          result |= RESIZED
        end
        resize_bounds(width, height, changed)
      end
      return result
    end
    
    typesig { [::Java::Long] }
    # int
    def set_cursor(cursor)
      if (!(self.attr_enable_window).equal?(0))
        OS.gdk_window_set_cursor(self.attr_enable_window, cursor)
        if (!OS._gdk_windowing_x11)
          OS.gdk_flush
        else
          # int
          x_display = OS._gdk_display
          OS._xflush(x_display)
        end
      end
      super(cursor)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      check_widget
      if (((((self.attr_state & DISABLED)).equal?(0))).equal?(enabled))
        return
      end
      display = self.attr_display
      control = nil
      fix_focus = false
      if (!enabled)
        if (!(display.attr_focus_event).equal?(SWT::FocusOut))
          control = display.get_focus_control
          fix_focus = is_focus_ancestor(control)
        end
      end
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      enable_widget(enabled)
      if (is_disposed)
        return
      end
      if (enabled)
        if (!(self.attr_enable_window).equal?(0))
          OS.gdk_window_set_user_data(self.attr_enable_window, 0)
          OS.gdk_window_destroy(self.attr_enable_window)
          self.attr_enable_window = 0
        end
      else
        # int
        parent_handle = @shell_handle
        OS.gtk_widget_realize(parent_handle)
        # int
        window = OS._gtk_widget_window(parent_handle)
        rect = get_bounds
        attributes = GdkWindowAttr.new
        attributes.attr_width = rect.attr_width
        attributes.attr_height = rect.attr_height
        attributes.attr_event_mask = (-0x1 & ~OS::ExposureMask)
        attributes.attr_wclass = OS::GDK_INPUT_ONLY
        attributes.attr_window_type = OS::GDK_WINDOW_CHILD
        self.attr_enable_window = OS.gdk_window_new(window, attributes, 0)
        if (!(self.attr_enable_window).equal?(0))
          if (!(self.attr_cursor).nil?)
            OS.gdk_window_set_cursor(self.attr_enable_window, self.attr_cursor.attr_handle)
            if (!OS._gdk_windowing_x11)
              OS.gdk_flush
            else
              # int
              x_display = OS._gdk_display
              OS._xflush(x_display)
            end
          end
          OS.gdk_window_set_user_data(self.attr_enable_window, parent_handle)
          OS.gdk_window_show(self.attr_enable_window)
        end
      end
      if (fix_focus)
        fix_focus(control)
      end
      if (enabled && (display.attr_active_shell).equal?(self))
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
      if (full_screen)
        OS.gtk_window_fullscreen(@shell_handle)
      else
        OS.gtk_window_unfullscreen(@shell_handle)
        if (self.attr_maximized)
          set_maximized(true)
        end
      end
      @full_screen = full_screen
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
    
    typesig { [] }
    def set_initial_bounds
      if (!((self.attr_state & FOREIGN_HANDLE)).equal?(0))
        return
      end
      width = OS.gdk_screen_width * 5 / 8
      height = OS.gdk_screen_height * 5 / 8
      # int
      screen = OS.gdk_screen_get_default
      if (!(screen).equal?(0))
        if (OS.gdk_screen_get_n_monitors(screen) > 1)
          monitor_number = OS.gdk_screen_get_monitor_at_window(screen, paint_window)
          dest = GdkRectangle.new
          OS.gdk_screen_get_monitor_geometry(screen, monitor_number, dest)
          width = dest.attr_width * 5 / 8
          height = dest.attr_height * 5 / 8
        end
      end
      if (!((self.attr_style & SWT::RESIZE)).equal?(0))
        OS.gtk_window_resize(@shell_handle, width, height)
      end
      resize_bounds(width, height, false)
    end
    
    typesig { [::Java::Boolean] }
    def set_maximized(maximized)
      check_widget
      super(maximized)
      if (maximized)
        OS.gtk_window_maximize(@shell_handle)
      else
        OS.gtk_window_unmaximize(@shell_handle)
      end
    end
    
    typesig { [Menu] }
    def set_menu_bar(menu)
      check_widget
      if ((self.attr_menu_bar).equal?(menu))
        return
      end
      both = !(menu).nil? && !(self.attr_menu_bar).nil?
      if (!(menu).nil?)
        if (((menu.attr_style & SWT::BAR)).equal?(0))
          error(SWT::ERROR_MENU_NOT_BAR)
        end
        if (!(menu.attr_parent).equal?(self))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      if (!(self.attr_menu_bar).nil?)
        # int
        menu_handle = self.attr_menu_bar.attr_handle
        OS.gtk_widget_hide(menu_handle)
        destroy_accel_group
      end
      self.attr_menu_bar = menu
      if (!(self.attr_menu_bar).nil?)
        # int
        menu_handle = menu.attr_handle
        OS.gtk_widget_show(menu_handle)
        create_accel_group
        self.attr_menu_bar.add_accelerators(self.attr_accel_group)
      end
      width = OS._gtk_widget_width(self.attr_vbox_handle)
      height = OS._gtk_widget_height(self.attr_vbox_handle)
      resize_bounds(width, height, !both)
    end
    
    typesig { [::Java::Boolean] }
    def set_minimized(minimized)
      check_widget
      if ((self.attr_minimized).equal?(minimized))
        return
      end
      super(minimized)
      if (minimized)
        OS.gtk_window_iconify(@shell_handle)
      else
        OS.gtk_window_deiconify(@shell_handle)
        bring_to_top(false)
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
      geometry = GdkGeometry.new
      @min_width = geometry.attr_min_width = Math.max(width, trim_width) - trim_width
      @min_height = geometry.attr_min_height = Math.max(height, trim_height) - trim_height
      OS.gtk_window_set_geometry_hints(@shell_handle, 0, geometry, OS::GDK_HINT_MIN_SIZE)
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
      @modified = modified
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
      super(region)
    end
    
    typesig { [] }
    # Shells are never labelled by other widgets, so no initialization is needed.
    def set_relations
    end
    
    typesig { [String] }
    def set_text(string)
      super(string)
      # GTK bug 82013.  For some reason, if the title string
      # is less than 7 bytes long and is not terminated by
      # a space, some window managers occasionally draw
      # garbage after the last character in  the title.
      # The fix is to pad the title.
      length_ = string.length
      chars = CharArray.new(Math.max(6, length_) + 1)
      string.get_chars(0, length_, chars, 0)
      i = length_
      while i < chars.attr_length
        chars[i] = Character.new(?\s.ord)
        i += 1
      end
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_window_set_title(@shell_handle, buffer)
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      check_widget
      mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
      if (!((self.attr_style & mask)).equal?(0))
        if (visible)
          self.attr_display.set_modal_shell(self)
          OS.gtk_window_set_modal(@shell_handle, true)
        else
          self.attr_display.clear_modal(self)
          OS.gtk_window_set_modal(@shell_handle, false)
        end
      else
        update_modal
      end
      @show_with_parent = visible
      if (((OS._gtk_widget_mapped(@shell_handle)).equal?(visible)))
        return
      end
      if (visible)
        if (@center && !@moved)
          center
          if (is_disposed)
            return
          end
        end
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
        # In order to ensure that the shell is visible
        # and fully painted, dispatch events such as
        # GDK_MAP and GDK_CONFIGURE, until the GDK_MAP
        # event for the shell is received.
        # 
        # Note that if the parent is minimized or withdrawn
        # from the desktop, this should not be done since
        # the shell not will be mapped until the parent is
        # unminimized or shown on the desktop.
        OS.gtk_widget_show(@shell_handle)
        if (!(self.attr_enable_window).equal?(0))
          OS.gdk_window_raise(self.attr_enable_window)
        end
        if (!OS._gtk_is_plug(@shell_handle))
          @mapped = false
          if (is_disposed)
            return
          end
          self.attr_display.attr_dispatch_events = Array.typed(::Java::Int).new([OS::GDK_EXPOSE, OS::GDK_FOCUS_CHANGE, OS::GDK_CONFIGURE, OS::GDK_MAP, OS::GDK_UNMAP, OS::GDK_NO_EXPOSE, ])
          display = self.attr_display
          display.put_gdk_events
          iconic = false
          shell = !(self.attr_parent).nil? ? self.attr_parent.get_shell : nil
          begin
            OS.g_main_context_iteration(0, false)
            if (is_disposed)
              break
            end
            iconic = self.attr_minimized || (!(shell).nil? && shell.attr_minimized)
          end while (!@mapped && !iconic)
          display.attr_dispatch_events = nil
          if (is_disposed)
            return
          end
          if (!iconic)
            update(true, true)
            if (is_disposed)
              return
            end
            adjust_trim
          end
        end
        @mapped = true
        if (!((self.attr_style & mask)).equal?(0))
          OS.gdk_pointer_ungrab(OS::GDK_CURRENT_TIME)
        end
        @opened = true
        if (!@moved)
          @moved = true
          location = get_location
          @old_x = location.attr_x
          @old_y = location.attr_y
          send_event(SWT::Move)
          if (is_disposed)
            return
          end
        end
        if (!@resized)
          @resized = true
          size = get_size
          @old_width = size.attr_x - trim_width
          @old_height = size.attr_y - trim_height
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
        fix_active_shell
        OS.gtk_widget_hide(@shell_handle)
        send_event(SWT::Hide)
      end
    end
    
    typesig { [Control, ::Java::Boolean, ::Java::Boolean] }
    def set_zorder(sibling, above, fix_relations)
      # Bug in GTK+.  Changing the toplevel window Z-order causes
      # X to send a resize event.  Before the shell is mapped, these
      # resize events always have a size of 200x200, causing extra
      # layout work to occur.  The fix is to modify the Z-order only
      # if the shell has already been mapped at least once.
      # 
      # Shells are never included in labelled-by relations
      if (@mapped)
        set_zorder(sibling, above, false, false)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def shell_map_proc(handle, arg0, user_data)
      @mapped = true
      self.attr_display.attr_dispatch_events = nil
      return 0
    end
    
    typesig { [] }
    def show_widget
      if (!((self.attr_state & FOREIGN_HANDLE)).equal?(0))
        return
      end
      OS.gtk_container_add(@shell_handle, self.attr_vbox_handle)
      if (!(self.attr_scrolled_handle).equal?(0))
        OS.gtk_widget_show(self.attr_scrolled_handle)
      end
      if (!(self.attr_handle).equal?(0))
        OS.gtk_widget_show(self.attr_handle)
      end
      if (!(self.attr_vbox_handle).equal?(0))
        OS.gtk_widget_show(self.attr_vbox_handle)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def size_allocate_proc(handle, arg0, user_data)
      offset = 16
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(0, x, y, nil)
      y[0] += offset
      # int
      screen = OS.gdk_screen_get_default
      if (!(screen).equal?(0))
        monitor_number = OS.gdk_screen_get_monitor_at_point(screen, x[0], y[0])
        dest = GdkRectangle.new
        OS.gdk_screen_get_monitor_geometry(screen, monitor_number, dest)
        width = OS._gtk_widget_width(handle)
        height = OS._gtk_widget_height(handle)
        if (x[0] + width > dest.attr_x + dest.attr_width)
          x[0] = (dest.attr_x + dest.attr_width) - width
        end
        if (y[0] + height > dest.attr_y + dest.attr_height)
          y[0] = (dest.attr_y + dest.attr_height) - height
        end
      end
      OS.gtk_window_move(handle, x[0], y[0])
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def size_request_proc(handle, arg0, user_data)
      OS.gtk_widget_hide(handle)
      return 0
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
    def trim_height
      if (!((self.attr_style & SWT::NO_TRIM)).equal?(0))
        return 0
      end
      if (@full_screen)
        return 0
      end
      has_title = false
      has_resize = false
      has_border = false
      has_title = !((self.attr_style & (SWT::MIN | SWT::MAX | SWT::TITLE | SWT::MENU))).equal?(0)
      has_resize = !((self.attr_style & SWT::RESIZE)).equal?(0)
      has_border = !((self.attr_style & SWT::BORDER)).equal?(0)
      if (has_title)
        if (has_resize)
          return self.attr_display.attr_title_resize_trim_height
        end
        if (has_border)
          return self.attr_display.attr_title_border_trim_height
        end
        return self.attr_display.attr_title_trim_height
      end
      if (has_resize)
        return self.attr_display.attr_resize_trim_height
      end
      if (has_border)
        return self.attr_display.attr_border_trim_height
      end
      return 0
    end
    
    typesig { [] }
    def trim_width
      if (!((self.attr_style & SWT::NO_TRIM)).equal?(0))
        return 0
      end
      if (@full_screen)
        return 0
      end
      has_title = false
      has_resize = false
      has_border = false
      has_title = !((self.attr_style & (SWT::MIN | SWT::MAX | SWT::TITLE | SWT::MENU))).equal?(0)
      has_resize = !((self.attr_style & SWT::RESIZE)).equal?(0)
      has_border = !((self.attr_style & SWT::BORDER)).equal?(0)
      if (has_title)
        if (has_resize)
          return self.attr_display.attr_title_resize_trim_width
        end
        if (has_border)
          return self.attr_display.attr_title_border_trim_width
        end
        return self.attr_display.attr_title_trim_width
      end
      if (has_resize)
        return self.attr_display.attr_resize_trim_width
      end
      if (has_border)
        return self.attr_display.attr_border_trim_width
      end
      return 0
    end
    
    typesig { [] }
    def update_modal
      # int
      group = 0
      if ((self.attr_display.get_modal_dialog).nil?)
        modal = get_modal_shell
        mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
        shell = nil
        if ((modal).nil?)
          if (!((self.attr_style & mask)).equal?(0))
            shell = self
          end
        else
          shell = modal
        end
        while (!(shell).nil?)
          if (((shell.attr_style & mask)).equal?(0))
            group = shell.get_shell.attr_group
            break
          end
          shell = shell.attr_parent
        end
      end
      if (OS::GTK_VERSION >= OS._version(2, 10, 0) && (group).equal?(0))
        # Feature in GTK. Starting with GTK version 2.10, GTK
        # doesn't assign windows to a default group. The fix is to
        # get the handle of the default group and add windows to the
        # group.
        group = OS.gtk_window_get_group(0)
      end
      if (!(group).equal?(0))
        OS.gtk_window_group_add_window(group, @shell_handle)
      else
        if (!(@modal_group).equal?(0))
          OS.gtk_window_group_remove_window(@modal_group, @shell_handle)
        end
      end
      if (OS::GTK_VERSION < OS._version(2, 4, 0))
        fix_modal(group, @modal_group)
      end
      @modal_group = group
    end
    
    typesig { [::Java::Boolean] }
    def update_minimized(minimized)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        update_ = false
        shell = shells[i]
        while (!(shell).nil? && !(shell).equal?(self) && !shell.is_undecorated)
          shell = shell.get_parent
        end
        if (!(shell).nil? && !(shell).equal?(self))
          update_ = true
        end
        if (update_)
          if (minimized)
            if (shells[i].is_visible)
              shells[i].attr_show_with_parent = true
              OS.gtk_widget_hide(shells[i].attr_shell_handle)
            end
          else
            if (shells[i].attr_show_with_parent)
              shells[i].attr_show_with_parent = false
              OS.gtk_widget_show(shells[i].attr_shell_handle)
            end
          end
        end
        i += 1
      end
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@shell_handle)
    end
    
    typesig { [] }
    def dispose
      # Note:  It is valid to attempt to dispose a widget
      # more than once.  If this happens, fail silently.
      if (is_disposed)
        return
      end
      fix_active_shell
      OS.gtk_widget_hide(@shell_handle)
      super
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
      bring_to_top(true)
    end
    
    typesig { [] }
    def get_bounds
      check_widget
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_window_get_position(@shell_handle, x, y)
      width = OS._gtk_widget_width(self.attr_vbox_handle)
      height = OS._gtk_widget_height(self.attr_vbox_handle)
      border = 0
      if (((self.attr_style & (SWT::NO_TRIM | SWT::BORDER | SWT::SHELL_TRIM))).equal?(0))
        border = OS.gtk_container_get_border_width(@shell_handle)
      end
      return Rectangle.new(x[0], y[0], width + trim_width + 2 * border, height + trim_height + 2 * border)
    end
    
    typesig { [] }
    def release_handle
      super
      @shell_handle = 0
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      shells = get_shells
      i = 0
      while i < shells.attr_length
        shell = shells[i]
        if (!(shell).nil? && !shell.is_disposed)
          shell.release(false)
        end
        i += 1
      end
      if (!(@tool_tips).nil?)
        i_ = 0
        while i_ < @tool_tips.attr_length
          tool_tip = @tool_tips[i_]
          if (!(tool_tip).nil? && !tool_tip.is_disposed)
            tool_tip.dispose
          end
          i_ += 1
        end
        @tool_tips = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_widget
      super
      destroy_accel_group
      self.attr_display.clear_modal(self)
      if ((self.attr_display.attr_active_shell).equal?(self))
        self.attr_display.attr_active_shell = nil
      end
      if (!(@tooltips_handle).equal?(0))
        OS.g_object_unref(@tooltips_handle)
      end
      @tooltips_handle = 0
      if (!(@group).equal?(0))
        OS.g_object_unref(@group)
      end
      @group = @modal_group = 0
      # int
      window = OS._gtk_widget_window(@shell_handle)
      OS.gdk_window_remove_filter(window, self.attr_display.attr_filter_proc, @shell_handle)
      @last_active = nil
    end
    
    typesig { [::Java::Long, String] }
    # int
    def set_tool_tip_text(tip_widget, string)
      set_tool_tip_text(tip_widget, tip_widget, string)
    end
    
    typesig { [::Java::Long, ::Java::Long, String] }
    # int
    # int
    def set_tool_tip_text(root_widget, tip_widget, string)
      if (OS::GTK_VERSION >= OS._version(2, 12, 0))
        buffer = nil
        if (!(string).nil? && string.length > 0)
          chars = fix_mnemonic(string, false)
          buffer = Converter.wcs_to_mbcs(nil, chars, true)
        end
        OS.gtk_widget_set_tooltip_text(root_widget, nil)
        # Bug in GTK. In GTK 2.12, due to a miscalculation of window
        # coordinates, using gtk_tooltip_trigger_tooltip_query ()
        # to update an existing a tooltip will result in the tooltip
        # being displayed at a wrong position. The fix is to send out
        # 2 fake GDK_MOTION_NOTIFY events (to mimic the GTK call) which
        # contain the proper x and y coordinates.
        # 
        # int
        event_ptr = 0
        # int
        tip_window = OS._gtk_widget_window(root_widget)
        if (!(tip_window).equal?(0))
          x = Array.typed(::Java::Int).new(1) { 0 }
          y = Array.typed(::Java::Int).new(1) { 0 }
          # int
          window = OS.gdk_window_at_pointer(x, y)
          # int
          # int
          user_data = Array.typed(::Java::Long).new(1) { 0 }
          if (!(window).equal?(0))
            OS.gdk_window_get_user_data(window, user_data)
          end
          if ((tip_widget).equal?(user_data[0]))
            event_ptr = OS.gdk_event_new(OS::GDK_MOTION_NOTIFY)
            event = GdkEventMotion.new
            event.attr_type = OS::GDK_MOTION_NOTIFY
            event.attr_window = OS.g_object_ref(tip_window)
            event.attr_x = x[0]
            event.attr_y = y[0]
            OS.gdk_window_get_origin(window, x, y)
            event.attr_x_root = event.attr_x + x[0]
            event.attr_y_root = event.attr_y + y[0]
            OS.memmove(event_ptr, event, GdkEventMotion.attr_sizeof)
            OS.gtk_main_do_event(event_ptr)
          end
        end
        OS.gtk_widget_set_tooltip_text(root_widget, buffer)
        if (!(event_ptr).equal?(0))
          OS.gtk_main_do_event(event_ptr)
          OS.gdk_event_free(event_ptr)
        end
      else
        buffer = nil
        if (!(string).nil? && string.length > 0)
          chars = fix_mnemonic(string, false)
          buffer = Converter.wcs_to_mbcs(nil, chars, true)
        end
        if ((@tooltips_handle).equal?(0))
          @tooltips_handle = OS.gtk_tooltips_new
          if ((@tooltips_handle).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS.g_object_ref(@tooltips_handle)
          OS.gtk_object_sink(@tooltips_handle)
        end
        # Feature in GTK.  There is no API to position a tooltip.
        # The fix is to connect to the size_allocate signal for
        # the tooltip window and position it before it is mapped.
        # 
        # Bug in Solaris-GTK.  Invoking gtk_tooltips_force_window()
        # can cause a crash in older versions of GTK.  The fix is
        # to avoid this call if the GTK version is older than 2.2.x.
        if (OS::GTK_VERSION >= OS._version(2, 2, 1))
          OS.gtk_tooltips_force_window(@tooltips_handle)
        end
        # int
        tip_window = OS._gtk_tooltips_tip_window(@tooltips_handle)
        if (!(tip_window).equal?(0) && !(tip_window).equal?(@tooltip_window))
          OS.g_signal_connect(tip_window, OS.attr_size_allocate, self.attr_display.attr_size_allocate_proc, @shell_handle)
          @tooltip_window = tip_window
        end
        # Bug in GTK.  If the cursor is inside the window when a new
        # tooltip is set and the old tooltip is hidden, the new tooltip
        # is not displayed until the mouse re-enters the window.  The
        # fix is force the new tooltip to be active.
        set = true
        if (!(tip_window).equal?(0))
          if (!((OS._gtk_widget_flags(tip_widget) & (OS::GTK_REALIZED | OS::GTK_VISIBLE))).equal?(0))
            x = Array.typed(::Java::Int).new(1) { 0 }
            y = Array.typed(::Java::Int).new(1) { 0 }
            # int
            window = OS.gdk_window_at_pointer(x, y)
            if (!(window).equal?(0))
              # int
              # int
              user_data = Array.typed(::Java::Long).new(1) { 0 }
              OS.gdk_window_get_user_data(window, user_data)
              if ((tip_widget).equal?(user_data[0]))
                # Feature in GTK.  Calling gtk_tooltips_set_tip() positions and
                # shows the tooltip.  If the tooltip is already visible, moving
                # it to a new location in the size_allocate signal causes flashing.
                # The fix is to hide the tip window in the size_request signal
                # and before the new tooltip is forced to be active.
                set = false
                handler_id = OS.g_signal_connect(tip_window, OS.attr_size_request, self.attr_display.attr_size_request_proc, @shell_handle)
                OS.gtk_tooltips_set_tip(@tooltips_handle, tip_widget, buffer, nil)
                OS.gtk_widget_hide(tip_window)
                # int
                data = OS.gtk_tooltips_data_get(tip_widget)
                OS._gtk_tooltips_set_active(@tooltips_handle, data)
                OS.gtk_tooltips_set_tip(@tooltips_handle, tip_widget, buffer, nil)
                if (!(handler_id).equal?(0))
                  OS.g_signal_handler_disconnect(tip_window, handler_id)
                end
              end
            end
          end
        end
        if (set)
          OS.gtk_tooltips_set_tip(@tooltips_handle, tip_widget, buffer, nil)
        end
      end
    end
    
    private
    alias_method :initialize__shell, :initialize
  end
  
end
