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
  module ExtendedModifyEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This event is sent after a text change occurs.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ExtendedModifyEvent < ExtendedModifyEventImports.const_get :TypedEvent
    include_class_members ExtendedModifyEventImports
    
    # start offset of the new text
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    # length of the new text
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    # replaced text or empty string if no text was replaced
    attr_accessor :replaced_text
    alias_method :attr_replaced_text, :replaced_text
    undef_method :replaced_text
    alias_method :attr_replaced_text=, :replaced_text=
    undef_method :replaced_text=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3258696507027830832 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [StyledTextEvent] }
    # Constructs a new instance of this class based on the
    # information in the given event.
    # 
    # @param e the event containing the information
    def initialize(e)
      @start = 0
      @length = 0
      @replaced_text = nil
      super(e)
      @start = e.attr_start
      @length = e.attr_end - e.attr_start
      @replaced_text = RJava.cast_to_string(e.attr_text)
    end
    
    private
    alias_method :initialize__extended_modify_event, :initialize
  end
  
end
