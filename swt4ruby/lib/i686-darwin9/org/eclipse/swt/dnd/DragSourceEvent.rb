require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DragSourceEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt::Events, :TypedEvent
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # The DragSourceEvent contains the event information passed in the methods of the DragSourceListener.
  # 
  # @see DragSourceListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DragSourceEvent < DragSourceEventImports.const_get :TypedEvent
    include_class_members DragSourceEventImports
    
    # The operation that was performed.
    # @see DND#DROP_NONE
    # @see DND#DROP_MOVE
    # @see DND#DROP_COPY
    # @see DND#DROP_LINK
    # @see DND#DROP_TARGET_MOVE
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    # In dragStart, the doit field determines if the drag and drop operation
    # should proceed; in dragFinished, the doit field indicates whether
    # the operation was performed successfully.
    # <p></p>
    # In dragStart:
    # <p>Flag to determine if the drag and drop operation should proceed.
    # The application can set this value to false to prevent the drag from starting.
    # Set to true by default.</p>
    # 
    # <p>In dragFinished:</p>
    # <p>Flag to indicate if the operation was performed successfully.
    # True if the operation was performed successfully.</p>
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    # In dragStart, the x coordinate (relative to the control) of the
    # position the mouse went down to start the drag.
    # @since 3.2
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # In dragStart, the y coordinate (relative to the control) of the
    # position the mouse went down to start the drag .
    # @since 3.2
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # The type of data requested.
    # Data provided in the data field must be of the same type.
    attr_accessor :data_type
    alias_method :attr_data_type, :data_type
    undef_method :data_type
    alias_method :attr_data_type=, :data_type=
    undef_method :data_type=
    
    # The drag source image to be displayed during the drag.
    # <p>A value of null indicates that no drag image will be displayed.</p>
    # <p>The default value is null.</p>
    # 
    # @since 3.3
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257002142513770808 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [DNDEvent] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @detail = 0
      @doit = false
      @x = 0
      @y = 0
      @data_type = nil
      @image = nil
      super(e)
      self.attr_data = e.attr_data
      @detail = e.attr_detail
      @doit = e.attr_doit
      @data_type = e.attr_data_type
      @x = e.attr_x
      @y = e.attr_y
      @image = e.attr_image
    end
    
    typesig { [DNDEvent] }
    def update_event(e)
      e.attr_widget = self.attr_widget
      e.attr_time = self.attr_time
      e.attr_data = self.attr_data
      e.attr_detail = @detail
      e.attr_doit = @doit
      e.attr_data_type = @data_type
      e.attr_x = @x
      e.attr_y = @y
      e.attr_image = @image
    end
    
    private
    alias_method :initialize__drag_source_event, :initialize
  end
  
end
