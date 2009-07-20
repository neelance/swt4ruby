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
  module LocationEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A <code>LocationEvent</code> is sent by a {@link Browser} to
  # {@link LocationListener}'s when the <code>Browser</code>
  # navigates to a different URL. This notification typically
  # occurs when the application navigates to a new location with
  # {@link Browser#setUrl(String)} or when the user activates a
  # hyperlink.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class LocationEvent < LocationEventImports.const_get :TypedEvent
    include_class_members LocationEventImports
    
    # current location
    attr_accessor :location
    alias_method :attr_location, :location
    undef_method :location
    alias_method :attr_location=, :location=
    undef_method :location=
    
    # A flag indicating whether the location opens in the top frame
    # or not.
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    # A flag indicating whether the location loading should be allowed.
    # Setting this field to <code>false</code> will cancel the operation.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3906644198244299574 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    def initialize(w)
      @location = nil
      @top = false
      @doit = false
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
      return (string.substring(0, string.length - 1)).to_s + " location=" + @location + " top=" + (@top).to_s + " doit=" + (@doit).to_s + "}"
    end
    
    private
    alias_method :initialize__location_event, :initialize
  end
  
end
