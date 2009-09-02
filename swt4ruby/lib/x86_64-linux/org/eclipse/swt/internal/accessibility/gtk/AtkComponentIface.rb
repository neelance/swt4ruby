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
module Org::Eclipse::Swt::Internal::Accessibility::Gtk
  module AtkComponentIfaceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class AtkComponentIface 
    include_class_members AtkComponentIfaceImports
    
    # @field cast=(guint (*)())
    # int
    attr_accessor :add_focus_handler
    alias_method :attr_add_focus_handler, :add_focus_handler
    undef_method :add_focus_handler
    alias_method :attr_add_focus_handler=, :add_focus_handler=
    undef_method :add_focus_handler=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :contains
    alias_method :attr_contains, :contains
    undef_method :contains
    alias_method :attr_contains=, :contains=
    undef_method :contains=
    
    # @field cast=(AtkObject *(*)())
    # int
    attr_accessor :ref_accessible_at_point
    alias_method :attr_ref_accessible_at_point, :ref_accessible_at_point
    undef_method :ref_accessible_at_point
    alias_method :attr_ref_accessible_at_point=, :ref_accessible_at_point=
    undef_method :ref_accessible_at_point=
    
    # @field cast=(void (*)())
    # int
    attr_accessor :get_extents
    alias_method :attr_get_extents, :get_extents
    undef_method :get_extents
    alias_method :attr_get_extents=, :get_extents=
    undef_method :get_extents=
    
    # @field cast=(void (*)())
    # int
    attr_accessor :get_position
    alias_method :attr_get_position, :get_position
    undef_method :get_position
    alias_method :attr_get_position=, :get_position=
    undef_method :get_position=
    
    # @field cast=(void (*)())
    # int
    attr_accessor :get_size
    alias_method :attr_get_size, :get_size
    undef_method :get_size
    alias_method :attr_get_size=, :get_size=
    undef_method :get_size=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :grab_focus
    alias_method :attr_grab_focus, :grab_focus
    undef_method :grab_focus
    alias_method :attr_grab_focus=, :grab_focus=
    undef_method :grab_focus=
    
    # @field cast=(void (*)())
    # int
    attr_accessor :remove_focus_handler
    alias_method :attr_remove_focus_handler, :remove_focus_handler
    undef_method :remove_focus_handler
    alias_method :attr_remove_focus_handler=, :remove_focus_handler=
    undef_method :remove_focus_handler=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :set_extents
    alias_method :attr_set_extents, :set_extents
    undef_method :set_extents
    alias_method :attr_set_extents=, :set_extents=
    undef_method :set_extents=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :set_position
    alias_method :attr_set_position, :set_position
    undef_method :set_position
    alias_method :attr_set_position=, :set_position=
    undef_method :set_position=
    
    # @field cast=(gboolean (*)())
    # int
    attr_accessor :set_size
    alias_method :attr_set_size, :set_size
    undef_method :set_size
    alias_method :attr_set_size=, :set_size=
    undef_method :set_size=
    
    # @field cast=(AtkLayer (*)())
    # int
    attr_accessor :get_layer
    alias_method :attr_get_layer, :get_layer
    undef_method :get_layer
    alias_method :attr_get_layer=, :get_layer=
    undef_method :get_layer=
    
    # @field cast=(gint (*)())
    # int
    attr_accessor :get_mdi_zorder
    alias_method :attr_get_mdi_zorder, :get_mdi_zorder
    undef_method :get_mdi_zorder
    alias_method :attr_get_mdi_zorder=, :get_mdi_zorder=
    undef_method :get_mdi_zorder=
    
    typesig { [] }
    def initialize
      @add_focus_handler = 0
      @contains = 0
      @ref_accessible_at_point = 0
      @get_extents = 0
      @get_position = 0
      @get_size = 0
      @grab_focus = 0
      @remove_focus_handler = 0
      @set_extents = 0
      @set_position = 0
      @set_size = 0
      @get_layer = 0
      @get_mdi_zorder = 0
    end
    
    private
    alias_method :initialize__atk_component_iface, :initialize
  end
  
end
