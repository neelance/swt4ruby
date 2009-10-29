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
  module NSNotificationCenterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSNotificationCenter < NSNotificationCenterImports.const_get :NSObject
    include_class_members NSNotificationCenterImports
    
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
    
    typesig { [Id, ::Java::Int, NSString, Id] }
    # long
    def add_observer(observer, a_selector, a_name, an_object)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_add_observer_selector_name_object_, !(observer).nil? ? observer.attr_id : 0, a_selector, !(a_name).nil? ? a_name.attr_id : 0, !(an_object).nil? ? an_object.attr_id : 0)
    end
    
    class_module.module_eval {
      typesig { [] }
      def default_center
        # long
        result = OS.objc_msg_send(OS.attr_class_nsnotification_center, OS.attr_sel_default_center)
        return !(result).equal?(0) ? NSNotificationCenter.new(result) : nil
      end
    }
    
    typesig { [Id] }
    def remove_observer(observer)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_remove_observer_, !(observer).nil? ? observer.attr_id : 0)
    end
    
    private
    alias_method :initialize__nsnotification_center, :initialize
  end
  
end
