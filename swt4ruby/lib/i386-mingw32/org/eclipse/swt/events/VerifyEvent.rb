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
  module VerifyEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
    }
  end
  
  # Instances of this class are sent as a result of
  # widgets handling keyboard events
  # 
  # @see VerifyListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class VerifyEvent < VerifyEventImports.const_get :KeyEvent
    include_class_members VerifyEventImports
    
    # the range of text being modified.
    # Setting these fields has no effect.
    attr_accessor :start
    alias_method :attr_start, :start
    undef_method :start
    alias_method :attr_start=, :start=
    undef_method :start=
    
    attr_accessor :end
    alias_method :attr_end, :end
    undef_method :end
    alias_method :attr_end=, :end=
    undef_method :end=
    
    # the new text that will be inserted.
    # Setting this field will change the text that is about to
    # be inserted or deleted.
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257003246269577014 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @start = 0
      @end = 0
      @text = nil
      super(e)
      @start = e.attr_start
      @end = e.attr_end
      @text = e.attr_text
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return (string.substring(0, string.length - 1)).to_s + " start=" + (@start).to_s + " end=" + (@end).to_s + " text=" + @text + "}"
    end
    
    private
    alias_method :initialize__verify_event, :initialize
  end
  
end
