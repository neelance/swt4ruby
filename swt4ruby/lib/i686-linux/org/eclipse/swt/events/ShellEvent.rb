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
  module ShellEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Widgets, :Event
    }
  end
  
  # Instances of this class are sent as a result of
  # operations being performed on shells.
  # 
  # @see ShellListener
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ShellEvent < ShellEventImports.const_get :TypedEvent
    include_class_members ShellEventImports
    
    # A flag indicating whether the operation should be allowed.
    # Setting this field to <code>false</code> will cancel the operation.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257569490479888441 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the given untyped event.
    # 
    # @param e the untyped event containing the information
    def initialize(e)
      @doit = false
      super(e)
      @doit = e.attr_doit
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " doit=" + RJava.cast_to_string(@doit) + "}"
    end
    
    private
    alias_method :initialize__shell_event, :initialize
  end
  
end
