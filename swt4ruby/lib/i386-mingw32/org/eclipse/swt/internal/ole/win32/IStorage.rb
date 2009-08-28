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
  module IStorageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IStorage < IStorageImports.const_get :IUnknown
    include_class_members IStorageImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    def _commit(grf_commit_flag)
      return COM._vtbl_call(9, self.attr_address, grf_commit_flag)
    end
    
    typesig { [::Java::Int, GUID, Array.typed(String), ::Java::Int] }
    # Number of elements in rgiidExclude
    # Array of interface identifiers (IIDs)
    # Points to a block of stream names in the storage object
    # long
    # Points to destination storage object
    def _copy_to(ciid_exclude, rgiid_exclude, snb_exclude, pstg_dest)
      # we only support snbExclude = null
      if (!(snb_exclude).nil?)
        return COM::E_INVALIDARG
      end
      return COM._vtbl_call(7, self.attr_address, ciid_exclude, rgiid_exclude, 0, pstg_dest)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # Pointer to the name of the new storage object
    # Access mode for the new storage object
    # Reserved; must be zero
    # Reserved; must be zero
    # long
    # Pointer to new storage object
    def _create_storage(pwcs_name, grf_mode, reserved1, reserved2, pp_stg)
      # create a null terminated array of char
      buffer = nil
      if (!(pwcs_name).nil?)
        buffer = (pwcs_name + "\0").to_char_array
      end
      return COM._vtbl_call(5, self.attr_address, buffer, grf_mode, reserved1, reserved2, pp_stg)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # Pointer to the name of the new stream
    # Access mode for the new stream
    # Reserved; must be zero
    # Reserved; must be zero
    # long
    # Pointer to new stream object
    def _create_stream(pwcs_name, grf_mode, reserved1, reserved2, pp_stm)
      # create a null terminated array of char
      buffer = nil
      if (!(pwcs_name).nil?)
        buffer = (pwcs_name + "\0").to_char_array
      end
      return COM._vtbl_call(3, self.attr_address, buffer, grf_mode, reserved1, reserved2, pp_stm)
    end
    
    typesig { [String] }
    def _destroy_element(pwcs_name)
      # create a null terminated array of char
      buffer = nil
      if (!(pwcs_name).nil?)
        buffer = (pwcs_name + "\0").to_char_array
      end
      return COM._vtbl_call(12, self.attr_address, buffer)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # Reserved; must be zero
    # long
    # Reserved; must be NULL
    # Reserved; must be zero
    # long
    # Pointer to output variable that
    # receives the IEnumSTATSTG interface
    def _enum_elements(reserved1, reserved2, reserved3, ppenum)
      return COM._vtbl_call(11, self.attr_address, reserved1, reserved2, reserved3, ppenum)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, Array.typed(String), ::Java::Int, Array.typed(::Java::Int)] }
    # Pointer to the name of the
    # storage object to open
    # long
    # Must be NULL.
    # Access mode for the new storage object
    # Must be NULL.
    # Reserved; must be zero
    # long
    # Pointer to opened storage object
    def _open_storage(pwcs_name, pstg_priority, grf_mode, snb_exclude, reserved, pp_stg)
      # create a null terminated array of char
      buffer = nil
      if (!(pwcs_name).nil?)
        buffer = (pwcs_name + "\0").to_char_array
      end
      # we only support the case where snbExclude = null
      if (!(snb_exclude).nil?)
        return COM::E_INVALIDARG
      end
      return COM._vtbl_call(6, self.attr_address, buffer, pstg_priority, grf_mode, 0, reserved, pp_stg)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # Pointer to name of stream to open
    # long
    # Reserved; must be NULL
    # Access mode for the new stream
    # Reserved; must be zero
    # long
    # Pointer to output variable
    # that receives the IStream interface pointer
    def _open_stream(pwcs_name, reserved1, grf_mode, reserved2, pp_stm)
      # create a null terminated array of char
      buffer = nil
      if (!(pwcs_name).nil?)
        buffer = (pwcs_name + "\0").to_char_array
      end
      return COM._vtbl_call(4, self.attr_address, buffer, reserved1, grf_mode, reserved2, pp_stm)
    end
    
    typesig { [String, String] }
    # Pointer to the name of the
    # element to be changed
    # Pointer to the new name for
    # the specified element
    def _rename_element(pwcs_old_name, pwcs_new_name)
      # create a null terminated array of char
      buffer1 = nil
      if (!(pwcs_old_name).nil?)
        buffer1 = (pwcs_old_name + "\0").to_char_array
      end
      # create a null terminated array of char
      buffer2 = nil
      if (!(pwcs_new_name).nil?)
        buffer2 = (pwcs_new_name + "\0").to_char_array
      end
      return COM._vtbl_call(13, self.attr_address, buffer1, buffer2)
    end
    
    typesig { [] }
    def _revert
      return COM._vtbl_call(10, self.attr_address)
    end
    
    typesig { [GUID] }
    # CLSID to be assigned to the storage object
    def _set_class(clsid)
      return COM._vtbl_call(15, self.attr_address, clsid)
    end
    
    private
    alias_method :initialize__istorage, :initialize
  end
  
end
