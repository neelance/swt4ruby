require "rjava"

# Copyright (c) 2000, 2004 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NOTIFYICONDATAWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NOTIFYICONDATAW < NOTIFYICONDATAWImports.const_get :NOTIFYICONDATA
    include_class_members NOTIFYICONDATAWImports
    
    attr_accessor :sz_tip
    alias_method :attr_sz_tip, :sz_tip
    undef_method :sz_tip
    alias_method :attr_sz_tip=, :sz_tip=
    undef_method :sz_tip=
    
    attr_accessor :sz_info
    alias_method :attr_sz_info, :sz_info
    undef_method :sz_info
    alias_method :attr_sz_info=, :sz_info=
    undef_method :sz_info=
    
    attr_accessor :sz_info_title
    alias_method :attr_sz_info_title, :sz_info_title
    undef_method :sz_info_title
    alias_method :attr_sz_info_title=, :sz_info_title=
    undef_method :sz_info_title=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::NOTIFYICONDATAW_V2_SIZE }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @sz_tip = nil
      @sz_info = nil
      @sz_info_title = nil
      super()
      @sz_tip = CharArray.new(128)
      @sz_info = CharArray.new(256)
      @sz_info_title = CharArray.new(64)
    end
    
    private
    alias_method :initialize__notifyicondataw, :initialize
  end
  
end
