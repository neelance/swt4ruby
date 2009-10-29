require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IOleCommandTargetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IOleCommandTarget < IOleCommandTargetImports.const_get :IUnknown
    include_class_members IOleCommandTargetImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [GUID, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Pointer to command group
    # Identifier of command to execute
    # Options for executing the command
    # long
    # Pointer to input arguments
    # long
    # Pointer to command output
    def _exec(pguid_cmd_group, n_cmd_id, n_cmd_exec_opt, pva_in, pva_out)
      return COM._vtbl_call(4, self.attr_address, pguid_cmd_group, n_cmd_id, n_cmd_exec_opt, pva_in, pva_out)
    end
    
    typesig { [GUID, ::Java::Int, OLECMD, OLECMDTEXT] }
    # Pointer to command group
    # Number of commands in prgCmds array
    # Array of commands
    # Pointer to name or status of command
    def _query_status(pguid_cmd_group, c_cmds, prg_cmds, p_cmd_text)
      # we only support querying for one command at a time
      if (c_cmds > 1)
        return COM::E_INVALIDARG
      end
      return COM._vtbl_call(3, self.attr_address, pguid_cmd_group, c_cmds, prg_cmds, p_cmd_text)
    end
    
    private
    alias_method :initialize__iole_command_target, :initialize
  end
  
end
