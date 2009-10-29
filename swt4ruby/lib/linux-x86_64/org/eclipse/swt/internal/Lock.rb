require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal
  module LockImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  # Instances of this represent a recursive monitor.
  class Lock 
    include_class_members LockImports
    
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    attr_accessor :wait_count
    alias_method :attr_wait_count, :wait_count
    undef_method :wait_count
    alias_method :attr_wait_count=, :wait_count=
    undef_method :wait_count=
    
    attr_accessor :owner
    alias_method :attr_owner, :owner
    undef_method :owner
    alias_method :attr_owner=, :owner=
    undef_method :owner=
    
    typesig { [] }
    # Locks the monitor and returns the lock count. If
    # the lock is owned by another thread, wait until
    # the lock is released.
    # 
    # @return the lock count
    def lock
      synchronized((self)) do
        current = JavaThread.current_thread
        if (!(@owner).equal?(current))
          @wait_count += 1
          while (@count > 0)
            begin
              wait
            rescue InterruptedException => e
              # Wait forever, just like synchronized blocks
            end
          end
          (@wait_count -= 1)
          @owner = current
        end
        return (@count += 1)
      end
    end
    
    typesig { [] }
    # Unlocks the monitor. If the current thread is not
    # the monitor owner, do nothing.
    def unlock
      synchronized((self)) do
        current = JavaThread.current_thread
        if ((@owner).equal?(current))
          if (((@count -= 1)).equal?(0))
            @owner = nil
            if (@wait_count > 0)
              notify_all
            end
          end
        end
      end
    end
    
    typesig { [] }
    def initialize
      @count = 0
      @wait_count = 0
      @owner = nil
    end
    
    private
    alias_method :initialize__lock, :initialize
  end
  
end
