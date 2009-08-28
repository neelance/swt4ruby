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
# -  Copyright (C) 2004 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsEmbedStringImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsEmbedString 
    include_class_members NsEmbedStringImports
    
    # int
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    typesig { [] }
    def initialize
      @handle = 0
      @handle = XPCOM.ns_embed_string_new
    end
    
    typesig { [String] }
    def initialize(string)
      @handle = 0
      if (!(string).nil?)
        a_string = CharArray.new(string.length + 1)
        string.get_chars(0, string.length, a_string, 0)
        @handle = XPCOM.ns_embed_string_new(a_string)
      end
    end
    
    typesig { [] }
    # int
    def get_address
      return @handle
    end
    
    typesig { [] }
    def to_s
      if ((@handle).equal?(0))
        return nil
      end
      length_ = XPCOM.ns_embed_string_length(@handle)
      # int
      buffer = XPCOM.ns_embed_string_get(@handle)
      dest = CharArray.new(length_)
      XPCOM.memmove(dest, buffer, length_ * 2)
      return String.new(dest)
    end
    
    typesig { [] }
    def dispose
      if ((@handle).equal?(0))
        return
      end
      XPCOM.ns_embed_string_delete(@handle)
      @handle = 0
    end
    
    private
    alias_method :initialize_ns_embed_string, :initialize
  end
  
end
