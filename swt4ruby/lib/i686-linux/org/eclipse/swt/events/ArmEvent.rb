require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module ArmEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
    }
  end
  
  # Instances of this class are sent as a result of
  # a widget such as a menu item being armed.
  # 
  # @see ArmListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ArmEvent < ArmEventImports.const_get :TypedEvent
    include_class_members ArmEventImports
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3258126964249212217 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      super(e)
    end
    
    private
    alias_method :initialize__arm_event, :initialize
  end
  
end
