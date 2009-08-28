require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module DeviceDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  class DeviceData 
    include_class_members DeviceDataImports
    
    # The following fields are platform dependent.
    # <p>
    # <b>IMPORTANT:</b> These fields are <em>not</em> part of the SWT
    # public API. They are marked public only so that they can be shared
    # within the packages provided by SWT. They are not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :display_name
    alias_method :attr_display_name, :display_name
    undef_method :display_name
    alias_method :attr_display_name=, :display_name=
    undef_method :display_name=
    
    attr_accessor :application_name
    alias_method :attr_application_name, :application_name
    undef_method :application_name
    alias_method :attr_application_name=, :application_name=
    undef_method :application_name=
    
    attr_accessor :application_class
    alias_method :attr_application_class, :application_class
    undef_method :application_class
    alias_method :attr_application_class=, :application_class=
    undef_method :application_class=
    
    # Debug fields - may not be honoured
    # on some SWT platforms.
    attr_accessor :debug
    alias_method :attr_debug, :debug
    undef_method :debug
    alias_method :attr_debug=, :debug=
    undef_method :debug=
    
    attr_accessor :tracking
    alias_method :attr_tracking, :tracking
    undef_method :tracking
    alias_method :attr_tracking=, :tracking=
    undef_method :tracking=
    
    attr_accessor :errors
    alias_method :attr_errors, :errors
    undef_method :errors
    alias_method :attr_errors=, :errors=
    undef_method :errors=
    
    attr_accessor :objects
    alias_method :attr_objects, :objects
    undef_method :objects
    alias_method :attr_objects=, :objects=
    undef_method :objects=
    
    typesig { [] }
    def initialize
      @display_name = nil
      @application_name = nil
      @application_class = nil
      @debug = false
      @tracking = false
      @errors = nil
      @objects = nil
    end
    
    private
    alias_method :initialize__device_data, :initialize
  end
  
end
