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
  module TreeDropTargetEffectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
    attr_accessor :current_effect
    alias_method :attr_current_effect, :current_effect
    undef_method :current_effect
    alias_method :attr_current_effect=, :current_effect=
    undef_method :current_effect=
    
    attr_accessor :insert_item
    alias_method :attr_insert_item, :insert_item
    undef_method :insert_item
    alias_method :attr_insert_item=, :insert_item=
    undef_method :insert_item=
    
    attr_accessor :insert_before
    alias_method :attr_insert_before, :insert_before
    undef_method :insert_before
    alias_method :attr_insert_before=, :insert_before=
    undef_method :insert_before=
    
    attr_accessor :scroll_item
    alias_method :attr_scroll_item, :scroll_item
    undef_method :scroll_item
    alias_method :attr_scroll_item=, :scroll_item=
    undef_method :scroll_item=
    
    attr_accessor :scroll_begin_time
    alias_method :attr_scroll_begin_time, :scroll_begin_time
    undef_method :scroll_begin_time
    alias_method :attr_scroll_begin_time=, :scroll_begin_time=
    undef_method :scroll_begin_time=
    
    attr_accessor :expand_item
    alias_method :attr_expand_item, :expand_item
    undef_method :expand_item
    alias_method :attr_expand_item=, :expand_item=
    undef_method :expand_item=
    
    attr_accessor :expand_begin_time
    alias_method :attr_expand_begin_time, :expand_begin_time
    undef_method :expand_begin_time
    alias_method :attr_expand_begin_time=, :expand_begin_time=
    undef_method :expand_begin_time=
    
    attr_accessor :callbacks
    alias_method :attr_callbacks, :callbacks
    undef_method :callbacks
    alias_method :attr_callbacks=, :callbacks=
    undef_method :callbacks=
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def accept_drag_proc(the_control, item_id, property, the_rect, the_drag)
      return !((@current_effect & DND::FEEDBACK_SELECT)).equal?(0) ? 1 : 0
    end
    
    class_module.module_eval {
      
      def accept_drag_proc
        defined?(@@accept_drag_proc) ? @@accept_drag_proc : @@accept_drag_proc= nil
      end
      alias_method :attr_accept_drag_proc, :accept_drag_proc
      
      def accept_drag_proc=(value)
        @@accept_drag_proc = value
      end
      alias_method :attr_accept_drag_proc=, :accept_drag_proc=
      
      when_class_loaded do
        self.attr_accept_drag_proc = Callback.new(TreeDropTargetEffect, "AcceptDragProc", 5) # $NON-NLS-1$
        accept_drag_proc = self.attr_accept_drag_proc.get_address
        if ((accept_drag_proc).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _accept_drag_proc(the_control, item_id, property, the_rect, the_drag)
        target = _find_drop_target(the_control, the_drag)
        if ((target).nil?)
          return 0
        end
        return !((target.attr_feedback & DND::FEEDBACK_SELECT)).equal?(0) ? 1 : 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _find_drop_target(the_control, the_drag)
        if ((the_control).equal?(0))
          return nil
        end
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return nil
        end
        widget = display.find_widget(the_control)
        if ((widget).nil?)
          return nil
        end
        return widget.get_data(DND::DROP_TARGET_KEY)
      end
    }
    
    typesig { [Tree] }
    # Creates a new <code>TreeDropTargetEffect</code> to handle the drag under effect on the specified
    # <code>Tree</code>.
    # 
    # @param tree the <code>Tree</code> over which the user positions the cursor to drop the data
    def initialize(tree)
      @current_effect = 0
      @insert_item = nil
      @insert_before = false
      @scroll_item = nil
      @scroll_begin_time = 0
      @expand_item = nil
      @expand_begin_time = 0
      @callbacks = nil
      super(tree)
      @current_effect = DND::FEEDBACK_NONE
      @insert_item = nil
      @insert_before = false
      @callbacks = nil
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
      if ((@callbacks).nil?)
        table = self.attr_control
        callbacks = DataBrowserCallbacks.new
        OS._get_data_browser_callbacks(table.attr_handle, callbacks)
        callbacks.attr_v1_accept_drag_callback = self.attr_accept_drag_proc.get_address
        OS._set_data_browser_callbacks(table.attr_handle, callbacks)
      end
      @insert_item = nil
      @expand_begin_time = 0
      @expand_item = nil
      @scroll_begin_time = 0
      @scroll_item = nil
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
      if (!(@insert_item).nil?)
        set_insert_mark(tree, nil, false)
        @insert_item = nil
      end
      @expand_begin_time = 0
      @expand_item = nil
      @scroll_begin_time = 0
      @scroll_item = nil
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
      item = get_item(tree, event.attr_x, event.attr_y)
      effect = check_effect(event.attr_feedback)
      if (((effect & DND::FEEDBACK_EXPAND)).equal?(0))
        @expand_begin_time = 0
        @expand_item = nil
      else
        if (!(item).nil? && (item == @expand_item) && !(@expand_begin_time).equal?(0))
          if (System.current_time_millis >= @expand_begin_time)
            if (item.get_item_count > 0 && !item.get_expanded)
              e = Event.new
              e.attr_x = event.attr_x
              e.attr_y = event.attr_y
              e.attr_item = item
              e.attr_time = RJava.cast_to_int(System.current_time_millis)
              tree.notify_listeners(SWT::Expand, e)
              if (item.is_disposed)
                return
              end
              item.set_expanded(true)
            end
            @expand_begin_time = 0
            @expand_item = nil
          end
        else
          @expand_begin_time = System.current_time_millis + EXPAND_HYSTERESIS
          @expand_item = item
        end
      end
      if (((effect & DND::FEEDBACK_SCROLL)).equal?(0))
        @scroll_begin_time = 0
        @scroll_item = nil
      else
        if (!(item).nil? && (item == @scroll_item) && !(@scroll_begin_time).equal?(0))
          if (System.current_time_millis >= @scroll_begin_time)
            area = tree.get_client_area
            header_height = tree.get_header_height
            item_height = tree.get_item_height
            pt = Point.new(event.attr_x, event.attr_y)
            pt = tree.get_display.map(nil, tree, pt)
            next_item = nil
            if (pt.attr_y < area.attr_y + header_height + 2 * item_height)
              next_item = previous_item(tree, item)
            end
            if (pt.attr_y > area.attr_y + area.attr_height - 2 * item_height)
              next_item = next_item(tree, item)
            end
            if (!(next_item).nil?)
              tree.show_item(next_item)
            end
            @scroll_begin_time = 0
            @scroll_item = nil
          end
        else
          @scroll_begin_time = System.current_time_millis + SCROLL_HYSTERESIS
          @scroll_item = item
        end
      end
      if (!((effect & DND::FEEDBACK_INSERT_AFTER)).equal?(0) || !((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?(0))
        if (!(@insert_item).equal?(item) || (!((effect & DND::FEEDBACK_INSERT_AFTER)).equal?((@current_effect & DND::FEEDBACK_INSERT_AFTER))) || (!((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?((@current_effect & DND::FEEDBACK_INSERT_BEFORE))))
          set_insert_mark(tree, item, !((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?(0))
          @current_effect = effect
          @insert_item = item
        end
      else
        set_insert_mark(tree, nil, false)
      end
      # save current effect for selection feedback
      (event.attr_widget).attr_feedback = effect
    end
    
    typesig { [Tree, TreeItem, ::Java::Boolean] }
    def set_insert_mark(tree, item, before)
      if ((item).equal?(@insert_item) && (before).equal?(@insert_before))
        return
      end
      @insert_item = item
      @insert_before = before
      tree.set_insert_mark(item, before)
    end
    
    private
    alias_method :initialize__tree_drop_target_effect, :initialize
  end
  
end
