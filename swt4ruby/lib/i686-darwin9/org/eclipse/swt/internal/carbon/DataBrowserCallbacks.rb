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
  module DataBrowserCallbacksImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class DataBrowserCallbacks 
    include_class_members DataBrowserCallbacksImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :v1_item_data_callback
    alias_method :attr_v1_item_data_callback, :v1_item_data_callback
    undef_method :v1_item_data_callback
    alias_method :attr_v1_item_data_callback=, :v1_item_data_callback=
    undef_method :v1_item_data_callback=
    
    attr_accessor :v1_item_compare_callback
    alias_method :attr_v1_item_compare_callback, :v1_item_compare_callback
    undef_method :v1_item_compare_callback
    alias_method :attr_v1_item_compare_callback=, :v1_item_compare_callback=
    undef_method :v1_item_compare_callback=
    
    attr_accessor :v1_item_notification_callback
    alias_method :attr_v1_item_notification_callback, :v1_item_notification_callback
    undef_method :v1_item_notification_callback
    alias_method :attr_v1_item_notification_callback=, :v1_item_notification_callback=
    undef_method :v1_item_notification_callback=
    
    attr_accessor :v1_add_drag_item_callback
    alias_method :attr_v1_add_drag_item_callback, :v1_add_drag_item_callback
    undef_method :v1_add_drag_item_callback
    alias_method :attr_v1_add_drag_item_callback=, :v1_add_drag_item_callback=
    undef_method :v1_add_drag_item_callback=
    
    attr_accessor :v1_accept_drag_callback
    alias_method :attr_v1_accept_drag_callback, :v1_accept_drag_callback
    undef_method :v1_accept_drag_callback
    alias_method :attr_v1_accept_drag_callback=, :v1_accept_drag_callback=
    undef_method :v1_accept_drag_callback=
    
    attr_accessor :v1_receive_drag_callback
    alias_method :attr_v1_receive_drag_callback, :v1_receive_drag_callback
    undef_method :v1_receive_drag_callback
    alias_method :attr_v1_receive_drag_callback=, :v1_receive_drag_callback=
    undef_method :v1_receive_drag_callback=
    
    attr_accessor :v1_post_process_drag_callback
    alias_method :attr_v1_post_process_drag_callback, :v1_post_process_drag_callback
    undef_method :v1_post_process_drag_callback
    alias_method :attr_v1_post_process_drag_callback=, :v1_post_process_drag_callback=
    undef_method :v1_post_process_drag_callback=
    
    attr_accessor :v1_item_help_content_callback
    alias_method :attr_v1_item_help_content_callback, :v1_item_help_content_callback
    undef_method :v1_item_help_content_callback
    alias_method :attr_v1_item_help_content_callback=, :v1_item_help_content_callback=
    undef_method :v1_item_help_content_callback=
    
    attr_accessor :v1_get_contextual_menu_callback
    alias_method :attr_v1_get_contextual_menu_callback, :v1_get_contextual_menu_callback
    undef_method :v1_get_contextual_menu_callback
    alias_method :attr_v1_get_contextual_menu_callback=, :v1_get_contextual_menu_callback=
    undef_method :v1_get_contextual_menu_callback=
    
    attr_accessor :v1_select_contextual_menu_callback
    alias_method :attr_v1_select_contextual_menu_callback, :v1_select_contextual_menu_callback
    undef_method :v1_select_contextual_menu_callback
    alias_method :attr_v1_select_contextual_menu_callback=, :v1_select_contextual_menu_callback=
    undef_method :v1_select_contextual_menu_callback=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 44 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @v1_item_data_callback = 0
      @v1_item_compare_callback = 0
      @v1_item_notification_callback = 0
      @v1_add_drag_item_callback = 0
      @v1_accept_drag_callback = 0
      @v1_receive_drag_callback = 0
      @v1_post_process_drag_callback = 0
      @v1_item_help_content_callback = 0
      @v1_get_contextual_menu_callback = 0
      @v1_select_contextual_menu_callback = 0
    end
    
    private
    alias_method :initialize__data_browser_callbacks, :initialize
  end
  
end
