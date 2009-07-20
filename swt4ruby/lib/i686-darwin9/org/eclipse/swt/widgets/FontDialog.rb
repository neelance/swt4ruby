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
  module FontDialogImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Carbon
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :RGBColor
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
    
    attr_accessor :open
    alias_method :attr_open, :open
    undef_method :open
    alias_method :attr_open=, :open=
    undef_method :open=
    
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
      @open = false
      @font_id = 0
      @font_size = 0
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def font_proc(next_handler, the_event, user_data)
      kind = OS._get_event_kind(the_event)
      case (kind)
      when OS.attr_k_event_font_panel_closed
        @open = false
      when OS.attr_k_event_font_selection
        font_id = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._get_event_parameter(the_event, OS.attr_k_event_param_atsufont_id, OS.attr_type_uint32, nil, 4, nil, font_id)).equal?(OS.attr_no_err))
          @font_id = font_id[0]
        end
        font_size = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._get_event_parameter(the_event, OS.attr_k_event_param_atsufont_size, OS.attr_type_fixed, nil, 4, nil, font_size)).equal?(OS.attr_no_err))
          @font_size = font_size[0]
        end
        color = RGBColor.new
        actual_size = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._get_event_parameter(the_event, OS.attr_k_event_param_font_color, OS.attr_type_rgbcolor, nil, RGBColor.attr_sizeof, actual_size, color)).equal?(OS.attr_no_err))
          red = (color.attr_red >> 8) & 0xff
          green = (color.attr_green >> 8) & 0xff
          blue = (color.attr_blue >> 8) & 0xff
          @rgb = RGB.new(red, green, blue)
        else
          dict = Array.typed(::Java::Int).new(1) { 0 }
          if ((OS._get_event_parameter(the_event, OS.attr_k_event_param_dictionary, OS.attr_type_cfdictionary_ref, nil, 4, actual_size, dict)).equal?(OS.attr_no_err))
            attrib = Array.typed(::Java::Int).new(1) { 0 }
            if (OS._cfdictionary_get_value_if_present(dict[0], OS.k_font_panel_attributes_key, attrib))
              tags = Array.typed(::Java::Int).new(1) { 0 }
              sizes = Array.typed(::Java::Int).new(1) { 0 }
              values = Array.typed(::Java::Int).new(1) { 0 }
              if (OS._cfdictionary_get_value_if_present(attrib[0], OS.k_font_panel_attribute_tags_key, tags) && OS._cfdictionary_get_value_if_present(attrib[0], OS.k_font_panel_attribute_sizes_key, sizes) && OS._cfdictionary_get_value_if_present(attrib[0], OS.k_font_panel_attribute_values_key, values))
                count = OS._cfdata_get_length(tags[0]) / 4
                tag_ptr = OS._cfdata_get_byte_ptr(tags[0])
                size_ptr = OS._cfdata_get_byte_ptr(sizes[0])
                tag = Array.typed(::Java::Int).new(1) { 0 }
                size = Array.typed(::Java::Int).new(1) { 0 }
                value_offset = 0
                i = 0
                while i < count
                  OS.memmove(tag, tag_ptr + (i * 4), 4)
                  OS.memmove(size, size_ptr + (i * 4), 4)
                  if ((tag[0]).equal?(OS.attr_k_atsucolor_tag) && (size[0]).equal?(RGBColor.attr_sizeof))
                    value_ptr = OS._cfdata_get_byte_ptr(values[0])
                    OS.memmove(color, value_ptr + value_offset, RGBColor.attr_sizeof)
                    red = (color.attr_red >> 8) & 0xff
                    green = (color.attr_green >> 8) & 0xff
                    blue = (color.attr_blue >> 8) & 0xff
                    @rgb = RGB.new(red, green, blue)
                    break
                  end
                  value_offset = size[0]
                  i += 1
                end
              end
            end
          end
        end
      end
      return OS.attr_no_err
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
      if (!(@font_data).nil?)
        font = Font.new(display, @font_data)
        ptr = OS._new_ptr(4)
        OS.memmove(ptr, Array.typed(::Java::Int).new([font.attr_atsui_style]), 4)
        # TODO - not sure how to set initial color in font panel
        # if (rgb != null) {
        # RGBColor color = new RGBColor ();
        # rgb.red = (short) (rgb.red * 0xffff);
        # rgb.green = (short) (rgb.green * 0xffff);
        # rgb.blue = (short) (rgb.blue * 0xffff);
        # int ptr1 = OS.NewPtr (RGBColor.sizeof);
        # OS.memcpy(ptr, color, RGBColor.sizeof);
        # int [] tags = new int []{OS.kATSUColorTag};
        # int [] sizes = new int []{RGBColor.sizeof};
        # int [] values = new int []{ptr1};
        # OS.ATSUSetAttributes (font.atsuiStyle, tags.length, tags, sizes, values);
        # OS.DisposePtr(ptr1);
        # }
        OS._set_font_info_for_selection(OS.attr_k_font_selection_atsuitype, 1, ptr, 0)
        OS._dispose_ptr(ptr)
        font.dispose
      end
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_font, OS.attr_k_event_font_selection, OS.attr_k_event_class_font, OS.attr_k_event_font_panel_closed, ])
      font_panel_callback = Callback.new(self, "fontProc", 3)
      font_panel_callback_address = font_panel_callback.get_address
      if ((font_panel_callback_address).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      app_target = OS._get_application_event_target
      out_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._install_event_handler(app_target, font_panel_callback_address, mask.attr_length / 2, mask, 0, out_ref)
      @font_size = @font_id = 0
      @font_data = nil
      @rgb = nil
      @open = true
      # Feature in the Macintosh.  The Fonts window is not modal and it cannot
      # be accessed through direct API.  The fix is to figure out the Fonts
      # window by checking all available windows and set its modality
      # explicitily.
      count = 0
      window = OS._get_previous_window(0)
      while (!(window).equal?(0))
        count += 1
        window = OS._get_previous_window(window)
      end
      windows = Array.typed(::Java::Int).new(count) { 0 }
      visible = Array.typed(::Java::Boolean).new(count) { false }
      count = 0
      window = OS._get_previous_window(0)
      while (!(window).equal?(0))
        windows[count] = window
        visible[count] = OS._is_window_visible(window)
        count += 1
        window = OS._get_previous_window(window)
      end
      OS._fpshow_hide_font_panel
      fonts_window = 0
      window = OS._get_previous_window(0)
      while (!(window).equal?(0) && (fonts_window).equal?(0))
        if (OS._is_window_visible(window))
          found = false
          i = 0
          while i < windows.attr_length
            if ((windows[i]).equal?(window))
              found = true
              if (!visible[i])
                fonts_window = window
                break
              end
            end
            i += 1
          end
          if (!found)
            fonts_window = window
            break
          end
        end
        window = OS._get_previous_window(window)
      end
      if (!(fonts_window).equal?(0))
        in_modal_kind = OS.attr_k_window_modality_none
        if (!((self.attr_style & SWT::PRIMARY_MODAL)).equal?(0))
          in_modal_kind = OS.attr_k_window_modality_window_modal
        end
        if (!((self.attr_style & SWT::APPLICATION_MODAL)).equal?(0))
          in_modal_kind = OS.attr_k_window_modality_app_modal
        end
        if (!((self.attr_style & SWT::SYSTEM_MODAL)).equal?(0))
          in_modal_kind = OS.attr_k_window_modality_system_modal
        end
        if (!(in_modal_kind).equal?(OS.attr_k_window_modality_none))
          in_unavailable_window = 0
          if (!(self.attr_parent).nil?)
            in_unavailable_window = OS._get_control_owner(self.attr_parent.attr_handle)
          end
          OS._set_window_modality(fonts_window, in_modal_kind, in_unavailable_window)
          OS._select_window(fonts_window)
        end
      end
      while (!self.attr_parent.is_disposed && @open)
        if (!display.read_and_dispatch)
          display.sleep
        end
      end
      OS._remove_event_handler(out_ref[0])
      font_panel_callback.dispose
      if (!(@font_id).equal?(0) && !(@font_size).equal?(0))
        ats_font = OS._fmget_atsfont_ref_from_font(@font_id)
        font = Font.carbon_new(display, ats_font, RJava.cast_to_short(0), (OS._fix2x(@font_size)).to_f)
        @font_data = font.get_font_data[0]
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
    
    private
    alias_method :initialize__font_dialog, :initialize
  end
  
end
