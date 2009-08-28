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
  module MenuTrackingDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class MenuTrackingData 
    include_class_members MenuTrackingDataImports
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
    attr_accessor :item_selected
    alias_method :attr_item_selected, :item_selected
    undef_method :item_selected
    alias_method :attr_item_selected=, :item_selected=
    undef_method :item_selected=
    
    attr_accessor :item_under_mouse
    alias_method :attr_item_under_mouse, :item_under_mouse
    undef_method :item_under_mouse
    alias_method :attr_item_under_mouse=, :item_under_mouse=
    undef_method :item_under_mouse=
    
    # Rect itemRect;
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    attr_accessor :virtual_menu_top
    alias_method :attr_virtual_menu_top, :virtual_menu_top
    undef_method :virtual_menu_top
    alias_method :attr_virtual_menu_top=, :virtual_menu_top=
    undef_method :virtual_menu_top=
    
    attr_accessor :virtual_menu_bottom
    alias_method :attr_virtual_menu_bottom, :virtual_menu_bottom
    undef_method :virtual_menu_bottom
    alias_method :attr_virtual_menu_bottom=, :virtual_menu_bottom=
    undef_method :virtual_menu_bottom=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= 24
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @menu = 0
      @item_selected = 0
      @item_under_mouse = 0
      @top = 0
      @left = 0
      @bottom = 0
      @right = 0
      @virtual_menu_top = 0
      @virtual_menu_bottom = 0
    end
    
    private
    alias_method :initialize__menu_tracking_data, :initialize
  end
  
end
