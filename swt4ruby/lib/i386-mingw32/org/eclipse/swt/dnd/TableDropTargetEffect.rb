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
  module TableDropTargetEffectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
      const_set_lazy(:SCROLL_HYSTERESIS) { 200 }
      const_attr_reader  :SCROLL_HYSTERESIS
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
    
    attr_accessor :drop_highlight
    alias_method :attr_drop_highlight, :drop_highlight
    undef_method :drop_highlight
    alias_method :attr_drop_highlight=, :drop_highlight=
    undef_method :drop_highlight=
    
    typesig { [Table] }
    # Creates a new <code>TableDropTargetEffect</code> to handle the drag under effect on the specified
    # <code>Table</code>.
    # 
    # @param table the <code>Table</code> over which the user positions the cursor to drop the data
    def initialize(table)
      @scroll_index = 0
      @scroll_begin_time = 0
      @drop_highlight = nil
      super(table)
      @scroll_index = -1
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
      @scroll_begin_time = 0
      @scroll_index = -1
      @drop_highlight = nil
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
      table = self.attr_control
      # long
      handle = table.attr_handle
      if (!(@drop_highlight).nil?)
        lv_item = LVITEM.new
        lv_item.attr_state_mask = OS::LVIS_DROPHILITED
        OS._send_message(handle, OS::LVM_SETITEMSTATE, -1, lv_item)
        @drop_highlight = nil
      end
      @scroll_begin_time = 0
      @scroll_index = -1
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
      table = get_control
      effect = check_effect(event.attr_feedback)
      # long
      handle = table.attr_handle
      coordinates = Point.new(event.attr_x, event.attr_y)
      coordinates = table.to_control(coordinates)
      pinfo = LVHITTESTINFO.new
      pinfo.attr_x = coordinates.attr_x
      pinfo.attr_y = coordinates.attr_y
      OS._send_message(handle, OS::LVM_HITTEST, 0, pinfo)
      if (((effect & DND::FEEDBACK_SCROLL)).equal?(0))
        @scroll_begin_time = 0
        @scroll_index = -1
      else
        if (!(pinfo.attr_i_item).equal?(-1) && (@scroll_index).equal?(pinfo.attr_i_item) && !(@scroll_begin_time).equal?(0))
          if (System.current_time_millis >= @scroll_begin_time)
            # 64
            top = Math.max(0, RJava.cast_to_int(OS._send_message(handle, OS::LVM_GETTOPINDEX, 0, 0)))
            # 64
            count = RJava.cast_to_int(OS._send_message(handle, OS::LVM_GETITEMCOUNT, 0, 0))
            index = (@scroll_index - 1 < top) ? Math.max(0, @scroll_index - 1) : Math.min(count - 1, @scroll_index + 1)
            scroll = true
            if ((pinfo.attr_i_item).equal?(top))
              scroll = !(pinfo.attr_i_item).equal?(index)
            else
              item_rect = RECT.new
              item_rect.attr_left = OS::LVIR_BOUNDS
              if (!(OS._send_message(handle, OS::LVM_GETITEMRECT, pinfo.attr_i_item, item_rect)).equal?(0))
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
              OS._send_message(handle, OS::LVM_ENSUREVISIBLE, index, 0)
              table.redraw
            end
            @scroll_begin_time = 0
            @scroll_index = -1
          end
        else
          @scroll_begin_time = System.current_time_millis + SCROLL_HYSTERESIS
          @scroll_index = pinfo.attr_i_item
        end
      end
      if (!(pinfo.attr_i_item).equal?(-1) && !((effect & DND::FEEDBACK_SELECT)).equal?(0))
        item = table.get_item(pinfo.attr_i_item)
        if (!(@drop_highlight).equal?(item))
          lv_item = LVITEM.new
          lv_item.attr_state_mask = OS::LVIS_DROPHILITED
          OS._send_message(handle, OS::LVM_SETITEMSTATE, -1, lv_item)
          lv_item.attr_state = OS::LVIS_DROPHILITED
          OS._send_message(handle, OS::LVM_SETITEMSTATE, pinfo.attr_i_item, lv_item)
          @drop_highlight = item
        end
      else
        if (!(@drop_highlight).nil?)
          lv_item = LVITEM.new
          lv_item.attr_state_mask = OS::LVIS_DROPHILITED
          OS._send_message(handle, OS::LVM_SETITEMSTATE, -1, lv_item)
          @drop_highlight = nil
        end
      end
    end
    
    private
    alias_method :initialize__table_drop_target_effect, :initialize
  end
  
end
