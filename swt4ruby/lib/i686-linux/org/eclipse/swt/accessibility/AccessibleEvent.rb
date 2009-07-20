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
  module AccessibleEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventObject
    }
  end
  
  # Instances of this class are sent as a result of
  # accessibility clients sending messages to controls
  # asking for information about the control instance.
  # <p>
  # Note: The meaning of the result field depends
  # on the message that was sent.
  # </p>
  # 
  # @see AccessibleListener
  # @see AccessibleAdapter
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class AccessibleEvent < AccessibleEventImports.const_get :SWTEventObject
    include_class_members AccessibleEventImports
    
    # The value of this field is set by an accessibility client
    # before the accessible listener method is called.
    # ChildID can be CHILDID_SELF, representing the control itself,
    # or a 0-based integer representing a specific child of the control.
    attr_accessor :child_id
    alias_method :attr_child_id, :child_id
    undef_method :child_id
    alias_method :attr_child_id=, :child_id=
    undef_method :child_id=
    
    # The value of this field must be set in the accessible listener
    # method before returning.
    # What to set it to depends on the listener method called, and
    # the childID specified by the client.
    attr_accessor :result
    alias_method :attr_result, :result
    undef_method :result
    alias_method :attr_result=, :result=
    undef_method :result=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257567304224026934 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Object] }
    # Constructs a new instance of this class.
    # 
    # @param source the object that fired the event
    def initialize(source)
      @child_id = 0
      @result = nil
      super(source)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      return "AccessibleEvent {childID=" + (@child_id).to_s + " result=" + @result + "}" # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
    end
    
    private
    alias_method :initialize__accessible_event, :initialize
  end
  
end
