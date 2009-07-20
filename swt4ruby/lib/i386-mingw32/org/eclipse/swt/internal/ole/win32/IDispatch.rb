require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IDispatchImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IDispatch < IDispatchImports.const_get :IUnknown
    include_class_members IDispatchImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [GUID, Array.typed(String), ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    def _get_ids_of_names(riid, rgsz_names, c_names, lcid, rg_disp_id)
      buffer = nil
      size = rgsz_names.attr_length
      # create an array to hold the addresses
      # long
      h_heap = OS._get_process_heap
      # long
      pp_names = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, size * OS::PTR_SIZEOF)
      # long
      # long
      mem_tracker = Array.typed(::Java::Int).new(size) { 0 }
      begin
        # add the address of each string to the array
        i = 0
        while i < size
          # create a null terminated array of char for each String
          name_size = rgsz_names[i].length
          buffer = CharArray.new(name_size + 1)
          rgsz_names[i].get_chars(0, name_size, buffer, 0)
          # get the address of the start of the array of char
          # long
          p_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, buffer.attr_length * 2)
          OS._move_memory(p_name, buffer, buffer.attr_length * 2)
          # copy the address to the array of addresses
          # long
          COM._move_memory(pp_names + OS::PTR_SIZEOF * i, Array.typed(::Java::Int).new([p_name]), OS::PTR_SIZEOF)
          # keep track of the Global Memory so we can free it
          mem_tracker[i] = p_name
          ((i += 1) - 1)
        end
        return COM._vtbl_call(5, self.attr_address, GUID.new, pp_names, c_names, lcid, rg_disp_id)
      ensure
        # free the memory
        i_ = 0
        while i_ < mem_tracker.attr_length
          OS._heap_free(h_heap, 0, mem_tracker[i_])
          ((i_ += 1) - 1)
        end
        OS._heap_free(h_heap, 0, pp_names)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_type_info(i_tinfo, lcid, pp_tinfo)
      return COM._vtbl_call(4, self.attr_address, i_tinfo, lcid, pp_tinfo)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_type_info_count(pctinfo)
      return COM._vtbl_call(3, self.attr_address, pctinfo)
    end
    
    typesig { [::Java::Int, GUID, ::Java::Int, ::Java::Int, DISPPARAMS, ::Java::Int, EXCEPINFO, Array.typed(::Java::Int)] }
    # long
    def _invoke(disp_id_member, riid, lcid, dw_flags, p_disp_params, p_var_result, p_excep_info, p_arg_err)
      return COM._vtbl_call(6, self.attr_address, disp_id_member, riid, lcid, dw_flags, p_disp_params, p_var_result, p_excep_info, p_arg_err)
    end
    
    private
    alias_method :initialize__idispatch, :initialize
  end
  
end
