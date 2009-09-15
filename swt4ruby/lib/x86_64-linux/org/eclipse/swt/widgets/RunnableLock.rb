require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module RunnableLockImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class are used to ensure that an
  # application cannot interfere with the locking mechanism
  # used to implement asynchronous and synchronous communication
  # between widgets and background threads.
  class RunnableLock 
    include_class_members RunnableLockImports
    
    attr_accessor :runnable
    alias_method :attr_runnable, :runnable
    undef_method :runnable
    alias_method :attr_runnable=, :runnable=
    undef_method :runnable=
    
    attr_accessor :thread
    alias_method :attr_thread, :thread
    undef_method :thread
    alias_method :attr_thread=, :thread=
    undef_method :thread=
    
    attr_accessor :throwable
    alias_method :attr_throwable, :throwable
    undef_method :throwable
    alias_method :attr_throwable=, :throwable=
    undef_method :throwable=
    
    typesig { [Runnable] }
    def initialize(runnable)
      @runnable = nil
      @thread = nil
      @throwable = nil
      @runnable = runnable
    end
    
    typesig { [] }
    def done
      return (@runnable).nil? || !(@throwable).nil?
    end
    
    typesig { [] }
    def run
      if (!(@runnable).nil?)
        @runnable.run___org_eclipse_swt_widgets_runnable_lock_1
      end
      @runnable = nil
    end
    
    private
    alias_method :initialize__runnable_lock, :initialize
  end
  
end
