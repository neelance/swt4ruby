require "rjava"

# Copyright (c) 2003-2004 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module ATSLayoutRecordImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ATSLayoutRecord 
    include_class_members ATSLayoutRecordImports
    
    attr_accessor :glyph_id
    alias_method :attr_glyph_id, :glyph_id
    undef_method :glyph_id
    alias_method :attr_glyph_id=, :glyph_id=
    undef_method :glyph_id=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :original_offset
    alias_method :attr_original_offset, :original_offset
    undef_method :original_offset
    alias_method :attr_original_offset=, :original_offset=
    undef_method :original_offset=
    
    attr_accessor :real_pos
    alias_method :attr_real_pos, :real_pos
    undef_method :real_pos
    alias_method :attr_real_pos=, :real_pos=
    undef_method :real_pos=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 14 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @glyph_id = 0
      @flags = 0
      @original_offset = 0
      @real_pos = 0
    end
    
    private
    alias_method :initialize__atslayout_record, :initialize
  end
  
end
