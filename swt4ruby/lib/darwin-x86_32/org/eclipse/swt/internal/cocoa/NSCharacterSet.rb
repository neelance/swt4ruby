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
  module NSCharacterSetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class NSCharacterSet < NSCharacterSetImports.const_get :NSObject
    include_class_members NSCharacterSetImports
    
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
    
    typesig { [::Java::Short] }
    def character_is_member(a_character)
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_character_is_member_, a_character)
    end
    
    class_module.module_eval {
      typesig { [] }
      def decimal_digit_character_set
        # long
        result = OS.objc_msg_send(OS.attr_class_nscharacter_set, OS.attr_sel_decimal_digit_character_set)
        return !(result).equal?(0) ? Id.new(result) : nil
      end
    }
    
    private
    alias_method :initialize__nscharacter_set, :initialize
  end
  
end
