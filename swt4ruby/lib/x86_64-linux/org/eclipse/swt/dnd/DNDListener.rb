require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DNDListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  class DNDListener < DNDListenerImports.const_get :TypedListener
    include_class_members DNDListenerImports
    
    attr_accessor :dnd_widget
    alias_method :attr_dnd_widget, :dnd_widget
    undef_method :dnd_widget
    alias_method :attr_dnd_widget=, :dnd_widget=
    undef_method :dnd_widget=
    
    typesig { [SWTEventListener] }
    # DNDListener constructor comment.
    # @param listener org.eclipse.swt.internal.SWTEventListener
    def initialize(listener)
      @dnd_widget = nil
      super(listener)
    end
    
    typesig { [Event] }
    def handle_event(e)
      case (e.attr_type)
      when DND::DragStart
        event = DragSourceEvent.new(e)
        source_effect = (@dnd_widget).get_drag_source_effect
        if (!(source_effect).nil?)
          source_effect.drag_start(event)
        end
        (self.attr_event_listener).drag_start(event)
        event.update_event(e)
      when DND::DragEnd
        event = DragSourceEvent.new(e)
        source_effect = (@dnd_widget).get_drag_source_effect
        if (!(source_effect).nil?)
          source_effect.drag_finished(event)
        end
        (self.attr_event_listener).drag_finished(event)
        event.update_event(e)
      when DND::DragSetData
        event = DragSourceEvent.new(e)
        source_effect = (@dnd_widget).get_drag_source_effect
        if (!(source_effect).nil?)
          source_effect.drag_set_data(event)
        end
        (self.attr_event_listener).drag_set_data(event)
        event.update_event(e)
      when DND::DragEnter
        event = DropTargetEvent.new(e)
        (self.attr_event_listener).drag_enter(event)
        drop_effect = (@dnd_widget).get_drop_target_effect
        if (!(drop_effect).nil?)
          drop_effect.drag_enter(event)
        end
        event.update_event(e)
      when DND::DragLeave
        event = DropTargetEvent.new(e)
        (self.attr_event_listener).drag_leave(event)
        drop_effect = (@dnd_widget).get_drop_target_effect
        if (!(drop_effect).nil?)
          drop_effect.drag_leave(event)
        end
        event.update_event(e)
      when DND::DragOver
        event = DropTargetEvent.new(e)
        (self.attr_event_listener).drag_over(event)
        drop_effect = (@dnd_widget).get_drop_target_effect
        if (!(drop_effect).nil?)
          drop_effect.drag_over(event)
        end
        event.update_event(e)
      when DND::Drop
        event = DropTargetEvent.new(e)
        (self.attr_event_listener).drop(event)
        drop_effect = (@dnd_widget).get_drop_target_effect
        if (!(drop_effect).nil?)
          drop_effect.drop(event)
        end
        event.update_event(e)
      when DND::DropAccept
        event = DropTargetEvent.new(e)
        (self.attr_event_listener).drop_accept(event)
        drop_effect = (@dnd_widget).get_drop_target_effect
        if (!(drop_effect).nil?)
          drop_effect.drop_accept(event)
        end
        event.update_event(e)
      when DND::DragOperationChanged
        event = DropTargetEvent.new(e)
        (self.attr_event_listener).drag_operation_changed(event)
        drop_effect = (@dnd_widget).get_drop_target_effect
        if (!(drop_effect).nil?)
          drop_effect.drag_operation_changed(event)
        end
        event.update_event(e)
      end
    end
    
    private
    alias_method :initialize__dndlistener, :initialize
  end
  
end
