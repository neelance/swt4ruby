require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module DOCINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class DOCINFO 
    include_class_members DOCINFOImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    # long
    attr_accessor :lpsz_doc_name
    alias_method :attr_lpsz_doc_name, :lpsz_doc_name
    undef_method :lpsz_doc_name
    alias_method :attr_lpsz_doc_name=, :lpsz_doc_name=
    undef_method :lpsz_doc_name=
    
    # LPCTSTR
    # long
    attr_accessor :lpsz_output
    alias_method :attr_lpsz_output, :lpsz_output
    undef_method :lpsz_output
    alias_method :attr_lpsz_output=, :lpsz_output=
    undef_method :lpsz_output=
    
    # LPCTSTR
    # long
    attr_accessor :lpsz_datatype
    alias_method :attr_lpsz_datatype, :lpsz_datatype
    undef_method :lpsz_datatype
    alias_method :attr_lpsz_datatype=, :lpsz_datatype=
    undef_method :lpsz_datatype=
    
    # LPCTSTR
    attr_accessor :fw_type
    alias_method :attr_fw_type, :fw_type
    undef_method :fw_type
    alias_method :attr_fw_type=, :fw_type=
    undef_method :fw_type=
    
    class_module.module_eval {
      # DWORD
      const_set_lazy(:Sizeof) { OS._docinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @lpsz_doc_name = 0
      @lpsz_output = 0
      @lpsz_datatype = 0
      @fw_type = 0
    end
    
    private
    alias_method :initialize__docinfo, :initialize
  end
  
end
