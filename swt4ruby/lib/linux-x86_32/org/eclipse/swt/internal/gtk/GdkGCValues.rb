require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module GdkGCValuesImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkGCValues 
    include_class_members GdkGCValuesImports
    
    # @field accessor=foreground.pixel,cast=(guint32)
    attr_accessor :foreground_pixel
    alias_method :attr_foreground_pixel, :foreground_pixel
    undef_method :foreground_pixel
    alias_method :attr_foreground_pixel=, :foreground_pixel=
    undef_method :foreground_pixel=
    
    # @field accessor=foreground.red,cast=(guint16)
    attr_accessor :foreground_red
    alias_method :attr_foreground_red, :foreground_red
    undef_method :foreground_red
    alias_method :attr_foreground_red=, :foreground_red=
    undef_method :foreground_red=
    
    # @field accessor=foreground.green,cast=(guint16)
    attr_accessor :foreground_green
    alias_method :attr_foreground_green, :foreground_green
    undef_method :foreground_green
    alias_method :attr_foreground_green=, :foreground_green=
    undef_method :foreground_green=
    
    # @field accessor=foreground.blue,cast=(guint16)
    attr_accessor :foreground_blue
    alias_method :attr_foreground_blue, :foreground_blue
    undef_method :foreground_blue
    alias_method :attr_foreground_blue=, :foreground_blue=
    undef_method :foreground_blue=
    
    # @field accessor=background.pixel,cast=(guint32)
    attr_accessor :background_pixel
    alias_method :attr_background_pixel, :background_pixel
    undef_method :background_pixel
    alias_method :attr_background_pixel=, :background_pixel=
    undef_method :background_pixel=
    
    # @field accessor=background.red,cast=(guint16)
    attr_accessor :background_red
    alias_method :attr_background_red, :background_red
    undef_method :background_red
    alias_method :attr_background_red=, :background_red=
    undef_method :background_red=
    
    # @field accessor=background.green,cast=(guint16)
    attr_accessor :background_green
    alias_method :attr_background_green, :background_green
    undef_method :background_green
    alias_method :attr_background_green=, :background_green=
    undef_method :background_green=
    
    # @field accessor=background.blue,cast=(guint16)
    attr_accessor :background_blue
    alias_method :attr_background_blue, :background_blue
    undef_method :background_blue
    alias_method :attr_background_blue=, :background_blue=
    undef_method :background_blue=
    
    # @field cast=(GdkFont *)
    # long
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    # @field cast=(GdkFunction)
    # long
    attr_accessor :function
    alias_method :attr_function, :function
    undef_method :function
    alias_method :attr_function=, :function=
    undef_method :function=
    
    # @field cast=(GdkFill)
    attr_accessor :fill
    alias_method :attr_fill, :fill
    undef_method :fill
    alias_method :attr_fill=, :fill=
    undef_method :fill=
    
    # @field cast=(GdkPixmap *)
    # long
    attr_accessor :tile
    alias_method :attr_tile, :tile
    undef_method :tile
    alias_method :attr_tile=, :tile=
    undef_method :tile=
    
    # @field cast=(GdkPixmap *)
    # long
    attr_accessor :stipple
    alias_method :attr_stipple, :stipple
    undef_method :stipple
    alias_method :attr_stipple=, :stipple=
    undef_method :stipple=
    
    # @field cast=(GdkPixmap *)
    # long
    attr_accessor :clip_mask
    alias_method :attr_clip_mask, :clip_mask
    undef_method :clip_mask
    alias_method :attr_clip_mask=, :clip_mask=
    undef_method :clip_mask=
    
    # @field cast=(GdkSubwindowMode)
    attr_accessor :subwindow_mode
    alias_method :attr_subwindow_mode, :subwindow_mode
    undef_method :subwindow_mode
    alias_method :attr_subwindow_mode=, :subwindow_mode=
    undef_method :subwindow_mode=
    
    # @field cast=(gint)
    attr_accessor :ts_x_origin
    alias_method :attr_ts_x_origin, :ts_x_origin
    undef_method :ts_x_origin
    alias_method :attr_ts_x_origin=, :ts_x_origin=
    undef_method :ts_x_origin=
    
    # @field cast=(gint)
    attr_accessor :ts_y_origin
    alias_method :attr_ts_y_origin, :ts_y_origin
    undef_method :ts_y_origin
    alias_method :attr_ts_y_origin=, :ts_y_origin=
    undef_method :ts_y_origin=
    
    # @field cast=(gint)
    attr_accessor :clip_x_origin
    alias_method :attr_clip_x_origin, :clip_x_origin
    undef_method :clip_x_origin
    alias_method :attr_clip_x_origin=, :clip_x_origin=
    undef_method :clip_x_origin=
    
    # @field cast=(gint)
    attr_accessor :clip_y_origin
    alias_method :attr_clip_y_origin, :clip_y_origin
    undef_method :clip_y_origin
    alias_method :attr_clip_y_origin=, :clip_y_origin=
    undef_method :clip_y_origin=
    
    # @field cast=(gint)
    attr_accessor :graphics_exposures
    alias_method :attr_graphics_exposures, :graphics_exposures
    undef_method :graphics_exposures
    alias_method :attr_graphics_exposures=, :graphics_exposures=
    undef_method :graphics_exposures=
    
    # @field cast=(gint)
    attr_accessor :line_width
    alias_method :attr_line_width, :line_width
    undef_method :line_width
    alias_method :attr_line_width=, :line_width=
    undef_method :line_width=
    
    # @field cast=(GdkLineStyle)
    attr_accessor :line_style
    alias_method :attr_line_style, :line_style
    undef_method :line_style
    alias_method :attr_line_style=, :line_style=
    undef_method :line_style=
    
    # @field cast=(GdkCapStyle)
    attr_accessor :cap_style
    alias_method :attr_cap_style, :cap_style
    undef_method :cap_style
    alias_method :attr_cap_style=, :cap_style=
    undef_method :cap_style=
    
    # @field cast=(GdkJoinStyle)
    attr_accessor :join_style
    alias_method :attr_join_style, :join_style
    undef_method :join_style
    alias_method :attr_join_style=, :join_style=
    undef_method :join_style=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_gcvalues_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @foreground_pixel = 0
      @foreground_red = 0
      @foreground_green = 0
      @foreground_blue = 0
      @background_pixel = 0
      @background_red = 0
      @background_green = 0
      @background_blue = 0
      @font = 0
      @function = 0
      @fill = 0
      @tile = 0
      @stipple = 0
      @clip_mask = 0
      @subwindow_mode = 0
      @ts_x_origin = 0
      @ts_y_origin = 0
      @clip_x_origin = 0
      @clip_y_origin = 0
      @graphics_exposures = 0
      @line_width = 0
      @line_style = 0
      @cap_style = 0
      @join_style = 0
    end
    
    private
    alias_method :initialize__gdk_gcvalues, :initialize
  end
  
end
