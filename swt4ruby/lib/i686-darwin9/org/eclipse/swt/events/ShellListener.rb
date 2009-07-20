require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Events
  module ShellListenerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Events
      include_const ::Org::Eclipse::Swt::Internal, :SWTEventListener
    }
  end
  
  # Classes which implement this interface provide methods
  # that deal with changes in state of <code>Shell</code>s.
  # <p>
  # After creating an instance of a class that implements
  # this interface it can be added to a shell using the
  # <code>addShellListener</code> method and removed using
  # the <code>removeShellListener</code> method. When the
  # state of the shell changes, the appropriate method will
  # be invoked.
  # </p>
  # 
  # @see ShellAdapter
  # @see ShellEvent
  module ShellListener
    include_class_members ShellListenerImports
    include SWTEventListener
    
    typesig { [ShellEvent] }
    # Sent when a shell becomes the active window.
    # 
    # @param e an event containing information about the activation
    def shell_activated(e)
      raise NotImplementedError
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell is closed.
    # 
    # @param e an event containing information about the close
    def shell_closed(e)
      raise NotImplementedError
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell stops being the active window.
    # 
    # @param e an event containing information about the deactivation
    def shell_deactivated(e)
      raise NotImplementedError
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell is un-minimized.
    # 
    # @param e an event containing information about the un-minimization
    def shell_deiconified(e)
      raise NotImplementedError
    end
    
    typesig { [ShellEvent] }
    # Sent when a shell is minimized.
    # 
    # @param e an event containing information about the minimization
    def shell_iconified(e)
      raise NotImplementedError
    end
  end
  
end
