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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
      @rgb = nil
      super(parent, check_style(parent, style))
      check_subclass
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
      buffer = Converter.wcs_to_mbcs(nil, self.attr_title, true)
      # long
      handle = OS.gtk_color_selection_dialog_new(buffer)
      display = !(self.attr_parent).nil? ? self.attr_parent.get_display : Display.get_current
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
      dialog = GtkColorSelectionDialog.new
      OS.memmove(dialog, handle)
      color = GdkColor.new
      if (!(@rgb).nil?)
        color.attr_red = RJava.cast_to_short(((@rgb.attr_red & 0xff) | ((@rgb.attr_red & 0xff) << 8)))
        color.attr_green = RJava.cast_to_short(((@rgb.attr_green & 0xff) | ((@rgb.attr_green & 0xff) << 8)))
        color.attr_blue = RJava.cast_to_short(((@rgb.attr_blue & 0xff) | ((@rgb.attr_blue & 0xff) << 8)))
        OS.gtk_color_selection_set_current_color(dialog.attr_colorsel, color)
      end
      OS.gtk_color_selection_set_has_palette(dialog.attr_colorsel, true)
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
        OS.gtk_color_selection_get_current_color(dialog.attr_colorsel, color)
        red = (color.attr_red >> 8) & 0xff
        green = (color.attr_green >> 8) & 0xff
        blue = (color.attr_blue >> 8) & 0xff
        @rgb = RGB.new(red, green, blue)
      end
      display.remove_idle_proc
      OS.gtk_widget_destroy(handle)
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
