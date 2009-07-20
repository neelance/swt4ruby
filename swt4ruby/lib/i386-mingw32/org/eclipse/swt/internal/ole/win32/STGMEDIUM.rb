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
  module STGMEDIUMImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class STGMEDIUM 
    include_class_members STGMEDIUMImports
    
    attr_accessor :tymed
    alias_method :attr_tymed, :tymed
    undef_method :tymed
    alias_method :attr_tymed=, :tymed=
    undef_method :tymed=
    
    # long
    attr_accessor :union_field
    alias_method :attr_union_field, :union_field
    undef_method :union_field
    alias_method :attr_union_field=, :union_field=
    undef_method :union_field=
    
    # long
    attr_accessor :p_unk_for_release
    alias_method :attr_p_unk_for_release, :p_unk_for_release
    undef_method :p_unk_for_release
    alias_method :attr_p_unk_for_release=, :p_unk_for_release=
    undef_method :p_unk_for_release=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { COM._stgmedium_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @tymed = 0
      @union_field = 0
      @p_unk_for_release = 0
    end
    
    private
    alias_method :initialize__stgmedium, :initialize
  end
  
end
