require "rjava"

# Copyright (c) 2003-2006 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module LSApplicationParametersImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class LSApplicationParameters 
    include_class_members LSApplicationParametersImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :application
    alias_method :attr_application, :application
    undef_method :application
    alias_method :attr_application=, :application=
    undef_method :application=
    
    attr_accessor :async_launch_ref_con
    alias_method :attr_async_launch_ref_con, :async_launch_ref_con
    undef_method :async_launch_ref_con
    alias_method :attr_async_launch_ref_con=, :async_launch_ref_con=
    undef_method :async_launch_ref_con=
    
    attr_accessor :environment
    alias_method :attr_environment, :environment
    undef_method :environment
    alias_method :attr_environment=, :environment=
    undef_method :environment=
    
    attr_accessor :argv
    alias_method :attr_argv, :argv
    undef_method :argv
    alias_method :attr_argv=, :argv=
    undef_method :argv=
    
    attr_accessor :initial_event
    alias_method :attr_initial_event, :initial_event
    undef_method :initial_event
    alias_method :attr_initial_event=, :initial_event=
    undef_method :initial_event=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 28 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @flags = 0
      @application = 0
      @async_launch_ref_con = 0
      @environment = 0
      @argv = 0
      @initial_event = 0
    end
    
    private
    alias_method :initialize__lsapplication_parameters, :initialize
  end
  
end
