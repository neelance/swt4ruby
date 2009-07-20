require "rjava"

# Copyright (c) 2003, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module StatusTextEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A <code>StatusTextEvent</code> is sent by a {@link Browser} to
  # {@link StatusTextListener}'s when the status text is changed.
  # The status text is typically displayed in the status bar of
  # a browser application.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class StatusTextEvent < StatusTextEventImports.const_get :TypedEvent
    include_class_members StatusTextEventImports
    
    # status text
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3258407348371600439 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    def initialize(w)
      @text = nil
      super(w)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return (string.substring(0, string.length - 1)).to_s + " text=" + @text + "}"
    end
    
    private
    alias_method :initialize__status_text_event, :initialize
  end
  
end
