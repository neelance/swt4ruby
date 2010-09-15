require "rjava"

# Copyright (c) 2003, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Browser
  module FilePicker_1_8Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Browser
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class FilePicker_1_8 < FilePicker_1_8Imports.const_get :FilePicker
    include_class_members FilePicker_1_8Imports
    
    typesig { [] }
    def create_cominterfaces
      self.attr_supports = # Create each of the interfaces that this object implements
      Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in FilePicker_1_8
        include_class_members FilePicker_1_8
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      self.attr_file_picker = Class.new(XPCOMObject.class == Class ? XPCOMObject : Object) do
        local_class_in FilePicker_1_8
        include_class_members FilePicker_1_8
        include XPCOMObject if XPCOMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          return _init(args[0], args[1], RJava.cast_to_short(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _append_filters(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _append_filter(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _get_default_string(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method7 do |args|
          return _set_default_string(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return _get_default_extension(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return _set_default_extension(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return _get_filter_index(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          # 64
          return _set_filter_index(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          return _get_display_directory(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method13 do |args|
          return _set_display_directory(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method14 do |args|
          return _get_file(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method15 do |args|
          return _get_file_url(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method16 do |args|
          return _get_files(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method17 do |args|
          return _show(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 1, 2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]))
    end
    
    typesig { [::Java::Int] }
    # As of Mozilla 1.8 some of nsIFilePicker's string arguments changed type.  This method
    # answers a java string based on the type of string that is appropriate for the Mozilla
    # version being used.
    # 
    # long
    def parse_astring(string)
      if ((string).equal?(0))
        return nil
      end
      length = XPCOM.ns_embed_string_length(string)
      # long
      buffer = XPCOM.ns_embed_string_get(string)
      chars = CharArray.new(length)
      XPCOM.memmove___org_eclipse_swt_browser_file_picker_1_8_1(chars, buffer, length * 2)
      return String.new(chars)
    end
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__file_picker_1_8, :initialize
  end
  
end
