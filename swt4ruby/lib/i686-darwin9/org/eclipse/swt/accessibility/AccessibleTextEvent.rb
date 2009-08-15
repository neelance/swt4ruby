require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleTextEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # Instances of this class are sent as a result of
  # accessibility clients sending messages to controls
  # asking for detailed information about the implementation
  # of the control instance. Typically, only implementors
  # of custom controls need to listen for this event.
  # <p>
  # Note: The meaning of each field depends on the
  # message that was sent.
  # </p>
  # 
  # @see AccessibleTextListener
  # @see AccessibleTextAdapter
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class AccessibleTextEvent < AccessibleTextEventImports.const_get :SWTEventObject
    include_class_members AccessibleTextEventImports
    
    attr_accessor :child_id
    alias_method :attr_child_id, :child_id
    undef_method :child_id
    alias_method :attr_child_id=, :child_id=
    undef_method :child_id=
    
    # IN
    attr_accessor :offset
    alias_method :attr_offset, :offset
    undef_method :offset
    alias_method :attr_offset=, :offset=
    undef_method :offset=
    
    attr_accessor :length
    alias_method :attr_length, :length
    undef_method :length
    alias_method :attr_length=, :length=
    undef_method :length=
    
    class_module.module_eval {
      # OUT
      const_set_lazy(:SerialVersionUID) { 3977019530868308275 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Object] }
    # Constructs a new instance of this class.
    # 
    # @param source the object that fired the event
    def initialize(source)
      @child_id = 0
      @offset = 0
      @length = 0
      super(source)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      # $NON-NLS-1$
      # $NON-NLS-1$
      # $NON-NLS-1$
      return "AccessibleTextEvent {childID=" + RJava.cast_to_string(@child_id) + " offset=" + RJava.cast_to_string(@offset) + " length=" + RJava.cast_to_string(@length) + "}" # $NON-NLS-1$
    end
    
    private
    alias_method :initialize__accessible_text_event, :initialize
  end
  
end
