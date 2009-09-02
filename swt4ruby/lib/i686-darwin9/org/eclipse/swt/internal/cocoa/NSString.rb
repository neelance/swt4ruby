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
  module NSStringImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSString < NSStringImports.const_get :NSObject
    include_class_members NSStringImports
    
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
    def get_string
      # 64
      buffer = CharArray.new(RJava.cast_to_int(length))
      get_characters(buffer)
      return String.new(buffer)
    end
    
    class_module.module_eval {
      typesig { [String] }
      def string_with(str)
        buffer = CharArray.new(str.length)
        str.get_chars(0, buffer.attr_length, buffer, 0)
        return string_with_characters(buffer, buffer.attr_length)
      end
    }
    
    typesig { [] }
    # long
    def _utf8string
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_utf8string)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def character_at_index(index)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_character_at_index_, index)
    end
    
    typesig { [NSString] }
    # long
    def compare(string)
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_compare_, !(string).nil? ? string.attr_id : 0)
    end
    
    typesig { [] }
    # long
    def file_system_representation
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_file_system_representation)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def get_characters(buffer)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_characters_, buffer)
    end
    
    typesig { [Array.typed(::Java::Char), NSRange] }
    def get_characters(buffer, a_range)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_characters_range_, buffer, a_range)
    end
    
    typesig { [Array.typed(::Java::Char), ::Java::Int] }
    # long
    def init_with_characters(characters, length_)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_init_with_characters_length_, characters, length_)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [NSString] }
    def is_equal_to_string(a_string)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_is_equal_to_string_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    typesig { [] }
    def last_path_component
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_last_path_component)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [] }
    # long
    def length
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_length)
    end
    
    typesig { [] }
    def lowercase_string
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_lowercase_string)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [] }
    def path_extension
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_path_extension)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [::Java::Int] }
    # long
    def string_by_adding_percent_escapes_using_encoding(enc)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_adding_percent_escapes_using_encoding_, enc)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [NSString] }
    def string_by_appending_path_component(str)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_appending_path_component_, !(str).nil? ? str.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [NSString] }
    def string_by_appending_string(a_string)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_appending_string_, !(a_string).nil? ? a_string.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [] }
    def string_by_deleting_last_path_component
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_deleting_last_path_component)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [] }
    def string_by_deleting_path_extension
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_deleting_path_extension)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    typesig { [NSString, NSString] }
    def string_by_replacing_occurrences_of_string(target, replacement)
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_string_by_replacing_occurrences_of_string_with_string_, !(target).nil? ? target.attr_id : 0, !(replacement).nil? ? replacement.attr_id : 0)
      return (result).equal?(self.attr_id) ? self : (!(result).equal?(0) ? NSString.new(result) : nil)
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Char), ::Java::Int] }
      # long
      def string_with_characters(characters, length_)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsstring, OS.attr_sel_string_with_characters_length_, characters, length_)
        return !(result).equal?(0) ? NSString.new(result) : nil
      end
      
      typesig { [NSString] }
      def string_with_format(string_with_format)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsstring, OS.attr_sel_string_with_format_, !(string_with_format).nil? ? string_with_format.attr_id : 0)
        return !(result).equal?(0) ? NSString.new(result) : nil
      end
      
      typesig { [::Java::Int] }
      # long
      def string_with_utf8string(null_terminated_cstring)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsstring, OS.attr_sel_string_with_utf8string_, null_terminated_cstring)
        return !(result).equal?(0) ? NSString.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsstring, :initialize
  end
  
end
