require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# The Original Code is Mozilla Communicator client code, released March 31, 1998.
# 
# The Initial Developer of the Original Code is
# Netscape Communications Corporation.
# Portions created by Netscape are Copyright (C) 1998-1999
# Netscape Communications Corporation.  All Rights Reserved.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Mozilla and SWT
# -  Copyright (C) 2003, 2004 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIDImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsID 
    include_class_members NsIDImports
    
    attr_accessor :m0
    alias_method :attr_m0, :m0
    undef_method :m0
    alias_method :attr_m0=, :m0=
    undef_method :m0=
    
    attr_accessor :m1
    alias_method :attr_m1, :m1
    undef_method :m1
    alias_method :attr_m1=, :m1=
    undef_method :m1=
    
    attr_accessor :m2
    alias_method :attr_m2, :m2
    undef_method :m2
    alias_method :attr_m2=, :m2=
    undef_method :m2=
    
    attr_accessor :m3
    alias_method :attr_m3, :m3
    undef_method :m3
    alias_method :attr_m3=, :m3=
    undef_method :m3=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 16 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @m0 = 0
      @m1 = 0
      @m2 = 0
      @m3 = Array.typed(::Java::Byte).new(8) { 0 }
    end
    
    typesig { [String] }
    def initialize(id)
      @m0 = 0
      @m1 = 0
      @m2 = 0
      @m3 = Array.typed(::Java::Byte).new(8) { 0 }
      _parse(id)
    end
    
    typesig { [NsID] }
    def _equals(other)
      # int
      ptr = XPCOM.ns_id_new
      XPCOM.memmove(ptr, self, self.attr_ns_id.attr_sizeof)
      # int
      other_ptr = XPCOM.ns_id_new
      XPCOM.memmove(other_ptr, other, self.attr_ns_id.attr_sizeof)
      result = !(XPCOM.ns_id_equals(ptr, other_ptr)).equal?(0)
      XPCOM.ns_id_delete(ptr)
      XPCOM.ns_id_delete(other_ptr)
      return result
    end
    
    typesig { [String] }
    def _parse(a_idstr)
      if ((a_idstr).nil?)
        raise JavaError.new
      end
      i = 0
      while i < 8
        @m0 = (@m0 << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16)
        i += 1
      end
      if (!(a_idstr.char_at(((i += 1) - 1))).equal?(Character.new(?-.ord)))
        raise JavaError.new
      end
      while i < 13
        @m1 = RJava.cast_to_short(((@m1 << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16)))
        i += 1
      end
      if (!(a_idstr.char_at(((i += 1) - 1))).equal?(Character.new(?-.ord)))
        raise JavaError.new
      end
      while i < 18
        @m2 = RJava.cast_to_short(((@m2 << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16)))
        i += 1
      end
      if (!(a_idstr.char_at(((i += 1) - 1))).equal?(Character.new(?-.ord)))
        raise JavaError.new
      end
      while i < 21
        @m3[0] = ((@m3[0] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      while i < 23
        @m3[1] = ((@m3[1] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      if (!(a_idstr.char_at(((i += 1) - 1))).equal?(Character.new(?-.ord)))
        raise JavaError.new
      end
      while i < 26
        @m3[2] = ((@m3[2] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      while i < 28
        @m3[3] = ((@m3[3] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      while i < 30
        @m3[4] = ((@m3[4] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      while i < 32
        @m3[5] = ((@m3[5] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      while i < 34
        @m3[6] = ((@m3[6] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
      while i < 36
        @m3[7] = ((@m3[7] << 4) + JavaInteger.parse_int(a_idstr.substring(i, i + 1), 16))
        i += 1
      end
    end
    
    private
    alias_method :initialize_ns_id, :initialize
  end
  
end
