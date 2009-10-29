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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
      # long
      handle = 0
      title_bytes = nil
      title_bytes = Converter.wcs_to_mbcs(nil, self.attr_title, true)
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
      handle = OS.gtk_font_selection_dialog_new(title_bytes)
      if (!(self.attr_parent).nil?)
        # long
        shell_handle = self.attr_parent.top_handle
        OS.gtk_window_set_transient_for(handle, shell_handle)
        # long
        pixbufs = OS.gtk_window_get_icon_list(shell_handle)
        if (!(pixbufs).equal?(0))
          OS.gtk_window_set_icon_list(handle, pixbufs)
          OS.g_list_free(pixbufs)
        end
      end
      OS.gtk_window_set_modal(handle, true)
      if (!(@font_data).nil?)
        font = Font.new(display, @font_data)
        # long
        font_name = OS.pango_font_description_to_string(font.attr_handle)
        length = OS.strlen(font_name)
        buffer = Array.typed(::Java::Byte).new(length + 1) { 0 }
        OS.memmove___org_eclipse_swt_widgets_font_dialog_1(buffer, font_name, length)
        font.dispose
        OS.g_free(font_name)
        OS.gtk_font_selection_dialog_set_font_name(handle, buffer)
      end
      display.add_idle_proc
      old_modal = nil
      if (OS.gtk_window_get_modal(handle))
        old_modal = display.get_modal_dialog
        display.set_modal_dialog(self)
      end
      signal_id = 0
      # long
      hook_id = 0
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        signal_id = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
        hook_id = OS.g_signal_add_emission_hook(signal_id, 0, display.attr_emission_proc, handle, 0)
      end
      response = OS.gtk_dialog_run(handle)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.g_signal_remove_emission_hook(signal_id, hook_id)
      end
      if (OS.gtk_window_get_modal(handle))
        display.set_modal_dialog(old_modal)
      end
      success = (response).equal?(OS::GTK_RESPONSE_OK)
      if (success)
        # long
        font_name = OS.gtk_font_selection_dialog_get_font_name(handle)
        length = OS.strlen(font_name)
        buffer = Array.typed(::Java::Byte).new(length + 1) { 0 }
        OS.memmove___org_eclipse_swt_widgets_font_dialog_3(buffer, font_name, length)
        OS.g_free(font_name)
        # long
        font_desc = OS.pango_font_description_from_string(buffer)
        font = Font.gtk_new(display, font_desc)
        @font_data = font.get_font_data[0]
        OS.pango_font_description_free(font_desc)
      end
      display.remove_idle_proc
      OS.gtk_widget_destroy(handle)
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
