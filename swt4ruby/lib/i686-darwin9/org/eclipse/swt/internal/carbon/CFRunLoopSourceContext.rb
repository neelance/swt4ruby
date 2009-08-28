require "rjava"

# Copyright (c) 2003-2007 IBM Corp.
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
  module CFRunLoopSourceContextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class CFRunLoopSourceContext 
    include_class_members CFRunLoopSourceContextImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :info
    alias_method :attr_info, :info
    undef_method :info
    alias_method :attr_info=, :info=
    undef_method :info=
    
    attr_accessor :retain
    alias_method :attr_retain, :retain
    undef_method :retain
    alias_method :attr_retain=, :retain=
    undef_method :retain=
    
    attr_accessor :release
    alias_method :attr_release, :release
    undef_method :release
    alias_method :attr_release=, :release=
    undef_method :release=
    
    attr_accessor :copy_description
    alias_method :attr_copy_description, :copy_description
    undef_method :copy_description
    alias_method :attr_copy_description=, :copy_description=
    undef_method :copy_description=
    
    attr_accessor :equal
    alias_method :attr_equal, :equal
    undef_method :equal
    alias_method :attr_equal=, :equal=
    undef_method :equal=
    
    attr_accessor :hash
    alias_method :attr_hash, :hash
    undef_method :hash
    alias_method :attr_hash=, :hash=
    undef_method :hash=
    
    attr_accessor :schedule
    alias_method :attr_schedule, :schedule
    undef_method :schedule
    alias_method :attr_schedule=, :schedule=
    undef_method :schedule=
    
    attr_accessor :cancel
    alias_method :attr_cancel, :cancel
    undef_method :cancel
    alias_method :attr_cancel=, :cancel=
    undef_method :cancel=
    
    attr_accessor :perform
    alias_method :attr_perform, :perform
    undef_method :perform
    alias_method :attr_perform=, :perform=
    undef_method :perform=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 40 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @info = 0
      @retain = 0
      @release = 0
      @copy_description = 0
      @equal = 0
      @hash = 0
      @schedule = 0
      @cancel = 0
      @perform = 0
    end
    
    private
    alias_method :initialize__cfrun_loop_source_context, :initialize
  end
  
end
