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
  module WebPreferencesImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class WebPreferences < WebPreferencesImports.const_get :NSObject
    include_class_members WebPreferencesImports
    
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
    def set_java_enabled(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_java_enabled_, flag)
    end
    
    typesig { [::Java::Boolean] }
    def set_java_script_enabled(flag)
      OS.objc_msg_send(self.attr_id, OS.attr_sel_set_java_script_enabled_, flag)
    end
    
    class_module.module_eval {
      typesig { [] }
      def standard_preferences
        # long
        result = OS.objc_msg_send(OS.attr_class_web_preferences, OS.attr_sel_standard_preferences)
        return !(result).equal?(0) ? WebPreferences.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__web_preferences, :initialize
  end
  
end
