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
  module ColorDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Carbon
      include_const ::Org::Eclipse::Swt::Graphics, :RGB
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
      info = ColorPickerInfo.new
      if (!(@rgb).nil?)
        info.attr_red = RJava.cast_to_short((@rgb.attr_red * 257))
        info.attr_green = RJava.cast_to_short((@rgb.attr_green * 257))
        info.attr_blue = RJava.cast_to_short((@rgb.attr_blue * 257))
      else
        info.attr_red = RJava.cast_to_short((255 * 257))
        info.attr_green = RJava.cast_to_short((255 * 257))
        info.attr_blue = RJava.cast_to_short((255 * 257))
      end
      info.attr_flags = OS.attr_k_color_picker_dialog_is_moveable | OS.attr_k_color_picker_dialog_is_modal
      # NEEDS WORK - shouldn't be at mouse location
      info.attr_place_where = RJava.cast_to_short(OS.attr_k_at_specified_origin)
      mp = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._get_global_mouse(mp)
      info.attr_v = mp.attr_v
      info.attr_h = mp.attr_h
      if (!(self.attr_title).nil?)
        # NEEDS WORK - no title displayed
        info.attr_prompt = Array.typed(::Java::Byte).new(256) { 0 }
        length_ = self.attr_title.length
        if (length_ > 255)
          length_ = 255
        end
        info.attr_prompt[0] = length_
        i = 0
        while i < length_
          info.attr_prompt[i + 1] = self.attr_title.char_at(i)
          i += 1
        end
      end
      @rgb = nil
      if ((OS._pick_color(info)).equal?(OS.attr_no_err) && info.attr_new_color_chosen)
        red = (info.attr_red >> 8) & 0xff
        green = (info.attr_green >> 8) & 0xff
        blue = (info.attr_blue >> 8) & 0xff
        @rgb = RGB.new(red, green, blue)
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
