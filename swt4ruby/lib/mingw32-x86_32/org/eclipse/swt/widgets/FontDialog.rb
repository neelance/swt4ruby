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
  module FontDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class allow the user to select a font
  # from all available fonts in the system.
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
  # @noextend This class is not intended to be subclassed by clients.
  class FontDialog < FontDialogImports.const_get :Dialog
    include_class_members FontDialogImports
    
    attr_accessor :font_data
    alias_method :attr_font_data, :font_data
    undef_method :font_data
    alias_method :attr_font_data=, :font_data=
    undef_method :font_data=
    
    attr_accessor :rgb
    alias_method :attr_rgb, :rgb
    undef_method :rgb
    alias_method :attr_rgb=, :rgb=
    undef_method :rgb=
    
    typesig { [Shell] }
    # Constructs a new instance of this class given only its parent.
    # 
    # @param parent a shell which will be the parent of the new instance
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize(parent)
      initialize__font_dialog(parent, SWT::APPLICATION_MODAL)
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
    # @param parent a shell which will be the parent of the new instance
    # @param style the style of dialog to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def initialize(parent, style)
      @font_data = nil
      @rgb = nil
      super(parent, check_style(parent, style))
      check_subclass
    end
    
    typesig { [] }
    # Returns a FontData object describing the font that was
    # selected in the dialog, or null if none is available.
    # 
    # @return the FontData for the selected font, or null
    # @deprecated use #getFontList ()
    def get_font_data
      return @font_data
    end
    
    typesig { [] }
    # Returns a FontData set describing the font that was
    # selected in the dialog, or null if none is available.
    # 
    # @return the FontData for the selected font, or null
    # @since 2.1.1
    def get_font_list
      if ((@font_data).nil?)
        return nil
      end
      result = Array.typed(FontData).new(1) { nil }
      result[0] = @font_data
      return result
    end
    
    typesig { [] }
    # Returns an RGB describing the color that was selected
    # in the dialog, or null if none is available.
    # 
    # @return the RGB value for the selected color, or null
    # 
    # @see PaletteData#getRGBs
    # 
    # @since 2.1
    def get_rgb
      return @rgb
    end
    
    typesig { [] }
    # Makes the dialog visible and brings it to the front
    # of the display.
    # 
    # @return a FontData object describing the font that was selected,
    # or null if the dialog was cancelled or an error occurred
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the dialog has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the dialog</li>
    # </ul>
    def open
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      # Get the owner HWND for the dialog
      # long
      hwnd_owner = self.attr_parent.attr_handle
      # long
      hwnd_parent = self.attr_parent.attr_handle
      # Feature in Windows.  There is no API to set the orientation of a
      # font dialog.  It is always inherited from the parent.  The fix is
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
      # Open the dialog
      # long
      h_heap = OS._get_process_heap
      lpcf = CHOOSEFONT.new
      lpcf.attr_l_struct_size = CHOOSEFONT.attr_sizeof
      lpcf.attr_hwnd_owner = hwnd_owner
      lpcf.attr_flags = OS::CF_SCREENFONTS | OS::CF_EFFECTS
      # long
      lp_log_font = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, LOGFONT.attr_sizeof)
      if (!(@font_data).nil? && !(@font_data.attr_data).nil?)
        log_font = @font_data.attr_data
        lf_height = log_font.attr_lf_height
        # long
        h_dc = OS._get_dc(0)
        pixels = -RJava.cast_to_int((0.5 + (@font_data.attr_height * OS._get_device_caps(h_dc, OS::LOGPIXELSY) / 72)))
        OS._release_dc(0, h_dc)
        log_font.attr_lf_height = pixels
        lpcf.attr_flags |= OS::CF_INITTOLOGFONTSTRUCT
        OS._move_memory(lp_log_font, log_font, LOGFONT.attr_sizeof)
        log_font.attr_lf_height = lf_height
      end
      lpcf.attr_lp_log_font = lp_log_font
      if (!(@rgb).nil?)
        red = @rgb.attr_red & 0xff
        green = (@rgb.attr_green << 8) & 0xff00
        blue = (@rgb.attr_blue << 16) & 0xff0000
        lpcf.attr_rgb_colors = red | green | blue
      end
      # Make the parent shell be temporary modal
      old_modal = nil
      display = nil
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        display = self.attr_parent.get_display
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      # Open the dialog
      success = OS._choose_font(lpcf)
      # Clear the temporary dialog modal parent
      if (!((self.attr_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        display.set_modal_dialog(old_modal)
      end
      # Compute the result
      if (success)
        log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
        OS._move_memory(log_font, lp_log_font, LOGFONT.attr_sizeof)
        # This will not work on multiple screens or
        # for printing. Should use DC for the proper device.
        # 
        # long
        h_dc = OS._get_dc(0)
        log_pixels_y = OS._get_device_caps(h_dc, OS::LOGPIXELSY)
        pixels = 0
        if (log_font.attr_lf_height > 0)
          # Feature in Windows. If the lfHeight of the LOGFONT structure
          # is positive, the lfHeight measures the height of the entire
          # cell, including internal leading, in logical units. Since the
          # height of a font in points does not include the internal leading,
          # we must subtract the internal leading, which requires a TEXTMETRIC,
          # which in turn requires font creation.
          # 
          # long
          h_font = OS._create_font_indirect(log_font)
          # long
          old_font = OS._select_object(h_dc, h_font)
          lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
          OS._get_text_metrics(h_dc, lptm)
          OS._select_object(h_dc, old_font)
          OS._delete_object(h_font)
          pixels = log_font.attr_lf_height - lptm.attr_tm_internal_leading
        else
          pixels = -log_font.attr_lf_height
        end
        OS._release_dc(0, h_dc)
        points = pixels * 72 / log_pixels_y
        @font_data = FontData.win32_new(log_font, points)
        red = lpcf.attr_rgb_colors & 0xff
        green = (lpcf.attr_rgb_colors >> 8) & 0xff
        blue = (lpcf.attr_rgb_colors >> 16) & 0xff
        @rgb = RGB.new(red, green, blue)
      end
      # Free the OS memory
      if (!(lp_log_font).equal?(0))
        OS._heap_free(h_heap, 0, lp_log_font)
      end
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
      if (!success)
        return nil
      end
      return @font_data
    end
    
    typesig { [FontData] }
    # Sets a FontData object describing the font to be
    # selected by default in the dialog, or null to let
    # the platform choose one.
    # 
    # @param fontData the FontData to use initially, or null
    # @deprecated use #setFontList (FontData [])
    def set_font_data(font_data)
      @font_data = font_data
    end
    
    typesig { [Array.typed(FontData)] }
    # Sets the set of FontData objects describing the font to
    # be selected by default in the dialog, or null to let
    # the platform choose one.
    # 
    # @param fontData the set of FontData objects to use initially, or null
    # to let the platform select a default when open() is called
    # 
    # @see Font#getFontData
    # 
    # @since 2.1.1
    def set_font_list(font_data)
      if (!(font_data).nil? && font_data.attr_length > 0)
        @font_data = font_data[0]
      else
        @font_data = nil
      end
    end
    
    typesig { [RGB] }
    # Sets the RGB describing the color to be selected by default
    # in the dialog, or null to let the platform choose one.
    # 
    # @param rgb the RGB value to use initially, or null to let
    # the platform select a default when open() is called
    # 
    # @see PaletteData#getRGBs
    # 
    # @since 2.1
    def set_rgb(rgb)
      @rgb = rgb
    end
    
    private
    alias_method :initialize__font_dialog, :initialize
  end
  
end
