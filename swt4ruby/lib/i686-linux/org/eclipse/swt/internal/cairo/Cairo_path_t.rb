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
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Cairo and SWT
# -  Copyright (C) 2005 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Cairo
  module Cairo_path_tImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Cairo
    }
  end
  
  class Cairo_path_t 
    include_class_members Cairo_path_tImports
    
    attr_accessor :status
    alias_method :attr_status, :status
    undef_method :status
    alias_method :attr_status=, :status=
    undef_method :status=
    
    # long
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :num_data
    alias_method :attr_num_data, :num_data
    undef_method :num_data
    alias_method :attr_num_data=, :num_data=
    undef_method :num_data=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { SwtCairo.cairo_path_t_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @status = 0
      @data = 0
      @num_data = 0
    end
    
    private
    alias_method :initialize_cairo_path_t, :initialize
  end
  
end
