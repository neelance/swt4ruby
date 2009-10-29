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
  module GdkWindowAttrImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GdkWindowAttr 
    include_class_members GdkWindowAttrImports
    
    # @field cast=(gchar *)
    # int
    attr_accessor :title
    alias_method :attr_title, :title
    undef_method :title
    alias_method :attr_title=, :title=
    undef_method :title=
    
    attr_accessor :event_mask
    alias_method :attr_event_mask, :event_mask
    undef_method :event_mask
    alias_method :attr_event_mask=, :event_mask=
    undef_method :event_mask=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :wclass
    alias_method :attr_wclass, :wclass
    undef_method :wclass
    alias_method :attr_wclass=, :wclass=
    undef_method :wclass=
    
    # @field cast=(GdkVisual *)
    # int
    attr_accessor :visual
    alias_method :attr_visual, :visual
    undef_method :visual
    alias_method :attr_visual=, :visual=
    undef_method :visual=
    
    # @field cast=(GdkColormap *)
    # int
    attr_accessor :colormap
    alias_method :attr_colormap, :colormap
    undef_method :colormap
    alias_method :attr_colormap=, :colormap=
    undef_method :colormap=
    
    attr_accessor :window_type
    alias_method :attr_window_type, :window_type
    undef_method :window_type
    alias_method :attr_window_type=, :window_type=
    undef_method :window_type=
    
    # @field cast=(GdkCursor *)
    # int
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    # @field cast=(gchar *)
    # int
    attr_accessor :wmclass_name
    alias_method :attr_wmclass_name, :wmclass_name
    undef_method :wmclass_name
    alias_method :attr_wmclass_name=, :wmclass_name=
    undef_method :wmclass_name=
    
    # @field cast=(gchar *)
    # int
    attr_accessor :wmclass_class
    alias_method :attr_wmclass_class, :wmclass_class
    undef_method :wmclass_class
    alias_method :attr_wmclass_class=, :wmclass_class=
    undef_method :wmclass_class=
    
    attr_accessor :override_redirect
    alias_method :attr_override_redirect, :override_redirect
    undef_method :override_redirect
    alias_method :attr_override_redirect=, :override_redirect=
    undef_method :override_redirect=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._gdk_window_attr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @title = 0
      @event_mask = 0
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @wclass = 0
      @visual = 0
      @colormap = 0
      @window_type = 0
      @cursor = 0
      @wmclass_name = 0
      @wmclass_class = 0
      @override_redirect = false
    end
    
    private
    alias_method :initialize__gdk_window_attr, :initialize
  end
  
end
