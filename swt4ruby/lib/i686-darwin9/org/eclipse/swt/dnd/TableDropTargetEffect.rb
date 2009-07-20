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
  module TableDropTargetEffectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This class provides a default drag under effect (eg. select, insert and scroll)
  # when a drag occurs over a <code>Table</code>.
  # 
  # <p>Classes that wish to provide their own drag under effect for a <code>Table</code>
  # can extend the <code>TableDropTargetEffect</code> and override any applicable methods
  # in <code>TableDropTargetEffect</code> to display their own drag under effect.</p>
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
  # <dd>FEEDBACK_SELECT, FEEDBACK_SCROLL</dd>
  # </dl>
  # </p>
  # 
  # @see DropTargetAdapter
  # @see DropTargetEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.3
  class TableDropTargetEffect < TableDropTargetEffectImports.const_get :DropTargetEffect
    include_class_members TableDropTargetEffectImports
    
    class_module.module_eval {
      const_set_lazy(:SCROLL_HYSTERESIS) { 150 }
      const_attr_reader  :SCROLL_HYSTERESIS
    }
    
    # milli seconds
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
    
    attr_accessor :callbacks
    alias_method :attr_callbacks, :callbacks
    undef_method :callbacks
    alias_method :attr_callbacks=, :callbacks=
    undef_method :callbacks=
    
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
        self.attr_accept_drag_proc = Callback.new(TableDropTargetEffect.class, "AcceptDragProc", 5) # $NON-NLS-1$
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
    
    typesig { [Table] }
    # Creates a new <code>TableDropTargetEffect</code> to handle the drag under effect on the specified
    # <code>Table</code>.
    # 
    # @param table the <code>Table</code> over which the user positions the cursor to drop the data
    def initialize(table)
      @scroll_item = nil
      @scroll_begin_time = 0
      @callbacks = nil
      super(table)
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
      @scroll_begin_time = 0
      @scroll_item = nil
    end
    
    typesig { [DropTargetEvent] }
    # This implementation of <code>dragOver</code> provides a default drag under effect
    # for the feedback specified in <code>event.feedback</code>. The class description
    # lists the FEEDBACK constants that are applicable to the class.
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
    # @see DND#FEEDBACK_SCROLL
    def drag_over(event)
      table = self.attr_control
      effect = check_effect(event.attr_feedback)
      item = get_item(table, event.attr_x, event.attr_y)
      if (((effect & DND::FEEDBACK_SCROLL)).equal?(0))
        @scroll_begin_time = 0
        @scroll_item = nil
      else
        if (!(item).nil? && (item == @scroll_item) && !(@scroll_begin_time).equal?(0))
          if (System.current_time_millis >= @scroll_begin_time)
            area = table.get_client_area
            header_height = table.get_header_height
            item_height = table.get_item_height
            pt = Point.new(event.attr_x, event.attr_y)
            pt = table.get_display.map(nil, table, pt)
            next_item = nil
            if (pt.attr_y < area.attr_y + header_height + 2 * item_height)
              index = Math.max(0, table.index_of(item) - 1)
              next_item = table.get_item(index)
            end
            if (pt.attr_y > area.attr_y + area.attr_height - 2 * item_height)
              index = Math.min(table.get_item_count - 1, table.index_of(item) + 1)
              next_item = table.get_item(index)
            end
            if (!(next_item).nil?)
              table.show_item(next_item)
            end
            @scroll_begin_time = 0
            @scroll_item = nil
          end
        else
          @scroll_begin_time = System.current_time_millis + SCROLL_HYSTERESIS
          @scroll_item = item
        end
      end
      # store current effect for selection feedback
      (event.attr_widget).attr_feedback = effect
    end
    
    private
    alias_method :initialize__table_drop_target_effect, :initialize
  end
  
end
