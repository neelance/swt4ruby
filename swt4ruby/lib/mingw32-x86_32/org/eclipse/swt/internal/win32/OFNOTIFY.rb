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
  module OFNOTIFYImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OFNOTIFY < OFNOTIFYImports.const_get :NMHDR
    include_class_members OFNOTIFYImports
    
    # @field cast=(LPOPENFILENAME)
    # long
    attr_accessor :lp_ofn
    alias_method :attr_lp_ofn, :lp_ofn
    undef_method :lp_ofn
    alias_method :attr_lp_ofn=, :lp_ofn=
    undef_method :lp_ofn=
    
    # @field cast=(LPTSTR)
    # long
    attr_accessor :psz_file
    alias_method :attr_psz_file, :psz_file
    undef_method :psz_file
    alias_method :attr_psz_file=, :psz_file=
    undef_method :psz_file=
    
    class_module.module_eval {
      
      def sizeof
        defined?(@@sizeof) ? @@sizeof : @@sizeof= OS._ofnotify_sizeof
      end
      alias_method :attr_sizeof, :sizeof
      
      def sizeof=(value)
        @@sizeof = value
      end
      alias_method :attr_sizeof=, :sizeof=
    }
    
    typesig { [] }
    def initialize
      @lp_ofn = 0
      @psz_file = 0
      super()
    end
    
    private
    alias_method :initialize__ofnotify, :initialize
  end
  
end
