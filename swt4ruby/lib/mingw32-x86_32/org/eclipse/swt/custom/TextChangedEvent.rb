require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module TextChangedEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent by the StyledTextContent implementor when a change to
  # the text occurs.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TextChangedEvent < TextChangedEventImports.const_get :TypedEvent
    include_class_members TextChangedEventImports
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3258696524257835065 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextContent] }
    # Create the TextChangedEvent to be used by the StyledTextContent implementor.
    # <p>
    # 
    # @param source the object that will be sending the TextChangedEvent,
    # cannot be null
    def initialize(source)
      super(source)
    end
    
    private
    alias_method :initialize__text_changed_event, :initialize
  end
  
end
