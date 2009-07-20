require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleAutomationImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # OleAutomation provides a generic mechanism for accessing functionality that is
  # specific to a particular ActiveX Control or OLE Document.
  # 
  # <p>The OLE Document or ActiveX Control must support the IDispatch interface in order to provide
  # OleAutomation support. The additional functionality provided by the OLE Object is specified in
  # its IDL file.  The additional methods can either be to get property values (<code>getProperty</code>),
  # to set property values (<code>setProperty</code>) or to invoke a method (<code>invoke</code> or
  # <code>invokeNoReply</code>).  Arguments are passed around in the form of <code>Variant</code>
  # objects.
  # 
  # <p>Here is a sample IDL fragment:
  # 
  # <pre>
  # interface IMyControl : IDispatch
  # {
  # [propget, id(0)] HRESULT maxFileCount([retval, out] int *c);
  # [propput, id(0)] HRESULT maxFileCount([in] int c);
  # [id(1)]	HRESULT AddFile([in] BSTR fileName);
  # };
  # </pre>
  # 
  # <p>An example of how to interact with this extended functionality is shown below:
  # 
  # <code><pre>
  # OleAutomation automation = new OleAutomation(myControlSite);
  # 
  # // Look up the ID of the maxFileCount parameter
  # int[] rgdispid = automation.getIDsOfNames(new String[]{"maxFileCount"});
  # int maxFileCountID = rgdispid[0];
  # 
  # // Set the property maxFileCount to 100:
  # if (automation.setProperty(maxFileCountID, new Variant(100))) {
  # System.out.println("Max File Count was successfully set.");
  # }
  # 
  # // Get the new value of the maxFileCount parameter:
  # Variant pVarResult = automation.getProperty(maxFileCountID);
  # if (pVarResult != null) {
  # System.out.println("Max File Count is "+pVarResult.getInt());
  # }
  # 
  # // Invoke the AddFile method
  # // Look up the IDs of the AddFile method and its parameter
  # rgdispid = automation.getIDsOfNames(new String[]{"AddFile", "fileName"});
  # int dispIdMember = rgdispid[0];
  # int[] rgdispidNamedArgs = new int[] {rgdispid[1]};
  # 
  # // Convert arguments to Variant objects
  # Variant[] rgvarg = new Variant[1];
  # String fileName = "C:\\testfile";
  # rgvarg[0] = new Variant(fileName);
  # 
  # // Call the method
  # Variant pVarResult = automation.invoke(dispIdMember, rgvarg, rgdispidNamedArgs);
  # 
  # // Check the return value
  # if (pVarResult == null || pVarResult.getInt() != OLE.S_OK){
  # System.out.println("Failed to add file "+fileName);
  # }
  # 
  # automation.dispose();
  # 
  # </pre></code>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#ole">OLE and ActiveX snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: OLEExample, OleWebBrowser</a>
  class OleAutomation 
    include_class_members OleAutomationImports
    
    attr_accessor :obj_idispatch
    alias_method :attr_obj_idispatch, :obj_idispatch
    undef_method :obj_idispatch
    alias_method :attr_obj_idispatch=, :obj_idispatch=
    undef_method :obj_idispatch=
    
    attr_accessor :exception_description
    alias_method :attr_exception_description, :exception_description
    undef_method :exception_description
    alias_method :attr_exception_description=, :exception_description=
    undef_method :exception_description=
    
    attr_accessor :obj_itype_info
    alias_method :attr_obj_itype_info, :obj_itype_info
    undef_method :obj_itype_info
    alias_method :attr_obj_itype_info=, :obj_itype_info=
    undef_method :obj_itype_info=
    
    typesig { [IDispatch] }
    def initialize(idispatch)
      @obj_idispatch = nil
      @exception_description = nil
      @obj_itype_info = nil
      if ((idispatch).nil?)
        OLE.error(OLE::ERROR_INVALID_INTERFACE_ADDRESS)
      end
      @obj_idispatch = idispatch
      @obj_idispatch._add_ref
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      # GetTypeInfo([in] iTInfo, [in] lcid, [out] ppTInfo)
      # AddRef has already been called on ppTInfo by the callee and must be released by the caller.
      result = @obj_idispatch._get_type_info(0, COM::LOCALE_USER_DEFAULT, ppv)
      if ((result).equal?(OLE::S_OK))
        @obj_itype_info = ITypeInfo.new(ppv[0])
      end
    end
    
    typesig { [OleClientSite] }
    # Creates an OleAutomation object for the specified client.
    # 
    # @param clientSite the site for the OLE Document or ActiveX Control whose additional functionality
    # you need to access
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_INTERFACE_ADDRESS when called with an invalid client site
    # </ul>
    def initialize(client_site)
      @obj_idispatch = nil
      @exception_description = nil
      @obj_itype_info = nil
      if ((client_site).nil?)
        OLE.error(OLE::ERROR_INVALID_INTERFACE_ADDRESS)
      end
      @obj_idispatch = client_site.get_automation_object
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      # GetTypeInfo([in] iTInfo, [in] lcid, [out] ppTInfo)
      # AddRef has already been called on ppTInfo by the callee and must be released by the caller.
      result = @obj_idispatch._get_type_info(0, COM::LOCALE_USER_DEFAULT, ppv)
      if ((result).equal?(OLE::S_OK))
        @obj_itype_info = ITypeInfo.new(ppv[0])
      end
    end
    
    typesig { [] }
    # Disposes the automation object.
    # <p>
    # This method releases the IDispatch interface on the OLE Document or ActiveX Control.
    # Do not use the OleAutomation object after it has been disposed.
    def dispose
      if (!(@obj_idispatch).nil?)
        @obj_idispatch._release
      end
      @obj_idispatch = nil
      if (!(@obj_itype_info).nil?)
        @obj_itype_info._release
      end
      @obj_itype_info = nil
    end
    
    typesig { [] }
    # long
    def get_address
      return @obj_idispatch.get_address
    end
    
    typesig { [::Java::Int] }
    # Returns the fully qualified name of the Help file for the given member ID.
    # 
    # @param dispId the member ID whose Help file is being retrieved.
    # @return a string representing the fully qualified name of a Help
    # file or null.
    def get_help_file(disp_id)
      if ((@obj_itype_info).nil?)
        return nil
      end
      file = Array.typed(String).new(1) { nil }
      rc = @obj_itype_info._get_documentation(disp_id, nil, nil, nil, file)
      if ((rc).equal?(OLE::S_OK))
        return file[0]
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns the documentation string for the given member ID.
    # 
    # @param dispId the member ID in which the documentation is being retrieved.
    # @return the documentation string if it exists; otherwise return null.
    def get_documentation(disp_id)
      if ((@obj_itype_info).nil?)
        return nil
      end
      doc = Array.typed(String).new(1) { nil }
      rc = @obj_itype_info._get_documentation(disp_id, nil, doc, nil, nil)
      if ((rc).equal?(OLE::S_OK))
        return doc[0]
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns the property description of a variable at the given index.
    # 
    # @param index the index of a variable whose property is being retrieved.
    # @return an OlePropertyDescription for a variable at the given index.
    def get_property_description(index)
      if ((@obj_itype_info).nil?)
        return nil
      end
      # long
      # long
      pp_var_desc = Array.typed(::Java::Int).new(1) { 0 }
      rc = @obj_itype_info._get_var_desc(index, pp_var_desc)
      if (!(rc).equal?(OLE::S_OK))
        return nil
      end
      vardesc = VARDESC.new
      COM._move_memory(vardesc, pp_var_desc[0], VARDESC.attr_sizeof)
      data = OlePropertyDescription.new
      data.attr_id = vardesc.attr_memid
      data.attr_name = get_name(vardesc.attr_memid)
      data.attr_type = vardesc.attr_elemdesc_var_tdesc_vt
      if ((data.attr_type).equal?(OLE::VT_PTR))
        vt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(vt, vardesc.attr_elemdesc_var_tdesc_union + OS::PTR_SIZEOF, 2)
        data.attr_type = vt[0]
      end
      data.attr_flags = vardesc.attr_w_var_flags
      data.attr_kind = vardesc.attr_varkind
      data.attr_description = get_documentation(vardesc.attr_memid)
      data.attr_help_file = get_help_file(vardesc.attr_memid)
      @obj_itype_info._release_var_desc(pp_var_desc[0])
      return data
    end
    
    typesig { [::Java::Int] }
    # Returns the description of a function at the given index.
    # 
    # @param index the index of a function whose property is being retrieved.
    # @return an OleFunctionDescription for a function at the given index.
    def get_function_description(index)
      if ((@obj_itype_info).nil?)
        return nil
      end
      # long
      # long
      pp_func_desc = Array.typed(::Java::Int).new(1) { 0 }
      rc = @obj_itype_info._get_func_desc(index, pp_func_desc)
      if (!(rc).equal?(OLE::S_OK))
        return nil
      end
      funcdesc = FUNCDESC.new
      COM._move_memory(funcdesc, pp_func_desc[0], FUNCDESC.attr_sizeof)
      data = OleFunctionDescription.new
      data.attr_id = funcdesc.attr_memid
      data.attr_optional_arg_count = funcdesc.attr_c_params_opt
      data.attr_invoke_kind = funcdesc.attr_invkind
      data.attr_func_kind = funcdesc.attr_funckind
      data.attr_flags = funcdesc.attr_w_func_flags
      data.attr_calling_convention = funcdesc.attr_callconv
      data.attr_documentation = get_documentation(funcdesc.attr_memid)
      data.attr_help_file = get_help_file(funcdesc.attr_memid)
      names = get_names(funcdesc.attr_memid, funcdesc.attr_c_params + 1)
      if (names.attr_length > 0)
        data.attr_name = names[0]
      end
      data.attr_args = Array.typed(OleParameterDescription).new(funcdesc.attr_c_params) { nil }
      i = 0
      while i < data.attr_args.attr_length
        data.attr_args[i] = OleParameterDescription.new
        if (names.attr_length > i + 1)
          data.attr_args[i].attr_name = names[i + 1]
        end
        # TODO 0- use structures
        vt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(vt, funcdesc.attr_lprgelemdesc_param + i * COM._elemdesc_sizeof + OS::PTR_SIZEOF, 2)
        if ((vt[0]).equal?(OLE::VT_PTR))
          # long
          # long
          p_typedesc = Array.typed(::Java::Int).new(1) { 0 }
          COM._move_memory(p_typedesc, funcdesc.attr_lprgelemdesc_param + i * COM._elemdesc_sizeof, OS::PTR_SIZEOF)
          vt2 = Array.typed(::Java::Short).new(1) { 0 }
          COM._move_memory(vt2, p_typedesc[0] + OS::PTR_SIZEOF, 2)
          vt[0] = RJava.cast_to_short((vt2[0] | COM::VT_BYREF))
        end
        data.attr_args[i].attr_type = vt[0]
        w_param_flags = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(w_param_flags, funcdesc.attr_lprgelemdesc_param + i * COM._elemdesc_sizeof + COM._typedesc_sizeof + OS::PTR_SIZEOF, 2)
        data.attr_args[i].attr_flags = w_param_flags[0]
        i += 1
      end
      data.attr_return_type = funcdesc.attr_elemdesc_func_tdesc_vt
      if ((data.attr_return_type).equal?(OLE::VT_PTR))
        vt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(vt, funcdesc.attr_elemdesc_func_tdesc_union + OS::PTR_SIZEOF, 2)
        data.attr_return_type = vt[0]
      end
      @obj_itype_info._release_func_desc(pp_func_desc[0])
      return data
    end
    
    typesig { [] }
    # Returns the type info of the current object referenced by the automation.
    # The type info contains information about the object such as the function descriptions,
    # the member descriptions and attributes of the type.
    # 
    # @return the type info of the receiver
    def get_type_info_attributes
      if ((@obj_itype_info).nil?)
        return nil
      end
      # long
      # long
      pp_type_attr = Array.typed(::Java::Int).new(1) { 0 }
      rc = @obj_itype_info._get_type_attr(pp_type_attr)
      if (!(rc).equal?(OLE::S_OK))
        return nil
      end
      typeattr = TYPEATTR.new
      COM._move_memory(typeattr, pp_type_attr[0], TYPEATTR.attr_sizeof)
      @obj_itype_info._release_type_attr(pp_type_attr[0])
      return typeattr
    end
    
    typesig { [::Java::Int] }
    # Returns the name of the given member ID.
    # 
    # @param dispId the member ID in which the name is being retrieved.
    # @return the name if it exists; otherwise return null.
    def get_name(disp_id)
      if ((@obj_itype_info).nil?)
        return nil
      end
      name = Array.typed(String).new(1) { nil }
      rc = @obj_itype_info._get_documentation(disp_id, name, nil, nil, nil)
      if ((rc).equal?(OLE::S_OK))
        return name[0]
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the name of a function and parameter names for the specified function ID.
    # 
    # @param dispId the function ID in which the name and parameters are being retrieved.
    # @param maxSize the maximum number of names to retrieve.
    # @return an array of name containing the function name and the parameter names
    def get_names(disp_id, max_size)
      if ((@obj_itype_info).nil?)
        return Array.typed(String).new(0) { nil }
      end
      names = Array.typed(String).new(max_size) { nil }
      count = Array.typed(::Java::Int).new(1) { 0 }
      rc = @obj_itype_info._get_names(disp_id, names, max_size, count)
      if ((rc).equal?(OLE::S_OK))
        new_names = Array.typed(String).new(count[0]) { nil }
        System.arraycopy(names, 0, new_names, 0, count[0])
        return new_names
      end
      return Array.typed(String).new(0) { nil }
    end
    
    typesig { [Array.typed(String)] }
    # Returns the positive integer values (IDs) that are associated with the specified names by the
    # IDispatch implementor.  If you are trying to get the names of the parameters in a method, the first
    # String in the names array must be the name of the method followed by the names of the parameters.
    # 
    # @param names an array of names for which you require the identifiers
    # 
    # @return positive integer values that are associated with the specified names in the same
    # order as the names where provided; or null if the names are unknown
    def get_ids_of_names(names)
      rgdispid = Array.typed(::Java::Int).new(names.attr_length) { 0 }
      result = @obj_idispatch._get_ids_of_names(GUID.new, names, names.attr_length, COM::LOCALE_USER_DEFAULT, rgdispid)
      if (!(result).equal?(COM::S_OK))
        return nil
      end
      return rgdispid
    end
    
    typesig { [] }
    # Returns a description of the last error encountered.
    # 
    # @return a description of the last error encountered
    def get_last_error
      return @exception_description
    end
    
    typesig { [::Java::Int] }
    # Returns the value of the property specified by the dispIdMember.
    # 
    # @param dispIdMember the ID of the property as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @return the value of the property specified by the dispIdMember or null
    def get_property(disp_id_member)
      p_var_result = Variant.new
      result = invoke(disp_id_member, COM::DISPATCH_PROPERTYGET, nil, nil, p_var_result)
      return ((result).equal?(OLE::S_OK)) ? p_var_result : nil
    end
    
    typesig { [::Java::Int, Array.typed(Variant)] }
    # Returns the value of the property specified by the dispIdMember.
    # 
    # @param dispIdMember the ID of the property as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @return the value of the property specified by the dispIdMember or null
    # 
    # @since 2.0
    def get_property(disp_id_member, rgvarg)
      p_var_result = Variant.new
      result = invoke(disp_id_member, COM::DISPATCH_PROPERTYGET, rgvarg, nil, p_var_result)
      return ((result).equal?(OLE::S_OK)) ? p_var_result : nil
    end
    
    typesig { [::Java::Int, Array.typed(Variant), Array.typed(::Java::Int)] }
    # Returns the value of the property specified by the dispIdMember.
    # 
    # @param dispIdMember the ID of the property as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @param rgdispidNamedArgs an array of identifiers for the arguments specified in rgvarg; the
    # parameter IDs must be in the same order as their corresponding values;
    # all arguments must have an identifier - identifiers can be obtained using
    # OleAutomation.getIDsOfNames
    # 
    # @return the value of the property specified by the dispIdMember or null
    # 
    # @since 2.0
    def get_property(disp_id_member, rgvarg, rgdispid_named_args)
      p_var_result = Variant.new
      result = invoke(disp_id_member, COM::DISPATCH_PROPERTYGET, rgvarg, rgdispid_named_args, p_var_result)
      return ((result).equal?(OLE::S_OK)) ? p_var_result : nil
    end
    
    typesig { [::Java::Int] }
    # Invokes a method on the OLE Object; the method has no parameters.
    # 
    # @param dispIdMember the ID of the method as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @return the result of the method or null if the method failed to give result information
    def invoke(disp_id_member)
      p_var_result = Variant.new
      result = invoke(disp_id_member, COM::DISPATCH_METHOD, nil, nil, p_var_result)
      return ((result).equal?(COM::S_OK)) ? p_var_result : nil
    end
    
    typesig { [::Java::Int, Array.typed(Variant)] }
    # Invokes a method on the OLE Object; the method has no optional parameters.
    # 
    # @param dispIdMember the ID of the method as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @return the result of the method or null if the method failed to give result information
    def invoke(disp_id_member, rgvarg)
      p_var_result = Variant.new
      result = invoke(disp_id_member, COM::DISPATCH_METHOD, rgvarg, nil, p_var_result)
      return ((result).equal?(COM::S_OK)) ? p_var_result : nil
    end
    
    typesig { [::Java::Int, Array.typed(Variant), Array.typed(::Java::Int)] }
    # Invokes a method on the OLE Object; the method has optional parameters.  It is not
    # necessary to specify all the optional parameters, only include the parameters for which
    # you are providing values.
    # 
    # @param dispIdMember the ID of the method as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @param rgdispidNamedArgs an array of identifiers for the arguments specified in rgvarg; the
    # parameter IDs must be in the same order as their corresponding values;
    # all arguments must have an identifier - identifiers can be obtained using
    # OleAutomation.getIDsOfNames
    # 
    # @return the result of the method or null if the method failed to give result information
    def invoke(disp_id_member, rgvarg, rgdispid_named_args)
      p_var_result = Variant.new
      result = invoke(disp_id_member, COM::DISPATCH_METHOD, rgvarg, rgdispid_named_args, p_var_result)
      return ((result).equal?(COM::S_OK)) ? p_var_result : nil
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(Variant), Array.typed(::Java::Int), Variant] }
    def invoke(disp_id_member, w_flags, rgvarg, rgdispid_named_args, p_var_result)
      # get the IDispatch interface for the control
      if ((@obj_idispatch).nil?)
        return COM::E_FAIL
      end
      # create a DISPPARAMS structure for the input parameters
      p_disp_params = DISPPARAMS.new
      # store arguments in rgvarg
      if (!(rgvarg).nil? && rgvarg.attr_length > 0)
        p_disp_params.attr_c_args = rgvarg.attr_length
        p_disp_params.attr_rgvarg = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, VARIANT.attr_sizeof * rgvarg.attr_length)
        offset = 0
        i = rgvarg.attr_length - 1
        while i >= 0
          rgvarg[i].get_data(p_disp_params.attr_rgvarg + offset)
          offset += VARIANT.attr_sizeof
          i -= 1
        end
      end
      # if arguments have ids, store the ids in rgdispidNamedArgs
      if (!(rgdispid_named_args).nil? && rgdispid_named_args.attr_length > 0)
        p_disp_params.attr_c_named_args = rgdispid_named_args.attr_length
        p_disp_params.attr_rgdispid_named_args = OS._global_alloc(COM::GMEM_FIXED | COM::GMEM_ZEROINIT, 4 * rgdispid_named_args.attr_length)
        offset = 0
        i = rgdispid_named_args.attr_length
        while i > 0
          COM._move_memory(p_disp_params.attr_rgdispid_named_args + offset, Array.typed(::Java::Int).new([rgdispid_named_args[i - 1]]), 4)
          offset += 4
          i -= 1
        end
      end
      # invoke the method
      excep_info = EXCEPINFO.new
      p_arg_err = Array.typed(::Java::Int).new(1) { 0 }
      # long
      p_var_result_address = 0
      if (!(p_var_result).nil?)
        p_var_result_address = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, VARIANT.attr_sizeof)
      end
      result = @obj_idispatch._invoke(disp_id_member, GUID.new, COM::LOCALE_USER_DEFAULT, w_flags, p_disp_params, p_var_result_address, excep_info, p_arg_err)
      if (!(p_var_result_address).equal?(0))
        p_var_result.set_data(p_var_result_address)
        COM._variant_clear(p_var_result_address)
        OS._global_free(p_var_result_address)
      end
      # free the Dispparams resources
      if (!(p_disp_params.attr_rgdispid_named_args).equal?(0))
        OS._global_free(p_disp_params.attr_rgdispid_named_args)
      end
      if (!(p_disp_params.attr_rgvarg).equal?(0))
        offset = 0
        i = 0
        length = rgvarg.attr_length
        while i < length
          COM._variant_clear(p_disp_params.attr_rgvarg + offset)
          offset += VARIANT.attr_sizeof
          i += 1
        end
        OS._global_free(p_disp_params.attr_rgvarg)
      end
      # save error string and cleanup EXCEPINFO
      manage_excepinfo(result, excep_info)
      return result
    end
    
    typesig { [::Java::Int] }
    # Invokes a method on the OLE Object; the method has no parameters.  In the early days of OLE,
    # the IDispatch interface was not well defined and some applications (mainly Word) did not support
    # a return value.  For these applications, call this method instead of calling
    # <code>public void invoke(int dispIdMember)</code>.
    # 
    # @param dispIdMember the ID of the method as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @exception org.eclipse.swt.SWTException <ul>
    # <li>ERROR_ACTION_NOT_PERFORMED when method invocation fails
    # </ul>
    def invoke_no_reply(disp_id_member)
      result = invoke(disp_id_member, COM::DISPATCH_METHOD, nil, nil, nil)
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_ACTION_NOT_PERFORMED, result)
      end
    end
    
    typesig { [::Java::Int, Array.typed(Variant)] }
    # Invokes a method on the OLE Object; the method has no optional parameters.  In the early days of OLE,
    # the IDispatch interface was not well defined and some applications (mainly Word) did not support
    # a return value.  For these applications, call this method instead of calling
    # <code>public void invoke(int dispIdMember, Variant[] rgvarg)</code>.
    # 
    # @param dispIdMember the ID of the method as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @exception org.eclipse.swt.SWTException <ul>
    # <li>ERROR_ACTION_NOT_PERFORMED when method invocation fails
    # </ul>
    def invoke_no_reply(disp_id_member, rgvarg)
      result = invoke(disp_id_member, COM::DISPATCH_METHOD, rgvarg, nil, nil)
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_ACTION_NOT_PERFORMED, result)
      end
    end
    
    typesig { [::Java::Int, Array.typed(Variant), Array.typed(::Java::Int)] }
    # Invokes a method on the OLE Object; the method has optional parameters.  It is not
    # necessary to specify all the optional parameters, only include the parameters for which
    # you are providing values.  In the early days of OLE, the IDispatch interface was not well
    # defined and some applications (mainly Word) did not support a return value.  For these
    # applications, call this method instead of calling
    # <code>public void invoke(int dispIdMember, Variant[] rgvarg, int[] rgdispidNamedArgs)</code>.
    # 
    # @param dispIdMember the ID of the method as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # 
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @param rgdispidNamedArgs an array of identifiers for the arguments specified in rgvarg; the
    # parameter IDs must be in the same order as their corresponding values;
    # all arguments must have an identifier - identifiers can be obtained using
    # OleAutomation.getIDsOfNames
    # 
    # @exception org.eclipse.swt.SWTException <ul>
    # <li>ERROR_ACTION_NOT_PERFORMED when method invocation fails
    # </ul>
    def invoke_no_reply(disp_id_member, rgvarg, rgdispid_named_args)
      result = invoke(disp_id_member, COM::DISPATCH_METHOD, rgvarg, rgdispid_named_args, nil)
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_ACTION_NOT_PERFORMED, result)
      end
    end
    
    typesig { [::Java::Int, EXCEPINFO] }
    def manage_excepinfo(h_result, excep_info)
      if ((h_result).equal?(COM::S_OK))
        @exception_description = "No Error" # $NON-NLS-1$
        return
      end
      # extract exception info
      if ((h_result).equal?(COM::DISP_E_EXCEPTION))
        if (!(excep_info.attr_bstr_description).equal?(0))
          size = COM._sys_string_byte_len(excep_info.attr_bstr_description)
          buffer = CharArray.new((size + 1) / 2)
          COM._move_memory(buffer, excep_info.attr_bstr_description, size)
          @exception_description = (String.new(buffer)).to_s
        else
          @exception_description = "OLE Automation Error Exception " # $NON-NLS-1$
          if (!(excep_info.attr_w_code).equal?(0))
            @exception_description += "code = " + (excep_info.attr_w_code).to_s # $NON-NLS-1$
          else
            if (!(excep_info.attr_scode).equal?(0))
              @exception_description += "code = " + (excep_info.attr_scode).to_s # $NON-NLS-1$
            end
          end
        end
      else
        @exception_description = "OLE Automation Error HResult : " + (h_result).to_s # $NON-NLS-1$
      end
      # cleanup EXCEPINFO struct
      if (!(excep_info.attr_bstr_description).equal?(0))
        COM._sys_free_string(excep_info.attr_bstr_description)
      end
      if (!(excep_info.attr_bstr_help_file).equal?(0))
        COM._sys_free_string(excep_info.attr_bstr_help_file)
      end
      if (!(excep_info.attr_bstr_source).equal?(0))
        COM._sys_free_string(excep_info.attr_bstr_source)
      end
    end
    
    typesig { [::Java::Int, Variant] }
    # Sets the property specified by the dispIdMember to a new value.
    # 
    # @param dispIdMember the ID of the property as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # @param rgvarg the new value of the property
    # 
    # @return true if the operation was successful
    def set_property(disp_id_member, rgvarg)
      rgvarg2 = Array.typed(Variant).new([rgvarg])
      rgdispid_named_args = Array.typed(::Java::Int).new([COM::DISPID_PROPERTYPUT])
      dw_flags = COM::DISPATCH_PROPERTYPUT
      if (((rgvarg.get_type & COM::VT_BYREF)).equal?(COM::VT_BYREF))
        dw_flags = COM::DISPATCH_PROPERTYPUTREF
      end
      p_var_result = Variant.new
      result = invoke(disp_id_member, dw_flags, rgvarg2, rgdispid_named_args, p_var_result)
      return ((result).equal?(COM::S_OK))
    end
    
    typesig { [::Java::Int, Array.typed(Variant)] }
    # Sets the property specified by the dispIdMember to a new value.
    # 
    # @param dispIdMember the ID of the property as specified by the IDL of the ActiveX Control; the
    # value for the ID can be obtained using OleAutomation.getIDsOfNames
    # @param rgvarg an array of arguments for the method.  All arguments are considered to be
    # read only unless the Variant is a By Reference Variant type.
    # 
    # @return true if the operation was successful
    # 
    # @since 2.0
    def set_property(disp_id_member, rgvarg)
      rgdispid_named_args = Array.typed(::Java::Int).new([COM::DISPID_PROPERTYPUT])
      dw_flags = COM::DISPATCH_PROPERTYPUT
      i = 0
      while i < rgvarg.attr_length
        if (((rgvarg[i].get_type & COM::VT_BYREF)).equal?(COM::VT_BYREF))
          dw_flags = COM::DISPATCH_PROPERTYPUTREF
        end
        i += 1
      end
      p_var_result = Variant.new
      result = invoke(disp_id_member, dw_flags, rgvarg, rgdispid_named_args, p_var_result)
      return ((result).equal?(COM::S_OK))
    end
    
    private
    alias_method :initialize__ole_automation, :initialize
  end
  
end
