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
  module NSMutableStringImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSMutableString < NSMutableStringImports.const_get :NSString
    include_class_members NSMutableStringImports
    
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
    
    typesig { [NSString] }
    def append_string(a_string)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_append_string_, !(a_string).nil? ? a_string.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Char), ::Java::Int] }
      # long
      def string_with_characters(characters, length)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_string, OS.attr_sel_string_with_characters_length_, characters, length)
        return !(result).equal?(0) ? NSMutableString.new(result) : nil
      end
      
      typesig { [NSString] }
      def string_with_format(string_with_format)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_string, OS.attr_sel_string_with_format_, !(string_with_format).nil? ? string_with_format.attr_id : 0)
        return !(result).equal?(0) ? NSString.new(result) : nil
      end
      
      typesig { [::Java::Int] }
      # long
      def string_with_utf8string(null_terminated_cstring)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsmutable_string, OS.attr_sel_string_with_utf8string_, null_terminated_cstring)
        return !(result).equal?(0) ? NSString.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nsmutable_string, :initialize
  end
  
end
