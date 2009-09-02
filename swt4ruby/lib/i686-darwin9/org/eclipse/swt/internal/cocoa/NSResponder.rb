require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Cocoa
  module NSResponderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSResponder < NSResponderImports.const_get :NSObject
    include_class_members NSResponderImports
    
    typesig { [] }
    def initialize
      super()
    end
    
    typesig { [::Java::Int] }
    # long
    def initialize(id)
      super(id)
    end
    
    typesig { [Id] }
    def initialize(id)
      super(id)
    end
    
    typesig { [] }
    def accepts_first_responder
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_accepts_first_responder)
    end
    
    typesig { [] }
    def become_first_responder
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_become_first_responder)
    end
    
    typesig { [NSEvent] }
    def cursor_update(event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_cursor_update_, !(event).nil? ? event.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def do_command_by_selector(a_selector)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_do_command_by_selector_, a_selector)
    end
    
    typesig { [NSEvent] }
    def flags_changed(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_flags_changed_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def help_requested(event_ptr)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_help_requested_, !(event_ptr).nil? ? event_ptr.attr_id : 0)
    end
    
    typesig { [Id] }
    def insert_text(insert_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_insert_text_, !(insert_string).nil? ? insert_string.attr_id : 0)
    end
    
    typesig { [NSArray] }
    def interpret_key_events(event_array)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_interpret_key_events_, !(event_array).nil? ? event_array.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def key_down(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_key_down_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def key_up(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_key_up_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def mouse_down(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_mouse_down_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def mouse_dragged(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_mouse_dragged_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def mouse_entered(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_mouse_entered_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def mouse_exited(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_mouse_exited_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def mouse_moved(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_mouse_moved_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def mouse_up(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_mouse_up_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [Id] }
    def move_to_beginning_of_paragraph(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_move_to_beginning_of_paragraph_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def move_to_end_of_paragraph(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_move_to_end_of_paragraph_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def move_up(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_move_up_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def no_responder_for(event_selector)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_no_responder_for_, event_selector)
    end
    
    typesig { [NSEvent] }
    def other_mouse_down(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_other_mouse_down_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def other_mouse_dragged(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_other_mouse_dragged_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def other_mouse_up(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_other_mouse_up_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [Id] }
    def page_down(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_page_down_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def page_up(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_page_up_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def resign_first_responder
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_resign_first_responder)
    end
    
    typesig { [NSEvent] }
    def right_mouse_down(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_right_mouse_down_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def right_mouse_dragged(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_right_mouse_dragged_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def right_mouse_up(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_right_mouse_up_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def scroll_wheel(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_scroll_wheel_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsresponder, :initialize
  end
  
end
