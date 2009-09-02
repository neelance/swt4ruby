require "rjava"

# Copyright (c) 2000, 2005 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OleFunctionDescriptionImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
    }
  end
  
  class OleFunctionDescription 
    include_class_members OleFunctionDescriptionImports
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    attr_accessor :args
    alias_method :attr_args, :args
    undef_method :args
    alias_method :attr_args=, :args=
    undef_method :args=
    
    attr_accessor :optional_arg_count
    alias_method :attr_optional_arg_count, :optional_arg_count
    undef_method :optional_arg_count
    alias_method :attr_optional_arg_count=, :optional_arg_count=
    undef_method :optional_arg_count=
    
    attr_accessor :return_type
    alias_method :attr_return_type, :return_type
    undef_method :return_type
    alias_method :attr_return_type=, :return_type=
    undef_method :return_type=
    
    attr_accessor :invoke_kind
    alias_method :attr_invoke_kind, :invoke_kind
    undef_method :invoke_kind
    alias_method :attr_invoke_kind=, :invoke_kind=
    undef_method :invoke_kind=
    
    attr_accessor :func_kind
    alias_method :attr_func_kind, :func_kind
    undef_method :func_kind
    alias_method :attr_func_kind=, :func_kind=
    undef_method :func_kind=
    
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    attr_accessor :calling_convention
    alias_method :attr_calling_convention, :calling_convention
    undef_method :calling_convention
    alias_method :attr_calling_convention=, :calling_convention=
    undef_method :calling_convention=
    
    attr_accessor :documentation
    alias_method :attr_documentation, :documentation
    undef_method :documentation
    alias_method :attr_documentation=, :documentation=
    undef_method :documentation=
    
    attr_accessor :help_file
    alias_method :attr_help_file, :help_file
    undef_method :help_file
    alias_method :attr_help_file=, :help_file=
    undef_method :help_file=
    
    typesig { [] }
    def initialize
      @id = 0
      @name = nil
      @args = nil
      @optional_arg_count = 0
      @return_type = 0
      @invoke_kind = 0
      @func_kind = 0
      @flags = 0
      @calling_convention = 0
      @documentation = nil
      @help_file = nil
    end
    
    private
    alias_method :initialize__ole_function_description, :initialize
  end
  
end
