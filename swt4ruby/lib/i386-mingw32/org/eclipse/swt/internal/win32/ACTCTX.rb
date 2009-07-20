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
  module ACTCTXImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ACTCTX 
    include_class_members ACTCTXImports
    
    attr_accessor :cb_size
    alias_method :attr_cb_size, :cb_size
    undef_method :cb_size
    alias_method :attr_cb_size=, :cb_size=
    undef_method :cb_size=
    
    attr_accessor :dw_flags
    alias_method :attr_dw_flags, :dw_flags
    undef_method :dw_flags
    alias_method :attr_dw_flags=, :dw_flags=
    undef_method :dw_flags=
    
    # long
    attr_accessor :lp_source
    alias_method :attr_lp_source, :lp_source
    undef_method :lp_source
    alias_method :attr_lp_source=, :lp_source=
    undef_method :lp_source=
    
    attr_accessor :w_processor_architecture
    alias_method :attr_w_processor_architecture, :w_processor_architecture
    undef_method :w_processor_architecture
    alias_method :attr_w_processor_architecture=, :w_processor_architecture=
    undef_method :w_processor_architecture=
    
    attr_accessor :w_lang_id
    alias_method :attr_w_lang_id, :w_lang_id
    undef_method :w_lang_id
    alias_method :attr_w_lang_id=, :w_lang_id=
    undef_method :w_lang_id=
    
    # long
    attr_accessor :lp_assembly_directory
    alias_method :attr_lp_assembly_directory, :lp_assembly_directory
    undef_method :lp_assembly_directory
    alias_method :attr_lp_assembly_directory=, :lp_assembly_directory=
    undef_method :lp_assembly_directory=
    
    # long
    attr_accessor :lp_resource_name
    alias_method :attr_lp_resource_name, :lp_resource_name
    undef_method :lp_resource_name
    alias_method :attr_lp_resource_name=, :lp_resource_name=
    undef_method :lp_resource_name=
    
    # long
    attr_accessor :lp_application_name
    alias_method :attr_lp_application_name, :lp_application_name
    undef_method :lp_application_name
    alias_method :attr_lp_application_name=, :lp_application_name=
    undef_method :lp_application_name=
    
    # long
    attr_accessor :h_module
    alias_method :attr_h_module, :h_module
    undef_method :h_module
    alias_method :attr_h_module=, :h_module=
    undef_method :h_module=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._actctx_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @cb_size = 0
      @dw_flags = 0
      @lp_source = 0
      @w_processor_architecture = 0
      @w_lang_id = 0
      @lp_assembly_directory = 0
      @lp_resource_name = 0
      @lp_application_name = 0
      @h_module = 0
    end
    
    private
    alias_method :initialize__actctx, :initialize
  end
  
end
