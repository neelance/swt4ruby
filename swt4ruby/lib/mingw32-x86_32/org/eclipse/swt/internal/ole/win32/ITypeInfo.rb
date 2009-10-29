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
  module ITypeInfoImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include_const ::Org::Eclipse::Swt::Internal::Win32, :OS
    }
  end
  
  class ITypeInfo < ITypeInfoImports.const_get :IUnknown
    include_class_members ITypeInfoImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, Array.typed(String), Array.typed(String), Array.typed(::Java::Int), Array.typed(String)] }
    def _get_documentation(index, name, doc_string, pdw_help_context, help_file)
      # long
      p_bstr_name = nil
      if (!(name).nil?)
        # long
        p_bstr_name = Array.typed(::Java::Int).new(1) { 0 }
      end
      # long
      p_bstr_doc_string = nil
      if (!(doc_string).nil?)
        # long
        p_bstr_doc_string = Array.typed(::Java::Int).new(1) { 0 }
      end
      # long
      p_bstr_help_file = nil
      if (!(help_file).nil?)
        # long
        p_bstr_help_file = Array.typed(::Java::Int).new(1) { 0 }
      end
      rc = COM._vtbl_call(12, self.attr_address, index, p_bstr_name, p_bstr_doc_string, pdw_help_context, p_bstr_help_file)
      if (!(name).nil? && !(p_bstr_name[0]).equal?(0))
        size = COM._sys_string_byte_len(p_bstr_name[0])
        if (size > 0)
          # get the unicode character array from the global memory and create a String
          buffer = CharArray.new((size + 1) / 2) # add one to avoid rounding errors
          COM._move_memory(buffer, p_bstr_name[0], size)
          name[0] = String.new(buffer)
          subindex = name[0].index_of("\0")
          if (subindex > 0)
            name[0] = name[0].substring(0, subindex)
          end
        end
        COM._sys_free_string(p_bstr_name[0])
      end
      if (!(doc_string).nil? && !(p_bstr_doc_string[0]).equal?(0))
        size = COM._sys_string_byte_len(p_bstr_doc_string[0])
        if (size > 0)
          # get the unicode character array from the global memory and create a String
          buffer = CharArray.new((size + 1) / 2) # add one to avoid rounding errors
          COM._move_memory(buffer, p_bstr_doc_string[0], size)
          doc_string[0] = String.new(buffer)
          subindex = doc_string[0].index_of("\0")
          if (subindex > 0)
            doc_string[0] = doc_string[0].substring(0, subindex)
          end
        end
        COM._sys_free_string(p_bstr_doc_string[0])
      end
      if (!(help_file).nil? && !(p_bstr_help_file[0]).equal?(0))
        size = COM._sys_string_byte_len(p_bstr_help_file[0])
        if (size > 0)
          # get the unicode character array from the global memory and create a String
          buffer = CharArray.new((size + 1) / 2) # add one to avoid rounding errors
          COM._move_memory(buffer, p_bstr_help_file[0], size)
          help_file[0] = String.new(buffer)
          subindex = help_file[0].index_of("\0")
          if (subindex > 0)
            help_file[0] = help_file[0].substring(0, subindex)
          end
        end
        COM._sys_free_string(p_bstr_help_file[0])
      end
      return rc
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_func_desc(index, pp_func_desc)
      return COM._vtbl_call(5, self.attr_address, index, pp_func_desc)
    end
    
    typesig { [Array.typed(String), ::Java::Int, Array.typed(::Java::Int)] }
    def _get_ids_of_names(rgsz_names, c_names, p_mem_id)
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
          i += 1
        end
        return COM._vtbl_call(10, self.attr_address, pp_names, c_names, p_mem_id)
      ensure
        # free the memory
        i_ = 0
        while i_ < mem_tracker.attr_length
          OS._heap_free(h_heap, 0, mem_tracker[i_])
          i_ += 1
        end
        OS._heap_free(h_heap, 0, pp_names)
      end
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    def _get_impl_type_flags(index, p_impl_type_flags)
      return COM._vtbl_call(9, self.attr_address, index, p_impl_type_flags)
    end
    
    typesig { [::Java::Int, Array.typed(String), ::Java::Int, Array.typed(::Java::Int)] }
    def _get_names(memid, names, c_max_names, pc_names)
      name_size = names.attr_length
      # long
      # long
      rg_bstr_names = Array.typed(::Java::Int).new(name_size) { 0 }
      rc = COM._vtbl_call(7, self.attr_address, memid, rg_bstr_names, name_size, pc_names)
      if ((rc).equal?(COM::S_OK))
        i = 0
        while i < pc_names[0]
          size = COM._sys_string_byte_len(rg_bstr_names[i])
          if (size > 0)
            # get the unicode character array from the global memory and create a String
            buffer = CharArray.new((size + 1) / 2) # add one to avoid rounding errors
            COM._move_memory(buffer, rg_bstr_names[i], size)
            names[i] = String.new(buffer)
            subindex = names[i].index_of("\0")
            if (subindex > 0)
              names[i] = names[i].substring(0, subindex)
            end
          end
          COM._sys_free_string(rg_bstr_names[i])
          i += 1
        end
      end
      return rc
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_ref_type_info(h_ref_type, pp_tinfo)
      return COM._vtbl_call(14, self.attr_address, h_ref_type, pp_tinfo)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    def _get_ref_type_of_impl_type(index, p_ref_type)
      return COM._vtbl_call(8, self.attr_address, index, p_ref_type)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_type_attr(pp_type_attr)
      return COM._vtbl_call(3, self.attr_address, pp_type_attr)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_var_desc(index, pp_var_desc)
      return COM._vtbl_call(6, self.attr_address, index, pp_var_desc)
    end
    
    typesig { [::Java::Int] }
    # long
    def _release_func_desc(p_func_desc)
      return COM._vtbl_call(20, self.attr_address, p_func_desc)
    end
    
    typesig { [::Java::Int] }
    # long
    def _release_type_attr(p_type_attr)
      return COM._vtbl_call(19, self.attr_address, p_type_attr)
    end
    
    typesig { [::Java::Int] }
    # long
    def _release_var_desc(p_var_desc)
      return COM._vtbl_call(21, self.attr_address, p_var_desc)
    end
    
    private
    alias_method :initialize__itype_info, :initialize
  end
  
end
