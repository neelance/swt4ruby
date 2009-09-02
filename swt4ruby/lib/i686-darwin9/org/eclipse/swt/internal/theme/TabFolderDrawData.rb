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
  module TabFolderDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class TabFolderDrawData < TabFolderDrawDataImports.const_get :DrawData
    include_class_members TabFolderDrawDataImports
    
    attr_accessor :tabs_width
    alias_method :attr_tabs_width, :tabs_width
    undef_method :tabs_width
    alias_method :attr_tabs_width=, :tabs_width=
    undef_method :tabs_width=
    
    attr_accessor :tabs_height
    alias_method :attr_tabs_height, :tabs_height
    undef_method :tabs_height
    alias_method :attr_tabs_height=, :tabs_height=
    undef_method :tabs_height=
    
    attr_accessor :tabs_area
    alias_method :attr_tabs_area, :tabs_area
    undef_method :tabs_area
    alias_method :attr_tabs_area=, :tabs_area=
    undef_method :tabs_area=
    
    attr_accessor :selected_x
    alias_method :attr_selected_x, :selected_x
    undef_method :selected_x
    alias_method :attr_selected_x=, :selected_x=
    undef_method :selected_x=
    
    attr_accessor :selected_width
    alias_method :attr_selected_width, :selected_width
    undef_method :selected_width
    alias_method :attr_selected_width=, :selected_width=
    undef_method :selected_width=
    
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
    typesig { [] }
    def initialize
      @tabs_width = 0
      @tabs_height = 0
      @tabs_area = nil
      @selected_x = 0
      @selected_width = 0
      @spacing = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
      if ((SWT.get_platform == "gtk"))
        @spacing = -2
      end
    end
    
    private
    alias_method :initialize__tab_folder_draw_data, :initialize
  end
  
end
