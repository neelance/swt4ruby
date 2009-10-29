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
  module NSThreadImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSThread < NSThreadImports.const_get :NSObject
    include_class_members NSThreadImports
    
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
    
    class_module.module_eval {
      typesig { [] }
      def current_thread
        # long
        result = OS.objc_msg_send(OS.attr_class_nsthread, OS.attr_sel_current_thread)
        return !(result).equal?(0) ? NSThread.new(result) : nil
      end
      
      typesig { [] }
      def is_main_thread
        return OS.objc_msg_send_bool(OS.attr_class_nsthread, OS.attr_sel_is_main_thread)
      end
    }
    
    typesig { [] }
    def thread_dictionary
      # long
      result = OS.objc_msg_send(self.attr_id, OS.attr_sel_thread_dictionary)
      return !(result).equal?(0) ? NSMutableDictionary.new(result) : nil
    end
    
    private
    alias_method :initialize__nsthread, :initialize
  end
  
end
