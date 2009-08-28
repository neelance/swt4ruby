require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module EXTLOGFONTWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class EXTLOGFONTW 
    include_class_members EXTLOGFONTWImports
    
    attr_accessor :elf_log_font
    alias_method :attr_elf_log_font, :elf_log_font
    undef_method :elf_log_font
    alias_method :attr_elf_log_font=, :elf_log_font=
    undef_method :elf_log_font=
    
    attr_accessor :elf_full_name
    alias_method :attr_elf_full_name, :elf_full_name
    undef_method :elf_full_name
    alias_method :attr_elf_full_name=, :elf_full_name=
    undef_method :elf_full_name=
    
    attr_accessor :elf_style
    alias_method :attr_elf_style, :elf_style
    undef_method :elf_style
    alias_method :attr_elf_style=, :elf_style=
    undef_method :elf_style=
    
    attr_accessor :elf_version
    alias_method :attr_elf_version, :elf_version
    undef_method :elf_version
    alias_method :attr_elf_version=, :elf_version=
    undef_method :elf_version=
    
    attr_accessor :elf_style_size
    alias_method :attr_elf_style_size, :elf_style_size
    undef_method :elf_style_size
    alias_method :attr_elf_style_size=, :elf_style_size=
    undef_method :elf_style_size=
    
    attr_accessor :elf_match
    alias_method :attr_elf_match, :elf_match
    undef_method :elf_match
    alias_method :attr_elf_match=, :elf_match=
    undef_method :elf_match=
    
    attr_accessor :elf_reserved
    alias_method :attr_elf_reserved, :elf_reserved
    undef_method :elf_reserved
    alias_method :attr_elf_reserved=, :elf_reserved=
    undef_method :elf_reserved=
    
    attr_accessor :elf_vendor_id
    alias_method :attr_elf_vendor_id, :elf_vendor_id
    undef_method :elf_vendor_id
    alias_method :attr_elf_vendor_id=, :elf_vendor_id=
    undef_method :elf_vendor_id=
    
    attr_accessor :elf_culture
    alias_method :attr_elf_culture, :elf_culture
    undef_method :elf_culture
    alias_method :attr_elf_culture=, :elf_culture=
    undef_method :elf_culture=
    
    attr_accessor :elf_panose
    alias_method :attr_elf_panose, :elf_panose
    undef_method :elf_panose
    alias_method :attr_elf_panose=, :elf_panose=
    undef_method :elf_panose=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._extlogfontw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @elf_log_font = LOGFONTW.new
      @elf_full_name = CharArray.new(OS::LF_FULLFACESIZE)
      @elf_style = CharArray.new(OS::LF_FACESIZE)
      @elf_version = 0
      @elf_style_size = 0
      @elf_match = 0
      @elf_reserved = 0
      @elf_vendor_id = Array.typed(::Java::Byte).new(OS::ELF_VENDOR_SIZE) { 0 }
      @elf_culture = 0
      @elf_panose = PANOSE.new
    end
    
    private
    alias_method :initialize__extlogfontw, :initialize
  end
  
end
