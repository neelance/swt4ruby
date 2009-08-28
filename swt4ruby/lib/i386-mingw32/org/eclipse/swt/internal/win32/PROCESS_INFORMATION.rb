require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module PROCESS_INFORMATIONImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class PROCESS_INFORMATION 
    include_class_members PROCESS_INFORMATIONImports
    
    # long
    attr_accessor :h_process
    alias_method :attr_h_process, :h_process
    undef_method :h_process
    alias_method :attr_h_process=, :h_process=
    undef_method :h_process=
    
    # long
    attr_accessor :h_thread
    alias_method :attr_h_thread, :h_thread
    undef_method :h_thread
    alias_method :attr_h_thread=, :h_thread=
    undef_method :h_thread=
    
    attr_accessor :dw_process_id
    alias_method :attr_dw_process_id, :dw_process_id
    undef_method :dw_process_id
    alias_method :attr_dw_process_id=, :dw_process_id=
    undef_method :dw_process_id=
    
    attr_accessor :dw_thread_id
    alias_method :attr_dw_thread_id, :dw_thread_id
    undef_method :dw_thread_id
    alias_method :attr_dw_thread_id=, :dw_thread_id=
    undef_method :dw_thread_id=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._process_information_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @h_process = 0
      @h_thread = 0
      @dw_process_id = 0
      @dw_thread_id = 0
    end
    
    private
    alias_method :initialize__process_information, :initialize
  end
  
end
