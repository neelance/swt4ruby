require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module DrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DrawData 
    include_class_members DrawDataImports
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :client_area
    alias_method :attr_client_area, :client_area
    undef_method :client_area
    alias_method :attr_client_area=, :client_area=
    undef_method :client_area=
    
    class_module.module_eval {
      # Part states
      const_set_lazy(:SELECTED) { 1 << 1 }
      const_attr_reader  :SELECTED
      
      const_set_lazy(:FOCUSED) { 1 << 2 }
      const_attr_reader  :FOCUSED
      
      const_set_lazy(:PRESSED) { 1 << 3 }
      const_attr_reader  :PRESSED
      
      const_set_lazy(:ACTIVE) { 1 << 4 }
      const_attr_reader  :ACTIVE
      
      const_set_lazy(:DISABLED) { 1 << 5 }
      const_attr_reader  :DISABLED
      
      const_set_lazy(:HOT) { 1 << 6 }
      const_attr_reader  :HOT
      
      const_set_lazy(:DEFAULTED) { 1 << 7 }
      const_attr_reader  :DEFAULTED
      
      const_set_lazy(:GRAYED) { 1 << 8 }
      const_attr_reader  :GRAYED
      
      # Text and Image drawing flags
      const_set_lazy(:DRAW_LEFT) { 1 << 4 }
      const_attr_reader  :DRAW_LEFT
      
      const_set_lazy(:DRAW_TOP) { 1 << 5 }
      const_attr_reader  :DRAW_TOP
      
      const_set_lazy(:DRAW_RIGHT) { 1 << 6 }
      const_attr_reader  :DRAW_RIGHT
      
      const_set_lazy(:DRAW_BOTTOM) { 1 << 7 }
      const_attr_reader  :DRAW_BOTTOM
      
      const_set_lazy(:DRAW_HCENTER) { 1 << 8 }
      const_attr_reader  :DRAW_HCENTER
      
      const_set_lazy(:DRAW_VCENTER) { 1 << 9 }
      const_attr_reader  :DRAW_VCENTER
      
      # Widget parts
      const_set_lazy(:WIDGET_NOWHERE) { -1 }
      const_attr_reader  :WIDGET_NOWHERE
      
      const_set_lazy(:WIDGET_WHOLE) { 0 }
      const_attr_reader  :WIDGET_WHOLE
      
      # Scrollbar parts
      const_set_lazy(:SCROLLBAR_UP_ARROW) { 1 }
      const_attr_reader  :SCROLLBAR_UP_ARROW
      
      const_set_lazy(:SCROLLBAR_DOWN_ARROW) { 2 }
      const_attr_reader  :SCROLLBAR_DOWN_ARROW
      
      const_set_lazy(:SCROLLBAR_LEFT_ARROW) { SCROLLBAR_UP_ARROW }
      const_attr_reader  :SCROLLBAR_LEFT_ARROW
      
      const_set_lazy(:SCROLLBAR_RIGHT_ARROW) { SCROLLBAR_DOWN_ARROW }
      const_attr_reader  :SCROLLBAR_RIGHT_ARROW
      
      const_set_lazy(:SCROLLBAR_UP_TRACK) { 3 }
      const_attr_reader  :SCROLLBAR_UP_TRACK
      
      const_set_lazy(:SCROLLBAR_DOWN_TRACK) { 4 }
      const_attr_reader  :SCROLLBAR_DOWN_TRACK
      
      const_set_lazy(:SCROLLBAR_LEFT_TRACK) { SCROLLBAR_UP_TRACK }
      const_attr_reader  :SCROLLBAR_LEFT_TRACK
      
      const_set_lazy(:SCROLLBAR_RIGHT_TRACK) { SCROLLBAR_DOWN_TRACK }
      const_attr_reader  :SCROLLBAR_RIGHT_TRACK
      
      const_set_lazy(:SCROLLBAR_THUMB) { 5 }
      const_attr_reader  :SCROLLBAR_THUMB
      
      # Scale parts
      const_set_lazy(:SCALE_UP_TRACK) { 1 }
      const_attr_reader  :SCALE_UP_TRACK
      
      const_set_lazy(:SCALE_LEFT_TRACK) { SCALE_UP_TRACK }
      const_attr_reader  :SCALE_LEFT_TRACK
      
      const_set_lazy(:SCALE_DOWN_TRACK) { 2 }
      const_attr_reader  :SCALE_DOWN_TRACK
      
      const_set_lazy(:SCALE_RIGHT_TRACK) { SCALE_DOWN_TRACK }
      const_attr_reader  :SCALE_RIGHT_TRACK
      
      const_set_lazy(:SCALE_THUMB) { 3 }
      const_attr_reader  :SCALE_THUMB
      
      # ToolItem parts
      const_set_lazy(:TOOLITEM_ARROW) { 1 }
      const_attr_reader  :TOOLITEM_ARROW
      
      # Combo parts
      const_set_lazy(:COMBO_ARROW) { 1 }
      const_attr_reader  :COMBO_ARROW
      
      const_set_lazy(:EDIT) { Array.typed(::Java::Char).new([Character.new(?E.ord), Character.new(?D.ord), Character.new(?I.ord), Character.new(?T.ord), 0]) }
      const_attr_reader  :EDIT
      
      const_set_lazy(:COMBOBOX) { Array.typed(::Java::Char).new([Character.new(?C.ord), Character.new(?O.ord), Character.new(?M.ord), Character.new(?B.ord), Character.new(?O.ord), Character.new(?B.ord), Character.new(?O.ord), Character.new(?X.ord), 0]) }
      const_attr_reader  :COMBOBOX
      
      const_set_lazy(:BUTTON) { Array.typed(::Java::Char).new([Character.new(?B.ord), Character.new(?U.ord), Character.new(?T.ord), Character.new(?T.ord), Character.new(?O.ord), Character.new(?N.ord), 0]) }
      const_attr_reader  :BUTTON
      
      const_set_lazy(:PROGRESS) { Array.typed(::Java::Char).new([Character.new(?P.ord), Character.new(?R.ord), Character.new(?O.ord), Character.new(?G.ord), Character.new(?R.ord), Character.new(?E.ord), Character.new(?S.ord), Character.new(?S.ord), 0]) }
      const_attr_reader  :PROGRESS
      
      const_set_lazy(:SCROLLBAR) { Array.typed(::Java::Char).new([Character.new(?S.ord), Character.new(?C.ord), Character.new(?R.ord), Character.new(?O.ord), Character.new(?L.ord), Character.new(?L.ord), Character.new(?B.ord), Character.new(?A.ord), Character.new(?R.ord), 0]) }
      const_attr_reader  :SCROLLBAR
      
      const_set_lazy(:TAB) { Array.typed(::Java::Char).new([Character.new(?T.ord), Character.new(?A.ord), Character.new(?B.ord), 0]) }
      const_attr_reader  :TAB
      
      const_set_lazy(:TRACKBAR) { Array.typed(::Java::Char).new([Character.new(?T.ord), Character.new(?R.ord), Character.new(?A.ord), Character.new(?C.ord), Character.new(?K.ord), Character.new(?B.ord), Character.new(?A.ord), Character.new(?R.ord), 0]) }
      const_attr_reader  :TRACKBAR
      
      const_set_lazy(:TOOLBAR) { Array.typed(::Java::Char).new([Character.new(?T.ord), Character.new(?O.ord), Character.new(?O.ord), Character.new(?L.ord), Character.new(?B.ord), Character.new(?A.ord), Character.new(?R.ord), 0]) }
      const_attr_reader  :TOOLBAR
      
      const_set_lazy(:TREEVIEW) { Array.typed(::Java::Char).new([Character.new(?T.ord), Character.new(?R.ord), Character.new(?E.ord), Character.new(?E.ord), Character.new(?V.ord), Character.new(?I.ord), Character.new(?E.ord), Character.new(?W.ord), 0]) }
      const_attr_reader  :TREEVIEW
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @state = nil
      @client_area = nil
      @state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      return Rectangle.new(@client_area.attr_x, @client_area.attr_y, @client_area.attr_width, @client_area.attr_height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
    end
    
    typesig { [Theme, Image, SwtGC, Rectangle] }
    def draw_image(theme, image, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # int /*long*/ hTheme = OS.OpenThemeData(0, getClassId());
        # RECT rect = new RECT ();
        # rect.left = bounds.x;
        # rect.right = bounds.x + bounds.width;
        # rect.top = bounds.y;
        # rect.bottom = bounds.y + bounds.height;
        # //TODO - remove reference to widgets.
        # ImageList imageList = new ImageList(0);
        # int imageIndex = imageList.add(image);
        # int[] part = getPartId(DrawData.WIDGET_WHOLE);
        # OS.DrawThemeIcon(hTheme, gc.handle, part[0], part[1], rect, imageList.getHandle(), imageIndex);
        # imageList.dispose();
        # OS.CloseThemeData(hTheme);
        rect = image.get_bounds
        gc.draw_image(image, 0, 0, rect.attr_width, rect.attr_height, bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
      end
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def draw_text(theme, text, flags, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        chars = CharArray.new(text.length)
        text.get_chars(0, chars.attr_length, chars, 0)
        text_flags = OS::DT_SINGLELINE
        if (!((flags & DrawData::DRAW_LEFT)).equal?(0))
          text_flags |= OS::DT_LEFT
        end
        if (!((flags & DrawData::DRAW_HCENTER)).equal?(0))
          text_flags |= OS::DT_CENTER
        end
        if (!((flags & DrawData::DRAW_RIGHT)).equal?(0))
          text_flags |= OS::DT_RIGHT
        end
        if (!((flags & DrawData::DRAW_TOP)).equal?(0))
          text_flags |= OS::DT_TOP
        end
        if (!((flags & DrawData::DRAW_BOTTOM)).equal?(0))
          text_flags |= OS::DT_BOTTOM
        end
        if (!((flags & DrawData::DRAW_VCENTER)).equal?(0))
          text_flags |= OS::DT_VCENTER
        end
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
        part = get_part_id(DrawData::WIDGET_WHOLE)
        i_part_id = part[0]
        i_state_id = part[1]
        OS._draw_theme_text(h_theme, gc.attr_handle, i_part_id, i_state_id, chars, chars.attr_length, text_flags, 0, rect)
        OS._close_theme_data(h_theme)
      end
    end
    
    typesig { [] }
    def get_class_id
      return BUTTON
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      return Array.typed(::Java::Int).new([0, 0])
    end
    
    typesig { [::Java::Int, Rectangle] }
    def get_bounds(part, bounds)
      return Rectangle.new(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return -1
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def measure_text(theme, text, flags, gc, bounds)
      if (!(OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed))
        return Rectangle.new(0, 0, 0, 0)
      end
      # long
      h_theme = OS._open_theme_data(0, get_class_id)
      chars = CharArray.new(text.length)
      text.get_chars(0, chars.attr_length, chars, 0)
      # TODO - constant for VCENTER and flags
      text_flags = 0 # OS.DT_VCENTER | OS.DT_SINGLELINE | OS.DT_CALCRECT;
      if (!((@style & SWT::LEFT)).equal?(0))
        text_flags |= OS::DT_LEFT
      end
      if (!((@style & SWT::CENTER)).equal?(0))
        text_flags |= OS::DT_CENTER
      end
      if (!((@style & SWT::RIGHT)).equal?(0))
        text_flags |= OS::DT_RIGHT
      end
      extent = RECT.new
      rect = nil
      if (!(bounds).nil?)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
      end
      part = get_part_id(DrawData::WIDGET_WHOLE)
      i_part_id = part[0]
      i_state_id = part[1]
      OS._get_theme_text_extent(h_theme, gc.attr_handle, i_part_id, i_state_id, chars, chars.attr_length, text_flags, rect, extent)
      OS._close_theme_data(h_theme)
      return Rectangle.new(extent.attr_left, extent.attr_top, extent.attr_right - extent.attr_left, extent.attr_bottom - extent.attr_top)
    end
    
    private
    alias_method :initialize__draw_data, :initialize
  end
  
end
