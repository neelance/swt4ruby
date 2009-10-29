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
  module NSDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSData < NSDataImports.const_get :NSObject
    include_class_members NSDataImports
    
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
    # long
    def bytes
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_bytes)
    end
    
    class_module.module_eval {
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def data_with_bytes(bytes, length)
        # long
        result = OS.objc_msg_send(OS.attr_class_nsdata, OS.attr_sel_data_with_bytes_length_, bytes, length)
        return !(result).equal?(0) ? NSData.new(result) : nil
      end
    }
    
    typesig { [Array.typed(::Java::Byte)] }
    def get_bytes(buffer)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_bytes_, buffer)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_bytes(buffer, length)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_get_bytes_length_, buffer, length)
    end
    
    typesig { [] }
    # long
    def length
      return OS.objc_msg_send(self.attr_id, OS.attr_sel_length)
    end
    
    private
    alias_method :initialize__nsdata, :initialize
  end
  
end
