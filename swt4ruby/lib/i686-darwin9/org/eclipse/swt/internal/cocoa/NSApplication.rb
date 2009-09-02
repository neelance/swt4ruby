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
  module NSApplicationImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSApplication < NSApplicationImports.const_get :NSResponder
    include_class_members NSApplicationImports
    
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
    
    typesig { [::Java::Boolean] }
    def activate_ignoring_other_apps(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_activate_ignoring_other_apps_, flag)
    end
    
    typesig { [NSWindow, NSWindow, Id, ::Java::Int, ::Java::Int] }
    # long
    # long
    def begin_sheet(sheet, doc_window, modal_delegate, did_end_selector, context_info)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_begin_sheet_modal_for_window_modal_delegate_did_end_selector_context_info_, !(sheet).nil? ? sheet.attr_id : 0, !(doc_window).nil? ? doc_window.attr_id : 0, !(modal_delegate).nil? ? modal_delegate.attr_id : 0, did_end_selector, context_info)
    end
    
    typesig { [] }
    def current_event
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_current_event)
      return !(result).equal?(0) ? NSEvent.new(result) : nil
    end
    
    typesig { [NSWindow, ::Java::Int] }
    # long
    def end_sheet(sheet, return_code)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_end_sheet_return_code_, !(sheet).nil? ? sheet.attr_id : 0, return_code)
    end
    
    typesig { [] }
    def finish_launching
      OS.objc_msg_send(self.attr_id, OS.attr_sel_finish_launching)
    end
    
    typesig { [Id] }
    def hide(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_hide_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def hide_other_applications(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_hide_other_applications_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def is_active
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_active)
    end
    
    typesig { [] }
    def is_running
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_running)
    end
    
    typesig { [] }
    def key_window
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_key_window)
      return !(result).equal?(0) ? NSWindow.new(result) : nil
    end
    
    typesig { [] }
    def main_menu
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_main_menu)
      return !(result).equal?(0) ? NSMenu.new(result) : nil
    end
    
    typesig { [::Java::Int, NSDate, NSString, ::Java::Boolean] }
    # long
    def next_event_matching_mask(mask, expiration, mode, deq_flag)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_next_event_matching_mask_until_date_in_mode_dequeue_, mask, !(expiration).nil? ? expiration.attr_id : 0, !(mode).nil? ? mode.attr_id : 0, deq_flag)
      return !(result).equal?(0) ? NSEvent.new(result) : nil
    end
    
    typesig { [Id] }
    def order_front_standard_about_panel(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_order_front_standard_about_panel_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def ordered_windows
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_ordered_windows)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    typesig { [NSEvent, ::Java::Boolean] }
    def post_event(event, flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_post_event_at_start_, !(event).nil? ? event.attr_id : 0, flag)
    end
    
    typesig { [] }
    def run
      OS.objc_msg_send(self.attr_id, OS.attr_sel_run)
    end
    
    typesig { [NSWindow] }
    # long
    def run_modal_for_window(the_window)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_run_modal_for_window_, !(the_window).nil? ? the_window.attr_id : 0)
    end
    
    typesig { [NSEvent] }
    def send_event(the_event)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_send_event_, !(the_event).nil? ? the_event.attr_id : 0)
    end
    
    typesig { [NSImage] }
    def set_application_icon_image(image)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_application_icon_image_, !(image).nil? ? image.attr_id : 0)
    end
    
    typesig { [Id] }
    def set_delegate(an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_delegate_, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    typesig { [NSMenu] }
    def set_main_menu(a_menu)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_main_menu_, !(a_menu).nil? ? a_menu.attr_id : 0)
    end
    
    typesig { [NSMenu] }
    def set_services_menu(a_menu)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_services_menu_, !(a_menu).nil? ? a_menu.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def shared_application
        # long
        result = OS.objc_msg_send(OS.attr_class_nsapplication, OS.attr_sel_shared_application)
        return !(result).equal?(0) ? NSApplication.new(result) : nil
      end
    }
    
    typesig { [Id] }
    def stop(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_stop_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def terminate(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_terminate_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [Id] }
    def unhide_all_applications(sender)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_unhide_all_applications_, !(sender).nil? ? sender.attr_id : 0)
    end
    
    typesig { [] }
    def windows
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_windows)
      return !(result).equal?(0) ? NSArray.new(result) : nil
    end
    
    private
    alias_method :initialize__nsapplication, :initialize
  end
  
end
