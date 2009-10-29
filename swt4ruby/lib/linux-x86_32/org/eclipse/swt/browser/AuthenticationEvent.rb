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
  module AuthenticationEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # An <code>AuthenticationEvent</code> is sent by a {@link Browser}
  # to {@link AuthenticationListener}'s when the <code>Browser</code>
  # navigates to a page that requires authentication. This event allows
  # a client to either supply authentication credentials, cancel the
  # authentication, or do nothing (which causes an authentication prompter
  # to be shown to the user).
  # 
  # @since 3.5
  class AuthenticationEvent < AuthenticationEventImports.const_get :TypedEvent
    include_class_members AuthenticationEventImports
    
    # The location that triggered the authentication challenge
    attr_accessor :location
    alias_method :attr_location, :location
    undef_method :location
    alias_method :attr_location=, :location=
    undef_method :location=
    
    # The user name to authenticate with
    attr_accessor :user
    alias_method :attr_user, :user
    undef_method :user
    alias_method :attr_user=, :user=
    undef_method :user=
    
    # The password to authenticate with
    attr_accessor :password
    alias_method :attr_password, :password
    undef_method :password
    alias_method :attr_password=, :password=
    undef_method :password=
    
    # A flag indicating whether the authentication should proceed.
    # Setting this field to <code>false</code> will cancel the operation.
    attr_accessor :doit
    alias_method :attr_doit, :doit
    undef_method :doit
    alias_method :attr_doit=, :doit=
    undef_method :doit=
    
    class_module.module_eval {
      const_set_lazy(:SerialVersionUID) { -8322331206780057921 }
      const_attr_reader  :SerialVersionUID
    }
    
    typesig { [Widget] }
    # Constructs a new instance of this class.
    # 
    # @param widget the widget that fired the event
    # 
    # @since 3.5
    def initialize(widget)
      @location = nil
      @user = nil
      @password = nil
      @doit = false
      super(widget)
      @doit = true
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the event
    def to_s
      string = super
      # remove trailing '}'
      return RJava.cast_to_string(string.substring(0, string.length - 1)) + " name=" + @user + " password=" + @password + " location=" + @location + "}"
    end
    
    private
    alias_method :initialize__authentication_event, :initialize
  end
  
end
