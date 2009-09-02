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
  module COSERVERINFOImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class COSERVERINFO 
    include_class_members COSERVERINFOImports
    
    attr_accessor :dw_reserved1
    alias_method :attr_dw_reserved1, :dw_reserved1
    undef_method :dw_reserved1
    alias_method :attr_dw_reserved1=, :dw_reserved1=
    undef_method :dw_reserved1=
    
    # @field cast=(LPWSTR)
    # long
    attr_accessor :pwsz_name
    alias_method :attr_pwsz_name, :pwsz_name
    undef_method :pwsz_name
    alias_method :attr_pwsz_name=, :pwsz_name=
    undef_method :pwsz_name=
    
    # @field cast=(COAUTHINFO *)
    # long
    attr_accessor :p_auth_info
    alias_method :attr_p_auth_info, :p_auth_info
    undef_method :p_auth_info
    alias_method :attr_p_auth_info=, :p_auth_info=
    undef_method :p_auth_info=
    
    attr_accessor :dw_reserved2
    alias_method :attr_dw_reserved2, :dw_reserved2
    undef_method :dw_reserved2
    alias_method :attr_dw_reserved2=, :dw_reserved2=
    undef_method :dw_reserved2=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._coserverinfo_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_reserved1 = 0
      @pwsz_name = 0
      @p_auth_info = 0
      @dw_reserved2 = 0
    end
    
    private
    alias_method :initialize__coserverinfo, :initialize
  end
  
end
