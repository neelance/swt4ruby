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
  module DOMKeyboardEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  class DOMKeyboardEvent < DOMKeyboardEventImports.const_get :DOMUIEvent
    include_class_members DOMKeyboardEventImports
    
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
    def alt_key
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_alt_key)
    end
    
    typesig { [] }
    def char_code
      # 64
      return RJava.cast_to_int(OS.objc_msg_send(self.attr_id, OS.attr_sel_char_code))
    end
    
    typesig { [] }
    def ctrl_key
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_ctrl_key)
    end
    
    typesig { [] }
    def key_code
      # 64
      return RJava.cast_to_int(OS.objc_msg_send(self.attr_id, OS.attr_sel_key_code))
    end
    
    typesig { [] }
    def meta_key
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_meta_key)
    end
    
    typesig { [] }
    def shift_key
      return OS.objc_msg_send_bool(self.attr_id, OS.attr_sel_shift_key)
    end
    
    private
    alias_method :initialize__domkeyboard_event, :initialize
  end
  
end
