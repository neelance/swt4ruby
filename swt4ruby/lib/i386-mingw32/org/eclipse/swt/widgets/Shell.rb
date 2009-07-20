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
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
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
    
    attr_accessor :active_menu
    alias_method :attr_active_menu, :active_menu
    undef_method :active_menu
    alias_method :attr_active_menu=, :active_menu=
    undef_method :active_menu=
    
    attr_accessor :tool_tips
    alias_method :attr_tool_tips, :tool_tips
    undef_method :tool_tips
    alias_method :attr_tool_tips=, :tool_tips=
    undef_method :tool_tips=
    
    # long
    attr_accessor :h_imc
    alias_method :attr_h_imc, :h_imc
    undef_method :h_imc
    alias_method :attr_h_imc=, :h_imc=
    undef_method :h_imc=
    
    attr_accessor :hwnd_mdiclient
    alias_method :attr_hwnd_mdiclient, :hwnd_mdiclient
    undef_method :hwnd_mdiclient
    alias_method :attr_hwnd_mdiclient=, :hwnd_mdiclient=
    undef_method :hwnd_mdiclient=
    
    attr_accessor :lpstr_tip
    alias_method :attr_lpstr_tip, :lpstr_tip
    undef_method :lpstr_tip
    alias_method :attr_lpstr_tip=, :lpstr_tip=
    undef_method :lpstr_tip=
    
    attr_accessor :tool_tip_handle
    alias_method :attr_tool_tip_handle, :tool_tip_handle
    undef_method :tool_tip_handle
    alias_method :attr_tool_tip_handle=, :tool_tip_handle=
    undef_method :tool_tip_handle=
    
    attr_accessor :balloon_tip_handle
    alias_method :attr_balloon_tip_handle, :balloon_tip_handle
    undef_method :balloon_tip_handle
    alias_method :attr_balloon_tip_handle=, :balloon_tip_handle=
    undef_method :balloon_tip_handle=
    
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
    
    # long
    attr_accessor :brushes
    alias_method :attr_brushes, :brushes
    undef_method :brushes
    alias_method :attr_brushes=, :brushes=
    undef_method :brushes=
    
    attr_accessor :show_with_parent
    alias_method :attr_show_with_parent, :show_with_parent
    undef_method :show_with_parent
    alias_method :attr_show_with_parent=, :show_with_parent=
    undef_method :show_with_parent=
    
    attr_accessor :full_screen
    alias_method :attr_full_screen, :full_screen
    undef_method :full_screen
    alias_method :attr_full_screen=, :full_screen=
    undef_method :full_screen=
    
    attr_accessor :was_maximized
    alias_method :attr_was_maximized, :was_maximized
    undef_method :was_maximized
    alias_method :attr_was_maximized=, :was_maximized=
    undef_method :was_maximized=
    
    attr_accessor :tool_title
    alias_method :attr_tool_title, :tool_title
    undef_method :tool_title
    alias_method :attr_tool_title=, :tool_title=
    undef_method :tool_title=
    
    attr_accessor :balloon_title
    alias_method :attr_balloon_title, :balloon_title
    undef_method :balloon_title
    alias_method :attr_balloon_title=, :balloon_title=
    undef_method :balloon_title=
    
    # long
    attr_accessor :tool_icon
    alias_method :attr_tool_icon, :tool_icon
    undef_method :tool_icon
    alias_method :attr_tool_icon=, :tool_icon=
    undef_method :tool_icon=
    
    attr_accessor :balloon_icon
    alias_method :attr_balloon_icon, :balloon_icon
    undef_method :balloon_icon
    alias_method :attr_balloon_icon=, :balloon_icon=
    undef_method :balloon_icon=
    
    # long
    attr_accessor :window_proc
    alias_method :attr_window_proc, :window_proc
    undef_method :window_proc
    alias_method :attr_window_proc=, :window_proc=
    undef_method :window_proc=
    
    attr_accessor :last_active
    alias_method :attr_last_active, :last_active
    undef_method :last_active
    alias_method :attr_last_active=, :last_active=
    undef_method :last_active=
    
    attr_accessor :psai
    alias_method :attr_psai, :psai
    undef_method :psai
    alias_method :attr_psai=, :psai=
    undef_method :psai=
    
    class_module.module_eval {
      # final
      # long
      
      def tool_tip_proc
        defined?(@@tool_tip_proc) ? @@tool_tip_proc : @@tool_tip_proc= 0
      end
      alias_method :attr_tool_tip_proc, :tool_tip_proc
      
      def tool_tip_proc=(value)
        @@tool_tip_proc = value
      end
      alias_method :attr_tool_tip_proc=, :tool_tip_proc=
      
      const_set_lazy(:DialogClass) { TCHAR.new(0, OS::IsWinCE ? "Dialog" : "#32770", true) }
      const_attr_reader  :DialogClass
      
      const_set_lazy(:SYSTEM_COLORS) { Array.typed(::Java::Int).new([OS::COLOR_BTNFACE, OS::COLOR_WINDOW, OS::COLOR_BTNTEXT, OS::COLOR_WINDOWTEXT, OS::COLOR_HIGHLIGHT, OS::COLOR_SCROLLBAR, ]) }
      const_attr_reader  :SYSTEM_COLORS
      
      const_set_lazy(:BRUSHES_SIZE) { 32 }
      const_attr_reader  :BRUSHES_SIZE
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, DialogClass, lp_wnd_class)
        const_set :DialogProc, lp_wnd_class.attr_lpfn_wnd_proc
      end
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
      initialize__shell(display, OS::IsWinCE ? SWT::NONE : SWT::SHELL_TRIM)
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
    # long
    def initialize(display, parent, style, handle, embedded)
      @active_menu = nil
      @tool_tips = nil
      @h_imc = 0
      @hwnd_mdiclient = 0
      @lpstr_tip = 0
      @tool_tip_handle = 0
      @balloon_tip_handle = 0
      @min_width = 0
      @min_height = 0
      @brushes = nil
      @show_with_parent = false
      @full_screen = false
      @was_maximized = false
      @tool_title = nil
      @balloon_title = nil
      @tool_icon = 0
      @balloon_icon = 0
      @window_proc = 0
      @last_active = nil
      @psai = nil
      super()
      @min_width = SWT::DEFAULT
      @min_height = SWT::DEFAULT
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
      self.attr_handle = handle
      if (!(handle).equal?(0) && !embedded)
        self.attr_state |= FOREIGN_HANDLE
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
      initialize__shell(parent, OS::IsWinCE ? SWT::NONE : SWT::DIALOG_TRIM)
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
      # that is embedded.
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
      # long
      def win32_new(display, handle)
        return Shell.new(display, nil, SWT::NO_TRIM, handle, true)
      end
      
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
      add_listener(SWT::Close, typed_listener)
      add_listener(SWT::Iconify, typed_listener)
      add_listener(SWT::Deiconify, typed_listener)
      add_listener(SWT::Activate, typed_listener)
      add_listener(SWT::Deactivate, typed_listener)
    end
    
    typesig { [] }
    # long
    def balloon_tip_handle
      if ((@balloon_tip_handle).equal?(0))
        create_balloon_tip_handle
      end
      return @balloon_tip_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if ((hwnd).equal?(@tool_tip_handle) || (hwnd).equal?(@balloon_tip_handle))
        return OS._call_window_proc(self.attr_tool_tip_proc, hwnd, msg, w_param, l_param)
      end
      if (!(@hwnd_mdiclient).equal?(0))
        return OS._def_frame_proc(hwnd, @hwnd_mdiclient, msg, w_param, l_param)
      end
      if (!(@window_proc).equal?(0))
        return OS._call_window_proc(@window_proc, hwnd, msg, w_param, l_param)
      end
      if (!((self.attr_style & SWT::TOOL)).equal?(0))
        trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX | SWT::BORDER | SWT::RESIZE
        if (((self.attr_style & trim)).equal?(0))
          return OS._def_window_proc(hwnd, msg, w_param, l_param)
        end
      end
      if (!(self.attr_parent).nil?)
        case (msg)
        when OS::WM_KILLFOCUS, OS::WM_SETFOCUS
          return OS._def_window_proc(hwnd, msg, w_param, l_param)
        end
        return OS._call_window_proc(DialogProc, hwnd, msg, w_param, l_param)
      end
      return OS._def_window_proc(hwnd, msg, w_param, l_param)
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
    def create_balloon_tip_handle
      @balloon_tip_handle = OS._create_window_ex(0, TCHAR.new(0, OS::TOOLTIPS_CLASS, true), nil, OS::TTS_ALWAYSTIP | OS::TTS_NOPREFIX | OS::TTS_BALLOON, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, self.attr_handle, 0, OS._get_module_handle(nil), nil)
      if ((@balloon_tip_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if ((self.attr_tool_tip_proc).equal?(0))
        self.attr_tool_tip_proc = OS._get_window_long_ptr(@balloon_tip_handle, OS::GWLP_WNDPROC)
      end
      # Feature in Windows.  Despite the fact that the
      # tool tip text contains \r\n, the tooltip will
      # not honour the new line unless TTM_SETMAXTIPWIDTH
      # is set.  The fix is to set TTM_SETMAXTIPWIDTH to
      # a large value.
      OS._send_message(@balloon_tip_handle, OS::TTM_SETMAXTIPWIDTH, 0, 0x7fff)
      self.attr_display.add_control(@balloon_tip_handle, self)
      OS._set_window_long_ptr(@balloon_tip_handle, OS::GWLP_WNDPROC, self.attr_display.attr_window_proc)
    end
    
    typesig { [] }
    def create_handle
      embedded = !(self.attr_handle).equal?(0) && ((self.attr_state & FOREIGN_HANDLE)).equal?(0)
      # On Windows 98 and NT, setting a window to be the
      # top most window using HWND_TOPMOST can result in a
      # parent dialog shell being moved behind its parent
      # if the dialog has a sibling that is currently on top
      # This only occurs using SetWindowPos (), not when the
      # handle is created.
      # 
      # 
      # The following code is intentionally commented.
      # 
      # if ((style & SWT.ON_TOP) != 0) display.lockActiveWindow = true;
      if ((self.attr_handle).equal?(0) || embedded)
        super
      else
        self.attr_state |= CANVAS
        if (((self.attr_style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          self.attr_state |= THEME_BACKGROUND
        end
        @window_proc = OS._get_window_long(self.attr_handle, OS::GWL_WNDPROC)
      end
      # The following code is intentionally commented.
      # 
      # if ((style & SWT.ON_TOP) != 0)  display.lockActiveWindow = false;
      if (!embedded)
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        bits &= ~(OS::WS_OVERLAPPED | OS::WS_CAPTION)
        if (!OS::IsWinCE)
          bits |= OS::WS_POPUP
        end
        if (!((self.attr_style & SWT::TITLE)).equal?(0))
          bits |= OS::WS_CAPTION
        end
        if (((self.attr_style & SWT::NO_TRIM)).equal?(0))
          if (((self.attr_style & (SWT::BORDER | SWT::RESIZE))).equal?(0))
            bits |= OS::WS_BORDER
          end
        end
        # Bug in Windows.  When the WS_CAPTION bits are cleared using
        # SetWindowLong(), Windows does not resize the client area of
        # the window to get rid of the caption until the first resize.
        # The fix is to use SetWindowPos() with SWP_DRAWFRAME to force
        # the frame to be redrawn and resized.
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        flags = OS::SWP_DRAWFRAME | OS::SWP_NOMOVE | OS::SWP_NOSIZE | OS::SWP_NOZORDER | OS::SWP_NOACTIVATE
        _set_window_pos(self.attr_handle, 0, 0, 0, 0, 0, flags)
        if (OS::IsWinCE)
          __set_maximized(true)
        end
        if (OS::IsPPC)
          @psai = SHACTIVATEINFO.new
          @psai.attr_cb_size = SHACTIVATEINFO.attr_sizeof
        end
      end
      if (OS::IsDBLocale)
        @h_imc = OS._imm_create_context
        if (!(@h_imc).equal?(0))
          OS._imm_associate_context(self.attr_handle, @h_imc)
        end
      end
    end
    
    typesig { [ToolTip] }
    def create_tool_tip(tool_tip)
      id = 0
      if ((@tool_tips).nil?)
        @tool_tips = Array.typed(ToolTip).new(4) { nil }
      end
      while (id < @tool_tips.attr_length && !(@tool_tips[id]).nil?)
        id += 1
      end
      if ((id).equal?(@tool_tips.attr_length))
        new_tool_tips = Array.typed(ToolTip).new(@tool_tips.attr_length + 4) { nil }
        System.arraycopy(@tool_tips, 0, new_tool_tips, 0, @tool_tips.attr_length)
        @tool_tips = new_tool_tips
      end
      @tool_tips[id] = tool_tip
      tool_tip.attr_id = id + Display::ID_START
      if (OS::IsWinCE)
        return
      end
      lpti = TOOLINFO.new
      lpti.attr_cb_size = TOOLINFO.attr_sizeof
      lpti.attr_hwnd = self.attr_handle
      lpti.attr_u_id = tool_tip.attr_id
      lpti.attr_u_flags = OS::TTF_TRACK
      lpti.attr_lpsz_text = OS::LPSTR_TEXTCALLBACK
      OS._send_message(tool_tip.hwnd_tool_tip, OS::TTM_ADDTOOL, 0, lpti)
    end
    
    typesig { [] }
    def create_tool_tip_handle
      @tool_tip_handle = OS._create_window_ex(0, TCHAR.new(0, OS::TOOLTIPS_CLASS, true), nil, OS::TTS_ALWAYSTIP | OS::TTS_NOPREFIX, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, self.attr_handle, 0, OS._get_module_handle(nil), nil)
      if ((@tool_tip_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if ((self.attr_tool_tip_proc).equal?(0))
        self.attr_tool_tip_proc = OS._get_window_long_ptr(@tool_tip_handle, OS::GWLP_WNDPROC)
      end
      # Feature in Windows.  Despite the fact that the
      # tool tip text contains \r\n, the tooltip will
      # not honour the new line unless TTM_SETMAXTIPWIDTH
      # is set.  The fix is to set TTM_SETMAXTIPWIDTH to
      # a large value.
      OS._send_message(@tool_tip_handle, OS::TTM_SETMAXTIPWIDTH, 0, 0x7fff)
      self.attr_display.add_control(@tool_tip_handle, self)
      OS._set_window_long_ptr(@tool_tip_handle, OS::GWLP_WNDPROC, self.attr_display.attr_window_proc)
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@tool_tip_handle).equal?(0))
        self.attr_display.remove_control(@tool_tip_handle)
      end
      if (!(@balloon_tip_handle).equal?(0))
        self.attr_display.remove_control(@balloon_tip_handle)
      end
    end
    
    typesig { [ToolTip] }
    def destroy_tool_tip(tool_tip)
      if ((@tool_tips).nil?)
        return
      end
      @tool_tips[tool_tip.attr_id - Display::ID_START] = nil
      if (OS::IsWinCE)
        return
      end
      if (!(@balloon_tip_handle).equal?(0))
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        lpti.attr_u_id = tool_tip.attr_id
        lpti.attr_hwnd = self.attr_handle
        OS._send_message(@balloon_tip_handle, OS::TTM_DELTOOL, 0, lpti)
      end
      tool_tip.attr_id = -1
    end
    
    typesig { [] }
    def destroy_widget
      fix_active_shell
      super
    end
    
    typesig { [] }
    def dispose
      # This code is intentionally commented.  On some
      # platforms, the owner window is repainted right
      # away when a dialog window exits.  This behavior
      # is currently unspecified.
      # 
      # /*
      # * Note:  It is valid to attempt to dispose a widget
      # * more than once.  If this happens, fail silently.
      # */
      # if (!isValidWidget ()) return;
      # if (!isValidThread ()) error (SWT.ERROR_THREAD_INVALID_ACCESS);
      # Display oldDisplay = display;
      super
      # widget is disposed at this point
      # if (oldDisplay != null) oldDisplay.update ();
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      if (Display.attr_trim_enabled)
        if (is_active)
          set_item_enabled(OS::SC_CLOSE, enabled)
        end
      else
        OS._enable_window(self.attr_handle, enabled)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def find_brush(value, lb_style)
      if ((lb_style).equal?(OS::BS_SOLID))
        i = 0
        while i < SYSTEM_COLORS.attr_length
          if ((value).equal?(OS._get_sys_color(SYSTEM_COLORS[i])))
            return OS._get_sys_color_brush(SYSTEM_COLORS[i])
          end
          i += 1
        end
      end
      if ((@brushes).nil?)
        # long
        @brushes = Array.typed(::Java::Int).new(BRUSHES_SIZE) { 0 }
      end
      log_brush = LOGBRUSH.new
      i = 0
      while i < @brushes.attr_length
        # long
        h_brush = @brushes[i]
        if ((h_brush).equal?(0))
          break
        end
        OS._get_object(h_brush, LOGBRUSH.attr_sizeof, log_brush)
        case (log_brush.attr_lb_style)
        when OS::BS_SOLID
          if ((lb_style).equal?(OS::BS_SOLID))
            if ((log_brush.attr_lb_color).equal?(value))
              return h_brush
            end
          end
        when OS::BS_PATTERN
          if ((lb_style).equal?(OS::BS_PATTERN))
            if ((log_brush.attr_lb_hatch).equal?(value))
              return h_brush
            end
          end
        end
        i += 1
      end
      length = @brushes.attr_length
      # long
      h_brush = @brushes[(length -= 1)]
      if (!(h_brush).equal?(0))
        OS._delete_object(h_brush)
      end
      System.arraycopy(@brushes, 0, @brushes, 1, length)
      case (lb_style)
      when OS::BS_SOLID
        # 64
        h_brush = OS._create_solid_brush(RJava.cast_to_int(value))
      when OS::BS_PATTERN
        h_brush = OS._create_pattern_brush(value)
      end
      return @brushes[0] = h_brush
    end
    
    typesig { [] }
    def find_background_control
      return !(self.attr_background).equal?(-1) || !(self.attr_background_image).nil? ? self : nil
    end
    
    typesig { [] }
    def find_cursor
      return self.attr_cursor
    end
    
    typesig { [] }
    def find_theme_control
      return nil
    end
    
    typesig { [::Java::Int] }
    def find_tool_tip(id)
      if ((@tool_tips).nil?)
        return nil
      end
      id = id - Display::ID_START
      return 0 <= id && id < @tool_tips.attr_length ? @tool_tips[id] : nil
    end
    
    typesig { [] }
    def fix_active_shell
      # Feature in Windows.  When the active shell is disposed
      # or hidden, Windows normally makes the parent shell active
      # and assigns focus.  This does not happen when the parent
      # shell is disabled.  Instead, Windows assigns focus to the
      # next shell on the desktop (possibly a shell in another
      # application).  The fix is to activate the disabled parent
      # shell before disposing or hiding the active shell.
      # 
      # long
      hwnd_parent = OS._get_parent(self.attr_handle)
      if (!(hwnd_parent).equal?(0) && (self.attr_handle).equal?(OS._get_active_window))
        if (!OS._is_window_enabled(hwnd_parent) && OS._is_window_visible(hwnd_parent))
          OS._set_active_window(hwnd_parent)
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
    
    typesig { [] }
    def fix_tool_tip
      # Bug in Windows.  On XP, when a tooltip is
      # hidden due to a time out or mouse press,
      # the tooltip remains active although no
      # longer visible and won't show again until
      # another tooltip becomes active.  If there
      # is only one tooltip in the window,  it will
      # never show again.  The fix is to remove the
      # current tooltip and add it again every time
      # the mouse leaves the control.
      if (OS::COMCTL32_MAJOR >= 6)
        if ((@tool_tip_handle).equal?(0))
          return
        end
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        if (!(OS._send_message(@tool_tip_handle, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
          if (!((lpti.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
            OS._send_message(@tool_tip_handle, OS::TTM_DELTOOL, 0, lpti)
            OS._send_message(@tool_tip_handle, OS::TTM_ADDTOOL, 0, lpti)
          end
        end
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
      OS._set_foreground_window(self.attr_handle)
    end
    
    typesig { [] }
    def force_resize
      # Do nothing
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
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        pb_alpha = Array.typed(::Java::Byte).new(1) { 0 }
        if (OS._get_layered_window_attributes(self.attr_handle, nil, pb_alpha, nil))
          return pb_alpha[0] & 0xff
        end
      end
      return 0xff
    end
    
    typesig { [] }
    def get_bounds
      check_widget
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          return super
        end
      end
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
    end
    
    typesig { [] }
    def get_current_tool_tip
      if (!(@tool_tip_handle).equal?(0))
        tip = get_current_tool_tip(@tool_tip_handle)
        if (!(tip).nil?)
          return tip
        end
      end
      if (!(@balloon_tip_handle).equal?(0))
        tip = get_current_tool_tip(@balloon_tip_handle)
        if (!(tip).nil?)
          return tip
        end
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # long
    def get_current_tool_tip(hwnd_tool_tip_)
      if ((hwnd_tool_tip_).equal?(0))
        return nil
      end
      if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETCURRENTTOOL, 0, 0)).equal?(0))
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
          if (((lpti.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
            # 64
            return find_tool_tip(RJava.cast_to_int(lpti.attr_u_id))
          end
        end
      end
      return nil
    end
    
    typesig { [] }
    def get_enabled
      check_widget
      return ((self.attr_state & DISABLED)).equal?(0)
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
      if (!OS::IsDBLocale)
        return 0
      end
      # long
      h_imc = OS._imm_get_context(self.attr_handle)
      lpfdw_conversion = Array.typed(::Java::Int).new(1) { 0 }
      lpfdw_sentence = Array.typed(::Java::Int).new(1) { 0 }
      open = OS._imm_get_open_status(h_imc)
      if (open)
        open = OS._imm_get_conversion_status(h_imc, lpfdw_conversion, lpfdw_sentence)
      end
      OS._imm_release_context(self.attr_handle, h_imc)
      if (!open)
        return SWT::NONE
      end
      result = 0
      if (!((lpfdw_conversion[0] & OS::IME_CMODE_ROMAN)).equal?(0))
        result |= SWT::ROMAN
      end
      if (!((lpfdw_conversion[0] & OS::IME_CMODE_FULLSHAPE)).equal?(0))
        result |= SWT::DBCS
      end
      if (!((lpfdw_conversion[0] & OS::IME_CMODE_KATAKANA)).equal?(0))
        return result | SWT::PHONETIC
      end
      if (!((lpfdw_conversion[0] & OS::IME_CMODE_NATIVE)).equal?(0))
        return result | SWT::NATIVE
      end
      return result | SWT::ALPHA
    end
    
    typesig { [] }
    def get_location
      check_widget
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          return super
        end
      end
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      return Point.new(rect.attr_left, rect.attr_top)
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
      width = Math.max(0, @min_width)
      trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0) && !((self.attr_style & trim)).equal?(0))
        width = Math.max(width, OS._get_system_metrics(OS::SM_CXMINTRACK))
      end
      height = Math.max(0, @min_height)
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0) && !((self.attr_style & trim)).equal?(0))
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          height = Math.max(height, OS._get_system_metrics(OS::SM_CYMINTRACK))
        else
          rect = RECT.new
          bits1 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          bits2 = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
          OS._adjust_window_rect_ex(rect, bits1, false, bits2)
          height = Math.max(height, rect.attr_bottom - rect.attr_top)
        end
      end
      return Point.new(width, height)
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
    def get_size
      check_widget
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          return super
        end
      end
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Point.new(width, height)
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
    def find_deferred_control
      return self.attr_layout_count > 0 ? self : nil
    end
    
    typesig { [] }
    def is_enabled
      check_widget
      return get_enabled
    end
    
    typesig { [] }
    def is_visible
      check_widget
      return get_visible
    end
    
    typesig { [] }
    # long
    def hwnd_mdiclient
      if ((@hwnd_mdiclient).equal?(0))
        widget_style = OS::MDIS_ALLCHILDSTYLES | OS::WS_CHILD | OS::WS_CLIPCHILDREN | OS::WS_CLIPSIBLINGS
        @hwnd_mdiclient = OS._create_window_ex(0, TCHAR.new(0, "MDICLIENT", true), nil, widget_style, 0, 0, 0, 0, self.attr_handle, 0, OS._get_module_handle(nil), CREATESTRUCT.new)
        # OS.ShowWindow (hwndMDIClient, OS.SW_SHOW);
      end
      return @hwnd_mdiclient
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
      lp_start_up_info = Display.attr_lp_startup_info
      if ((lp_start_up_info).nil? || ((lp_start_up_info.attr_dw_flags & OS::STARTF_USESHOWWINDOW)).equal?(0))
        bring_to_top
        if (is_disposed)
          return
        end
      end
      # Feature on WinCE PPC.  A new application becomes
      # the foreground application only if it has at least
      # one visible window before the event loop is started.
      # The workaround is to explicitly force the shell to
      # be the foreground window.
      if (OS::IsWinCE)
        OS._set_foreground_window(self.attr_handle)
      end
      OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
      set_visible(true)
      if (is_disposed)
        return
      end
      # Bug in Windows XP.  Despite the fact that an icon has been
      # set for a window, the task bar displays the wrong icon the
      # first time the window is made visible with ShowWindow() after
      # a call to BringToTop(), when a long time elapses between the
      # ShowWindow() and the time the event queue is read.  The icon
      # in the window trimming is correct but the one in the task
      # bar does not get updated.  The fix is to call PeekMessage()
      # with the flag PM_NOREMOVE and PM_QS_SENDMESSAGE to respond
      # to a cross thread WM_GETICON.
      # 
      # NOTE: This allows other cross thread messages to be delivered,
      # most notably WM_ACTIVATE.
      msg = MSG.new
      flags = OS::PM_NOREMOVE | OS::PM_NOYIELD | OS::PM_QS_SENDMESSAGE
      OS._peek_message(msg, 0, 0, 0, flags)
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
    
    typesig { [] }
    def register
      super
      if (!(@tool_tip_handle).equal?(0))
        self.attr_display.add_control(@tool_tip_handle, self)
      end
      if (!(@balloon_tip_handle).equal?(0))
        self.attr_display.add_control(@balloon_tip_handle, self)
      end
    end
    
    typesig { [] }
    def release_brushes
      if (!(@brushes).nil?)
        i = 0
        while i < @brushes.attr_length
          if (!(@brushes[i]).equal?(0))
            OS._delete_object(@brushes[i])
          end
          i += 1
        end
      end
      @brushes = nil
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
            tool_tip.release(false)
          end
          i_ += 1
        end
      end
      @tool_tips = nil
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      @hwnd_mdiclient = 0
    end
    
    typesig { [] }
    def release_parent
      # Do nothing
    end
    
    typesig { [] }
    def release_widget
      super
      release_brushes
      @active_menu = nil
      self.attr_display.clear_modal(self)
      if (!(@lpstr_tip).equal?(0))
        # long
        h_heap = OS._get_process_heap
        OS._heap_free(h_heap, 0, @lpstr_tip)
      end
      @lpstr_tip = 0
      @tool_tip_handle = @balloon_tip_handle = 0
      if (OS::IsDBLocale)
        if (!(@h_imc).equal?(0))
          OS._imm_destroy_context(@h_imc)
        end
      end
      @last_active = nil
      @tool_title = (@balloon_title = (nil).to_s).to_s
    end
    
    typesig { [Menu] }
    def remove_menu(menu)
      super(menu)
      if ((menu).equal?(@active_menu))
        @active_menu = nil
      end
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
    
    typesig { [::Java::Int] }
    # long
    def select_palette(h_palette)
      # long
      h_dc = OS._get_dc(self.attr_handle)
      # long
      h_old = OS._select_palette(h_dc, h_palette, false)
      result = OS._realize_palette(h_dc)
      if (result > 0)
        OS._invalidate_rect(self.attr_handle, nil, true)
      else
        OS._select_palette(h_dc, h_old, true)
        OS._realize_palette(h_dc)
      end
      OS._release_dc(self.attr_handle, h_dc)
      return (result > 0) ? LRESULT::ONE : LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Event] }
    # long
    # long
    def send_key_event(type, msg, w_param, l_param, event)
      if (!is_enabled || !is_active)
        return false
      end
      return super(type, msg, w_param, l_param, event)
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
      bring_to_top
      # widget could be disposed at this point
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
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        alpha &= 0xff
        bits = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
        if ((alpha).equal?(0xff))
          OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits & ~OS::WS_EX_LAYERED)
          flags = OS::RDW_ERASE | OS::RDW_INVALIDATE | OS::RDW_FRAME | OS::RDW_ALLCHILDREN
          OS._redraw_window(self.attr_handle, nil, 0, flags)
        else
          OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits | OS::WS_EX_LAYERED)
          OS._set_layered_window_attributes(self.attr_handle, 0, alpha, OS::LWA_ALPHA)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_bounds(x, y, width, height, flags, defer)
      if (@full_screen)
        set_full_screen(false)
      end
      # Bug in Windows.  When a window has alpha and
      # SetWindowPos() is called with SWP_DRAWFRAME,
      # the contents of the window are copied rather
      # than allowing the windows underneath to draw.
      # This causes pixel corruption.  The fix is to
      # clear the SWP_DRAWFRAME bits.
      bits = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
      if (!((bits & OS::WS_EX_LAYERED)).equal?(0))
        flags &= ~OS::SWP_DRAWFRAME
      end
      super(x, y, width, height, flags, false)
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      check_widget
      if (((((self.attr_state & DISABLED)).equal?(0))).equal?(enabled))
        return
      end
      super(enabled)
      if (enabled && (self.attr_handle).equal?(OS._get_active_window))
        if (!restore_focus)
          traverse_group(true)
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
      if ((@full_screen).equal?(full_screen))
        return
      end
      state_flags = full_screen ? OS::SW_SHOWMAXIMIZED : OS::SW_RESTORE
      style_flags = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      mask = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
      if (!((self.attr_style & mask)).equal?(0))
        if (full_screen)
          style_flags = style_flags & ~OS::WS_CAPTION
        else
          style_flags = style_flags | OS::WS_CAPTION
        end
      end
      if (full_screen)
        @was_maximized = get_maximized
      end
      visible = is_visible
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, style_flags)
      if (@was_maximized)
        OS._show_window(self.attr_handle, OS::SW_HIDE)
        state_flags = OS::SW_SHOWMAXIMIZED
      end
      if (visible)
        OS._show_window(self.attr_handle, state_flags)
      end
      OS._update_window(self.attr_handle)
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
      if (!OS::IsDBLocale)
        return
      end
      ime_on = !(mode).equal?(SWT::NONE)
      # long
      h_imc = OS._imm_get_context(self.attr_handle)
      OS._imm_set_open_status(h_imc, ime_on)
      if (ime_on)
        lpfdw_conversion = Array.typed(::Java::Int).new(1) { 0 }
        lpfdw_sentence = Array.typed(::Java::Int).new(1) { 0 }
        if (OS._imm_get_conversion_status(h_imc, lpfdw_conversion, lpfdw_sentence))
          new_bits = 0
          old_bits = OS::IME_CMODE_NATIVE | OS::IME_CMODE_KATAKANA
          if (!((mode & SWT::PHONETIC)).equal?(0))
            new_bits = OS::IME_CMODE_KATAKANA | OS::IME_CMODE_NATIVE
            old_bits = 0
          else
            if (!((mode & SWT::NATIVE)).equal?(0))
              new_bits = OS::IME_CMODE_NATIVE
              old_bits = OS::IME_CMODE_KATAKANA
            end
          end
          if (!((mode & (SWT::DBCS | SWT::NATIVE))).equal?(0))
            new_bits |= OS::IME_CMODE_FULLSHAPE
          else
            old_bits |= OS::IME_CMODE_FULLSHAPE
          end
          if (!((mode & SWT::ROMAN)).equal?(0))
            new_bits |= OS::IME_CMODE_ROMAN
          else
            old_bits |= OS::IME_CMODE_ROMAN
          end
          lpfdw_conversion[0] |= new_bits
          lpfdw_conversion[0] &= ~old_bits
          OS._imm_set_conversion_status(h_imc, lpfdw_conversion[0], lpfdw_sentence[0])
        end
      end
      OS._imm_release_context(self.attr_handle, h_imc)
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
      width_limit = 0
      height_limit = 0
      trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
      if (((self.attr_style & SWT::NO_TRIM)).equal?(0) && !((self.attr_style & trim)).equal?(0))
        width_limit = OS._get_system_metrics(OS::SM_CXMINTRACK)
        if (!((self.attr_style & SWT::RESIZE)).equal?(0))
          height_limit = OS._get_system_metrics(OS::SM_CYMINTRACK)
        else
          rect = RECT.new
          bits1 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          bits2 = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
          OS._adjust_window_rect_ex(rect, bits1, false, bits2)
          height_limit = rect.attr_bottom - rect.attr_top
        end
      end
      @min_width = Math.max(width_limit, width)
      @min_height = Math.max(height_limit, height)
      size = get_size
      new_width = Math.max(size.attr_x, @min_width)
      new_height = Math.max(size.attr_y, @min_height)
      if (@min_width <= width_limit)
        @min_width = SWT::DEFAULT
      end
      if (@min_height <= height_limit)
        @min_height = SWT::DEFAULT
      end
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
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_item_enabled(cmd, enabled)
      # long
      h_menu = OS._get_system_menu(self.attr_handle, false)
      if ((h_menu).equal?(0))
        return
      end
      flags = OS::MF_ENABLED
      if (!enabled)
        flags = OS::MF_DISABLED | OS::MF_GRAYED
      end
      OS._enable_menu_item(h_menu, cmd, OS::MF_BYCOMMAND | flags)
    end
    
    typesig { [] }
    def set_parent
      # Do nothing.  Not necessary for Shells
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
    
    typesig { [::Java::Int, String] }
    # long
    def set_tool_tip_text(hwnd, text)
      if (OS::IsWinCE)
        return
      end
      lpti = TOOLINFO.new
      lpti.attr_cb_size = TOOLINFO.attr_sizeof
      lpti.attr_hwnd = self.attr_handle
      lpti.attr_u_id = hwnd
      # long
      hwnd_tool_tip_ = tool_tip_handle
      if ((text).nil?)
        OS._send_message(hwnd_tool_tip_, OS::TTM_DELTOOL, 0, lpti)
      else
        if (!(OS._send_message(hwnd_tool_tip_, OS::TTM_GETTOOLINFO, 0, lpti)).equal?(0))
          OS._send_message(hwnd_tool_tip_, OS::TTM_UPDATE, 0, 0)
        else
          lpti.attr_u_flags = OS::TTF_IDISHWND | OS::TTF_SUBCLASS
          lpti.attr_lpsz_text = OS::LPSTR_TEXTCALLBACK
          OS._send_message(hwnd_tool_tip_, OS::TTM_ADDTOOL, 0, lpti)
        end
      end
    end
    
    typesig { [NMTTDISPINFO, Array.typed(::Java::Byte)] }
    def set_tool_tip_text(lpnmtdi, buffer)
      # Ensure that the current position of the mouse
      # is inside the client area of the shell.  This
      # prevents tool tips from popping up over the
      # shell trimmings.
      if (!has_cursor)
        return
      end
      # long
      h_heap = OS._get_process_heap
      if (!(@lpstr_tip).equal?(0))
        OS._heap_free(h_heap, 0, @lpstr_tip)
      end
      byte_count = buffer.attr_length
      @lpstr_tip = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(@lpstr_tip, buffer, byte_count)
      lpnmtdi.attr_lpsz_text = @lpstr_tip
    end
    
    typesig { [NMTTDISPINFO, Array.typed(::Java::Char)] }
    def set_tool_tip_text(lpnmtdi, buffer)
      # Ensure that the current position of the mouse
      # is inside the client area of the shell.  This
      # prevents tool tips from popping up over the
      # shell trimmings.
      if (!has_cursor)
        return
      end
      # long
      h_heap = OS._get_process_heap
      if (!(@lpstr_tip).equal?(0))
        OS._heap_free(h_heap, 0, @lpstr_tip)
      end
      byte_count = buffer.attr_length * 2
      @lpstr_tip = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(@lpstr_tip, buffer, byte_count)
      lpnmtdi.attr_lpsz_text = @lpstr_tip
    end
    
    typesig { [::Java::Int, String, ::Java::Int] }
    # long
    def set_tool_tip_title(hwnd_tool_tip_, text, icon)
      # Bug in Windows.  For some reason, when TTM_SETTITLE
      # is used to set the title of a tool tip, Windows leaks
      # GDI objects.  This happens even when TTM_SETTITLE is
      # called with TTI_NONE and NULL.  The documentation
      # states that Windows copies the icon and that the
      # programmer must free the copy but does not provide
      # API to get the icon.  For example, when TTM_SETTITLE
      # is called with ICON_ERROR, when TTM_GETTITLE is used
      # to query the title and the icon, the uTitleBitmap
      # field in the TTGETTITLE struct is zero.  The fix
      # is to remember these values, only set them when then
      # change and leak less.
      # 
      # NOTE:  This only happens on Vista.
      if (!(hwnd_tool_tip_).equal?(@tool_tip_handle) && !(hwnd_tool_tip_).equal?(@balloon_tip_handle))
        return
      end
      if ((hwnd_tool_tip_).equal?(@tool_tip_handle))
        if ((text).equal?(@tool_title) || (!(@tool_title).nil? && (@tool_title == text)))
          if ((icon).equal?(@tool_icon))
            return
          end
        end
        @tool_title = text
        @tool_icon = icon
      else
        if ((hwnd_tool_tip_).equal?(@balloon_tip_handle))
          if ((text).equal?(@balloon_title) || (!(@balloon_title).nil? && (@balloon_title == text)))
            if ((icon).equal?(@tool_icon))
              return
            end
          end
          @balloon_title = text
          @balloon_icon = icon
        end
      end
      if (!(text).nil?)
        psz_title = TCHAR.new(get_code_page, text, true)
        OS._send_message(hwnd_tool_tip_, OS::TTM_SETTITLE, icon, psz_title)
      else
        OS._send_message(hwnd_tool_tip_, OS::TTM_SETTITLE, 0, 0)
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      check_widget
      # Feature in Windows.  When ShowWindow() is called used to hide
      # a window, Windows attempts to give focus to the parent. If the
      # parent is disabled by EnableWindow(), focus is assigned to
      # another windows on the desktop.  This means that if you hide
      # a modal window before the parent is enabled, the parent will
      # not come to the front.  The fix is to change the modal state
      # before hiding or showing a window so that this does not occur.
      mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
      if (!((self.attr_style & mask)).equal?(0))
        if (visible)
          self.attr_display.set_modal_shell(self)
          if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
            self.attr_display.set_modal_dialog(nil)
          end
          control = self.attr_display.__get_focus_control
          if (!(control).nil? && !control.is_active)
            bring_to_top
            if (is_disposed)
              return
            end
          end
          # long
          hwnd_shell = OS._get_active_window
          if ((hwnd_shell).equal?(0))
            if (!(self.attr_parent).nil?)
              hwnd_shell = self.attr_parent.attr_handle
            end
          end
          if (!(hwnd_shell).equal?(0))
            OS._send_message(hwnd_shell, OS::WM_CANCELMODE, 0, 0)
          end
          OS._release_capture
        else
          self.attr_display.clear_modal(self)
        end
      else
        update_modal
      end
      # Bug in Windows.  Calling ShowOwnedPopups() to hide the
      # child windows of a hidden window causes the application
      # to be deactivated.  The fix is to call ShowOwnedPopups()
      # to hide children before hiding the parent.
      if (@show_with_parent && !visible)
        if (!OS::IsWinCE)
          OS._show_owned_popups(self.attr_handle, false)
        end
      end
      if (!visible)
        fix_active_shell
      end
      super(visible)
      if (is_disposed)
        return
      end
      if (!(@show_with_parent).equal?(visible))
        @show_with_parent = visible
        if (visible)
          if (!OS::IsWinCE)
            OS._show_owned_popups(self.attr_handle, true)
          end
        end
      end
      # Make the splash screen appear in the task bar
      if (visible)
        if (!(self.attr_parent).nil? && !((self.attr_parent.attr_state & FOREIGN_HANDLE)).equal?(0))
          # long
          hwnd_parent = self.attr_parent.attr_handle
          style = OS._get_window_long(hwnd_parent, OS::GWL_EXSTYLE)
          if (!((style & OS::WS_EX_TOOLWINDOW)).equal?(0))
            OS._set_window_long(hwnd_parent, OS::GWL_EXSTYLE, style & ~OS::WS_EX_TOOLWINDOW)
            # Bug in Windows.  The window does not show in the task bar when
            # WS_EX_TOOLWINDOW is removed after the window has already been shown.
            # The fix is to hide and shown the shell.
            OS._show_window(hwnd_parent, OS::SW_HIDE)
            OS._show_window(hwnd_parent, OS::SW_RESTORE)
          end
        end
      end
    end
    
    typesig { [] }
    def subclass
      super
      if (!(self.attr_tool_tip_proc).equal?(0))
        # long
        new_proc = self.attr_display.attr_window_proc
        if (!(@tool_tip_handle).equal?(0))
          OS._set_window_long_ptr(@tool_tip_handle, OS::GWLP_WNDPROC, new_proc)
        end
        if (!(@balloon_tip_handle).equal?(0))
          OS._set_window_long_ptr(@balloon_tip_handle, OS::GWLP_WNDPROC, new_proc)
        end
      end
    end
    
    typesig { [] }
    # long
    def tool_tip_handle
      if ((@tool_tip_handle).equal?(0))
        create_tool_tip_handle
      end
      return @tool_tip_handle
    end
    
    typesig { [MSG] }
    def translate_accelerator(msg)
      if (!is_enabled || !is_active)
        return false
      end
      if (!(self.attr_menu_bar).nil? && !self.attr_menu_bar.is_enabled)
        return false
      end
      return translate_mdiaccelerator(msg) || translate_menu_accelerator(msg)
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
    def unsubclass
      super
      if (!(self.attr_tool_tip_proc).equal?(0))
        if (!(@tool_tip_handle).equal?(0))
          OS._set_window_long_ptr(@tool_tip_handle, OS::GWLP_WNDPROC, self.attr_tool_tip_proc)
        end
        if (!(@tool_tip_handle).equal?(0))
          OS._set_window_long_ptr(@tool_tip_handle, OS::GWLP_WNDPROC, self.attr_tool_tip_proc)
        end
      end
    end
    
    typesig { [] }
    def update_modal
      if (Display.attr_trim_enabled)
        set_item_enabled(OS::SC_CLOSE, is_active)
      else
        OS._enable_window(self.attr_handle, is_active)
      end
    end
    
    typesig { [] }
    def widget_create_struct
      return nil
    end
    
    typesig { [] }
    # long
    def widget_parent
      if (!(self.attr_handle).equal?(0))
        return self.attr_handle
      end
      return !(self.attr_parent).nil? ? self.attr_parent.attr_handle : 0
    end
    
    typesig { [] }
    def widget_ext_style
      bits = super & ~OS::WS_EX_MDICHILD
      if (!((self.attr_style & SWT::TOOL)).equal?(0))
        bits |= OS::WS_EX_TOOLWINDOW
      end
      # Feature in Windows.  When a window that does not have a parent
      # is created, it is automatically added to the Windows Task Bar,
      # even when it has no title.  The fix is to use WS_EX_TOOLWINDOW
      # which does not cause the window to appear in the Task Bar.
      if (!OS::IsWinCE)
        if ((self.attr_parent).nil?)
          if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
            trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
            if (!((self.attr_style & SWT::NO_TRIM)).equal?(0) || ((self.attr_style & trim)).equal?(0))
              bits |= OS::WS_EX_TOOLWINDOW
            end
          end
        end
      end
      # Bug in Windows 98 and NT.  Creating a window with the
      # WS_EX_TOPMOST extended style can result in a dialog shell
      # being moved behind its parent.  The exact case where this
      # happens is a shell with two dialog shell children where
      # each dialog child has another hidden dialog child with
      # the WS_EX_TOPMOST extended style.  Clicking on either of
      # the visible dialogs causes them to become active but move
      # to the back, behind the parent shell.  The fix is to
      # disallow the WS_EX_TOPMOST extended style on Windows 98
      # and NT.
      if (!(self.attr_parent).nil?)
        if (OS::IsWin95)
          return bits
        end
        if (OS::WIN32_VERSION < OS._version(4, 10))
          return bits
        end
      end
      if (!((self.attr_style & SWT::ON_TOP)).equal?(0))
        bits |= OS::WS_EX_TOPMOST
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      if (OS::IsSP)
        return DialogClass
      end
      if (!((self.attr_style & SWT::TOOL)).equal?(0))
        trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX | SWT::BORDER | SWT::RESIZE
        if (((self.attr_style & trim)).equal?(0))
          return self.attr_display.attr_window_shadow_class
        end
      end
      return !(self.attr_parent).nil? ? DialogClass : super
    end
    
    typesig { [] }
    # long
    def window_proc
      if (!(@window_proc).equal?(0))
        return @window_proc
      end
      if (OS::IsSP)
        return DialogProc
      end
      if (!((self.attr_style & SWT::TOOL)).equal?(0))
        trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX | SWT::BORDER | SWT::RESIZE
        if (((self.attr_style & trim)).equal?(0))
          return super
        end
      end
      return !(self.attr_parent).nil? ? DialogProc : super
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if ((hwnd).equal?(@tool_tip_handle) || (hwnd).equal?(@balloon_tip_handle))
        catch(:break_case) do
          case (msg)
          when OS::WM_TIMER
            if (!(w_param).equal?(ToolTip::TIMER_ID))
              throw :break_case, :thrown
            end
            tip = get_current_tool_tip(hwnd)
            if (!(tip).nil? && tip.attr_auto_hide)
              tip.set_visible(false)
            end
          when OS::WM_LBUTTONDOWN
            tip = get_current_tool_tip(hwnd)
            if (!(tip).nil?)
              tip.set_visible(false)
              tip.post_event(SWT::Selection)
            end
          end
        end
        return call_window_proc(hwnd, msg, w_param, l_param)
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [] }
    def widget_style
      bits = super
      if (!(self.attr_handle).equal?(0))
        return bits | OS::WS_CHILD
      end
      bits &= ~OS::WS_CHILD
      # Feature in WinCE.  Calling CreateWindowEx () with WS_OVERLAPPED
      # and a parent window causes the new window to become a WS_CHILD of
      # the parent instead of a dialog child.  The fix is to use WS_POPUP
      # for a window with a parent.
      # 
      # Feature in WinCE PPC.  A window without a parent with WS_POPUP
      # always shows on top of the Pocket PC 'Today Screen'. The fix
      # is to not set WS_POPUP for a window without a parent on WinCE
      # devices.
      # 
      # NOTE: WS_POPUP causes CreateWindowEx () to ignore CW_USEDEFAULT
      # and causes the default window location and size to be zero.
      if (OS::IsWinCE)
        if (OS::IsSP)
          return bits | OS::WS_POPUP
        end
        return (self.attr_parent).nil? ? bits : bits | OS::WS_POPUP
      end
      # Use WS_OVERLAPPED for all windows, either dialog or top level
      # so that CreateWindowEx () will respect CW_USEDEFAULT and set
      # the default window location and size.
      # 
      # NOTE:  When a WS_OVERLAPPED window is created, Windows gives
      # the new window WS_CAPTION style bits.  These two constants are
      # as follows:
      # 
      # WS_OVERLAPPED = 0
      # WS_CAPTION = WS_BORDER | WS_DLGFRAME
      return bits | OS::WS_OVERLAPPED | OS::WS_CAPTION
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_activate(w_param, l_param)
      if (OS::IsPPC)
        # Note: this does not work when we get WM_ACTIVATE prior
        # to adding a listener.
        if (hooks(SWT::HardKeyDown) || hooks(SWT::HardKeyUp))
          f_active = OS._loword(w_param)
          # long
          hwnd = !(f_active).equal?(0) ? self.attr_handle : 0
          b_vk = OS::VK_APP1
          while b_vk <= OS::VK_APP6
            OS._shset_app_key_wnd_assoc(b_vk, hwnd)
            b_vk += 1
          end
        end
        # Restore SIP state when window is activated
        if (!(OS._loword(w_param)).equal?(0))
          OS._shsip_preference(self.attr_handle, (@psai.attr_f_sip_up).equal?(0) ? OS::SIP_DOWN : OS::SIP_UP)
        end
      end
      # Bug in Windows XP.  When a Shell is deactivated, the
      # IME composition window does not go away. This causes
      # repaint issues.  The fix is to commit the composition
      # string.
      if (OS::WIN32_VERSION >= OS._version(5, 1))
        if ((OS._loword(w_param)).equal?(0) && OS::IsDBLocale && !(@h_imc).equal?(0))
          if (OS._imm_get_open_status(@h_imc))
            OS._imm_notify_ime(@h_imc, OS::NI_COMPOSITIONSTR, OS::CPS_COMPLETE, 0)
          end
        end
      end
      # Process WM_ACTIVATE
      result = super(w_param, l_param)
      if ((OS._loword(w_param)).equal?(0))
        if ((l_param).equal?(0) || (!(l_param).equal?(@tool_tip_handle) && !(l_param).equal?(@balloon_tip_handle)))
          tip = get_current_tool_tip
          if (!(tip).nil?)
            tip.set_visible(false)
          end
        end
      end
      return !(self.attr_parent).nil? ? LRESULT::ZERO : result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_command(w_param, l_param)
      if (OS::IsPPC)
        # Note in WinCE PPC:  Close the Shell when the "Done Button" has
        # been pressed. lParam is either 0 (PocketPC 2002) or the handle
        # to the Shell (PocketPC).
        lo_word = OS._loword(w_param)
        if ((lo_word).equal?(OS::IDOK) && ((l_param).equal?(0) || (l_param).equal?(self.attr_handle)))
          OS._post_message(self.attr_handle, OS::WM_CLOSE, 0, 0)
          return LRESULT::ZERO
        end
      end
      # Feature in Windows.  On PPC, the menu is not actually an HMENU.
      # By observation, it is a tool bar that is configured to look like
      # a menu.  Therefore, when the PPC menu sends WM_COMMAND messages,
      # lParam is not zero because the WM_COMMAND was not sent from a menu.
      # Sub menu item events originate from the menu bar.  Top menu items
      # events originate from a tool bar.  The fix is to detect the source
      # of the WM_COMMAND and set lParam to zero to pretend that the message
      # came from a real Windows menu, not a tool bar.
      if (OS::IsPPC || OS::IsSP)
        if (!(self.attr_menu_bar).nil?)
          # long
          hwnd_cb = self.attr_menu_bar.attr_hwnd_cb
          if (!(l_param).equal?(0) && !(hwnd_cb).equal?(0))
            if ((l_param).equal?(hwnd_cb))
              return super(w_param, 0)
            else
              # long
              hwnd_child = OS._get_window(hwnd_cb, OS::GW_CHILD)
              if ((l_param).equal?(hwnd_child))
                return super(w_param, 0)
              end
            end
          end
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_destroy(w_param, l_param)
      result = super(w_param, l_param)
      # When the shell is a WS_CHILD window of a non-SWT
      # window, the destroy code does not get called because
      # the non-SWT window does not call dispose ().  Instead,
      # the destroy code is called here in WM_DESTROY.
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::WS_CHILD)).equal?(0))
        release_parent
        release(false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  When a shell is resized by dragging
      # the resize handles, Windows temporarily fills in black
      # rectangles where the new contents of the shell should
      # draw.  The fix is to always draw the background of shells.
      # 
      # NOTE: This only happens on Vista.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        draw_background(w_param)
        return LRESULT::ONE
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_enteridle(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (self.attr_display.attr_run_messages)
        if (self.attr_display.run_async_messages(false))
          self.attr_display.wake_thread
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getminmaxinfo(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!(@min_width).equal?(SWT::DEFAULT) || !(@min_height).equal?(SWT::DEFAULT))
        info = MINMAXINFO.new
        OS._move_memory(info, l_param, MINMAXINFO.attr_sizeof)
        if (!(@min_width).equal?(SWT::DEFAULT))
          info.attr_pt_min_track_size_x = @min_width
        end
        if (!(@min_height).equal?(SWT::DEFAULT))
          info.attr_pt_min_track_size_y = @min_height
        end
        OS._move_memory(l_param, info, MINMAXINFO.attr_sizeof)
        return LRESULT::ZERO
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mouseactivate(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Check for WM_MOUSEACTIVATE when an MDI shell is active
      # and stop the normal shell activation but allow the mouse
      # down to be delivered.
      hittest = RJava.cast_to_short(OS._loword(l_param))
      case (hittest)
      when OS::HTERROR, OS::HTTRANSPARENT, OS::HTNOWHERE
      else
        control = self.attr_display.__get_focus_control
        if (!(control).nil?)
          decorations = control.menu_shell
          if ((decorations.get_shell).equal?(self) && !(decorations).equal?(self))
            self.attr_display.attr_ignore_restore_focus = true
            self.attr_display.attr_last_hittest = hittest
            self.attr_display.attr_last_hittest_control = nil
            if ((hittest).equal?(OS::HTMENU) || (hittest).equal?(OS::HTSYSMENU))
              self.attr_display.attr_last_hittest_control = control
              return nil
            end
            if (OS::IsWin95 && (hittest).equal?(OS::HTCAPTION))
              self.attr_display.attr_last_hittest_control = control
            end
            return LRESULT.new(OS::MA_NOACTIVATE)
          end
        end
      end
      if ((hittest).equal?(OS::HTMENU))
        return nil
      end
      # Get the current location of the cursor,
      # not the location of the cursor when the
      # WM_MOUSEACTIVATE was generated.  This is
      # strictly incorrect but is necessary in
      # order to support Activate and Deactivate
      # events for embedded widgets that have
      # their own event loop.  In that case, the
      # cursor location reported by GetMessagePos()
      # is the one for our event loop, not the
      # embedded widget's event loop.
      pt = POINT.new
      if (!OS._get_cursor_pos(pt))
        pos = OS._get_message_pos
        OS._pointstopoint(pt, pos)
      end
      # long
      hwnd = OS._window_from_point(pt)
      if ((hwnd).equal?(0))
        return nil
      end
      control = self.attr_display.find_control(hwnd)
      # When a shell is created with SWT.ON_TOP and SWT.NO_FOCUS,
      # do not activate the shell when the user clicks on the
      # the client area or on the border or a control within the
      # shell that does not take focus.
      if (!(control).nil? && !((control.attr_state & CANVAS)).equal?(0))
        if (!((control.attr_style & SWT::NO_FOCUS)).equal?(0))
          bits = SWT::ON_TOP | SWT::NO_FOCUS
          if (((self.attr_style & bits)).equal?(bits))
            if ((hittest).equal?(OS::HTBORDER) || (hittest).equal?(OS::HTCLIENT))
              return LRESULT.new(OS::MA_NOACTIVATE)
            end
          end
        end
      end
      # long
      code = call_window_proc(self.attr_handle, OS::WM_MOUSEACTIVATE, w_param, l_param)
      set_active_control(control)
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_move(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      tip = get_current_tool_tip
      if (!(tip).nil?)
        tip.set_visible(false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nchittest(w_param, l_param)
      if (!OS._is_window_enabled(self.attr_handle))
        return nil
      end
      if (!is_enabled || !is_active)
        if (!Display.attr_trim_enabled)
          return LRESULT.new(OS::HTNOWHERE)
        end
        # long
        hittest = call_window_proc(self.attr_handle, OS::WM_NCHITTEST, w_param, l_param)
        if ((hittest).equal?(OS::HTCLIENT) || (hittest).equal?(OS::HTMENU))
          hittest = OS::HTBORDER
        end
        return LRESULT.new(hittest)
      end
      if (!(self.attr_menu_bar).nil? && !self.attr_menu_bar.get_enabled)
        # long
        hittest = call_window_proc(self.attr_handle, OS::WM_NCHITTEST, w_param, l_param)
        if ((hittest).equal?(OS::HTMENU))
          hittest = OS::HTBORDER
        end
        return LRESULT.new(hittest)
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nclbuttondown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # When the normal activation was interrupted in WM_MOUSEACTIVATE
      # because the active shell was an MDI shell, set the active window
      # to the top level shell but lock the active window and stop focus
      # changes.  This allows the user to interact the top level shell
      # in the normal manner.
      if (!self.attr_display.attr_ignore_restore_focus)
        return result
      end
      display = self.attr_display
      # long
      hwnd_active = 0
      fix_active = OS::IsWin95 && (display.attr_last_hittest).equal?(OS::HTCAPTION)
      if (fix_active)
        hwnd_active = OS._set_active_window(self.attr_handle)
      end
      display.attr_lock_active_window = true
      # long
      code = call_window_proc(self.attr_handle, OS::WM_NCLBUTTONDOWN, w_param, l_param)
      display.attr_lock_active_window = false
      if (fix_active)
        OS._set_active_window(hwnd_active)
      end
      focus_control = display.attr_last_hittest_control
      if (!(focus_control).nil? && !focus_control.is_disposed)
        focus_control.set_focus
      end
      display.attr_last_hittest_control = nil
      display.attr_ignore_restore_focus = false
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_palettechanged(w_param, l_param)
      if (!(w_param).equal?(self.attr_handle))
        # long
        h_palette = self.attr_display.attr_h_palette
        if (!(h_palette).equal?(0))
          return select_palette(h_palette)
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_querynewpalette(w_param, l_param)
      # long
      h_palette = self.attr_display.attr_h_palette
      if (!(h_palette).equal?(0))
        return select_palette(h_palette)
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setcursor(w_param, l_param)
      # Feature in Windows.  When the shell is disabled
      # by a Windows standard dialog (like a MessageBox
      # or FileDialog), clicking in the shell does not
      # bring the shell or the dialog to the front. The
      # fix is to detect this case and bring the shell
      # forward.
      msg = OS._hiword(l_param)
      if ((msg).equal?(OS::WM_LBUTTONDOWN))
        if (!Display.attr_trim_enabled)
          modal_shell = self.attr_display.get_modal_shell
          if (!(modal_shell).nil? && !is_active)
            # long
            hwnd_modal = modal_shell.attr_handle
            if (OS._is_window_enabled(hwnd_modal))
              OS._set_active_window(hwnd_modal)
            end
          end
        end
        if (!OS._is_window_enabled(self.attr_handle))
          if (!OS::IsWinCE)
            # long
            hwnd_popup = OS._get_last_active_popup(self.attr_handle)
            if (!(hwnd_popup).equal?(0) && !(hwnd_popup).equal?(self.attr_handle))
              if ((self.attr_display.get_control(hwnd_popup)).nil?)
                if (OS._is_window_enabled(hwnd_popup))
                  OS._set_active_window(hwnd_popup)
                end
              end
            end
          end
        end
      end
      # When the shell that contains a cursor is disabled,
      # WM_SETCURSOR is called with HTERROR.  Normally,
      # when a control is disabled, the parent will get
      # mouse and cursor events.  In the case of a disabled
      # shell, there is no enabled parent.  In order to
      # show the cursor when a shell is disabled, it is
      # necessary to override WM_SETCURSOR when called
      # with HTERROR to set the cursor but only when the
      # mouse is in the client area of the shell.
      hit_test = RJava.cast_to_short(OS._loword(l_param))
      if ((hit_test).equal?(OS::HTERROR))
        if (!get_enabled)
          control = self.attr_display.get_control(w_param)
          if ((control).equal?(self) && !(self.attr_cursor).nil?)
            pt = POINT.new
            pos = OS._get_message_pos
            OS._pointstopoint(pt, pos)
            OS._screen_to_client(self.attr_handle, pt)
            rect = RECT.new
            OS._get_client_rect(self.attr_handle, rect)
            if (OS._pt_in_rect(rect, pt))
              OS._set_cursor(self.attr_cursor.attr_handle)
              case (msg)
              when OS::WM_LBUTTONDOWN, OS::WM_RBUTTONDOWN, OS::WM_MBUTTONDOWN, OS::WM_XBUTTONDOWN
                OS._message_beep(OS::MB_OK)
              end
              return LRESULT::ONE
            end
          end
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_settingchange(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (OS::IsPPC)
        if ((w_param).equal?(OS::SPI_SETSIPINFO))
          # The SIP is in a new state.  Cache its new value.
          # Resize the Shell if it has the style SWT.RESIZE.
          # Note that SHHandleWMSettingChange resizes the
          # Shell and also updates the cached state.
          if (!((self.attr_style & SWT::RESIZE)).equal?(0))
            OS._shhandle_wmsetting_change(self.attr_handle, w_param, l_param, @psai)
            return LRESULT::ZERO
          else
            p_sip_info = SIPINFO.new
            p_sip_info.attr_cb_size = SIPINFO.attr_sizeof
            OS._sip_get_info(p_sip_info)
            @psai.attr_f_sip_up = p_sip_info.attr_fdw_flags & OS::SIPF_ON
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_showwindow(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  If the shell is hidden while the parent
      # is iconic,  Windows shows the shell when the parent is
      # deiconified.  This does not happen if the shell is hidden
      # while the parent is not an icon.  The fix is to track
      # visible state for the shell and refuse to show the shell
      # when the parent is shown.
      if ((l_param).equal?(OS::SW_PARENTOPENING))
        control = self
        while (!(control).nil?)
          shell = control.get_shell
          if (!shell.attr_show_with_parent)
            return LRESULT::ZERO
          end
          control = control.attr_parent
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscommand(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  When the last visible window in
      # a process minimized, Windows swaps out the memory for
      # the process.  The assumption is that the user can no
      # longer interact with the window, so the memory can be
      # released to other applications.  However, for programs
      # that use a lot of memory, swapping the memory back in
      # can take a long time, sometimes minutes.  The fix is
      # to intercept WM_SYSCOMMAND looking for SC_MINIMIZE
      # and use ShowWindow() with SW_SHOWMINIMIZED to minimize
      # the window, rather than running the default window proc.
      # 
      # NOTE:  The default window proc activates the next
      # top-level window in the Z-order while ShowWindow()
      # with SW_SHOWMINIMIZED does not.  There is no fix for
      # this at this time.
      if (OS::IsWinNT)
        # 64
        cmd = RJava.cast_to_int(w_param) & 0xfff0
        case (cmd)
        when OS::SC_MINIMIZE
          memory = Runtime.get_runtime.total_memory
          if (memory >= 32 * 1024 * 1024)
            OS._show_window(self.attr_handle, OS::SW_SHOWMINIMIZED)
            return LRESULT::ZERO
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_windowposchanging(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      lpwp = WINDOWPOS.new
      OS._move_memory(lpwp, l_param, WINDOWPOS.attr_sizeof)
      if (((lpwp.attr_flags & OS::SWP_NOSIZE)).equal?(0))
        lpwp.attr_cx = Math.max(lpwp.attr_cx, @min_width)
        trim = SWT::TITLE | SWT::CLOSE | SWT::MIN | SWT::MAX
        if (((self.attr_style & SWT::NO_TRIM)).equal?(0) && !((self.attr_style & trim)).equal?(0))
          lpwp.attr_cx = Math.max(lpwp.attr_cx, OS._get_system_metrics(OS::SM_CXMINTRACK))
        end
        lpwp.attr_cy = Math.max(lpwp.attr_cy, @min_height)
        if (((self.attr_style & SWT::NO_TRIM)).equal?(0) && !((self.attr_style & trim)).equal?(0))
          if (!((self.attr_style & SWT::RESIZE)).equal?(0))
            lpwp.attr_cy = Math.max(lpwp.attr_cy, OS._get_system_metrics(OS::SM_CYMINTRACK))
          else
            rect = RECT.new
            bits1 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
            bits2 = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
            OS._adjust_window_rect_ex(rect, bits1, false, bits2)
            lpwp.attr_cy = Math.max(lpwp.attr_cy, rect.attr_bottom - rect.attr_top)
          end
        end
        OS._move_memory(l_param, lpwp, WINDOWPOS.attr_sizeof)
      end
      return result
    end
    
    private
    alias_method :initialize__shell, :initialize
  end
  
end
