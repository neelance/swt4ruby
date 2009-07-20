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
  module ColorDialogImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class allow the user to select a color
  # from a predefined set of available colors.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Dialog tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ColorDialog < ColorDialogImports.const_get :Dialog
    include_class_members ColorDialogImports
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :rgb
    alias_method :attr_rgb, :rgb
    undef_method :rgb
    alias_method :attr_rgb=, :rgb=
    undef_method :rgb=
    
    typesig { [Shell] }
    # Constructs a new instance of this class given only its parent.
    # 
    # @param parent a composite control which will be the parent of the new instance
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent)
      initialize__color_dialog(parent, SWT::APPLICATION_MODAL)
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @display = nil
      @width = 0
      @height = 0
      @rgb = nil
      super(parent, check_style(parent, style))
      check_subclass
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _cchook_proc(hdlg, ui_msg, l_param, lp_data)
      # 64
      case (RJava.cast_to_int(ui_msg))
      when OS::WM_INITDIALOG
        rect = RECT.new
        OS._get_window_rect(hdlg, rect)
        @width = rect.attr_right - rect.attr_left
        @height = rect.attr_bottom - rect.attr_top
        if (!(self.attr_title).nil? && !(self.attr_title.length).equal?(0))
          # Use the character encoding for the default locale
          buffer = TCHAR.new(0, self.attr_title, true)
          OS._set_window_text(hdlg, buffer)
        end
      when OS::WM_DESTROY
        rect = RECT.new
        OS._get_window_rect(hdlg, rect)
        new_width = rect.attr_right - rect.attr_left
        new_height = rect.attr_bottom - rect.attr_top
        if (new_width < @width || new_height < @height)
          # display.fullOpen = false;
        else
          if (new_width > @width || new_height > @height)
            # display.fullOpen = true;
          end
        end
      end
      return 0
    end
    
    typesig { [] }
    # Returns the currently selected color in the receiver.
    # 
    # @return the RGB value for the selected color, may be null
    # 
    # @see PaletteData#getRGBs
    def get_rgb
      return @rgb
    end
    
    typesig { [] }
    # Makes the receiver visible and brings it to the front
    # of the display.
    # 
    # @return the selected color, or null if the dialog was
    # cancelled, no color was selected, or an error
    # occurred
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def open
      # Get the owner HWND for the dialog
      # long
      hwnd_owner = self.attr_parent.attr_handle
      # long
      hwnd_parent = self.attr_parent.attr_handle
      # Feature in Windows.  There is no API to set the orientation of a
      # color dialog.  It is always inherited from the parent.  The fix is
      # to create a hidden parent and set the orientation in the hidden
      # parent for the dialog to inherit.
      enabled = false
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
        dialog_orientation = self.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
        parent_orientation = self.attr_parent.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
        if (!(dialog_orientation).equal?(parent_orientation))
          ex_style = OS::WS_EX_NOINHERITLAYOUT
          if ((dialog_orientation).equal?(SWT::RIGHT_TO_LEFT))
            ex_style |= OS::WS_EX_LAYOUTRTL
          end
          hwnd_owner = OS._create_window_ex(ex_style, Shell::DialogClass, nil, 0, OS::CW_USEDEFAULT, 0, OS::CW_USEDEFAULT, 0, hwnd_parent, 0, OS._get_module_handle(nil), nil)
          enabled = OS._is_window_enabled(hwnd_parent)
          if (enabled)
            OS._enable_window(hwnd_parent, false)
          end
        end
      end
      # Create the CCHookProc
      callback = Callback.new(self, "CCHookProc", 4) # $NON-NLS-1$
      # long
      lpfn_hook = callback.get_address
      if ((lpfn_hook).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # Allocate the Custom Colors
      @display = self.attr_parent.attr_display
      if ((@display.attr_lp_cust_colors).equal?(0))
        # long
        h_heap = OS._get_process_heap
        @display.attr_lp_cust_colors = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, 16 * 4)
      end
      # Open the dialog
      lpcc = CHOOSECOLOR.new
      lpcc.attr_l_struct_size = CHOOSECOLOR.attr_sizeof
      lpcc.attr_flags = OS::CC_ANYCOLOR | OS::CC_ENABLEHOOK
      # if (display.fullOpen) lpcc.Flags |= OS.CC_FULLOPEN;
      lpcc.attr_lpfn_hook = lpfn_hook
      lpcc.attr_hwnd_owner = hwnd_owner
      lpcc.attr_lp_cust_colors = @display.attr_lp_cust_colors
      if (!(@rgb).nil?)
        lpcc.attr_flags |= OS::CC_RGBINIT
        red = @rgb.attr_red & 0xff
        green = (@rgb.attr_green << 8) & 0xff00
        blue = (@rgb.attr_blue << 16) & 0xff0000
        lpcc.attr_rgb_result = red | green | blue
      end
      # Make the parent shell be temporary modal
      old_modal = nil
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        old_modal = @display.get_modal_dialog
        @display.set_modal_dialog(self)
      end
      # Open the dialog
      success = OS._choose_color(lpcc)
      # Clear the temporary dialog modal parent
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        @display.set_modal_dialog(old_modal)
      end
      if (success)
        red = lpcc.attr_rgb_result & 0xff
        green = (lpcc.attr_rgb_result >> 8) & 0xff
        blue = (lpcc.attr_rgb_result >> 16) & 0xff
        @rgb = RGB.new(red, green, blue)
      end
      # Free the CCHookProc
      callback.dispose
      # Free the Custom Colors
      # 
      # This code is intentionally commented.  Currently,
      # there is exactly one set of custom colors per display.
      # The memory associated with these colors is released
      # when the display is disposed.
      # 
      # if (lpCustColors != 0) OS.HeapFree (hHeap, 0, lpCustColors);
      # Destroy the BIDI orientation window
      if (!(hwnd_parent).equal?(hwnd_owner))
        if (enabled)
          OS._enable_window(hwnd_parent, true)
        end
        OS._set_active_window(hwnd_parent)
        OS._destroy_window(hwnd_owner)
      end
      # This code is intentionally commented.  On some
      # platforms, the owner window is repainted right
      # away when a dialog window exits.  This behavior
      # is currently unspecified.
      # 
      # if (hwndOwner != 0) OS.UpdateWindow (hwndOwner);
      @display = nil
      if (!success)
        return nil
      end
      return @rgb
    end
    
    typesig { [RGB] }
    # Sets the receiver's selected color to be the argument.
    # 
    # @param rgb the new RGB value for the selected color, may be
    # null to let the platform select a default when
    # open() is called
    # @see PaletteData#getRGBs
    def set_rgb(rgb)
      @rgb = rgb
    end
    
    private
    alias_method :initialize__color_dialog, :initialize
  end
  
end
