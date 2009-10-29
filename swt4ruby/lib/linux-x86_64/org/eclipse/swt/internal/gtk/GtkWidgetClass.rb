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
  module GtkWidgetClassImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class GtkWidgetClass < GtkWidgetClassImports.const_get :GObjectClass
    include_class_members GtkWidgetClassImports
    
    attr_accessor :activate_signal
    alias_method :attr_activate_signal, :activate_signal
    undef_method :activate_signal
    alias_method :attr_activate_signal=, :activate_signal=
    undef_method :activate_signal=
    
    attr_accessor :set_scroll_adjustments_signal
    alias_method :attr_set_scroll_adjustments_signal, :set_scroll_adjustments_signal
    undef_method :set_scroll_adjustments_signal
    alias_method :attr_set_scroll_adjustments_signal=, :set_scroll_adjustments_signal=
    undef_method :set_scroll_adjustments_signal=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :dispatch_child_properties_changed
    alias_method :attr_dispatch_child_properties_changed, :dispatch_child_properties_changed
    undef_method :dispatch_child_properties_changed
    alias_method :attr_dispatch_child_properties_changed=, :dispatch_child_properties_changed=
    undef_method :dispatch_child_properties_changed=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :show
    alias_method :attr_show, :show
    undef_method :show
    alias_method :attr_show=, :show=
    undef_method :show=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :show_all
    alias_method :attr_show_all, :show_all
    undef_method :show_all
    alias_method :attr_show_all=, :show_all=
    undef_method :show_all=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :hide
    alias_method :attr_hide, :hide
    undef_method :hide
    alias_method :attr_hide=, :hide=
    undef_method :hide=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :hide_all
    alias_method :attr_hide_all, :hide_all
    undef_method :hide_all
    alias_method :attr_hide_all=, :hide_all=
    undef_method :hide_all=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :map
    alias_method :attr_map, :map
    undef_method :map
    alias_method :attr_map=, :map=
    undef_method :map=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :unmap
    alias_method :attr_unmap, :unmap
    undef_method :unmap
    alias_method :attr_unmap=, :unmap=
    undef_method :unmap=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :realize
    alias_method :attr_realize, :realize
    undef_method :realize
    alias_method :attr_realize=, :realize=
    undef_method :realize=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :unrealize
    alias_method :attr_unrealize, :unrealize
    undef_method :unrealize
    alias_method :attr_unrealize=, :unrealize=
    undef_method :unrealize=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :size_request
    alias_method :attr_size_request, :size_request
    undef_method :size_request
    alias_method :attr_size_request=, :size_request=
    undef_method :size_request=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :size_allocate
    alias_method :attr_size_allocate, :size_allocate
    undef_method :size_allocate
    alias_method :attr_size_allocate=, :size_allocate=
    undef_method :size_allocate=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :state_changed
    alias_method :attr_state_changed, :state_changed
    undef_method :state_changed
    alias_method :attr_state_changed=, :state_changed=
    undef_method :state_changed=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :parent_set
    alias_method :attr_parent_set, :parent_set
    undef_method :parent_set
    alias_method :attr_parent_set=, :parent_set=
    undef_method :parent_set=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :hierarchy_changed
    alias_method :attr_hierarchy_changed, :hierarchy_changed
    undef_method :hierarchy_changed
    alias_method :attr_hierarchy_changed=, :hierarchy_changed=
    undef_method :hierarchy_changed=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :style_set
    alias_method :attr_style_set, :style_set
    undef_method :style_set
    alias_method :attr_style_set=, :style_set=
    undef_method :style_set=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :direction_changed
    alias_method :attr_direction_changed, :direction_changed
    undef_method :direction_changed
    alias_method :attr_direction_changed=, :direction_changed=
    undef_method :direction_changed=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :grab_notify
    alias_method :attr_grab_notify, :grab_notify
    undef_method :grab_notify
    alias_method :attr_grab_notify=, :grab_notify=
    undef_method :grab_notify=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :child_notify
    alias_method :attr_child_notify, :child_notify
    undef_method :child_notify
    alias_method :attr_child_notify=, :child_notify=
    undef_method :child_notify=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :mnemonic_activate
    alias_method :attr_mnemonic_activate, :mnemonic_activate
    undef_method :mnemonic_activate
    alias_method :attr_mnemonic_activate=, :mnemonic_activate=
    undef_method :mnemonic_activate=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :grab_focus
    alias_method :attr_grab_focus, :grab_focus
    undef_method :grab_focus
    alias_method :attr_grab_focus=, :grab_focus=
    undef_method :grab_focus=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :focus
    alias_method :attr_focus, :focus
    undef_method :focus
    alias_method :attr_focus=, :focus=
    undef_method :focus=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :event
    alias_method :attr_event, :event
    undef_method :event
    alias_method :attr_event=, :event=
    undef_method :event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :button_press_event
    alias_method :attr_button_press_event, :button_press_event
    undef_method :button_press_event
    alias_method :attr_button_press_event=, :button_press_event=
    undef_method :button_press_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :button_release_event
    alias_method :attr_button_release_event, :button_release_event
    undef_method :button_release_event
    alias_method :attr_button_release_event=, :button_release_event=
    undef_method :button_release_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :scroll_event
    alias_method :attr_scroll_event, :scroll_event
    undef_method :scroll_event
    alias_method :attr_scroll_event=, :scroll_event=
    undef_method :scroll_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :motion_notify_event
    alias_method :attr_motion_notify_event, :motion_notify_event
    undef_method :motion_notify_event
    alias_method :attr_motion_notify_event=, :motion_notify_event=
    undef_method :motion_notify_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :delete_event
    alias_method :attr_delete_event, :delete_event
    undef_method :delete_event
    alias_method :attr_delete_event=, :delete_event=
    undef_method :delete_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :destroy_event
    alias_method :attr_destroy_event, :destroy_event
    undef_method :destroy_event
    alias_method :attr_destroy_event=, :destroy_event=
    undef_method :destroy_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :expose_event
    alias_method :attr_expose_event, :expose_event
    undef_method :expose_event
    alias_method :attr_expose_event=, :expose_event=
    undef_method :expose_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :key_press_event
    alias_method :attr_key_press_event, :key_press_event
    undef_method :key_press_event
    alias_method :attr_key_press_event=, :key_press_event=
    undef_method :key_press_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :key_release_event
    alias_method :attr_key_release_event, :key_release_event
    undef_method :key_release_event
    alias_method :attr_key_release_event=, :key_release_event=
    undef_method :key_release_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :enter_notify_event
    alias_method :attr_enter_notify_event, :enter_notify_event
    undef_method :enter_notify_event
    alias_method :attr_enter_notify_event=, :enter_notify_event=
    undef_method :enter_notify_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :leave_notify_event
    alias_method :attr_leave_notify_event, :leave_notify_event
    undef_method :leave_notify_event
    alias_method :attr_leave_notify_event=, :leave_notify_event=
    undef_method :leave_notify_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :configure_event
    alias_method :attr_configure_event, :configure_event
    undef_method :configure_event
    alias_method :attr_configure_event=, :configure_event=
    undef_method :configure_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :focus_in_event
    alias_method :attr_focus_in_event, :focus_in_event
    undef_method :focus_in_event
    alias_method :attr_focus_in_event=, :focus_in_event=
    undef_method :focus_in_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :focus_out_event
    alias_method :attr_focus_out_event, :focus_out_event
    undef_method :focus_out_event
    alias_method :attr_focus_out_event=, :focus_out_event=
    undef_method :focus_out_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :map_event
    alias_method :attr_map_event, :map_event
    undef_method :map_event
    alias_method :attr_map_event=, :map_event=
    undef_method :map_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :unmap_event
    alias_method :attr_unmap_event, :unmap_event
    undef_method :unmap_event
    alias_method :attr_unmap_event=, :unmap_event=
    undef_method :unmap_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :property_notify_event
    alias_method :attr_property_notify_event, :property_notify_event
    undef_method :property_notify_event
    alias_method :attr_property_notify_event=, :property_notify_event=
    undef_method :property_notify_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :selection_clear_event
    alias_method :attr_selection_clear_event, :selection_clear_event
    undef_method :selection_clear_event
    alias_method :attr_selection_clear_event=, :selection_clear_event=
    undef_method :selection_clear_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :selection_request_event
    alias_method :attr_selection_request_event, :selection_request_event
    undef_method :selection_request_event
    alias_method :attr_selection_request_event=, :selection_request_event=
    undef_method :selection_request_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :selection_notify_event
    alias_method :attr_selection_notify_event, :selection_notify_event
    undef_method :selection_notify_event
    alias_method :attr_selection_notify_event=, :selection_notify_event=
    undef_method :selection_notify_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :proximity_in_event
    alias_method :attr_proximity_in_event, :proximity_in_event
    undef_method :proximity_in_event
    alias_method :attr_proximity_in_event=, :proximity_in_event=
    undef_method :proximity_in_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :proximity_out_event
    alias_method :attr_proximity_out_event, :proximity_out_event
    undef_method :proximity_out_event
    alias_method :attr_proximity_out_event=, :proximity_out_event=
    undef_method :proximity_out_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :visibility_notify_event
    alias_method :attr_visibility_notify_event, :visibility_notify_event
    undef_method :visibility_notify_event
    alias_method :attr_visibility_notify_event=, :visibility_notify_event=
    undef_method :visibility_notify_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :client_event
    alias_method :attr_client_event, :client_event
    undef_method :client_event
    alias_method :attr_client_event=, :client_event=
    undef_method :client_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :no_expose_event
    alias_method :attr_no_expose_event, :no_expose_event
    undef_method :no_expose_event
    alias_method :attr_no_expose_event=, :no_expose_event=
    undef_method :no_expose_event=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :window_state_event
    alias_method :attr_window_state_event, :window_state_event
    undef_method :window_state_event
    alias_method :attr_window_state_event=, :window_state_event=
    undef_method :window_state_event=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :selection_get
    alias_method :attr_selection_get, :selection_get
    undef_method :selection_get
    alias_method :attr_selection_get=, :selection_get=
    undef_method :selection_get=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :selection_received
    alias_method :attr_selection_received, :selection_received
    undef_method :selection_received
    alias_method :attr_selection_received=, :selection_received=
    undef_method :selection_received=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :drag_begin
    alias_method :attr_drag_begin, :drag_begin
    undef_method :drag_begin
    alias_method :attr_drag_begin=, :drag_begin=
    undef_method :drag_begin=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :drag_end
    alias_method :attr_drag_end, :drag_end
    undef_method :drag_end
    alias_method :attr_drag_end=, :drag_end=
    undef_method :drag_end=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :drag_data_get
    alias_method :attr_drag_data_get, :drag_data_get
    undef_method :drag_data_get
    alias_method :attr_drag_data_get=, :drag_data_get=
    undef_method :drag_data_get=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :drag_data_delete
    alias_method :attr_drag_data_delete, :drag_data_delete
    undef_method :drag_data_delete
    alias_method :attr_drag_data_delete=, :drag_data_delete=
    undef_method :drag_data_delete=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :drag_leave
    alias_method :attr_drag_leave, :drag_leave
    undef_method :drag_leave
    alias_method :attr_drag_leave=, :drag_leave=
    undef_method :drag_leave=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :drag_motion
    alias_method :attr_drag_motion, :drag_motion
    undef_method :drag_motion
    alias_method :attr_drag_motion=, :drag_motion=
    undef_method :drag_motion=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :drag_drop
    alias_method :attr_drag_drop, :drag_drop
    undef_method :drag_drop
    alias_method :attr_drag_drop=, :drag_drop=
    undef_method :drag_drop=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :drag_data_received
    alias_method :attr_drag_data_received, :drag_data_received
    undef_method :drag_data_received
    alias_method :attr_drag_data_received=, :drag_data_received=
    undef_method :drag_data_received=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :popup_menu
    alias_method :attr_popup_menu, :popup_menu
    undef_method :popup_menu
    alias_method :attr_popup_menu=, :popup_menu=
    undef_method :popup_menu=
    
    # @field cast=(gboolean(*)())
    # int
    attr_accessor :show_help
    alias_method :attr_show_help, :show_help
    undef_method :show_help
    alias_method :attr_show_help=, :show_help=
    undef_method :show_help=
    
    # @field cast=(AtkObject*(*)())
    # int
    attr_accessor :get_accessible
    alias_method :attr_get_accessible, :get_accessible
    undef_method :get_accessible
    alias_method :attr_get_accessible=, :get_accessible=
    undef_method :get_accessible=
    
    # @field cast=(void(*)())
    # int
    attr_accessor :screen_changed
    alias_method :attr_screen_changed, :screen_changed
    undef_method :screen_changed
    alias_method :attr_screen_changed=, :screen_changed=
    undef_method :screen_changed=
    
    typesig { [] }
    def initialize
      @activate_signal = 0
      @set_scroll_adjustments_signal = 0
      @dispatch_child_properties_changed = 0
      @show = 0
      @show_all = 0
      @hide = 0
      @hide_all = 0
      @map = 0
      @unmap = 0
      @realize = 0
      @unrealize = 0
      @size_request = 0
      @size_allocate = 0
      @state_changed = 0
      @parent_set = 0
      @hierarchy_changed = 0
      @style_set = 0
      @direction_changed = 0
      @grab_notify = 0
      @child_notify = 0
      @mnemonic_activate = 0
      @grab_focus = 0
      @focus = 0
      @event = 0
      @button_press_event = 0
      @button_release_event = 0
      @scroll_event = 0
      @motion_notify_event = 0
      @delete_event = 0
      @destroy_event = 0
      @expose_event = 0
      @key_press_event = 0
      @key_release_event = 0
      @enter_notify_event = 0
      @leave_notify_event = 0
      @configure_event = 0
      @focus_in_event = 0
      @focus_out_event = 0
      @map_event = 0
      @unmap_event = 0
      @property_notify_event = 0
      @selection_clear_event = 0
      @selection_request_event = 0
      @selection_notify_event = 0
      @proximity_in_event = 0
      @proximity_out_event = 0
      @visibility_notify_event = 0
      @client_event = 0
      @no_expose_event = 0
      @window_state_event = 0
      @selection_get = 0
      @selection_received = 0
      @drag_begin = 0
      @drag_end = 0
      @drag_data_get = 0
      @drag_data_delete = 0
      @drag_leave = 0
      @drag_motion = 0
      @drag_drop = 0
      @drag_data_received = 0
      @popup_menu = 0
      @show_help = 0
      @get_accessible = 0
      @screen_changed = 0
      super()
    end
    
    private
    alias_method :initialize__gtk_widget_class, :initialize
  end
  
end
