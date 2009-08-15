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
  module TitleEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A <code>TitleEvent</code> is sent by a {@link Browser} to
  # {@link TitleListener}'s when the title of the current document
  # is available or when it is modified.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class TitleEvent < TitleEventImports.const_get :TypedEvent
    include_class_members TitleEventImports
    
    # the title of the current document
    attr_accessor :title
    alias_method :attr_title, :title
    undef_method :title
    alias_method :attr_title=, :title=
    undef_method :title=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 4121132532906340919 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    def initialize(w)
      @title = nil
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
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " title=" + @title + "}"
    end
    
    private
    alias_method :initialize__title_event, :initialize
  end
  
end
