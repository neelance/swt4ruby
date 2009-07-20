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
  module DataBrowserCustomCallbacksImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class DataBrowserCustomCallbacks 
    include_class_members DataBrowserCustomCallbacksImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :v1_draw_item_callback
    alias_method :attr_v1_draw_item_callback, :v1_draw_item_callback
    undef_method :v1_draw_item_callback
    alias_method :attr_v1_draw_item_callback=, :v1_draw_item_callback=
    undef_method :v1_draw_item_callback=
    
    attr_accessor :v1_edit_text_callback
    alias_method :attr_v1_edit_text_callback, :v1_edit_text_callback
    undef_method :v1_edit_text_callback
    alias_method :attr_v1_edit_text_callback=, :v1_edit_text_callback=
    undef_method :v1_edit_text_callback=
    
    attr_accessor :v1_hit_test_callback
    alias_method :attr_v1_hit_test_callback, :v1_hit_test_callback
    undef_method :v1_hit_test_callback
    alias_method :attr_v1_hit_test_callback=, :v1_hit_test_callback=
    undef_method :v1_hit_test_callback=
    
    attr_accessor :v1_tracking_callback
    alias_method :attr_v1_tracking_callback, :v1_tracking_callback
    undef_method :v1_tracking_callback
    alias_method :attr_v1_tracking_callback=, :v1_tracking_callback=
    undef_method :v1_tracking_callback=
    
    attr_accessor :v1_drag_region_callback
    alias_method :attr_v1_drag_region_callback, :v1_drag_region_callback
    undef_method :v1_drag_region_callback
    alias_method :attr_v1_drag_region_callback=, :v1_drag_region_callback=
    undef_method :v1_drag_region_callback=
    
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
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 32 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @v1_draw_item_callback = 0
      @v1_edit_text_callback = 0
      @v1_hit_test_callback = 0
      @v1_tracking_callback = 0
      @v1_drag_region_callback = 0
      @v1_accept_drag_callback = 0
      @v1_receive_drag_callback = 0
    end
    
    private
    alias_method :initialize__data_browser_custom_callbacks, :initialize
  end
  
end
