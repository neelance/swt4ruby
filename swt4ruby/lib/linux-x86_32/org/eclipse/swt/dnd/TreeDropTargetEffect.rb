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
  module TreeDropTargetEffectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides a default drag under effect (eg. select, insert, scroll and expand)
  # when a drag occurs over a <code>Tree</code>.
  # 
  # <p>Classes that wish to provide their own drag under effect for a <code>Tree</code>
  # can extend the <code>TreeDropTargetEffect</code> class and override any applicable methods
  # in <code>TreeDropTargetEffect</code> to display their own drag under effect.</p>
  # 
  # Subclasses that override any methods of this class must call the corresponding
  # <code>super</code> method to get the default drag under effect implementation.
  # 
  # <p>The feedback value is either one of the FEEDBACK constants defined in
  # class <code>DND</code> which is applicable to instances of this class,
  # or it must be built by <em>bitwise OR</em>'ing together
  # (that is, using the <code>int</code> "|" operator) two or more
  # of those <code>DND</code> effect constants.
  # </p>
  # <p>
  # <dl>
  # <dt><b>Feedback:</b></dt>
  # <dd>FEEDBACK_SELECT, FEEDBACK_INSERT_BEFORE, FEEDBACK_INSERT_AFTER, FEEDBACK_EXPAND, FEEDBACK_SCROLL</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles FEEDBACK_SELECT, FEEDBACK_INSERT_BEFORE or
  # FEEDBACK_INSERT_AFTER may be specified.
  # </p>
  # 
  # @see DropTargetAdapter
  # @see DropTargetEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class TreeDropTargetEffect < TreeDropTargetEffectImports.const_get :DropTargetEffect
    include_class_members TreeDropTargetEffectImports
    
    class_module.module_eval {
      const_set_lazy(:SCROLL_HYSTERESIS) { 150 }
      const_attr_reader  :SCROLL_HYSTERESIS
      
      # milli seconds
      const_set_lazy(:EXPAND_HYSTERESIS) { 1000 }
      const_attr_reader  :EXPAND_HYSTERESIS
    }
    
    # milli seconds
    attr_accessor :scroll_index
    alias_method :attr_scroll_index, :scroll_index
    undef_method :scroll_index
    alias_method :attr_scroll_index=, :scroll_index=
    undef_method :scroll_index=
    
    attr_accessor :scroll_begin_time
    alias_method :attr_scroll_begin_time, :scroll_begin_time
    undef_method :scroll_begin_time
    alias_method :attr_scroll_begin_time=, :scroll_begin_time=
    undef_method :scroll_begin_time=
    
    attr_accessor :expand_index
    alias_method :attr_expand_index, :expand_index
    undef_method :expand_index
    alias_method :attr_expand_index=, :expand_index=
    undef_method :expand_index=
    
    attr_accessor :expand_begin_time
    alias_method :attr_expand_begin_time, :expand_begin_time
    undef_method :expand_begin_time
    alias_method :attr_expand_begin_time=, :expand_begin_time=
    undef_method :expand_begin_time=
    
    typesig { [Tree] }
    # Creates a new <code>TreeDropTargetEffect</code> to handle the drag under effect on the specified
    # <code>Tree</code>.
    # 
    # @param tree the <code>Tree</code> over which the user positions the cursor to drop the data
    def initialize(tree)
      @scroll_index = 0
      @scroll_begin_time = 0
      @expand_index = 0
      @expand_begin_time = 0
      super(tree)
      @scroll_index = -1
      @expand_index = -1
    end
    
    typesig { [::Java::Int] }
    def check_effect(effect)
      # Some effects are mutually exclusive.  Make sure that only one of the mutually exclusive effects has been specified.
      if (!((effect & DND::FEEDBACK_SELECT)).equal?(0))
        effect = effect & ~DND::FEEDBACK_INSERT_AFTER & ~DND::FEEDBACK_INSERT_BEFORE
      end
      if (!((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?(0))
        effect = effect & ~DND::FEEDBACK_INSERT_AFTER
      end
      return effect
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragEnter</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dragEnter</code>.
    # 
    # Subclasses that override this method should call <code>super.dragEnter(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drag enter event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    def drag_enter(event)
      @expand_begin_time = 0
      @expand_index = -1
      @scroll_begin_time = 0
      @scroll_index = -1
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragLeave</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dragLeave</code>.
    # 
    # Subclasses that override this method should call <code>super.dragLeave(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drag leave event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    def drag_leave(event)
      tree = self.attr_control
      # long
      handle = tree.attr_handle
      OS.gtk_tree_view_set_drag_dest_row(handle, 0, OS::GTK_TREE_VIEW_DROP_BEFORE)
      @scroll_begin_time = 0
      @scroll_index = -1
      @expand_begin_time = 0
      @expand_index = -1
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragOver</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>.
    # 
    # For additional information see <code>DropTargetAdapter.dragOver</code>.
    # 
    # Subclasses that override this method should call <code>super.dragOver(event)</code>
    # to get the default drag under effect implementation.
    # 
    # @param event  the information associated with the drag over event
    # 
    # @see DropTargetAdapter
    # @see DropTargetEvent
    # @see DND#FEEDBACK_SELECT
    # @see DND#FEEDBACK_INSERT_BEFORE
    # @see DND#FEEDBACK_INSERT_AFTER
    # @see DND#FEEDBACK_SCROLL
    def drag_over(event)
      tree = self.attr_control
      effect = check_effect(event.attr_feedback)
      # long
      handle = tree.attr_handle
      coordinates = Point.new(event.attr_x, event.attr_y)
      coordinates = tree.to_control(coordinates)
      # long
      # long
      path = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_view_get_path_at_pos(handle, coordinates.attr_x, coordinates.attr_y, path, nil, nil, nil)
      index = -1
      if (!(path[0]).equal?(0))
        # long
        indices = OS.gtk_tree_path_get_indices(path[0])
        if (!(indices).equal?(0))
          depth = OS.gtk_tree_path_get_depth(path[0])
          temp = Array.typed(::Java::Int).new(depth) { 0 }
          OS.memmove___org_eclipse_swt_dnd_tree_drop_target_effect_1(temp, indices, temp.attr_length * 4)
          index = temp[temp.attr_length - 1]
        end
      end
      if (((effect & DND::FEEDBACK_SCROLL)).equal?(0))
        @scroll_begin_time = 0
        @scroll_index = -1
      else
        if (!(index).equal?(-1) && (@scroll_index).equal?(index) && !(@scroll_begin_time).equal?(0))
          if (System.current_time_millis >= @scroll_begin_time)
            cell_rect = GdkRectangle.new
            OS.gtk_tree_view_get_cell_area(handle, path[0], 0, cell_rect)
            if (cell_rect.attr_y < cell_rect.attr_height)
              tx = Array.typed(::Java::Int).new(1) { 0 }
              ty = Array.typed(::Java::Int).new(1) { 0 }
              OS.gtk_tree_view_widget_to_tree_coords(handle, cell_rect.attr_x, cell_rect.attr_y - cell_rect.attr_height, tx, ty)
              OS.gtk_tree_view_scroll_to_point(handle, -1, ty[0])
            else
              # scroll down
              OS.gtk_tree_view_get_path_at_pos(handle, coordinates.attr_x, coordinates.attr_y + cell_rect.attr_height, path, nil, nil, nil)
              if (!(path[0]).equal?(0))
                OS.gtk_tree_view_scroll_to_cell(handle, path[0], 0, false, 0, 0)
                OS.gtk_tree_path_free(path[0])
                path[0] = 0
              end
              OS.gtk_tree_view_get_path_at_pos(handle, coordinates.attr_x, coordinates.attr_y, path, nil, nil, nil)
            end
            @scroll_begin_time = 0
            @scroll_index = -1
          end
        else
          @scroll_begin_time = System.current_time_millis + SCROLL_HYSTERESIS
          @scroll_index = index
        end
      end
      if (((effect & DND::FEEDBACK_EXPAND)).equal?(0))
        @expand_begin_time = 0
        @expand_index = -1
      else
        if (!(index).equal?(-1) && (@expand_index).equal?(index) && !(@expand_begin_time).equal?(0))
          if (System.current_time_millis >= @expand_begin_time)
            OS.gtk_tree_view_expand_row(handle, path[0], false)
            @expand_begin_time = 0
            @expand_index = -1
          end
        else
          @expand_begin_time = System.current_time_millis + EXPAND_HYSTERESIS
          @expand_index = index
        end
      end
      if (!(path[0]).equal?(0))
        position = -1
        if (!((effect & DND::FEEDBACK_SELECT)).equal?(0))
          position = OS::GTK_TREE_VIEW_DROP_INTO_OR_BEFORE
        end
        if (!((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?(0))
          position = OS::GTK_TREE_VIEW_DROP_BEFORE
        end
        if (!((effect & DND::FEEDBACK_INSERT_AFTER)).equal?(0))
          position = OS::GTK_TREE_VIEW_DROP_AFTER
        end
        if (!(position).equal?(-1))
          OS.gtk_tree_view_set_drag_dest_row(handle, path[0], position)
        else
          OS.gtk_tree_view_set_drag_dest_row(handle, 0, OS::GTK_TREE_VIEW_DROP_BEFORE)
        end
      else
        OS.gtk_tree_view_set_drag_dest_row(handle, 0, OS::GTK_TREE_VIEW_DROP_BEFORE)
      end
      if (!(path[0]).equal?(0))
        OS.gtk_tree_path_free(path[0])
      end
    end
    
    private
    alias_method :initialize__tree_drop_target_effect, :initialize
  end
  
end
