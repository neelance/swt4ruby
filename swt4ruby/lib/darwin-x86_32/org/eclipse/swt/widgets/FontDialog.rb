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
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :selected
    alias_method :attr_selected, :selected
    undef_method :selected
    alias_method :attr_selected=, :selected=
    undef_method :selected=
    
    attr_accessor :font_id
    alias_method :attr_font_id, :font_id
    undef_method :font_id
    alias_method :attr_font_id=, :font_id=
    undef_method :font_id=
    
    attr_accessor :font_size
    alias_method :attr_font_size, :font_size
    undef_method :font_size
    alias_method :attr_font_size=, :font_size=
    undef_method :font_size=
    
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
      @selected = false
      @font_id = 0
      @font_size = 0
      super(parent, check_style(parent, style))
      check_subclass
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def change_font(id, sel, arg0)
      @selected = true
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
      display = !(self.attr_parent).nil? ? self.attr_parent.attr_display : Display.get_current
      panel = NSFontPanel.shared_font_panel
      panel.set_title(NSString.string_with(!(self.attr_title).nil? ? self.attr_title : ""))
      create = !(@font_data).nil?
      font = create ? Font.new(display, @font_data) : display.get_system_font
      panel.set_panel_font(font.attr_handle, false)
      delegate = SWTPanelDelegate.new.alloc.init
      # long
      jni_ref = OS._new_global_ref(self)
      if ((jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.object_set_instance_variable(delegate.attr_id, Display::SWT_OBJECT, jni_ref)
      panel.set_delegate(delegate)
      @font_data = nil
      @selected = false
      panel.order_front(nil)
      NSApplication.shared_application.run_modal_for_window(panel)
      if (@selected)
        ns_font = panel.panel_convert_font(font.attr_handle)
        if (!(ns_font).nil?)
          @font_data = Font.cocoa_new(display, ns_font).get_font_data[0]
        end
      end
      panel.set_delegate(nil)
      delegate.release
      OS._delete_global_ref(jni_ref)
      if (create)
        font.dispose
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_will_close(id, sel, sender)
      NSApplication.shared_application.stop(nil)
    end
    
    private
    alias_method :initialize__font_dialog, :initialize
  end
  
end
