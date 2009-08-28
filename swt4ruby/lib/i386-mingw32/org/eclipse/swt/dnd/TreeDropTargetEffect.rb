require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
      const_set_lazy(:SCROLL_HYSTERESIS) { 200 }
      const_attr_reader  :SCROLL_HYSTERESIS
      
      # milli seconds
      const_set_lazy(:EXPAND_HYSTERESIS) { 1000 }
      const_attr_reader  :EXPAND_HYSTERESIS
    }
    
    # milli seconds
    # long
    attr_accessor :drop_index
    alias_method :attr_drop_index, :drop_index
    undef_method :drop_index
    alias_method :attr_drop_index=, :drop_index=
    undef_method :drop_index=
    
    # long
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
    
    # long
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
    
    typesig { [Tree] }
    # Creates a new <code>TreeDropTargetEffect</code> to handle the drag under effect on the specified
    # <code>Tree</code>.
    # 
    # @param tree the <code>Tree</code> over which the user positions the cursor to drop the data
    def initialize(tree)
      @drop_index = 0
      @scroll_index = 0
      @scroll_begin_time = 0
      @expand_index = 0
      @expand_begin_time = 0
      @insert_item = nil
      @insert_before = false
      super(tree)
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
      @drop_index = -1
      @insert_item = nil
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
      if (!(@drop_index).equal?(-1))
        tv_item = TVITEM.new
        tv_item.attr_h_item = @drop_index
        tv_item.attr_mask = OS::TVIF_STATE
        tv_item.attr_state_mask = OS::TVIS_DROPHILITED
        tv_item.attr_state = 0
        OS._send_message(handle, OS::TVM_SETITEM, 0, tv_item)
        @drop_index = -1
      end
      if (!(@insert_item).nil?)
        tree.set_insert_mark(nil, false)
        @insert_item = nil
      end
      @expand_begin_time = 0
      @expand_index = -1
      @scroll_begin_time = 0
      @scroll_index = -1
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
      tree = get_control
      effect = check_effect(event.attr_feedback)
      # long
      handle = tree.attr_handle
      coordinates = Point.new(event.attr_x, event.attr_y)
      coordinates = tree.to_control(coordinates)
      lpht = TVHITTESTINFO.new
      lpht.attr_x = coordinates.attr_x
      lpht.attr_y = coordinates.attr_y
      OS._send_message(handle, OS::TVM_HITTEST, 0, lpht)
      # long
      h_item = lpht.attr_h_item
      if (((effect & DND::FEEDBACK_SCROLL)).equal?(0))
        @scroll_begin_time = 0
        @scroll_index = -1
      else
        if (!(h_item).equal?(-1) && (@scroll_index).equal?(h_item) && !(@scroll_begin_time).equal?(0))
          if (System.current_time_millis >= @scroll_begin_time)
            # long
            top_item = OS._send_message(handle, OS::TVM_GETNEXTITEM, OS::TVGN_FIRSTVISIBLE, 0)
            # long
            next_item = OS._send_message(handle, OS::TVM_GETNEXTITEM, (h_item).equal?(top_item) ? OS::TVGN_PREVIOUSVISIBLE : OS::TVGN_NEXTVISIBLE, h_item)
            scroll = true
            if ((h_item).equal?(top_item))
              scroll = !(next_item).equal?(0)
            else
              item_rect = RECT.new
              if (OS._tree_view_get_item_rect(handle, next_item, item_rect, true))
                rect = RECT.new
                OS._get_client_rect(handle, rect)
                pt = POINT.new
                pt.attr_x = item_rect.attr_left
                pt.attr_y = item_rect.attr_top
                if (OS._pt_in_rect(rect, pt))
                  pt.attr_y = item_rect.attr_bottom
                  if (OS._pt_in_rect(rect, pt))
                    scroll = false
                  end
                end
              end
            end
            if (scroll)
              OS._send_message(handle, OS::TVM_ENSUREVISIBLE, 0, next_item)
              tree.redraw
            end
            @scroll_begin_time = 0
            @scroll_index = -1
          end
        else
          @scroll_begin_time = System.current_time_millis + SCROLL_HYSTERESIS
          @scroll_index = h_item
        end
      end
      if (((effect & DND::FEEDBACK_EXPAND)).equal?(0))
        @expand_begin_time = 0
        @expand_index = -1
      else
        if (!(h_item).equal?(-1) && (@expand_index).equal?(h_item) && !(@expand_begin_time).equal?(0))
          if (System.current_time_millis >= @expand_begin_time)
            if (!(OS._send_message(handle, OS::TVM_GETNEXTITEM, OS::TVGN_CHILD, h_item)).equal?(0))
              item = tree.get_display.find_widget(tree.attr_handle, h_item)
              if (!(item).nil? && !item.get_expanded)
                item.set_expanded(true)
                tree.redraw
                expand_event = Event.new
                expand_event.attr_item = item
                tree.notify_listeners(SWT::Expand, expand_event)
              end
            end
            @expand_begin_time = 0
            @expand_index = -1
          end
        else
          @expand_begin_time = System.current_time_millis + EXPAND_HYSTERESIS
          @expand_index = h_item
        end
      end
      if (!(@drop_index).equal?(-1) && (!(@drop_index).equal?(h_item) || ((effect & DND::FEEDBACK_SELECT)).equal?(0)))
        tv_item = TVITEM.new
        tv_item.attr_h_item = @drop_index
        tv_item.attr_mask = OS::TVIF_STATE
        tv_item.attr_state_mask = OS::TVIS_DROPHILITED
        tv_item.attr_state = 0
        OS._send_message(handle, OS::TVM_SETITEM, 0, tv_item)
        @drop_index = -1
      end
      if (!(h_item).equal?(-1) && !(h_item).equal?(@drop_index) && !((effect & DND::FEEDBACK_SELECT)).equal?(0))
        tv_item = TVITEM.new
        tv_item.attr_h_item = h_item
        tv_item.attr_mask = OS::TVIF_STATE
        tv_item.attr_state_mask = OS::TVIS_DROPHILITED
        tv_item.attr_state = OS::TVIS_DROPHILITED
        OS._send_message(handle, OS::TVM_SETITEM, 0, tv_item)
        @drop_index = h_item
      end
      if (!((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?(0) || !((effect & DND::FEEDBACK_INSERT_AFTER)).equal?(0))
        before = !((effect & DND::FEEDBACK_INSERT_BEFORE)).equal?(0)
        # Bug in Windows.  When TVM_SETINSERTMARK is used to set
        # an insert mark for a tree and an item is expanded or
        # collapsed near the insert mark, the tree does not redraw
        # the insert mark properly.  The fix is to hide and show
        # the insert mark whenever an item is expanded or collapsed.
        # Since the insert mark can not be queried from the tree,
        # use the Tree API rather than calling the OS directly.
        item = tree.get_display.find_widget(tree.attr_handle, h_item)
        if (!(item).nil?)
          if (!(item).equal?(@insert_item) || !(before).equal?(@insert_before))
            tree.set_insert_mark(item, before)
          end
          @insert_item = item
          @insert_before = before
        else
          if (!(@insert_item).nil?)
            tree.set_insert_mark(nil, false)
          end
          @insert_item = nil
        end
      else
        if (!(@insert_item).nil?)
          tree.set_insert_mark(nil, false)
        end
        @insert_item = nil
      end
    end
    
    private
    alias_method :initialize__tree_drop_target_effect, :initialize
  end
  
end
