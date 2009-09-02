require "rjava"

# Copyright (c) 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CaretEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent when the caret offset changes.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.5
  class CaretEvent < CaretEventImports.const_get :TypedEvent
    include_class_members CaretEventImports
    
    # caret offset
    attr_accessor :caret_offset
    alias_method :attr_caret_offset, :caret_offset
    undef_method :caret_offset
    alias_method :attr_caret_offset=, :caret_offset=
    undef_method :caret_offset=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257846571587545489 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextEvent] }
    def initialize(e)
      @caret_offset = 0
      super(e)
      @caret_offset = e.attr_end
    end
    
    private
    alias_method :initialize__caret_event, :initialize
  end
  
end
