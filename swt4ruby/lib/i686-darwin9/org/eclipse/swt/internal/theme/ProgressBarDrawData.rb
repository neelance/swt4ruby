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
  module ProgressBarDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTrackDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ProgressTrackInfo
    }
  end
  
  class ProgressBarDrawData < ProgressBarDrawDataImports.const_get :RangeDrawData
    include_class_members ProgressBarDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [] }
    def get_info
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      info = HIThemeTrackDrawInfo.new
      info.attr_min = self.attr_minimum
      info.attr_max = self.attr_maximum
      info.attr_value = self.attr_selection
      info.attr_kind = OS.attr_k_theme_progress_bar_medium
      info.attr_attributes = OS.attr_k_theme_track_show_thumb
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        info.attr_attributes |= OS.attr_k_theme_track_horizontal
      end
      info.attr_enable_state = OS.attr_k_theme_track_inactive
      if (!((state & DrawData::ACTIVE)).equal?(0))
        info.attr_enable_state = OS.attr_k_theme_track_active
      end
      if (!((state & DrawData::DISABLED)).equal?(0))
        info.attr_enable_state = OS.attr_k_theme_track_disabled
      end
      info.attr_progress = ProgressTrackInfo.new
      return info
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      info = get_info
      info.attr_bounds_x = bounds.attr_x
      info.attr_bounds_y = bounds.attr_y
      info.attr_bounds_width = bounds.attr_width
      info.attr_bounds_height = bounds.attr_height
      info.attr_progress = ProgressTrackInfo.new
      OS._hitheme_draw_track(info, nil, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__progress_bar_draw_data, :initialize
  end
  
end
