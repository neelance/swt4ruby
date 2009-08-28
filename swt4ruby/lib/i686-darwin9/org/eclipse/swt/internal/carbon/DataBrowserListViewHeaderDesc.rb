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
  module DataBrowserListViewHeaderDescImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class DataBrowserListViewHeaderDesc 
    include_class_members DataBrowserListViewHeaderDescImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :minimum_width
    alias_method :attr_minimum_width, :minimum_width
    undef_method :minimum_width
    alias_method :attr_minimum_width=, :minimum_width=
    undef_method :minimum_width=
    
    attr_accessor :maximum_width
    alias_method :attr_maximum_width, :maximum_width
    undef_method :maximum_width
    alias_method :attr_maximum_width=, :maximum_width=
    undef_method :maximum_width=
    
    attr_accessor :title_offset
    alias_method :attr_title_offset, :title_offset
    undef_method :title_offset
    alias_method :attr_title_offset=, :title_offset=
    undef_method :title_offset=
    
    attr_accessor :title_string
    alias_method :attr_title_string, :title_string
    undef_method :title_string
    alias_method :attr_title_string=, :title_string=
    undef_method :title_string=
    
    attr_accessor :initial_order
    alias_method :attr_initial_order, :initial_order
    undef_method :initial_order
    alias_method :attr_initial_order=, :initial_order=
    undef_method :initial_order=
    
    # ControlFontStyleRec  btnFontStyle;
    attr_accessor :btn_font_style_flags
    alias_method :attr_btn_font_style_flags, :btn_font_style_flags
    undef_method :btn_font_style_flags
    alias_method :attr_btn_font_style_flags=, :btn_font_style_flags=
    undef_method :btn_font_style_flags=
    
    attr_accessor :btn_font_style_font
    alias_method :attr_btn_font_style_font, :btn_font_style_font
    undef_method :btn_font_style_font
    alias_method :attr_btn_font_style_font=, :btn_font_style_font=
    undef_method :btn_font_style_font=
    
    attr_accessor :btn_font_style_size
    alias_method :attr_btn_font_style_size, :btn_font_style_size
    undef_method :btn_font_style_size
    alias_method :attr_btn_font_style_size=, :btn_font_style_size=
    undef_method :btn_font_style_size=
    
    attr_accessor :btn_font_style_style
    alias_method :attr_btn_font_style_style, :btn_font_style_style
    undef_method :btn_font_style_style
    alias_method :attr_btn_font_style_style=, :btn_font_style_style=
    undef_method :btn_font_style_style=
    
    attr_accessor :btn_font_style_mode
    alias_method :attr_btn_font_style_mode, :btn_font_style_mode
    undef_method :btn_font_style_mode
    alias_method :attr_btn_font_style_mode=, :btn_font_style_mode=
    undef_method :btn_font_style_mode=
    
    attr_accessor :btn_font_style_just
    alias_method :attr_btn_font_style_just, :btn_font_style_just
    undef_method :btn_font_style_just
    alias_method :attr_btn_font_style_just=, :btn_font_style_just=
    undef_method :btn_font_style_just=
    
    # RGBColor btnFontStyle_foreColor;
    attr_accessor :btn_font_style_fore_color_red
    alias_method :attr_btn_font_style_fore_color_red, :btn_font_style_fore_color_red
    undef_method :btn_font_style_fore_color_red
    alias_method :attr_btn_font_style_fore_color_red=, :btn_font_style_fore_color_red=
    undef_method :btn_font_style_fore_color_red=
    
    attr_accessor :btn_font_style_fore_color_green
    alias_method :attr_btn_font_style_fore_color_green, :btn_font_style_fore_color_green
    undef_method :btn_font_style_fore_color_green
    alias_method :attr_btn_font_style_fore_color_green=, :btn_font_style_fore_color_green=
    undef_method :btn_font_style_fore_color_green=
    
    attr_accessor :btn_font_style_fore_color_blue
    alias_method :attr_btn_font_style_fore_color_blue, :btn_font_style_fore_color_blue
    undef_method :btn_font_style_fore_color_blue
    alias_method :attr_btn_font_style_fore_color_blue=, :btn_font_style_fore_color_blue=
    undef_method :btn_font_style_fore_color_blue=
    
    # RGBColor btnFontStyle_backColor;
    attr_accessor :btn_font_style_back_color_red
    alias_method :attr_btn_font_style_back_color_red, :btn_font_style_back_color_red
    undef_method :btn_font_style_back_color_red
    alias_method :attr_btn_font_style_back_color_red=, :btn_font_style_back_color_red=
    undef_method :btn_font_style_back_color_red=
    
    attr_accessor :btn_font_style_back_color_green
    alias_method :attr_btn_font_style_back_color_green, :btn_font_style_back_color_green
    undef_method :btn_font_style_back_color_green
    alias_method :attr_btn_font_style_back_color_green=, :btn_font_style_back_color_green=
    undef_method :btn_font_style_back_color_green=
    
    attr_accessor :btn_font_style_back_color_blue
    alias_method :attr_btn_font_style_back_color_blue, :btn_font_style_back_color_blue
    undef_method :btn_font_style_back_color_blue
    alias_method :attr_btn_font_style_back_color_blue=, :btn_font_style_back_color_blue=
    undef_method :btn_font_style_back_color_blue=
    
    # ControlButtonContentInfo  btnContentInfo;
    attr_accessor :btn_content_info_content_type
    alias_method :attr_btn_content_info_content_type, :btn_content_info_content_type
    undef_method :btn_content_info_content_type
    alias_method :attr_btn_content_info_content_type=, :btn_content_info_content_type=
    undef_method :btn_content_info_content_type=
    
    attr_accessor :btn_content_info_icon_ref
    alias_method :attr_btn_content_info_icon_ref, :btn_content_info_icon_ref
    undef_method :btn_content_info_icon_ref
    alias_method :attr_btn_content_info_icon_ref=, :btn_content_info_icon_ref=
    undef_method :btn_content_info_icon_ref=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 46 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @minimum_width = 0
      @maximum_width = 0
      @title_offset = 0
      @title_string = 0
      @initial_order = 0
      @btn_font_style_flags = 0
      @btn_font_style_font = 0
      @btn_font_style_size = 0
      @btn_font_style_style = 0
      @btn_font_style_mode = 0
      @btn_font_style_just = 0
      @btn_font_style_fore_color_red = 0
      @btn_font_style_fore_color_green = 0
      @btn_font_style_fore_color_blue = 0
      @btn_font_style_back_color_red = 0
      @btn_font_style_back_color_green = 0
      @btn_font_style_back_color_blue = 0
      @btn_content_info_content_type = 0
      @btn_content_info_icon_ref = 0
    end
    
    private
    alias_method :initialize__data_browser_list_view_header_desc, :initialize
  end
  
end
