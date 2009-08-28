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
  module NOTIFYICONDATAAImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NOTIFYICONDATAA < NOTIFYICONDATAAImports.const_get :NOTIFYICONDATA
    include_class_members NOTIFYICONDATAAImports
    
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
      const_set_lazy(:Sizeof) { OS::NOTIFYICONDATAA_V2_SIZE }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @sz_tip = nil
      @sz_info = nil
      @sz_info_title = nil
      super()
      @sz_tip = Array.typed(::Java::Byte).new(128) { 0 }
      @sz_info = Array.typed(::Java::Byte).new(256) { 0 }
      @sz_info_title = Array.typed(::Java::Byte).new(64) { 0 }
    end
    
    private
    alias_method :initialize__notifyicondataa, :initialize
  end
  
end
