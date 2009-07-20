require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others. All rights reserved.
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
  module AtkObjectClassImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Accessibility::Gtk
    }
  end
  
  class AtkObjectClass 
    include_class_members AtkObjectClassImports
    
    # int
    attr_accessor :get_name
    alias_method :attr_get_name, :get_name
    undef_method :get_name
    alias_method :attr_get_name=, :get_name=
    undef_method :get_name=
    
    # int
    attr_accessor :get_description
    alias_method :attr_get_description, :get_description
    undef_method :get_description
    alias_method :attr_get_description=, :get_description=
    undef_method :get_description=
    
    # int
    attr_accessor :get_parent
    alias_method :attr_get_parent, :get_parent
    undef_method :get_parent
    alias_method :attr_get_parent=, :get_parent=
    undef_method :get_parent=
    
    # int
    attr_accessor :get_n_children
    alias_method :attr_get_n_children, :get_n_children
    undef_method :get_n_children
    alias_method :attr_get_n_children=, :get_n_children=
    undef_method :get_n_children=
    
    # int
    attr_accessor :ref_child
    alias_method :attr_ref_child, :ref_child
    undef_method :ref_child
    alias_method :attr_ref_child=, :ref_child=
    undef_method :ref_child=
    
    # int
    attr_accessor :get_index_in_parent
    alias_method :attr_get_index_in_parent, :get_index_in_parent
    undef_method :get_index_in_parent
    alias_method :attr_get_index_in_parent=, :get_index_in_parent=
    undef_method :get_index_in_parent=
    
    # int
    attr_accessor :ref_relation_set
    alias_method :attr_ref_relation_set, :ref_relation_set
    undef_method :ref_relation_set
    alias_method :attr_ref_relation_set=, :ref_relation_set=
    undef_method :ref_relation_set=
    
    # int
    attr_accessor :get_role
    alias_method :attr_get_role, :get_role
    undef_method :get_role
    alias_method :attr_get_role=, :get_role=
    undef_method :get_role=
    
    # int
    attr_accessor :get_layer
    alias_method :attr_get_layer, :get_layer
    undef_method :get_layer
    alias_method :attr_get_layer=, :get_layer=
    undef_method :get_layer=
    
    # int
    attr_accessor :get_mdi_zorder
    alias_method :attr_get_mdi_zorder, :get_mdi_zorder
    undef_method :get_mdi_zorder
    alias_method :attr_get_mdi_zorder=, :get_mdi_zorder=
    undef_method :get_mdi_zorder=
    
    # int
    attr_accessor :ref_state_set
    alias_method :attr_ref_state_set, :ref_state_set
    undef_method :ref_state_set
    alias_method :attr_ref_state_set=, :ref_state_set=
    undef_method :ref_state_set=
    
    # int
    attr_accessor :set_name
    alias_method :attr_set_name, :set_name
    undef_method :set_name
    alias_method :attr_set_name=, :set_name=
    undef_method :set_name=
    
    # int
    attr_accessor :set_description
    alias_method :attr_set_description, :set_description
    undef_method :set_description
    alias_method :attr_set_description=, :set_description=
    undef_method :set_description=
    
    # int
    attr_accessor :set_parent
    alias_method :attr_set_parent, :set_parent
    undef_method :set_parent
    alias_method :attr_set_parent=, :set_parent=
    undef_method :set_parent=
    
    # int
    attr_accessor :set_role
    alias_method :attr_set_role, :set_role
    undef_method :set_role
    alias_method :attr_set_role=, :set_role=
    undef_method :set_role=
    
    # int
    attr_accessor :connect_property_change_handler
    alias_method :attr_connect_property_change_handler, :connect_property_change_handler
    undef_method :connect_property_change_handler
    alias_method :attr_connect_property_change_handler=, :connect_property_change_handler=
    undef_method :connect_property_change_handler=
    
    # int
    attr_accessor :remove_property_change_handler
    alias_method :attr_remove_property_change_handler, :remove_property_change_handler
    undef_method :remove_property_change_handler
    alias_method :attr_remove_property_change_handler=, :remove_property_change_handler=
    undef_method :remove_property_change_handler=
    
    # int
    attr_accessor :initialize
    alias_method :attr_initialize, :initialize
    undef_method :initialize
    alias_method :attr_initialize=, :initialize=
    undef_method :initialize=
    
    # int
    attr_accessor :children_changed
    alias_method :attr_children_changed, :children_changed
    undef_method :children_changed
    alias_method :attr_children_changed=, :children_changed=
    undef_method :children_changed=
    
    # int
    attr_accessor :focus_event
    alias_method :attr_focus_event, :focus_event
    undef_method :focus_event
    alias_method :attr_focus_event=, :focus_event=
    undef_method :focus_event=
    
    # int
    attr_accessor :property_change
    alias_method :attr_property_change, :property_change
    undef_method :property_change
    alias_method :attr_property_change=, :property_change=
    undef_method :property_change=
    
    # int
    attr_accessor :state_change
    alias_method :attr_state_change, :state_change
    undef_method :state_change
    alias_method :attr_state_change=, :state_change=
    undef_method :state_change=
    
    # int
    attr_accessor :visible_data_changed
    alias_method :attr_visible_data_changed, :visible_data_changed
    undef_method :visible_data_changed
    alias_method :attr_visible_data_changed=, :visible_data_changed=
    undef_method :visible_data_changed=
    
    typesig { [] }
    def initialize
      @get_name = 0
      @get_description = 0
      @get_parent = 0
      @get_n_children = 0
      @ref_child = 0
      @get_index_in_parent = 0
      @ref_relation_set = 0
      @get_role = 0
      @get_layer = 0
      @get_mdi_zorder = 0
      @ref_state_set = 0
      @set_name = 0
      @set_description = 0
      @set_parent = 0
      @set_role = 0
      @connect_property_change_handler = 0
      @remove_property_change_handler = 0
      @initialize = 0
      @children_changed = 0
      @focus_event = 0
      @property_change = 0
      @state_change = 0
      @visible_data_changed = 0
    end
    
    private
    alias_method :initialize__atk_object_class, :initialize
  end
  
end
