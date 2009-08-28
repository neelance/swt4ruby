require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module DataBrowserListViewColumnDescImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class DataBrowserListViewColumnDesc 
    include_class_members DataBrowserListViewColumnDescImports
    
    # DataBrowserTableViewColumnDesc  propertyDesc;
    attr_accessor :property_desc_property_id
    alias_method :attr_property_desc_property_id, :property_desc_property_id
    undef_method :property_desc_property_id
    alias_method :attr_property_desc_property_id=, :property_desc_property_id=
    undef_method :property_desc_property_id=
    
    attr_accessor :property_desc_property_type
    alias_method :attr_property_desc_property_type, :property_desc_property_type
    undef_method :property_desc_property_type
    alias_method :attr_property_desc_property_type=, :property_desc_property_type=
    undef_method :property_desc_property_type=
    
    attr_accessor :property_desc_property_flags
    alias_method :attr_property_desc_property_flags, :property_desc_property_flags
    undef_method :property_desc_property_flags
    alias_method :attr_property_desc_property_flags=, :property_desc_property_flags=
    undef_method :property_desc_property_flags=
    
    # DataBrowserListViewHeaderDesc  headerBtnDesc;
    attr_accessor :header_btn_desc_version
    alias_method :attr_header_btn_desc_version, :header_btn_desc_version
    undef_method :header_btn_desc_version
    alias_method :attr_header_btn_desc_version=, :header_btn_desc_version=
    undef_method :header_btn_desc_version=
    
    attr_accessor :header_btn_desc_minimum_width
    alias_method :attr_header_btn_desc_minimum_width, :header_btn_desc_minimum_width
    undef_method :header_btn_desc_minimum_width
    alias_method :attr_header_btn_desc_minimum_width=, :header_btn_desc_minimum_width=
    undef_method :header_btn_desc_minimum_width=
    
    attr_accessor :header_btn_desc_maximum_width
    alias_method :attr_header_btn_desc_maximum_width, :header_btn_desc_maximum_width
    undef_method :header_btn_desc_maximum_width
    alias_method :attr_header_btn_desc_maximum_width=, :header_btn_desc_maximum_width=
    undef_method :header_btn_desc_maximum_width=
    
    attr_accessor :header_btn_desc_title_offset
    alias_method :attr_header_btn_desc_title_offset, :header_btn_desc_title_offset
    undef_method :header_btn_desc_title_offset
    alias_method :attr_header_btn_desc_title_offset=, :header_btn_desc_title_offset=
    undef_method :header_btn_desc_title_offset=
    
    attr_accessor :header_btn_desc_title_string
    alias_method :attr_header_btn_desc_title_string, :header_btn_desc_title_string
    undef_method :header_btn_desc_title_string
    alias_method :attr_header_btn_desc_title_string=, :header_btn_desc_title_string=
    undef_method :header_btn_desc_title_string=
    
    attr_accessor :header_btn_desc_initial_order
    alias_method :attr_header_btn_desc_initial_order, :header_btn_desc_initial_order
    undef_method :header_btn_desc_initial_order
    alias_method :attr_header_btn_desc_initial_order=, :header_btn_desc_initial_order=
    undef_method :header_btn_desc_initial_order=
    
    # ControlFontStyleRec headerBtnDesc_btnFontStyle;
    attr_accessor :header_btn_desc_btn_font_style_flags
    alias_method :attr_header_btn_desc_btn_font_style_flags, :header_btn_desc_btn_font_style_flags
    undef_method :header_btn_desc_btn_font_style_flags
    alias_method :attr_header_btn_desc_btn_font_style_flags=, :header_btn_desc_btn_font_style_flags=
    undef_method :header_btn_desc_btn_font_style_flags=
    
    attr_accessor :header_btn_desc_btn_font_style_font
    alias_method :attr_header_btn_desc_btn_font_style_font, :header_btn_desc_btn_font_style_font
    undef_method :header_btn_desc_btn_font_style_font
    alias_method :attr_header_btn_desc_btn_font_style_font=, :header_btn_desc_btn_font_style_font=
    undef_method :header_btn_desc_btn_font_style_font=
    
    attr_accessor :header_btn_desc_btn_font_style_size
    alias_method :attr_header_btn_desc_btn_font_style_size, :header_btn_desc_btn_font_style_size
    undef_method :header_btn_desc_btn_font_style_size
    alias_method :attr_header_btn_desc_btn_font_style_size=, :header_btn_desc_btn_font_style_size=
    undef_method :header_btn_desc_btn_font_style_size=
    
    attr_accessor :header_btn_desc_btn_font_style_style
    alias_method :attr_header_btn_desc_btn_font_style_style, :header_btn_desc_btn_font_style_style
    undef_method :header_btn_desc_btn_font_style_style
    alias_method :attr_header_btn_desc_btn_font_style_style=, :header_btn_desc_btn_font_style_style=
    undef_method :header_btn_desc_btn_font_style_style=
    
    attr_accessor :header_btn_desc_btn_font_style_mode
    alias_method :attr_header_btn_desc_btn_font_style_mode, :header_btn_desc_btn_font_style_mode
    undef_method :header_btn_desc_btn_font_style_mode
    alias_method :attr_header_btn_desc_btn_font_style_mode=, :header_btn_desc_btn_font_style_mode=
    undef_method :header_btn_desc_btn_font_style_mode=
    
    attr_accessor :header_btn_desc_btn_font_style_just
    alias_method :attr_header_btn_desc_btn_font_style_just, :header_btn_desc_btn_font_style_just
    undef_method :header_btn_desc_btn_font_style_just
    alias_method :attr_header_btn_desc_btn_font_style_just=, :header_btn_desc_btn_font_style_just=
    undef_method :header_btn_desc_btn_font_style_just=
    
    # RGBColor headerBtnDesc_btnFontStyle_foreColor;
    attr_accessor :header_btn_desc_btn_font_style_fore_color_red
    alias_method :attr_header_btn_desc_btn_font_style_fore_color_red, :header_btn_desc_btn_font_style_fore_color_red
    undef_method :header_btn_desc_btn_font_style_fore_color_red
    alias_method :attr_header_btn_desc_btn_font_style_fore_color_red=, :header_btn_desc_btn_font_style_fore_color_red=
    undef_method :header_btn_desc_btn_font_style_fore_color_red=
    
    attr_accessor :header_btn_desc_btn_font_style_fore_color_green
    alias_method :attr_header_btn_desc_btn_font_style_fore_color_green, :header_btn_desc_btn_font_style_fore_color_green
    undef_method :header_btn_desc_btn_font_style_fore_color_green
    alias_method :attr_header_btn_desc_btn_font_style_fore_color_green=, :header_btn_desc_btn_font_style_fore_color_green=
    undef_method :header_btn_desc_btn_font_style_fore_color_green=
    
    attr_accessor :header_btn_desc_btn_font_style_fore_color_blue
    alias_method :attr_header_btn_desc_btn_font_style_fore_color_blue, :header_btn_desc_btn_font_style_fore_color_blue
    undef_method :header_btn_desc_btn_font_style_fore_color_blue
    alias_method :attr_header_btn_desc_btn_font_style_fore_color_blue=, :header_btn_desc_btn_font_style_fore_color_blue=
    undef_method :header_btn_desc_btn_font_style_fore_color_blue=
    
    # RGBColor headerBtnDesc_btnFontStyle_backColor;
    attr_accessor :header_btn_desc_btn_font_style_back_color_red
    alias_method :attr_header_btn_desc_btn_font_style_back_color_red, :header_btn_desc_btn_font_style_back_color_red
    undef_method :header_btn_desc_btn_font_style_back_color_red
    alias_method :attr_header_btn_desc_btn_font_style_back_color_red=, :header_btn_desc_btn_font_style_back_color_red=
    undef_method :header_btn_desc_btn_font_style_back_color_red=
    
    attr_accessor :header_btn_desc_btn_font_style_back_color_green
    alias_method :attr_header_btn_desc_btn_font_style_back_color_green, :header_btn_desc_btn_font_style_back_color_green
    undef_method :header_btn_desc_btn_font_style_back_color_green
    alias_method :attr_header_btn_desc_btn_font_style_back_color_green=, :header_btn_desc_btn_font_style_back_color_green=
    undef_method :header_btn_desc_btn_font_style_back_color_green=
    
    attr_accessor :header_btn_desc_btn_font_style_back_color_blue
    alias_method :attr_header_btn_desc_btn_font_style_back_color_blue, :header_btn_desc_btn_font_style_back_color_blue
    undef_method :header_btn_desc_btn_font_style_back_color_blue
    alias_method :attr_header_btn_desc_btn_font_style_back_color_blue=, :header_btn_desc_btn_font_style_back_color_blue=
    undef_method :header_btn_desc_btn_font_style_back_color_blue=
    
    # public ControlButtonContentInfo headerBtnDesc_btnContentInfo;
    attr_accessor :header_btn_desc_btn_content_info_content_type
    alias_method :attr_header_btn_desc_btn_content_info_content_type, :header_btn_desc_btn_content_info_content_type
    undef_method :header_btn_desc_btn_content_info_content_type
    alias_method :attr_header_btn_desc_btn_content_info_content_type=, :header_btn_desc_btn_content_info_content_type=
    undef_method :header_btn_desc_btn_content_info_content_type=
    
    attr_accessor :header_btn_desc_btn_content_info_icon_ref
    alias_method :attr_header_btn_desc_btn_content_info_icon_ref, :header_btn_desc_btn_content_info_icon_ref
    undef_method :header_btn_desc_btn_content_info_icon_ref
    alias_method :attr_header_btn_desc_btn_content_info_icon_ref=, :header_btn_desc_btn_content_info_icon_ref=
    undef_method :header_btn_desc_btn_content_info_icon_ref=
    
    class_module.module_eval {
      # union field
      const_set_lazy(:Sizeof) { 58 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @property_desc_property_id = 0
      @property_desc_property_type = 0
      @property_desc_property_flags = 0
      @header_btn_desc_version = 0
      @header_btn_desc_minimum_width = 0
      @header_btn_desc_maximum_width = 0
      @header_btn_desc_title_offset = 0
      @header_btn_desc_title_string = 0
      @header_btn_desc_initial_order = 0
      @header_btn_desc_btn_font_style_flags = 0
      @header_btn_desc_btn_font_style_font = 0
      @header_btn_desc_btn_font_style_size = 0
      @header_btn_desc_btn_font_style_style = 0
      @header_btn_desc_btn_font_style_mode = 0
      @header_btn_desc_btn_font_style_just = 0
      @header_btn_desc_btn_font_style_fore_color_red = 0
      @header_btn_desc_btn_font_style_fore_color_green = 0
      @header_btn_desc_btn_font_style_fore_color_blue = 0
      @header_btn_desc_btn_font_style_back_color_red = 0
      @header_btn_desc_btn_font_style_back_color_green = 0
      @header_btn_desc_btn_font_style_back_color_blue = 0
      @header_btn_desc_btn_content_info_content_type = 0
      @header_btn_desc_btn_content_info_icon_ref = 0
    end
    
    private
    alias_method :initialize__data_browser_list_view_column_desc, :initialize
  end
  
end
