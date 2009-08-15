require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CTabFolderEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This event is sent when an event is generated in the CTabFolder.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CTabFolderEvent < CTabFolderEventImports.const_get :TypedEvent
    include_class_members CTabFolderEventImports
    
    # The tab item for the operation.
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    # A flag indicating whether the operation should be allowed.
    # Setting this field to <code>false</code> will cancel the operation.
    # Applies to the close and showList events.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    # The widget-relative, x coordinate of the chevron button
    # at the time of the event.  Applies to the showList event.
    # 
    # @since 3.0
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # The widget-relative, y coordinate of the chevron button
    # at the time of the event.  Applies to the showList event.
    # 
    # @since 3.0
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # The width of the chevron button at the time of the event.
    # Applies to the showList event.
    # 
    # @since 3.0
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # The height of the chevron button at the time of the event.
    # Applies to the showList event.
    # 
    # @since 3.0
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3760566386225066807 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    # Constructs a new instance of this class.
    # 
    # @param w the widget that fired the event
    def initialize(w)
      @item = nil
      @doit = false
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      super(w)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " item=" + RJava.cast_to_string(@item) + " doit=" + RJava.cast_to_string(@doit) + " x=" + RJava.cast_to_string(@x) + " y=" + RJava.cast_to_string(@y) + " width=" + RJava.cast_to_string(@width) + " height=" + RJava.cast_to_string(@height) + "}"
    end
    
    private
    alias_method :initialize__ctab_folder_event, :initialize
  end
  
end
