require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gdip
  module ColorPaletteImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gdip
    }
  end
  
  class ColorPalette 
    include_class_members ColorPaletteImports
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    attr_accessor :entries
    alias_method :attr_entries, :entries
    undef_method :entries
    alias_method :attr_entries=, :entries=
    undef_method :entries=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { SwtGdip._color_palette_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @flags = 0
      @count = 0
      @entries = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    private
    alias_method :initialize__color_palette, :initialize
  end
  
end
