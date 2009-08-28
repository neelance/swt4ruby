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
  module DropTargetEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt::Events, :TypedEvent
      include_const ::Org::Eclipse::Swt::Widgets, :Widget
    }
  end
  
  # The DropTargetEvent contains the event information passed in the methods of the DropTargetListener.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DropTargetEvent < DropTargetEventImports.const_get :TypedEvent
    include_class_members DropTargetEventImports
    
    # The x-cordinate of the cursor relative to the <code>Display</code>
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    # The y-cordinate of the cursor relative to the <code>Display</code>
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    # The operation being performed.
    # @see DND#DROP_NONE
    # @see DND#DROP_MOVE
    # @see DND#DROP_COPY
    # @see DND#DROP_LINK
    attr_accessor :detail
    alias_method :attr_detail, :detail
    undef_method :detail
    alias_method :attr_detail=, :detail=
    undef_method :detail=
    
    # A bitwise OR'ing of the operations that the DragSource can support
    # (e.g. DND.DROP_MOVE | DND.DROP_COPY | DND.DROP_LINK).
    # The detail value must be a member of this list or DND.DROP_NONE.
    # @see DND#DROP_NONE
    # @see DND#DROP_MOVE
    # @see DND#DROP_COPY
    # @see DND#DROP_LINK
    attr_accessor :operations
    alias_method :attr_operations, :operations
    undef_method :operations
    alias_method :attr_operations=, :operations=
    undef_method :operations=
    
    # A bitwise OR'ing of the drag under effect feedback to be displayed to the user
    # (e.g. DND.FEEDBACK_SELECT | DND.FEEDBACK_SCROLL | DND.FEEDBACK_EXPAND).
    # <p>A value of DND.FEEDBACK_NONE indicates that no drag under effect will be displayed.</p>
    # <p>Feedback effects will only be applied if they are applicable.</p>
    # <p>The default value is DND.FEEDBACK_SELECT.</p>
    # @see DND#FEEDBACK_NONE
    # @see DND#FEEDBACK_SELECT
    # @see DND#FEEDBACK_INSERT_BEFORE
    # @see DND#FEEDBACK_INSERT_AFTER
    # @see DND#FEEDBACK_SCROLL
    # @see DND#FEEDBACK_EXPAND
    attr_accessor :feedback
    alias_method :attr_feedback, :feedback
    undef_method :feedback
    alias_method :attr_feedback=, :feedback=
    undef_method :feedback=
    
    # If the associated control is a table or tree, this field contains the item located
    # at the cursor coordinates.
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    # The type of data that will be dropped.
    attr_accessor :current_data_type
    alias_method :attr_current_data_type, :current_data_type
    undef_method :current_data_type
    alias_method :attr_current_data_type=, :current_data_type=
    undef_method :current_data_type=
    
    # A list of the types of data that the DragSource is capable of providing.
    # The currentDataType must be a member of this list.
    attr_accessor :data_types
    alias_method :attr_data_types, :data_types
    undef_method :data_types
    alias_method :attr_data_types=, :data_types=
    undef_method :data_types=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3256727264573338678 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [DNDEvent] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @x = 0
      @y = 0
      @detail = 0
      @operations = 0
      @feedback = 0
      @item = nil
      @current_data_type = nil
      @data_types = nil
      super(e)
      self.attr_data = e.attr_data
      @x = e.attr_x
      @y = e.attr_y
      @detail = e.attr_detail
      @current_data_type = e.attr_data_type
      @data_types = e.attr_data_types
      @operations = e.attr_operations
      @feedback = e.attr_feedback
      @item = e.attr_item
    end
    
    typesig { [DNDEvent] }
    def update_event(e)
      e.attr_widget = self.attr_widget
      e.attr_time = self.attr_time
      e.attr_data = self.attr_data
      e.attr_x = @x
      e.attr_y = @y
      e.attr_detail = @detail
      e.attr_data_type = @current_data_type
      e.attr_data_types = @data_types
      e.attr_operations = @operations
      e.attr_feedback = @feedback
      e.attr_item = @item
    end
    
    private
    alias_method :initialize__drop_target_event, :initialize
  end
  
end
