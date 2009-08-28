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
  module ShellAdapterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This adapter class provides default implementations for the
  # methods described by the <code>ShellListener</code> interface.
  # <p>
  # Classes that wish to deal with <code>ShellEvent</code>s can
  # extend this class and override only the methods which they are
  # interested in.
  # </p>
  # 
  # @see ShellListener
  # @see ShellEvent
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ShellAdapter 
    include_class_members ShellAdapterImports
    include ShellListener
    
    typesig { [ShellEvent] }
    # Sent when a shell becomes the active window.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the activation
    def shell_activated(e)
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell is closed.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the close
    def shell_closed(e)
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell stops being the active window.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the deactivation
    def shell_deactivated(e)
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell is un-minimized.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the un-minimization
    def shell_deiconified(e)
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell is minimized.
    # The default behavior is to do nothing.
    # 
    # @param e an event containing information about the minimization
    def shell_iconified(e)
    end
    
    typesig { [] }
    def initialize
    end
    
    private
    alias_method :initialize__shell_adapter, :initialize
  end
  
end
