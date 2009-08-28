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
  module TypedEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventObject
    }
  end
  
  # This is the super class for all typed event classes provided
  # by SWT. Typed events contain particular information which is
  # applicable to the event occurrence.
  # 
  # @see org.eclipse.swt.widgets.Event
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TypedEvent < TypedEventImports.const_get :SWTEventObject
    include_class_members TypedEventImports
    
    # the display where the event occurred
    # 
    # @since 2.0
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    # the widget that issued the event
    attr_accessor :widget
    alias_method :attr_widget, :widget
    undef_method :widget
    alias_method :attr_widget=, :widget=
    undef_method :widget=
    
    # the time that the event occurred.
    # 
    # NOTE: This field is an unsigned integer and should
    # be AND'ed with 0xFFFFFFFFL so that it can be treated
    # as a signed long.
    attr_accessor :time
    alias_method :attr_time, :time
    undef_method :time
    alias_method :attr_time=, :time=
    undef_method :time=
    
    # a field for application use
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { 3257285846578377524 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Object] }
    # Constructs a new instance of this class.
    # 
    # @param object the object that fired the event
    def initialize(object)
      @display = nil
      @widget = nil
      @time = 0
      @data = nil
      super(object)
    end
    
    typesig { [Event] }
    # Constructs a new instance of this class based on the
    # information in the argument.
    # 
    # @param e the low level event to initialize the receiver with
    def initialize(e)
      @display = nil
      @widget = nil
      @time = 0
      @data = nil
      super(e.attr_widget)
      @display = e.attr_display
      @widget = e.attr_widget
      @time = e.attr_time
      @data = e.attr_data
    end
    
    typesig { [] }
    # Returns the name of the event. This is the name of
    # the class without the package name.
    # 
    # @return the name of the event
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      return RJava.cast_to_string(get_name) + "{" + RJava.cast_to_string(@widget) + " time=" + RJava.cast_to_string(@time) + " data=" + RJava.cast_to_string(@data) + "}"
    end
    
    private
    alias_method :initialize__typed_event, :initialize
  end
  
end
