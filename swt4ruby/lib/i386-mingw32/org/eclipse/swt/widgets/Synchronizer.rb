require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module SynchronizerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
    }
  end
  
  # Instances of this class provide synchronization support
  # for displays. A default instance is created automatically
  # for each display, and this instance is sufficient for almost
  # all applications.
  # <p>
  # <b>IMPORTANT:</b> Typical application code <em>never</em>
  # needs to deal with this class. It is provided only to
  # allow applications which require non-standard
  # synchronization behavior to plug in the support they
  # require. <em>Subclasses which override the methods in
  # this class must ensure that the superclass methods are
  # invoked in their implementations</em>
  # </p>
  # 
  # @see Display#setSynchronizer
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Synchronizer 
    include_class_members SynchronizerImports
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    attr_accessor :message_count
    alias_method :attr_message_count, :message_count
    undef_method :message_count
    alias_method :attr_message_count=, :message_count=
    undef_method :message_count=
    
    attr_accessor :messages
    alias_method :attr_messages, :messages
    undef_method :messages
    alias_method :attr_messages=, :messages=
    undef_method :messages=
    
    attr_accessor :message_lock
    alias_method :attr_message_lock, :message_lock
    undef_method :message_lock
    alias_method :attr_message_lock=, :message_lock=
    undef_method :message_lock=
    
    attr_accessor :sync_thread
    alias_method :attr_sync_thread, :sync_thread
    undef_method :sync_thread
    alias_method :attr_sync_thread=, :sync_thread=
    undef_method :sync_thread=
    
    class_module.module_eval {
      const_set_lazy(:GROW_SIZE) { 4 }
      const_attr_reader  :GROW_SIZE
      
      const_set_lazy(:MESSAGE_LIMIT) { 64 }
      const_attr_reader  :MESSAGE_LIMIT
      
      # TEMPORARY CODE
      const_set_lazy(:IS_CARBON) { ("carbon" == SWT.get_platform) }
      const_attr_reader  :IS_CARBON
      
      const_set_lazy(:IS_GTK) { ("gtk" == SWT.get_platform) }
      const_attr_reader  :IS_GTK
    }
    
    typesig { [Display] }
    # Constructs a new instance of this class.
    # 
    # @param display the display to create the synchronizer on
    def initialize(display)
      @display = nil
      @message_count = 0
      @messages = nil
      @message_lock = Object.new
      @sync_thread = nil
      @display = display
    end
    
    typesig { [RunnableLock] }
    def add_last(lock)
      wake = false
      synchronized((@message_lock)) do
        if ((@messages).nil?)
          @messages = Array.typed(RunnableLock).new(GROW_SIZE) { nil }
        end
        if ((@message_count).equal?(@messages.attr_length))
          new_messages = Array.typed(RunnableLock).new(@message_count + GROW_SIZE) { nil }
          System.arraycopy(@messages, 0, new_messages, 0, @message_count)
          @messages = new_messages
        end
        @messages[((@message_count += 1) - 1)] = lock
        wake = (@message_count).equal?(1)
      end
      if (wake)
        @display.wake_thread
      end
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread at the next
    # reasonable opportunity. The caller of this method continues
    # to run in parallel, and is not notified when the
    # runnable has completed.
    # 
    # @param runnable code to run on the user-interface thread.
    # 
    # @see #syncExec
    def async_exec(runnable)
      if ((runnable).nil?)
        # TEMPORARY CODE
        if (!(IS_CARBON || IS_GTK))
          @display.wake
          return
        end
      end
      add_last(RunnableLock.new(runnable))
    end
    
    typesig { [] }
    def get_message_count
      synchronized((@message_lock)) do
        return @message_count
      end
    end
    
    typesig { [] }
    def release_synchronizer
      @display = nil
      @messages = nil
      @message_lock = nil
      @sync_thread = nil
    end
    
    typesig { [] }
    def remove_first
      synchronized((@message_lock)) do
        if ((@message_count).equal?(0))
          return nil
        end
        lock = @messages[0]
        System.arraycopy(@messages, 1, @messages, 0, (@message_count -= 1))
        @messages[@message_count] = nil
        if ((@message_count).equal?(0))
          if (@messages.attr_length > MESSAGE_LIMIT)
            @messages = nil
          end
        end
        return lock
      end
    end
    
    typesig { [] }
    def run_async_messages
      return run_async_messages___org_eclipse_swt_widgets_synchronizer_1(false)
    end
    
    typesig { [::Java::Boolean] }
    def run_async_messages(all)
      run = false
      begin
        lock = remove_first
        if ((lock).nil?)
          return run
        end
        run = true
        synchronized((lock)) do
          @sync_thread = lock.attr_thread
          begin
            lock.run___org_eclipse_swt_widgets_synchronizer_3
          rescue JavaThrowable => t
            lock.attr_throwable = t
            SWT.error(SWT::ERROR_FAILED_EXEC, t)
          ensure
            @sync_thread = nil
            lock.notify_all
          end
        end
      end while (all)
      return run
    end
    
    typesig { [Runnable] }
    # Causes the <code>run()</code> method of the runnable to
    # be invoked by the user-interface thread at the next
    # reasonable opportunity. The thread which calls this method
    # is suspended until the runnable completes.
    # 
    # @param runnable code to run on the user-interface thread.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_FAILED_EXEC - if an exception occurred when executing the runnable</li>
    # </ul>
    # 
    # @see #asyncExec
    def sync_exec(runnable)
      lock = nil
      synchronized((Device)) do
        if ((@display).nil? || @display.is_disposed)
          SWT.error(SWT::ERROR_DEVICE_DISPOSED)
        end
        if (!@display.is_valid_thread)
          if ((runnable).nil?)
            @display.wake
            return
          end
          lock = RunnableLock.new(runnable)
          # Only remember the syncThread for syncExec.
          lock.attr_thread = JavaThread.current_thread
          add_last(lock)
        end
      end
      if ((lock).nil?)
        if (!(runnable).nil?)
          runnable.run___org_eclipse_swt_widgets_synchronizer_5
        end
        return
      end
      synchronized((lock)) do
        interrupted = false
        while (!lock.done)
          begin
            lock.wait
          rescue InterruptedException => e
            interrupted = true
          end
        end
        if (interrupted)
          Compatibility.interrupt
        end
        if (!(lock.attr_throwable).nil?)
          SWT.error(SWT::ERROR_FAILED_EXEC, lock.attr_throwable)
        end
      end
    end
    
    private
    alias_method :initialize__synchronizer, :initialize
  end
  
end
