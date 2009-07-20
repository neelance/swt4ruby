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
  module DecorationsImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide the appearance and
  # behavior of <code>Shells</code>, but are not top
  # level shells or dialogs. Class <code>Shell</code>
  # shares a significant amount of code with this class,
  # and is a subclass.
  # <p>
  # IMPORTANT: This class was intended to be abstract and
  # should <em>never</em> be referenced or instantiated.
  # Instead, the class <code>Shell</code> should be used.
  # </p>
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
  # </p>
  # Note: The styles supported by this class must be treated
  # as <em>HINT</em>s, since the window manager for the
  # desktop on which the instance is visible has ultimate
  # control over the appearance and behavior of decorations.
  # For example, some window managers only support resizable
  # windows and will always assume the RESIZE style, even if
  # it is not set.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BORDER, CLOSE, MIN, MAX, NO_TRIM, RESIZE, TITLE, ON_TOP, TOOL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
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
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see #getMinimized
  # @see #getMaximized
  # @see Shell
  # @see SWT
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Decorations < DecorationsImports.const_get :Canvas
    include_class_members DecorationsImports
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :small_image
    alias_method :attr_small_image, :small_image
    undef_method :small_image
    alias_method :attr_small_image=, :small_image=
    undef_method :small_image=
    
    attr_accessor :large_image
    alias_method :attr_large_image, :large_image
    undef_method :large_image
    alias_method :attr_large_image=, :large_image=
    undef_method :large_image=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
    attr_accessor :menu_bar
    alias_method :attr_menu_bar, :menu_bar
    undef_method :menu_bar
    alias_method :attr_menu_bar=, :menu_bar=
    undef_method :menu_bar=
    
    attr_accessor :menus
    alias_method :attr_menus, :menus
    undef_method :menus
    alias_method :attr_menus=, :menus=
    undef_method :menus=
    
    attr_accessor :saved_focus
    alias_method :attr_saved_focus, :saved_focus
    undef_method :saved_focus
    alias_method :attr_saved_focus=, :saved_focus=
    undef_method :saved_focus=
    
    attr_accessor :default_button
    alias_method :attr_default_button, :default_button
    undef_method :default_button
    alias_method :attr_default_button=, :default_button=
    undef_method :default_button=
    
    attr_accessor :save_default
    alias_method :attr_save_default, :save_default
    undef_method :save_default
    alias_method :attr_save_default=, :save_default=
    undef_method :save_default=
    
    attr_accessor :sw_flags
    alias_method :attr_sw_flags, :sw_flags
    undef_method :sw_flags
    alias_method :attr_sw_flags=, :sw_flags=
    undef_method :sw_flags=
    
    attr_accessor :n_accel
    alias_method :attr_n_accel, :n_accel
    undef_method :n_accel
    alias_method :attr_n_accel=, :n_accel=
    undef_method :n_accel=
    
    # long
    attr_accessor :h_accel
    alias_method :attr_h_accel, :h_accel
    undef_method :h_accel
    alias_method :attr_h_accel=, :h_accel=
    undef_method :h_accel=
    
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
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @image = nil
      @small_image = nil
      @large_image = nil
      @images = nil
      @menu_bar = nil
      @menus = nil
      @saved_focus = nil
      @default_button = nil
      @save_default = nil
      @sw_flags = 0
      @n_accel = 0
      @h_accel = 0
      @moved = false
      @resized = false
      @opened = false
      @old_x = 0
      @old_y = 0
      @old_width = 0
      @old_height = 0
      super()
      @old_x = OS::CW_USEDEFAULT
      @old_y = OS::CW_USEDEFAULT
      @old_width = OS::CW_USEDEFAULT
      @old_height = OS::CW_USEDEFAULT
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @image = nil
      @small_image = nil
      @large_image = nil
      @images = nil
      @menu_bar = nil
      @menus = nil
      @saved_focus = nil
      @default_button = nil
      @save_default = nil
      @sw_flags = 0
      @n_accel = 0
      @h_accel = 0
      @moved = false
      @resized = false
      @opened = false
      @old_x = 0
      @old_y = 0
      @old_width = 0
      @old_height = 0
      super(parent, check_style(style))
      @old_x = OS::CW_USEDEFAULT
      @old_y = OS::CW_USEDEFAULT
      @old_width = OS::CW_USEDEFAULT
      @old_height = OS::CW_USEDEFAULT
    end
    
    typesig { [::Java::Boolean] }
    def __set_maximized(maximized)
      @sw_flags = maximized ? OS::SW_SHOWMAXIMIZED : OS::SW_RESTORE
      if (OS::IsWinCE)
        # Note: WinCE does not support SW_SHOWMAXIMIZED and SW_RESTORE. The
        # workaround is to resize the window to fit the parent client area.
        if (maximized)
          rect = RECT.new
          OS._system_parameters_info(OS::SPI_GETWORKAREA, 0, rect, 0)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
          if (OS::IsPPC)
            # Leave space for the menu bar
            if (!(@menu_bar).nil?)
              # long
              hwnd_cb = @menu_bar.attr_hwnd_cb
              rect_cb = RECT.new
              OS._get_window_rect(hwnd_cb, rect_cb)
              height -= rect_cb.attr_bottom - rect_cb.attr_top
            end
          end
          flags = OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE
          _set_window_pos(self.attr_handle, 0, rect.attr_left, rect.attr_top, width, height, flags)
        end
      else
        if (!OS._is_window_visible(self.attr_handle))
          return
        end
        if ((maximized).equal?(OS._is_zoomed(self.attr_handle)))
          return
        end
        OS._show_window(self.attr_handle, @sw_flags)
        OS._update_window(self.attr_handle)
      end
    end
    
    typesig { [::Java::Boolean] }
    def __set_minimized(minimized)
      if (OS::IsWinCE)
        return
      end
      @sw_flags = minimized ? OS::SW_SHOWMINNOACTIVE : OS::SW_RESTORE
      if (!OS._is_window_visible(self.attr_handle))
        return
      end
      if ((minimized).equal?(OS._is_iconic(self.attr_handle)))
        return
      end
      flags = @sw_flags
      if ((flags).equal?(OS::SW_SHOWMINNOACTIVE) && (self.attr_handle).equal?(OS._get_active_window))
        flags = OS::SW_MINIMIZE
      end
      OS._show_window(self.attr_handle, flags)
      OS._update_window(self.attr_handle)
    end
    
    typesig { [Menu] }
    def add_menu(menu)
      if ((@menus).nil?)
        @menus = Array.typed(Menu).new(4) { nil }
      end
      i = 0
      while i < @menus.attr_length
        if ((@menus[i]).nil?)
          @menus[i] = menu
          return
        end
        i += 1
      end
      new_menus = Array.typed(Menu).new(@menus.attr_length + 4) { nil }
      new_menus[@menus.attr_length] = menu
      System.arraycopy(@menus, 0, new_menus, 0, @menus.attr_length)
      @menus = new_menus
    end
    
    typesig { [] }
    def bring_to_top
      # This code is intentionally commented.  On some platforms,
      # the ON_TOP style creates a shell that will stay on top
      # of every other shell on the desktop.  Using SetWindowPos ()
      # with HWND_TOP caused problems on Windows 98 so this code is
      # commented out until this functionality is specified and
      # the problems are fixed.
      # 
      # if ((style & SWT.ON_TOP) != 0) {
      # int flags = OS.SWP_NOSIZE | OS.SWP_NOMOVE | OS.SWP_NOACTIVATE;
      # OS.SetWindowPos (handle, OS.HWND_TOP, 0, 0, 0, 0, flags);
      # } else {
      OS._bring_window_to_top(self.attr_handle)
      # widget could be disposed at this point
      # }
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::NO_TRIM)).equal?(0))
          style &= ~(SWT::CLOSE | SWT::TITLE | SWT::MIN | SWT::MAX | SWT::RESIZE | SWT::BORDER)
        end
        if (OS::IsWinCE)
          # Feature in WinCE PPC.  WS_MINIMIZEBOX or WS_MAXIMIZEBOX
          # are not supposed to be used.  If they are, the result
          # is a button which does not repaint correctly.  The fix
          # is to remove this style.
          if (!((style & SWT::MIN)).equal?(0))
            style &= ~SWT::MIN
          end
          if (!((style & SWT::MAX)).equal?(0))
            style &= ~SWT::MAX
          end
          return style
        end
        if (!((style & (SWT::MENU | SWT::MIN | SWT::MAX | SWT::CLOSE))).equal?(0))
          style |= SWT::TITLE
        end
        # If either WS_MINIMIZEBOX or WS_MAXIMIZEBOX are set,
        # we must also set WS_SYSMENU or the buttons will not
        # appear.
        if (!((style & (SWT::MIN | SWT::MAX))).equal?(0))
          style |= SWT::CLOSE
        end
        # Both WS_SYSMENU and WS_CAPTION must be set in order
        # to for the system menu to appear.
        if (!((style & SWT::CLOSE)).equal?(0))
          style |= SWT::TITLE
        end
        # Bug in Windows.  The WS_CAPTION style must be
        # set when the window is resizable or it does not
        # draw properly.
        # 
        # 
        # This code is intentionally commented.  It seems
        # that this problem originally in Windows 3.11,
        # has been fixed in later versions.  Because the
        # exact nature of the drawing problem is unknown,
        # keep the commented code around in case it comes
        # back.
        # 
        # if ((style & SWT.RESIZE) != 0) style |= SWT.TITLE;
        return style
      end
    }
    
    typesig { [] }
    def check_border
      # Do nothing
    end
    
    typesig { [Composite] }
    def check_composited(parent)
      # Do nothing
    end
    
    typesig { [] }
    def check_opened
      if (!@opened)
        @resized = false
      end
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
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
      return OS._def_mdichild_proc(hwnd, msg, w_param, l_param)
    end
    
    typesig { [] }
    def close_widget
      event = Event.new
      send_event(SWT::Close, event)
      if (event.attr_doit && !is_disposed)
        dispose
      end
    end
    
    typesig { [ImageData, ImageData, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compare(data1, data2, width, height, depth)
      value1 = Math.abs(data1.attr_width - width)
      value2 = Math.abs(data2.attr_width - width)
      if ((value1).equal?(value2))
        transparent1 = data1.get_transparency_type
        transparent2 = data2.get_transparency_type
        if ((transparent1).equal?(transparent2))
          if ((data1.attr_depth).equal?(data2.attr_depth))
            return 0
          end
          return data1.attr_depth > data2.attr_depth && data1.attr_depth <= depth ? -1 : 1
        end
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
          if ((transparent1).equal?(SWT::TRANSPARENCY_ALPHA))
            return -1
          end
          if ((transparent2).equal?(SWT::TRANSPARENCY_ALPHA))
            return 1
          end
        end
        if ((transparent1).equal?(SWT::TRANSPARENCY_MASK))
          return -1
        end
        if ((transparent2).equal?(SWT::TRANSPARENCY_MASK))
          return 1
        end
        if ((transparent1).equal?(SWT::TRANSPARENCY_PIXEL))
          return -1
        end
        if ((transparent2).equal?(SWT::TRANSPARENCY_PIXEL))
          return 1
        end
        return 0
      end
      return value1 < value2 ? -1 : 1
    end
    
    typesig { [] }
    def compute_tab_group
      return self
    end
    
    typesig { [] }
    def compute_tab_root
      return self
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      # Get the size of the trimmings
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      bits1 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      bits2 = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
      has_menu = OS::IsWinCE ? false : !(OS._get_menu(self.attr_handle)).equal?(0)
      OS._adjust_window_rect_ex(rect, bits1, has_menu, bits2)
      # Get the size of the scroll bars
      if (!(self.attr_horizontal_bar).nil?)
        rect.attr_bottom += OS._get_system_metrics(OS::SM_CYHSCROLL)
      end
      if (!(self.attr_vertical_bar).nil?)
        rect.attr_right += OS._get_system_metrics(OS::SM_CXVSCROLL)
      end
      # Compute the height of the menu bar
      if (has_menu)
        test_rect = RECT.new
        OS._set_rect(test_rect, 0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
        OS._send_message(self.attr_handle, OS::WM_NCCALCSIZE, 0, test_rect)
        while ((test_rect.attr_bottom - test_rect.attr_top) < height)
          if ((test_rect.attr_bottom - test_rect.attr_top).equal?(0))
            break
          end
          rect.attr_top -= OS._get_system_metrics(OS::SM_CYMENU) - OS._get_system_metrics(OS::SM_CYBORDER)
          OS._set_rect(test_rect, 0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
          OS._send_message(self.attr_handle, OS::WM_NCCALCSIZE, 0, test_rect)
        end
      end
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
    end
    
    typesig { [] }
    def create_accelerators
      @h_accel = @n_accel = 0
      max_accel = 0
      items = self.attr_display.attr_items
      if ((@menu_bar).nil? || (items).nil?)
        if (!OS::IsPPC)
          return
        end
        max_accel = 1
      else
        max_accel = OS::IsPPC ? items.attr_length + 1 : items.attr_length
      end
      accel = ACCEL.new
      buffer1 = Array.typed(::Java::Byte).new(ACCEL.attr_sizeof) { 0 }
      buffer2 = Array.typed(::Java::Byte).new(max_accel * ACCEL.attr_sizeof) { 0 }
      if (!(@menu_bar).nil? && !(items).nil?)
        i = 0
        while i < items.attr_length
          item = items[i]
          if (!(item).nil? && !(item.attr_accelerator).equal?(0))
            menu = item.attr_parent
            if ((menu.attr_parent).equal?(self))
              while (!(menu).nil? && !(menu).equal?(@menu_bar))
                menu = menu.get_parent_menu
              end
              if ((menu).equal?(@menu_bar) && item.fill_accel(accel))
                OS._move_memory(buffer1, accel, ACCEL.attr_sizeof)
                System.arraycopy(buffer1, 0, buffer2, @n_accel * ACCEL.attr_sizeof, ACCEL.attr_sizeof)
                @n_accel += 1
              end
            end
          end
          i += 1
        end
      end
      if (OS::IsPPC)
        # Note on WinCE PPC.  Close the shell when user taps CTRL-Q.
        # IDOK represents the "Done Button" which also closes the shell.
        accel.attr_f_virt = (OS::FVIRTKEY | OS::FCONTROL)
        accel.attr_key = RJava.cast_to_short(Character.new(?Q.ord))
        accel.attr_cmd = RJava.cast_to_short(OS::IDOK)
        OS._move_memory(buffer1, accel, ACCEL.attr_sizeof)
        System.arraycopy(buffer1, 0, buffer2, @n_accel * ACCEL.attr_sizeof, ACCEL.attr_sizeof)
        @n_accel += 1
      end
      if (!(@n_accel).equal?(0))
        @h_accel = OS._create_accelerator_table(buffer2, @n_accel)
      end
    end
    
    typesig { [] }
    def create_handle
      super
      if (!(self.attr_parent).nil? || (!((self.attr_style & SWT::TOOL)).equal?(0)))
        set_parent
        set_system_menu
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @sw_flags = OS::IsWinCE ? OS::SW_SHOWMAXIMIZED : OS::SW_SHOWNOACTIVATE
      @h_accel = -1
    end
    
    typesig { [] }
    def destroy_accelerators
      if (!(@h_accel).equal?(0) && !(@h_accel).equal?(-1))
        OS._destroy_accelerator_table(@h_accel)
      end
      @h_accel = -1
    end
    
    typesig { [] }
    def dispose
      if (is_disposed)
        return
      end
      if (!is_valid_thread)
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (!(self.is_a?(Shell)))
        if (!traverse_decorations(true))
          shell = get_shell
          shell.set_focus
        end
        set_visible(false)
      end
      super
    end
    
    typesig { [::Java::Int] }
    # long
    def find_menu(h_menu)
      if ((@menus).nil?)
        return nil
      end
      i = 0
      while i < @menus.attr_length
        menu = @menus[i]
        if (!(menu).nil? && (h_menu).equal?(menu.attr_handle))
          return menu
        end
        i += 1
      end
      return nil
    end
    
    typesig { [Decorations, Control, Array.typed(Menu)] }
    def fix_decorations(new_decorations, control, menus)
      if ((self).equal?(new_decorations))
        return
      end
      if ((control).equal?(@saved_focus))
        @saved_focus = nil
      end
      if ((control).equal?(@default_button))
        @default_button = nil
      end
      if ((control).equal?(@save_default))
        @save_default = nil
      end
      if ((menus).nil?)
        return
      end
      menu = control.attr_menu
      if (!(menu).nil?)
        index = 0
        while (index < menus.attr_length)
          if ((menus[index]).equal?(menu))
            control.set_menu(nil)
            return
          end
          index += 1
        end
        menu.fix_menus(new_decorations)
        destroy_accelerators
        new_decorations.destroy_accelerators
      end
    end
    
    typesig { [] }
    def get_bounds
      check_widget
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          lpwndpl = WINDOWPLACEMENT.new
          lpwndpl.attr_length = WINDOWPLACEMENT.attr_sizeof
          OS._get_window_placement(self.attr_handle, lpwndpl)
          width = lpwndpl.attr_right - lpwndpl.attr_left
          height = lpwndpl.attr_bottom - lpwndpl.attr_top
          return Rectangle.new(lpwndpl.attr_left, lpwndpl.attr_top, width, height)
        end
      end
      return super
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      # Note: The CommandBar is part of the client area,
      # not the trim.  Applications don't expect this so
      # subtract the height of the CommandBar.
      if (OS::IsHPC)
        rect = super
        if (!(@menu_bar).nil?)
          # long
          hwnd_cb = @menu_bar.attr_hwnd_cb
          height = OS._command_bar_height(hwnd_cb)
          rect.attr_y += height
          rect.attr_height = Math.max(0, rect.attr_height - height)
        end
        return rect
      end
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          lpwndpl = WINDOWPLACEMENT.new
          lpwndpl.attr_length = WINDOWPLACEMENT.attr_sizeof
          OS._get_window_placement(self.attr_handle, lpwndpl)
          width = lpwndpl.attr_right - lpwndpl.attr_left
          height = lpwndpl.attr_bottom - lpwndpl.attr_top
          # Feature in Windows.  For some reason WM_NCCALCSIZE does
          # not compute the client area when the window is minimized.
          # The fix is to compute it using AdjustWindowRectEx() and
          # GetSystemMetrics().
          # 
          # NOTE: This code fails to compute the correct client area
          # for a minimized window where the menu bar would wrap were
          # the window restored.  There is no fix for this problem at
          # this time.
          if (!(self.attr_horizontal_bar).nil?)
            width -= OS._get_system_metrics(OS::SM_CYHSCROLL)
          end
          if (!(self.attr_vertical_bar).nil?)
            height -= OS._get_system_metrics(OS::SM_CXVSCROLL)
          end
          rect = RECT.new
          bits1 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          bits2 = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
          has_menu = OS::IsWinCE ? false : !(OS._get_menu(self.attr_handle)).equal?(0)
          OS._adjust_window_rect_ex(rect, bits1, has_menu, bits2)
          width = Math.max(0, width - (rect.attr_right - rect.attr_left))
          height = Math.max(0, height - (rect.attr_bottom - rect.attr_top))
          return Rectangle.new(0, 0, width, height)
        end
      end
      return super
    end
    
    typesig { [] }
    # Returns the receiver's default button if one had
    # previously been set, otherwise returns null.
    # 
    # @return the default button or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setDefaultButton(Button)
    def get_default_button
      check_widget
      return @default_button
    end
    
    typesig { [] }
    # Returns the receiver's image if it had previously been
    # set using <code>setImage()</code>. The image is typically
    # displayed by the window manager when the instance is
    # marked as iconified, and may also be displayed somewhere
    # in the trim when the instance is in normal or maximized
    # states.
    # <p>
    # Note: This method will return null if called before
    # <code>setImage()</code> is called. It does not provide
    # access to a window manager provided, "default" image
    # even if one exists.
    # </p>
    # 
    # @return the image
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
    # Returns the receiver's images if they had previously been
    # set using <code>setImages()</code>. Images are typically
    # displayed by the window manager when the instance is
    # marked as iconified, and may also be displayed somewhere
    # in the trim when the instance is in normal or maximized
    # states. Depending where the icon is displayed, the platform
    # chooses the icon with the "best" attributes.  It is expected
    # that the array will contain the same icon rendered at different
    # sizes, with different depth and transparency attributes.
    # 
    # <p>
    # Note: This method will return an empty array if called before
    # <code>setImages()</code> is called. It does not provide
    # access to a window manager provided, "default" image
    # even if one exists.
    # </p>
    # 
    # @return the images
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_images
      check_widget
      if ((@images).nil?)
        return Array.typed(Image).new(0) { nil }
      end
      result = Array.typed(Image).new(@images.attr_length) { nil }
      System.arraycopy(@images, 0, result, 0, @images.attr_length)
      return result
    end
    
    typesig { [] }
    def get_location
      check_widget
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          lpwndpl = WINDOWPLACEMENT.new
          lpwndpl.attr_length = WINDOWPLACEMENT.attr_sizeof
          OS._get_window_placement(self.attr_handle, lpwndpl)
          return Point.new(lpwndpl.attr_left, lpwndpl.attr_top)
        end
      end
      return super
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is currently
    # maximized, and false otherwise.
    # <p>
    # 
    # @return the maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMaximized
    def get_maximized
      check_widget
      if (OS::IsWinCE)
        return (@sw_flags).equal?(OS::SW_SHOWMAXIMIZED)
      end
      if (OS._is_window_visible(self.attr_handle))
        return OS._is_zoomed(self.attr_handle)
      end
      return (@sw_flags).equal?(OS::SW_SHOWMAXIMIZED)
    end
    
    typesig { [] }
    # Returns the receiver's menu bar if one had previously
    # been set, otherwise returns null.
    # 
    # @return the menu bar or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_menu_bar
      check_widget
      return @menu_bar
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is currently
    # minimized, and false otherwise.
    # <p>
    # 
    # @return the minimized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMinimized
    def get_minimized
      check_widget
      if (OS::IsWinCE)
        return false
      end
      if (OS._is_window_visible(self.attr_handle))
        return OS._is_iconic(self.attr_handle)
      end
      return (@sw_flags).equal?(OS::SW_SHOWMINNOACTIVE)
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    def get_size
      check_widget
      if (!OS::IsWinCE)
        if (OS._is_iconic(self.attr_handle))
          lpwndpl = WINDOWPLACEMENT.new
          lpwndpl.attr_length = WINDOWPLACEMENT.attr_sizeof
          OS._get_window_placement(self.attr_handle, lpwndpl)
          width = lpwndpl.attr_right - lpwndpl.attr_left
          height = lpwndpl.attr_bottom - lpwndpl.attr_top
          return Point.new(width, height)
        end
      end
      return super
    end
    
    typesig { [] }
    # Returns the receiver's text, which is the string that the
    # window manager will typically display as the receiver's
    # <em>title</em>. If the text has not previously been set,
    # returns an empty string.
    # 
    # @return the text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      length = OS._get_window_text_length(self.attr_handle)
      if ((length).equal?(0))
        return ""
      end
      # Use the character encoding for the default locale
      buffer = TCHAR.new(0, length + 1)
      OS._get_window_text(self.attr_handle, buffer, length + 1)
      return buffer.to_s(0, length)
    end
    
    typesig { [] }
    def is_reparentable
      check_widget
      # Feature in Windows.  Calling SetParent() for a shell causes
      # a kind of fake MDI to happen.  It doesn't work well on Windows
      # and is not supported on the other platforms.  The fix is to
      # disallow the SetParent().
      return false
    end
    
    typesig { [] }
    def is_tab_group
      # Can't test WS_TAB bits because they are the same as WS_MAXIMIZEBOX.
      return true
    end
    
    typesig { [] }
    def is_tab_item
      # Can't test WS_TAB bits because they are the same as WS_MAXIMIZEBOX.
      return false
    end
    
    typesig { [] }
    def menu_shell
      return self
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@menu_bar).nil?)
        @menu_bar.release(false)
        @menu_bar = nil
      end
      super(destroy)
      if (!(@menus).nil?)
        i = 0
        while i < @menus.attr_length
          menu = @menus[i]
          if (!(menu).nil? && !menu.is_disposed)
            menu.dispose
          end
          i += 1
        end
        @menus = nil
      end
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@small_image).nil?)
        @small_image.dispose
      end
      if (!(@large_image).nil?)
        @large_image.dispose
      end
      @small_image = @large_image = @image = nil
      @images = nil
      @saved_focus = nil
      @default_button = @save_default = nil
      if (!(@h_accel).equal?(0) && !(@h_accel).equal?(-1))
        OS._destroy_accelerator_table(@h_accel)
      end
      @h_accel = -1
    end
    
    typesig { [Menu] }
    def remove_menu(menu)
      if ((@menus).nil?)
        return
      end
      i = 0
      while i < @menus.attr_length
        if ((@menus[i]).equal?(menu))
          @menus[i] = nil
          return
        end
        i += 1
      end
    end
    
    typesig { [] }
    def restore_focus
      if (self.attr_display.attr_ignore_restore_focus)
        return true
      end
      if (!(@saved_focus).nil? && @saved_focus.is_disposed)
        @saved_focus = nil
      end
      if (!(@saved_focus).nil? && @saved_focus.set_saved_focus)
        return true
      end
      # This code is intentionally commented.  When no widget
      # has been given focus, some platforms give focus to the
      # default button.  Windows doesn't do this.
      # 
      # if (defaultButton != null && !defaultButton.isDisposed ()) {
      # if (defaultButton.setFocus ()) return true;
      # }
      return false
    end
    
    typesig { [] }
    def save_focus
      control = self.attr_display.__get_focus_control
      if (!(control).nil? && !(control).equal?(self) && (self).equal?(control.menu_shell))
        set_saved_focus(control)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_bounds(x, y, width, height, flags, defer)
      if (OS::IsWinCE)
        @sw_flags = OS::SW_RESTORE
      else
        if (OS._is_iconic(self.attr_handle))
          set_placement(x, y, width, height, flags)
          return
        end
      end
      force_resize
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      same_origin = true
      if (((OS::SWP_NOMOVE & flags)).equal?(0))
        same_origin = (rect.attr_left).equal?(x) && (rect.attr_top).equal?(y)
        if (!same_origin)
          @moved = true
        end
      end
      same_extent = true
      if (((OS::SWP_NOSIZE & flags)).equal?(0))
        same_extent = (rect.attr_right - rect.attr_left).equal?(width) && (rect.attr_bottom - rect.attr_top).equal?(height)
        if (!same_extent)
          @resized = true
        end
      end
      if (!OS::IsWinCE)
        if (OS._is_zoomed(self.attr_handle))
          if (same_origin && same_extent)
            return
          end
          set_placement(x, y, width, height, flags)
          __set_maximized(false)
          return
        end
      end
      super(x, y, width, height, flags, defer)
    end
    
    typesig { [Button] }
    # If the argument is not null, sets the receiver's default
    # button to the argument, and if the argument is null, sets
    # the receiver's default button to the first button which
    # was set as the receiver's default button (called the
    # <em>saved default button</em>). If no default button had
    # previously been set, or the saved default button was
    # disposed, the receiver's default button will be set to
    # null.
    # <p>
    # The default button is the button that is selected when
    # the receiver is active and the user presses ENTER.
    # </p>
    # 
    # @param button the new default button
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the button has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the control is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_default_button(button)
      check_widget
      if (!(button).nil?)
        if (button.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(button.menu_shell).equal?(self))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      set_default_button(button, true)
    end
    
    typesig { [Button, ::Java::Boolean] }
    def set_default_button(button, save)
      if ((button).nil?)
        if ((@default_button).equal?(@save_default))
          if (save)
            @save_default = nil
          end
          return
        end
      else
        if (((button.attr_style & SWT::PUSH)).equal?(0))
          return
        end
        if ((button).equal?(@default_button))
          return
        end
      end
      if (!(@default_button).nil?)
        if (!@default_button.is_disposed)
          @default_button.set_default(false)
        end
      end
      if (((@default_button = button)).nil?)
        @default_button = @save_default
      end
      if (!(@default_button).nil?)
        if (!@default_button.is_disposed)
          @default_button.set_default(true)
        end
      end
      if (save)
        @save_default = @default_button
      end
      if (!(@save_default).nil? && @save_default.is_disposed)
        @save_default = nil
      end
    end
    
    typesig { [Image] }
    # Sets the receiver's image to the argument, which may
    # be null. The image is typically displayed by the window
    # manager when the instance is marked as iconified, and
    # may also be displayed somewhere in the trim when the
    # instance is in normal or maximized states.
    # 
    # @param image the new image (or null)
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
      @image = image
      set_images(image, nil)
    end
    
    typesig { [Image, Array.typed(Image)] }
    def set_images(image, images)
      # Feature in WinCE.  WM_SETICON and WM_GETICON set the icon
      # for the window class, not the window instance.  This means
      # that it is possible to set an icon into a window and then
      # later free the icon, thus freeing the icon for every window.
      # The fix is to avoid the API.
      # 
      # On WinCE PPC, icons in windows are not displayed.
      if (OS::IsWinCE)
        return
      end
      if (!(@small_image).nil?)
        @small_image.dispose
      end
      if (!(@large_image).nil?)
        @large_image.dispose
      end
      @small_image = @large_image = nil
      # long
      h_small_icon = 0
      h_large_icon = 0
      small_icon = nil
      large_icon = nil
      if (!(image).nil?)
        small_icon = large_icon = image
      else
        if (!(images).nil? && images.attr_length > 0)
          depth = self.attr_display.get_icon_depth
          datas = nil
          if (images.attr_length > 1)
            best_images = Array.typed(Image).new(images.attr_length) { nil }
            System.arraycopy(images, 0, best_images, 0, images.attr_length)
            datas = Array.typed(ImageData).new(images.attr_length) { nil }
            i = 0
            while i < datas.attr_length
              datas[i] = images[i].get_image_data
              i += 1
            end
            images = best_images
            sort(images, datas, OS._get_system_metrics(OS::SM_CXSMICON), OS._get_system_metrics(OS::SM_CYSMICON), depth)
          end
          small_icon = images[0]
          if (images.attr_length > 1)
            sort(images, datas, OS._get_system_metrics(OS::SM_CXICON), OS._get_system_metrics(OS::SM_CYICON), depth)
          end
          large_icon = images[0]
        end
      end
      if (!(small_icon).nil?)
        case (small_icon.attr_type)
        when SWT::BITMAP
          @small_image = Display.create_icon(small_icon)
          h_small_icon = @small_image.attr_handle
        when SWT::ICON
          h_small_icon = small_icon.attr_handle
        end
      end
      OS._send_message(self.attr_handle, OS::WM_SETICON, OS::ICON_SMALL, h_small_icon)
      if (!(large_icon).nil?)
        case (large_icon.attr_type)
        when SWT::BITMAP
          @large_image = Display.create_icon(large_icon)
          h_large_icon = @large_image.attr_handle
        when SWT::ICON
          h_large_icon = large_icon.attr_handle
        end
      end
      OS._send_message(self.attr_handle, OS::WM_SETICON, OS::ICON_BIG, h_large_icon)
      # Bug in Windows.  When WM_SETICON is used to remove an
      # icon from the window trimmings for a window with the
      # extended style bits WS_EX_DLGMODALFRAME, the window
      # trimmings do not redraw to hide the previous icon.
      # The fix is to force a redraw.
      if (!OS::IsWinCE)
        if ((h_small_icon).equal?(0) && (h_large_icon).equal?(0) && !((self.attr_style & SWT::BORDER)).equal?(0))
          flags = OS::RDW_FRAME | OS::RDW_INVALIDATE
          OS._redraw_window(self.attr_handle, nil, 0, flags)
        end
      end
    end
    
    typesig { [Array.typed(Image)] }
    # Sets the receiver's images to the argument, which may
    # be an empty array. Images are typically displayed by the
    # window manager when the instance is marked as iconified,
    # and may also be displayed somewhere in the trim when the
    # instance is in normal or maximized states. Depending where
    # the icon is displayed, the platform chooses the icon with
    # the "best" attributes. It is expected that the array will
    # contain the same icon rendered at different sizes, with
    # different depth and transparency attributes.
    # 
    # @param images the new image array
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of images is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if one of the images is null or has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_images(images)
      check_widget
      if ((images).nil?)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < images.attr_length
        if ((images[i]).nil? || images[i].is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      @images = images
      set_images(nil, images)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the maximized state of the receiver.
    # If the argument is <code>true</code> causes the receiver
    # to switch to the maximized state, and if the argument is
    # <code>false</code> and the receiver was previously maximized,
    # causes the receiver to switch back to either the minimized
    # or normal states.
    # <p>
    # Note: The result of intermixing calls to <code>setMaximized(true)</code>
    # and <code>setMinimized(true)</code> will vary by platform. Typically,
    # the behavior will match the platform user's expectations, but not
    # always. This should be avoided if possible.
    # </p>
    # 
    # @param maximized the new maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMinimized
    def set_maximized(maximized)
      check_widget
      Display.attr_lp_startup_info = nil
      __set_maximized(maximized)
    end
    
    typesig { [Menu] }
    # Sets the receiver's menu bar to the argument, which
    # may be null.
    # 
    # @param menu the new menu bar
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the menu has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the menu is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_menu_bar(menu)
      check_widget
      if ((@menu_bar).equal?(menu))
        return
      end
      if (!(menu).nil?)
        if (menu.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (((menu.attr_style & SWT::BAR)).equal?(0))
          error(SWT::ERROR_MENU_NOT_BAR)
        end
        if (!(menu.attr_parent).equal?(self))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      if (OS::IsWinCE)
        if (OS::IsHPC)
          resize = !(@menu_bar).equal?(menu)
          if (!(@menu_bar).nil?)
            OS._command_bar_show(@menu_bar.attr_hwnd_cb, false)
          end
          @menu_bar = menu
          if (!(@menu_bar).nil?)
            OS._command_bar_show(@menu_bar.attr_hwnd_cb, true)
          end
          if (resize)
            send_event(SWT::Resize)
            if (is_disposed)
              return
            end
            if (!(self.attr_layout).nil?)
              mark_layout(false, false)
              update_layout(true, false)
            end
          end
        else
          if (OS::IsPPC)
            # Note in WinCE PPC.  The menu bar is a separate popup window.
            # If the shell is full screen, resize its window to leave
            # space for the menu bar.
            resize = get_maximized && !(@menu_bar).equal?(menu)
            if (!(@menu_bar).nil?)
              OS._show_window(@menu_bar.attr_hwnd_cb, OS::SW_HIDE)
            end
            @menu_bar = menu
            if (!(@menu_bar).nil?)
              OS._show_window(@menu_bar.attr_hwnd_cb, OS::SW_SHOW)
            end
            if (resize)
              __set_maximized(true)
            end
          end
          if (OS::IsSP)
            if (!(@menu_bar).nil?)
              OS._show_window(@menu_bar.attr_hwnd_cb, OS::SW_HIDE)
            end
            @menu_bar = menu
            if (!(@menu_bar).nil?)
              OS._show_window(@menu_bar.attr_hwnd_cb, OS::SW_SHOW)
            end
          end
        end
      else
        if (!(menu).nil?)
          self.attr_display.remove_bar(menu)
        end
        @menu_bar = menu
        # long
        h_menu = !(@menu_bar).nil? ? @menu_bar.attr_handle : 0
        OS._set_menu(self.attr_handle, h_menu)
      end
      destroy_accelerators
    end
    
    typesig { [::Java::Boolean] }
    # Sets the minimized stated of the receiver.
    # If the argument is <code>true</code> causes the receiver
    # to switch to the minimized state, and if the argument is
    # <code>false</code> and the receiver was previously minimized,
    # causes the receiver to switch back to either the maximized
    # or normal states.
    # <p>
    # Note: The result of intermixing calls to <code>setMaximized(true)</code>
    # and <code>setMinimized(true)</code> will vary by platform. Typically,
    # the behavior will match the platform user's expectations, but not
    # always. This should be avoided if possible.
    # </p>
    # 
    # @param minimized the new maximized state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setMaximized
    def set_minimized(minimized)
      check_widget
      Display.attr_lp_startup_info = nil
      __set_minimized(minimized)
    end
    
    typesig { [] }
    def set_parent
      # In order for an MDI child window to support
      # a menu bar, setParent () is needed to reset
      # the parent.  Otherwise, the MDI child window
      # will appear as a separate shell.  This is an
      # undocumented and possibly dangerous Windows
      # feature.
      # 
      # long
      hwnd_parent = self.attr_parent.attr_handle
      self.attr_display.attr_lock_active_window = true
      OS._set_parent(self.attr_handle, hwnd_parent)
      if (!OS._is_window_visible(hwnd_parent))
        OS._show_window(self.attr_handle, OS::SW_SHOWNA)
      end
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      bits &= ~OS::WS_CHILD
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits | OS::WS_POPUP)
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_ID, 0)
      flags = OS::SWP_NOSIZE | OS::SWP_NOMOVE | OS::SWP_NOACTIVATE
      _set_window_pos(self.attr_handle, OS::HWND_BOTTOM, 0, 0, 0, 0, flags)
      self.attr_display.attr_lock_active_window = false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_placement(x, y, width, height, flags)
      lpwndpl = WINDOWPLACEMENT.new
      lpwndpl.attr_length = WINDOWPLACEMENT.attr_sizeof
      OS._get_window_placement(self.attr_handle, lpwndpl)
      lpwndpl.attr_show_cmd = OS::SW_SHOWNA
      if (OS._is_iconic(self.attr_handle))
        lpwndpl.attr_show_cmd = OS::SW_SHOWMINNOACTIVE
      else
        if (OS._is_zoomed(self.attr_handle))
          lpwndpl.attr_show_cmd = OS::SW_SHOWMAXIMIZED
        end
      end
      same_origin = true
      if (((flags & OS::SWP_NOMOVE)).equal?(0))
        same_origin = !(lpwndpl.attr_left).equal?(x) || !(lpwndpl.attr_top).equal?(y)
        lpwndpl.attr_right = x + (lpwndpl.attr_right - lpwndpl.attr_left)
        lpwndpl.attr_bottom = y + (lpwndpl.attr_bottom - lpwndpl.attr_top)
        lpwndpl.attr_left = x
        lpwndpl.attr_top = y
      end
      same_extent = true
      if (((flags & OS::SWP_NOSIZE)).equal?(0))
        same_extent = !(lpwndpl.attr_right - lpwndpl.attr_left).equal?(width) || !(lpwndpl.attr_bottom - lpwndpl.attr_top).equal?(height)
        lpwndpl.attr_right = lpwndpl.attr_left + width
        lpwndpl.attr_bottom = lpwndpl.attr_top + height
      end
      OS._set_window_placement(self.attr_handle, lpwndpl)
      if (OS._is_iconic(self.attr_handle))
        if (same_origin)
          @moved = true
          location = get_location
          @old_x = location.attr_x
          @old_y = location.attr_y
          send_event(SWT::Move)
          if (is_disposed)
            return
          end
        end
        if (same_extent)
          @resized = true
          rect = get_client_area
          @old_width = rect.attr_width
          @old_height = rect.attr_height
          send_event(SWT::Resize)
          if (is_disposed)
            return
          end
          if (!(self.attr_layout).nil?)
            mark_layout(false, false)
            update_layout(true, false)
          end
        end
      end
    end
    
    typesig { [Control] }
    def set_saved_focus(control)
      @saved_focus = control
    end
    
    typesig { [] }
    def set_system_menu
      if (OS::IsWinCE)
        return
      end
      # long
      h_menu = OS._get_system_menu(self.attr_handle, false)
      if ((h_menu).equal?(0))
        return
      end
      old_count = OS._get_menu_item_count(h_menu)
      if (((self.attr_style & SWT::RESIZE)).equal?(0))
        OS._delete_menu(h_menu, OS::SC_SIZE, OS::MF_BYCOMMAND)
      end
      if (((self.attr_style & SWT::MIN)).equal?(0))
        OS._delete_menu(h_menu, OS::SC_MINIMIZE, OS::MF_BYCOMMAND)
      end
      if (((self.attr_style & SWT::MAX)).equal?(0))
        OS._delete_menu(h_menu, OS::SC_MAXIMIZE, OS::MF_BYCOMMAND)
      end
      if (((self.attr_style & (SWT::MIN | SWT::MAX))).equal?(0))
        OS._delete_menu(h_menu, OS::SC_RESTORE, OS::MF_BYCOMMAND)
      end
      new_count = OS._get_menu_item_count(h_menu)
      if (((self.attr_style & SWT::CLOSE)).equal?(0) || !(new_count).equal?(old_count))
        OS._delete_menu(h_menu, OS::SC_TASKLIST, OS::MF_BYCOMMAND)
        info = MENUITEMINFO.new
        info.attr_cb_size = MENUITEMINFO.attr_sizeof
        info.attr_f_mask = OS::MIIM_ID
        index = 0
        while (index < new_count)
          if (OS._get_menu_item_info(h_menu, index, true, info))
            if ((info.attr_w_id).equal?(OS::SC_CLOSE))
              break
            end
          end
          index += 1
        end
        if (!(index).equal?(new_count))
          OS._delete_menu(h_menu, index - 1, OS::MF_BYPOSITION)
          if (((self.attr_style & SWT::CLOSE)).equal?(0))
            OS._delete_menu(h_menu, OS::SC_CLOSE, OS::MF_BYCOMMAND)
          end
        end
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text, which is the string that the
    # window manager will typically display as the receiver's
    # <em>title</em>, to the argument, which must not be null.
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
      # Use the character encoding for the default locale
      buffer = TCHAR.new(0, string, true)
      # Ensure that the title appears in the task bar.
      if (!((self.attr_state & FOREIGN_HANDLE)).equal?(0))
        # long
        h_heap = OS._get_process_heap
        byte_count = buffer.length * TCHAR.attr_sizeof
        # long
        psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(psz_text, buffer, byte_count)
        OS._def_window_proc(self.attr_handle, OS::WM_SETTEXT, 0, psz_text)
        if (!(psz_text).equal?(0))
          OS._heap_free(h_heap, 0, psz_text)
        end
      else
        OS._set_window_text(self.attr_handle, buffer)
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(visible)
      check_widget
      if (!(self.attr_draw_count).equal?(0))
        if (((((self.attr_state & HIDDEN)).equal?(0))).equal?(visible))
          return
        end
      else
        if ((visible).equal?(OS._is_window_visible(self.attr_handle)))
          return
        end
      end
      if (visible)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the show
        # event.  If this happens, just return.
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
        if (OS::IsHPC)
          if (!(@menu_bar).nil?)
            # long
            hwnd_cb = @menu_bar.attr_hwnd_cb
            OS._command_bar_draw_menu_bar(hwnd_cb, 0)
          end
        end
        if (!(self.attr_draw_count).equal?(0))
          self.attr_state &= ~HIDDEN
        else
          if (OS::IsWinCE)
            OS._show_window(self.attr_handle, OS::SW_SHOW)
          else
            if (!(@menu_bar).nil?)
              self.attr_display.remove_bar(@menu_bar)
              OS._draw_menu_bar(self.attr_handle)
            end
            lp_start_up_info = Display.attr_lp_startup_info
            if (!(lp_start_up_info).nil? && !((lp_start_up_info.attr_dw_flags & OS::STARTF_USESHOWWINDOW)).equal?(0))
              OS._show_window(self.attr_handle, lp_start_up_info.attr_w_show_window)
            else
              OS._show_window(self.attr_handle, @sw_flags)
            end
          end
          if (is_disposed)
            return
          end
          @opened = true
          if (!@moved)
            @moved = true
            location = get_location
            @old_x = location.attr_x
            @old_y = location.attr_y
          end
          if (!@resized)
            @resized = true
            rect = get_client_area
            @old_width = rect.attr_width
            @old_height = rect.attr_height
          end
          OS._update_window(self.attr_handle)
        end
      else
        if (!OS::IsWinCE)
          if (OS._is_iconic(self.attr_handle))
            @sw_flags = OS::SW_SHOWMINNOACTIVE
          else
            if (OS._is_zoomed(self.attr_handle))
              @sw_flags = OS::SW_SHOWMAXIMIZED
            else
              @sw_flags = OS::SW_SHOWNOACTIVATE
            end
          end
        end
        if (!(self.attr_draw_count).equal?(0))
          self.attr_state |= HIDDEN
        else
          OS._show_window(self.attr_handle, OS::SW_HIDE)
        end
        if (is_disposed)
          return
        end
        send_event(SWT::Hide)
      end
    end
    
    typesig { [Array.typed(Image), Array.typed(ImageData), ::Java::Int, ::Java::Int, ::Java::Int] }
    def sort(images, datas, width, height, depth)
      # Shell Sort from K&R, pg 108
      length_ = images.attr_length
      if (length_ <= 1)
        return
      end
      gap = length_ / 2
      while gap > 0
        i = gap
        while i < length_
          j = i - gap
          while j >= 0
            if (compare(datas[j], datas[j + gap], width, height, depth) >= 0)
              swap = images[j]
              images[j] = images[j + gap]
              images[j + gap] = swap
              swap_data = datas[j]
              datas[j] = datas[j + gap]
              datas[j + gap] = swap_data
            end
            j -= gap
          end
          i += 1
        end
        gap /= 2
      end
    end
    
    typesig { [MSG] }
    def translate_accelerator(msg)
      if (!is_enabled || !is_active)
        return false
      end
      if (!(@menu_bar).nil? && !@menu_bar.is_enabled)
        return false
      end
      if (translate_mdiaccelerator(msg) || translate_menu_accelerator(msg))
        return true
      end
      decorations = self.attr_parent.menu_shell
      return decorations.translate_accelerator(msg)
    end
    
    typesig { [MSG] }
    def translate_menu_accelerator(msg)
      if ((@h_accel).equal?(-1))
        create_accelerators
      end
      return !(@h_accel).equal?(0) && !(OS._translate_accelerator(self.attr_handle, @h_accel, msg)).equal?(0)
    end
    
    typesig { [MSG] }
    def translate_mdiaccelerator(msg)
      if (!(self.is_a?(Shell)))
        shell = get_shell
        # long
        hwnd_mdiclient = shell.attr_hwnd_mdiclient
        if (!(hwnd_mdiclient).equal?(0) && OS._translate_mdisys_accel(hwnd_mdiclient, msg))
          return true
        end
        if ((msg.attr_message).equal?(OS::WM_KEYDOWN))
          if (OS._get_key_state(OS::VK_CONTROL) >= 0)
            return false
          end
          # 64
          case (RJava.cast_to_int((msg.attr_w_param)))
          when OS::VK_F4
            OS._post_message(self.attr_handle, OS::WM_CLOSE, 0, 0)
            return true
          when OS::VK_F6
            if (traverse_decorations(true))
              return true
            end
          end
          return false
        end
        if ((msg.attr_message).equal?(OS::WM_SYSKEYDOWN))
          # 64
          case (RJava.cast_to_int((msg.attr_w_param)))
          when OS::VK_F4
            OS._post_message(shell.attr_handle, OS::WM_CLOSE, 0, 0)
            return true
          end
          return false
        end
      end
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_decorations(next_)
      children = self.attr_parent.__get_children
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
      start = index
      offset = (next_) ? 1 : -1
      while (!((index = (index + offset + length_) % length_)).equal?(start))
        child = children[index]
        if (!child.is_disposed && child.is_a?(Decorations))
          if (child.set_focus)
            return true
          end
        end
      end
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_item(next_)
      return false
    end
    
    typesig { [] }
    def traverse_return
      if ((@default_button).nil? || @default_button.is_disposed)
        return false
      end
      if (!@default_button.is_visible || !@default_button.is_enabled)
        return false
      end
      @default_button.click
      return true
    end
    
    typesig { [] }
    def widget_create_struct
      return CREATESTRUCT.new
    end
    
    typesig { [] }
    def widget_ext_style
      bits = super | OS::WS_EX_MDICHILD
      bits &= ~OS::WS_EX_CLIENTEDGE
      if (!((self.attr_style & SWT::NO_TRIM)).equal?(0))
        return bits
      end
      if (OS::IsPPC)
        if (!((self.attr_style & SWT::CLOSE)).equal?(0))
          bits |= OS::WS_EX_CAPTIONOKBTN
        end
      end
      if (!((self.attr_style & SWT::RESIZE)).equal?(0))
        return bits
      end
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        bits |= OS::WS_EX_DLGMODALFRAME
      end
      return bits
    end
    
    typesig { [] }
    # long
    def widget_parent
      shell = get_shell
      return shell.hwnd_mdiclient
    end
    
    typesig { [] }
    def widget_style
      # Clear WS_VISIBLE and WS_TABSTOP.  NOTE: In Windows, WS_TABSTOP
      # has the same value as WS_MAXIMIZEBOX so these bits cannot be
      # used to control tabbing.
      bits = super & ~(OS::WS_TABSTOP | OS::WS_VISIBLE)
      # Set the title bits and no-trim bits
      bits &= ~OS::WS_BORDER
      if (!((self.attr_style & SWT::NO_TRIM)).equal?(0))
        return bits
      end
      if (!((self.attr_style & SWT::TITLE)).equal?(0))
        bits |= OS::WS_CAPTION
      end
      # Set the min and max button bits
      if (!((self.attr_style & SWT::MIN)).equal?(0))
        bits |= OS::WS_MINIMIZEBOX
      end
      if (!((self.attr_style & SWT::MAX)).equal?(0))
        bits |= OS::WS_MAXIMIZEBOX
      end
      # Set the resize, dialog border or border bits
      if (!((self.attr_style & SWT::RESIZE)).equal?(0))
        # Note on WinCE PPC.  SWT.RESIZE is used to resize
        # the Shell according to the state of the IME.
        # It does not set the WS_THICKFRAME style.
        if (!OS::IsPPC)
          bits |= OS::WS_THICKFRAME
        end
      else
        if (((self.attr_style & SWT::BORDER)).equal?(0))
          bits |= OS::WS_BORDER
        end
      end
      # Set the system menu and close box bits
      if (!OS::IsPPC && !OS::IsSP)
        if (!((self.attr_style & SWT::CLOSE)).equal?(0))
          bits |= OS::WS_SYSMENU
        end
      end
      return bits
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      case (msg)
      when Display::SWT_GETACCEL, Display::SWT_GETACCELCOUNT
        if ((@h_accel).equal?(-1))
          create_accelerators
        end
        return (msg).equal?(Display::SWT_GETACCELCOUNT) ? @n_accel : @h_accel
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_activate(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in AWT.  When an AWT Window is activated,
      # for some reason, it seems to forward the WM_ACTIVATE
      # message to the parent.  Normally, the parent is an
      # AWT Frame.  When AWT is embedded in SWT, the SWT
      # shell gets the WM_ACTIVATE and assumes that it came
      # from Windows.  When an SWT shell is activated it
      # restores focus to the last control that had focus.
      # If this control is an embedded composite, it takes
      # focus from the AWT Window.  The fix is to ignore
      # WM_ACTIVATE messages that come from AWT Windows.
      if ((OS._get_parent(l_param)).equal?(self.attr_handle))
        buffer = TCHAR.new(0, 128)
        OS._get_class_name(l_param, buffer, buffer.length)
        class_name = buffer.to_s(0, buffer.strlen)
        if ((class_name == Display::AWT_WINDOW_CLASS))
          return LRESULT::ZERO
        end
      end
      if (!(OS._loword(w_param)).equal?(0))
        # When the high word of wParam is non-zero, the activation
        # state of the window is being changed while the window is
        # minimized. If this is the case, do not report activation
        # events or restore the focus.
        if (!(OS._hiword(w_param)).equal?(0))
          return result
        end
        control = self.attr_display.find_control(l_param)
        if ((control).nil? || control.is_a?(Shell))
          if (self.is_a?(Shell))
            send_event(SWT::Activate)
            if (is_disposed)
              return LRESULT::ZERO
            end
          end
        end
        if (restore_focus)
          return LRESULT::ZERO
        end
      else
        display = self.attr_display
        lock_window = display.is_xmouse_active
        if (lock_window)
          display.attr_lock_active_window = true
        end
        control = display.find_control(l_param)
        if ((control).nil? || control.is_a?(Shell))
          if (self.is_a?(Shell))
            send_event(SWT::Deactivate)
            if (!is_disposed)
              shell = get_shell
              shell.set_active_control(nil)
              # widget could be disposed at this point
            end
          end
        end
        if (lock_window)
          display.attr_lock_active_window = false
        end
        if (is_disposed)
          return LRESULT::ZERO
        end
        save_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_close(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (is_enabled && is_active)
        close_widget
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_hotkey(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (OS::IsSP)
        # Feature on WinCE SP.  The Back key is either used to close
        # the foreground Dialog or used as a regular Back key in an EDIT
        # control. The article 'Back Key' in MSDN for Smartphone
        # describes how an application should handle it.  The
        # workaround is to override the Back key when creating
        # the menubar and handle it based on the style of the Shell.
        # If the Shell has the SWT.CLOSE style, close the Shell.
        # Otherwise, send the Back key to the window with focus.
        if ((OS._hiword(l_param)).equal?(OS::VK_ESCAPE))
          if (!((self.attr_style & SWT::CLOSE)).equal?(0))
            OS._post_message(self.attr_handle, OS::WM_CLOSE, 0, 0)
          else
            OS._shsend_back_to_focus_window(OS::WM_HOTKEY, w_param, l_param)
          end
          return LRESULT::ZERO
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      result = super(w_param, l_param)
      save_focus
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_move(w_param, l_param)
      if (@moved)
        location = get_location
        if ((location.attr_x).equal?(@old_x) && (location.attr_y).equal?(@old_y))
          return nil
        end
        @old_x = location.attr_x
        @old_y = location.attr_y
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ncactivate(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if ((w_param).equal?(0))
        if (self.attr_display.attr_lock_active_window)
          return LRESULT::ZERO
        end
        control = self.attr_display.find_control(l_param)
        if (!(control).nil?)
          shell = get_shell
          decorations = control.menu_shell
          if ((decorations.get_shell).equal?(shell))
            if (self.is_a?(Shell))
              return LRESULT::ONE
            end
            if (self.attr_display.attr_ignore_restore_focus)
              if (!(self.attr_display.attr_last_hittest).equal?(OS::HTCLIENT))
                result = LRESULT::ONE
              end
            end
          end
        end
      end
      if (!(self.is_a?(Shell)))
        # long
        hwnd_shell = get_shell.attr_handle
        OS._send_message(hwnd_shell, OS::WM_NCACTIVATE, w_param, l_param)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_queryopen(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      send_event(SWT::Deiconify)
      # widget could be disposed at this point
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@saved_focus).equal?(self))
        restore_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = nil
      changed = true
      if (@resized)
        new_width = 0
        new_height = 0
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::SIZE_RESTORED, OS::SIZE_MAXIMIZED
          new_width = OS._loword(l_param)
          new_height = OS._hiword(l_param)
        when OS::SIZE_MINIMIZED
          rect = get_client_area
          new_width = rect.attr_width
          new_height = rect.attr_height
        end
        changed = !(new_width).equal?(@old_width) || !(new_height).equal?(@old_height)
        if (changed)
          @old_width = new_width
          @old_height = new_height
        end
      end
      if (changed)
        result = super(w_param, l_param)
        if (is_disposed)
          return result
        end
      end
      if ((w_param).equal?(OS::SIZE_MINIMIZED))
        send_event(SWT::Iconify)
        # widget could be disposed at this point
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
      if (!(self.is_a?(Shell)))
        # 64
        cmd = RJava.cast_to_int(w_param) & 0xfff0
        case (cmd)
        when OS::SC_CLOSE
          OS._post_message(self.attr_handle, OS::WM_CLOSE, 0, 0)
          return LRESULT::ZERO
        when OS::SC_NEXTWINDOW
          traverse_decorations(true)
          return LRESULT::ZERO
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
      if (self.attr_display.attr_lock_active_window)
        lpwp = WINDOWPOS.new
        OS._move_memory(lpwp, l_param, WINDOWPOS.attr_sizeof)
        lpwp.attr_flags |= OS::SWP_NOZORDER
        OS._move_memory(l_param, lpwp, WINDOWPOS.attr_sizeof)
      end
      return result
    end
    
    private
    alias_method :initialize__decorations, :initialize
  end
  
end
