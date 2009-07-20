require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module TCHARImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # This class implements the conversions between unicode characters
  # and the <em>platform supported</em> representation for characters.
  # <p>
  # Note that unicode characters which can not be found in the platform
  # encoding will be converted to an arbitrary platform specific character.
  # </p>
  class TCHAR 
    include_class_members TCHARImports
    
    attr_accessor :code_page
    alias_method :attr_code_page, :code_page
    undef_method :code_page
    alias_method :attr_code_page=, :code_page=
    undef_method :code_page=
    
    attr_accessor :chars
    alias_method :attr_chars, :chars
    undef_method :chars
    alias_method :attr_chars=, :chars=
    undef_method :chars=
    
    attr_accessor :bytes
    alias_method :attr_bytes, :bytes
    undef_method :bytes
    alias_method :attr_bytes=, :bytes=
    undef_method :bytes=
    
    attr_accessor :byte_count
    alias_method :attr_byte_count, :byte_count
    undef_method :byte_count
    alias_method :attr_byte_count=, :byte_count=
    undef_method :byte_count=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? 2 : 1 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    def initialize(code_page, length)
      @code_page = 0
      @chars = nil
      @bytes = nil
      @byte_count = 0
      @code_page = code_page
      if (OS::IsUnicode)
        @chars = CharArray.new(length)
      else
        @bytes = Array.typed(::Java::Byte).new(@byte_count = length) { 0 }
      end
    end
    
    typesig { [::Java::Int, ::Java::Char, ::Java::Boolean] }
    def initialize(code_page, ch, terminate)
      initialize__tchar(code_page, terminate ? Array.typed(::Java::Char).new([ch, Character.new(?\0.ord)]) : Array.typed(::Java::Char).new([ch]), false)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Char), ::Java::Boolean] }
    def initialize(code_page, chars, terminate)
      @code_page = 0
      @chars = nil
      @bytes = nil
      @byte_count = 0
      @code_page = code_page
      char_count = chars.attr_length
      if (OS::IsUnicode)
        if (terminate)
          if ((char_count).equal?(0) || (char_count > 0 && !(chars[char_count - 1]).equal?(0)))
            new_chars = CharArray.new(char_count + 1)
            System.arraycopy(chars, 0, new_chars, 0, char_count)
            chars = new_chars
          end
        end
        @chars = chars
      else
        cp = !(code_page).equal?(0) ? code_page : OS::CP_ACP
        @bytes = Array.typed(::Java::Byte).new(@byte_count = char_count * 2 + (terminate ? 1 : 0)) { 0 }
        @byte_count = OS._wide_char_to_multi_byte(cp, 0, chars, char_count, @bytes, @byte_count, nil, nil)
        if (terminate)
          ((@byte_count += 1) - 1)
        end
      end
    end
    
    typesig { [::Java::Int, String, ::Java::Boolean] }
    def initialize(code_page, string, terminate)
      initialize__tchar(code_page, get_chars(string, terminate), false)
    end
    
    class_module.module_eval {
      typesig { [String, ::Java::Boolean] }
      def get_chars(string, terminate)
        length_ = string.length
        chars = CharArray.new(length_ + (terminate ? 1 : 0))
        string.get_chars(0, length_, chars, 0)
        return chars
      end
    }
    
    typesig { [] }
    def length
      if (OS::IsUnicode)
        return @chars.attr_length
      else
        return @byte_count
      end
    end
    
    typesig { [] }
    def strlen
      if (OS::IsUnicode)
        i = 0
        while i < @chars.attr_length
          if ((@chars[i]).equal?(Character.new(?\0.ord)))
            return i
          end
          ((i += 1) - 1)
        end
        return @chars.attr_length
      else
        i = 0
        while i < @byte_count
          if ((@bytes[i]).equal?(Character.new(?\0.ord)))
            return i
          end
          ((i += 1) - 1)
        end
        return @byte_count
      end
    end
    
    typesig { [::Java::Int] }
    def tchar_at(index)
      if (OS::IsUnicode)
        return @chars[index]
      else
        ch = @bytes[index] & 0xff
        if (OS._is_dbcslead_byte(ch))
          ch = ch << 8 | (@bytes[index + 1] & 0xff)
        end
        return ch
      end
    end
    
    typesig { [] }
    def to_s
      return to_s(0, length)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def to_s(start, length_)
      if (OS::IsUnicode)
        return String.new(@chars, start, length_)
      else
        bytes = @bytes
        if (!(start).equal?(0))
          bytes = Array.typed(::Java::Byte).new(length_) { 0 }
          System.arraycopy(@bytes, start, bytes, 0, length_)
        end
        chars = CharArray.new(length_)
        cp = !(@code_page).equal?(0) ? @code_page : OS::CP_ACP
        char_count = OS._multi_byte_to_wide_char(cp, OS::MB_PRECOMPOSED, bytes, length_, chars, length_)
        return String.new(chars, 0, char_count)
      end
    end
    
    private
    alias_method :initialize__tchar, :initialize
  end
  
end
