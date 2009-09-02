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
  module NSObjectImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSObject < Id
    include_class_members NSObjectImports
    
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
    def alloc
      self.attr_id = OS.objc_msg_send(objc_get_class, OS.attr_sel_alloc)
      return self
    end
    
    typesig { [NSString, Id] }
    def accessibility_attribute_value(attribute, parameter)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_accessibility_attribute_value_for_parameter_, !(attribute).nil? ? attribute.attr_id : 0, !(parameter).nil? ? parameter.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [Id, NSString] }
    def accessibility_set_override_value(value, attribute)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_accessibility_set_override_value_for_attribute_, !(value).nil? ? value.attr_id : 0, !(attribute).nil? ? attribute.attr_id : 0)
    end
    
    typesig { [NSImage, NSPoint, ::Java::Int] }
    # long
    def dragged_image(image, screen_point, operation)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_dragged_image_ended_at_operation_, !(image).nil? ? image.attr_id : 0, screen_point, operation)
    end
    
    typesig { [] }
    def dragging_destination_window
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_dragging_destination_window)
      return !(result).equal?(0) ? NSWindow.new(result) : nil
    end
    
    typesig { [] }
    def dragging_location
      result = NSPoint.new
      OS.objc_msg_send_stret(result, self.attr_id, OS.attr_sel_dragging_location)
      return result
    end
    
    typesig { [] }
    def dragging_pasteboard
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_dragging_pasteboard)
      return !(result).equal?(0) ? NSPasteboard.new(result) : nil
    end
    
    typesig { [] }
    # long
    def dragging_source_operation_mask
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_dragging_source_operation_mask)
    end
    
    typesig { [] }
    def autorelease
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_autorelease)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSObject.new(result) : nil)
    end
    
    typesig { [NSURLAuthenticationChallenge] }
    def cancel_authentication_challenge(challenge)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_cancel_authentication_challenge_, !(challenge).nil? ? challenge.attr_id : 0)
    end
    
    typesig { [] }
    def class_name
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_class_name)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [Protocol] }
    def conforms_to_protocol(a_protocol)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_conforms_to_protocol_, !(a_protocol).nil? ? a_protocol.attr_id : 0)
    end
    
    typesig { [] }
    def copy
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_copy)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [] }
    def description
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_description)
      return !(result).equal?(0) ? NSString.new(result) : nil
    end
    
    typesig { [] }
    def init
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSObject.new(result) : nil)
    end
    
    typesig { [Id] }
    def is_equal(object)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_equal_, !(object).nil? ? object.attr_id : 0)
    end
    
    typesig { [Id] }
    def is_equal_to(object)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_equal_to_, !(object).nil? ? object.attr_id : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def is_kind_of_class(a_class)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_kind_of_class_, a_class)
    end
    
    typesig { [] }
    def mutable_copy
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_mutable_copy)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [::Java::Int, Id, ::Java::Boolean] }
    # long
    def perform_selector_on_main_thread(a_selector, arg, wait)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_perform_selector_on_main_thread_with_object_wait_until_done_, a_selector, !(arg).nil? ? arg.attr_id : 0, wait)
    end
    
    typesig { [] }
    def release
      OS.objc_msg_send(self.attr_id, OS.attr_sel_release)
    end
    
    typesig { [::Java::Int] }
    # long
    def responds_to_selector(a_selector)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_responds_to_selector_, a_selector)
    end
    
    typesig { [] }
    def retain
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_retain)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [] }
    # long
    def retain_count
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_retain_count)
    end
    
    typesig { [Id, NSString] }
    def set_value(value, key)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_value_for_key_, !(value).nil? ? value.attr_id : 0, !(key).nil? ? key.attr_id : 0)
    end
    
    typesig { [] }
    # long
    def superclass
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_superclass)
    end
    
    typesig { [NSURLCredential, NSURLAuthenticationChallenge] }
    def use_credential(credential, challenge)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_use_credential_for_authentication_challenge_, !(credential).nil? ? credential.attr_id : 0, !(challenge).nil? ? challenge.attr_id : 0)
    end
    
    typesig { [NSString] }
    def value_for_key(key)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_value_for_key_, !(key).nil? ? key.attr_id : 0)
      return !(result).equal?(0) ? Id.new(result) : nil
    end
    
    typesig { [NSString, Id, ::Java::Boolean] }
    def add_event_listener(type, listener, use_capture)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_event_listener_listener_use_capture_, !(type).nil? ? type.attr_id : 0, !(listener).nil? ? listener.attr_id : 0, use_capture)
    end
    
    typesig { [DOMEvent] }
    def handle_event(evt)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_handle_event_, !(evt).nil? ? evt.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsobject, :initialize
  end
  
end
