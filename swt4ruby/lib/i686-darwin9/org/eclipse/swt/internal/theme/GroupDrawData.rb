require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module GroupDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeGroupBoxDrawInfo
    }
  end
  
  class GroupDrawData < GroupDrawDataImports.const_get :DrawData
    include_class_members GroupDrawDataImports
    
    attr_accessor :header_width
    alias_method :attr_header_width, :header_width
    undef_method :header_width
    alias_method :attr_header_width=, :header_width=
    undef_method :header_width=
    
    attr_accessor :header_height
    alias_method :attr_header_height, :header_height
    undef_method :header_height
    alias_method :attr_header_height=, :header_height=
    undef_method :header_height=
    
    attr_accessor :header_area
    alias_method :attr_header_area, :header_area
    undef_method :header_area
    alias_method :attr_header_area=, :header_area=
    undef_method :header_area=
    
    typesig { [] }
    def initialize
      @header_width = 0
      @header_height = 0
      @header_area = nil
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [] }
    def get_info
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      info = HIThemeGroupBoxDrawInfo.new
      info.attr_version = 0
      info.attr_kind = OS.attr_k_hitheme_group_box_kind_primary
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        info.attr_kind = OS.attr_k_theme_popup_button
      end
      if (!((state & DrawData::DISABLED)).equal?(0))
        info.attr_state = !((state & DrawData::ACTIVE)).equal?(0) ? OS.attr_k_theme_state_unavailable : OS.attr_k_theme_state_unavailable_inactive
      else
        if (!((state & DrawData::PRESSED)).equal?(0))
          info.attr_state = OS.attr_k_theme_state_pressed
        else
          info.attr_state = !((state & DrawData::ACTIVE)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_inactive
        end
      end
      return info
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      info = get_info
      header_height = @header_height + 1
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y + header_height
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height - header_height
      OS._hitheme_draw_group_box(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
      metric = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@header_area).nil?)
        OS._get_theme_metric(OS.attr_k_theme_metric_large_tab_caps_width, metric)
        caps_width = metric[0]
        @header_area.attr_x = bounds.attr_x + caps_width
        @header_area.attr_y = bounds.attr_y
        @header_area.attr_width = bounds.attr_width - caps_width * 2
        @header_area.attr_height = @header_height
      end
      if (!(self.attr_client_area).nil?)
        OS._get_theme_metric(OS.attr_k_theme_metric_primary_group_box_content_inset, metric)
        inset = metric[0]
        self.attr_client_area.attr_x = bounds.attr_x + inset
        self.attr_client_area.attr_y = bounds.attr_y + inset + header_height
        self.attr_client_area.attr_width = bounds.attr_width - (2 * inset)
        self.attr_client_area.attr_height = bounds.attr_height - (2 * inset) - header_height
      end
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__group_draw_data, :initialize
  end
  
end
