require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module EXCEPINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class EXCEPINFO 
    include_class_members EXCEPINFOImports
    
    attr_accessor :w_code
    alias_method :attr_w_code, :w_code
    undef_method :w_code
    alias_method :attr_w_code=, :w_code=
    undef_method :w_code=
    
    attr_accessor :w_reserved
    alias_method :attr_w_reserved, :w_reserved
    undef_method :w_reserved
    alias_method :attr_w_reserved=, :w_reserved=
    undef_method :w_reserved=
    
    # @field cast=(BSTR)
    # long
    attr_accessor :bstr_source
    alias_method :attr_bstr_source, :bstr_source
    undef_method :bstr_source
    alias_method :attr_bstr_source=, :bstr_source=
    undef_method :bstr_source=
    
    # @field cast=(BSTR)
    # long
    attr_accessor :bstr_description
    alias_method :attr_bstr_description, :bstr_description
    undef_method :bstr_description
    alias_method :attr_bstr_description=, :bstr_description=
    undef_method :bstr_description=
    
    # @field cast=(BSTR)
    # long
    attr_accessor :bstr_help_file
    alias_method :attr_bstr_help_file, :bstr_help_file
    undef_method :bstr_help_file
    alias_method :attr_bstr_help_file=, :bstr_help_file=
    undef_method :bstr_help_file=
    
    attr_accessor :dw_help_context
    alias_method :attr_dw_help_context, :dw_help_context
    undef_method :dw_help_context
    alias_method :attr_dw_help_context=, :dw_help_context=
    undef_method :dw_help_context=
    
    # @field cast=(void FAR *)
    # long
    attr_accessor :pv_reserved
    alias_method :attr_pv_reserved, :pv_reserved
    undef_method :pv_reserved
    alias_method :attr_pv_reserved=, :pv_reserved=
    undef_method :pv_reserved=
    
    # @field cast=(HRESULT (STDAPICALLTYPE FAR* )(struct tagEXCEPINFO FAR*))
    # long
    attr_accessor :pfn_deferred_fill_in
    alias_method :attr_pfn_deferred_fill_in, :pfn_deferred_fill_in
    undef_method :pfn_deferred_fill_in
    alias_method :attr_pfn_deferred_fill_in=, :pfn_deferred_fill_in=
    undef_method :pfn_deferred_fill_in=
    
    attr_accessor :scode
    alias_method :attr_scode, :scode
    undef_method :scode
    alias_method :attr_scode=, :scode=
    undef_method :scode=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._excepinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @w_code = 0
      @w_reserved = 0
      @bstr_source = 0
      @bstr_description = 0
      @bstr_help_file = 0
      @dw_help_context = 0
      @pv_reserved = 0
      @pfn_deferred_fill_in = 0
      @scode = 0
    end
    
    private
    alias_method :initialize__excepinfo, :initialize
  end
  
end
