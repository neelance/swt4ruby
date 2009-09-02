require "rjava"

# Copyright (c) 2003, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module ProgressEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A <code>ProgressEvent</code> is sent by a {@link Browser} to
  # {@link ProgressListener}'s when a progress is made during the
  # loading of the current URL or when the loading of the current
  # URL has been completed.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class ProgressEvent < ProgressEventImports.const_get :TypedEvent
    include_class_members ProgressEventImports
    
    # current value
    attr_accessor :current
    alias_method :attr_current, :current
    undef_method :current
    alias_method :attr_current=, :current=
    undef_method :current=
    
    # total value
    attr_accessor :total
    alias_method :attr_total, :total
    undef_method :total
    alias_method :attr_total=, :total=
    undef_method :total=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3977018427045393972 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    # Constructs a new instance of this class.
    # 
    # @param widget the widget that fired the event
    # 
    # @since 3.5
    def initialize(widget)
      @current = 0
      @total = 0
      super(widget)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " current=" + RJava.cast_to_string(@current) + " total=" + RJava.cast_to_string(@total) + "}"
    end
    
    private
    alias_method :initialize__progress_event, :initialize
  end
  
end
