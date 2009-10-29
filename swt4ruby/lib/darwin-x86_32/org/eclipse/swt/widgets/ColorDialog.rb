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
  module ColorDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # @noextend This class is not intended to be subclassed by clients.
  class ColorDialog < ColorDialogImports.const_get :Dialog
    include_class_members ColorDialogImports
    
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
      @selected = false
      super(parent, check_style(parent, style))
      check_subclass
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def change_color(id, sel, sender)
      @selected = true
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
      panel = NSColorPanel.shared_color_panel
      if (!(@rgb).nil?)
        color = NSColor.color_with_device_red(@rgb.attr_red / 255, @rgb.attr_green / 255, @rgb.attr_blue / 255, 1)
        panel.set_color(color)
      end
      delegate = SWTPanelDelegate.new.alloc.init
      # long
      jni_ref = OS._new_global_ref(self)
      if ((jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.object_set_instance_variable(delegate.attr_id, Display::SWT_OBJECT, jni_ref)
      panel.set_delegate(delegate)
      @rgb = nil
      @selected = false
      panel.order_front(nil)
      NSApplication.shared_application.run_modal_for_window(panel)
      panel.set_delegate(nil)
      delegate.release
      OS._delete_global_ref(jni_ref)
      if (@selected)
        color_ = panel.color
        if (!(color_).nil?)
          color_ = color_.color_using_color_space_name(OS::NSCalibratedRGBColorSpace)
          @rgb = RGB.new(RJava.cast_to_int((color_.red_component * 255)), RJava.cast_to_int((color_.green_component * 255)), RJava.cast_to_int((color_.blue_component * 255)))
        end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_will_close(id, sel, sender)
      NSApplication.shared_application.stop(nil)
    end
    
    private
    alias_method :initialize__color_dialog, :initialize
  end
  
end
